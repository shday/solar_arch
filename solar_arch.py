import math
from solid2 import ( set_global_fn,register_access_syntax, circle )
from solid2.extensions import bosl2

@register_access_syntax
def extrude_from_to(obj, start, end):
    return bosl2.extrude_from_to(start,end)(obj)


SMALL_TUBE_OD = 2.54
SMALL_TUBE_ID = 2.4
TUBE_OD = 4
TUBE_ID = 3.7
BEND_RADIUS = 20
RAIL_HEIGHT = 75
ARCH_HEIGHT = 200
FRONT_ARCH_WIDTH = 350
BACK_ARCH_WIDTH = 340
ARCH_DEPTH = 100 # at base
FRONT_ARCH_ANGLE = 15
BACK_ARCH_ANGLE = 20
FRONT_STANTION_ANGLE = 15
BACK_STANTION_ANGLE = 5
DAVIT_LENGTH = 30
FEET_DIAMETER = 10
FEET_WIDTH = 1
BOLT_HOLE_DIAMETER = 0.85

SIDE_SUPPORT_OFFSET = 25
TOP_SUPPORT_OFFSET = 75
CROSS_SUPPORT_OFFSET = 75

FRONT_TOP_TUBE = FRONT_ARCH_WIDTH - 2*BEND_RADIUS
BACK_TOP_TUBE = BACK_ARCH_WIDTH - 2*BEND_RADIUS

FRONT_STANTION = RAIL_HEIGHT/math.cos(math.radians(FRONT_STANTION_ANGLE))
BACK_STANTION = RAIL_HEIGHT/math.cos(math.radians(BACK_STANTION_ANGLE))


FRONT_ARCH_TUBE = (ARCH_HEIGHT - RAIL_HEIGHT -
                   (math.sin(math.radians(FRONT_ARCH_ANGLE+FRONT_STANTION_ANGLE))-math.sin(math.radians(FRONT_STANTION_ANGLE)))  *BEND_RADIUS -
                   math.cos(math.radians(FRONT_ARCH_ANGLE+FRONT_STANTION_ANGLE))*BEND_RADIUS)/math.cos(math.radians(FRONT_ARCH_ANGLE+FRONT_STANTION_ANGLE))

BACK_ARCH_TUBE = (ARCH_HEIGHT - RAIL_HEIGHT -
                   (math.sin(math.radians(BACK_ARCH_ANGLE+BACK_STANTION_ANGLE))-math.sin(math.radians(BACK_STANTION_ANGLE)))  *BEND_RADIUS -
                   math.cos(math.radians(BACK_ARCH_ANGLE+BACK_STANTION_ANGLE))*BEND_RADIUS)/math.cos(math.radians(BACK_ARCH_ANGLE+BACK_STANTION_ANGLE))


set_global_fn(72)


class Tube:
    def __init__(self, TUBE_OD, TUBE_ID, length, rotateY=0):
        self.TUBE_OD = TUBE_OD
        self.TUBE_ID = TUBE_ID
        self.length = length
        self.rotateY = rotateY

    def __call__(self):
        ring = circle(d=self.TUBE_OD)
        if self.TUBE_ID:
            ring = ring - circle(d=self.TUBE_ID)
        return ring.linear_extrude(self.length).rotateY(self.rotateY)
    
class Bend:
    def __init__(self, TUBE_OD, TUBE_ID, bend_radius, angle, rotateZ=0):
        self.TUBE_OD = TUBE_OD
        self.TUBE_ID = TUBE_ID
        self.bend_radius = bend_radius
        self.angle = angle
        self.rotateZ = rotateZ

    def __call__(self):
        ring = circle(d=self.TUBE_OD) - circle(d=self.TUBE_ID)
        return ring.right(self.bend_radius).rotate_extrude(self.angle).\
            left(self.bend_radius).rotateY(180).rotateX(90).rotateZ(self.rotateZ)


def connect(tube,bend,tube2,bend2,tube3):

    
    t = tube()

    rotateY = tube.rotateY
    up = math.cos(math.radians(rotateY))*tube.length
    right = math.sin(math.radians(rotateY))*tube.length
    b = bend().rotateY(rotateY).right(right).up(up)

    right = right+ (math.cos(math.radians(rotateY)) - math.cos(math.radians(bend.angle+rotateY)) )*bend.bend_radius
    up = up + (math.sin(math.radians(bend.angle+rotateY)) - math.sin(math.radians(rotateY)))*bend.bend_radius
    rotateY = rotateY + bend.angle
    t2 = tube2().rotateY(rotateY).right(right).up(up)
    
    right = right + math.sin(math.radians(rotateY))*tube2.length
    up = up + math.cos(math.radians(rotateY))*tube2.length
    b2 = bend2().rotateY(rotateY).right(right).up(up)

    right = right + math.sin(math.radians(rotateY))*bend2.bend_radius
    up = up + math.sin(math.radians(bend2.angle))*bend2.bend_radius \
            - (1-math.cos(math.radians(rotateY)))*bend2.bend_radius
    forward = (1 - math.cos(math.radians(bend2.angle)))*bend2.bend_radius
    t3 = tube3().rotateX(-bend2.rotateZ).right(right).up(up).forward(forward)
    #print(f'{up=} {right=} {rotateY=}')
    return (t + b + t2 +b2 + t3, {'right':right,'rotateY':rotateY,'up':up})

tube1 = Tube(TUBE_OD, TUBE_ID, FRONT_STANTION,rotateY=FRONT_STANTION_ANGLE)
bend1 = Bend(TUBE_OD, TUBE_ID, BEND_RADIUS,FRONT_ARCH_ANGLE)
tube2 = Tube(TUBE_OD, TUBE_ID, FRONT_ARCH_TUBE)
bend2 = Bend(TUBE_OD, TUBE_ID, BEND_RADIUS,90,rotateZ=90)
tube3 = Tube(TUBE_OD, TUBE_ID, FRONT_TOP_TUBE/2)

front_arch , front_info = connect(tube1, bend1,tube2,bend2,tube3)

tube1 = Tube(TUBE_OD, TUBE_ID, BACK_STANTION,rotateY=BACK_STANTION_ANGLE)
bend1 = Bend(TUBE_OD, TUBE_ID, BEND_RADIUS,BACK_ARCH_ANGLE)
tube2 = Tube(TUBE_OD, TUBE_ID, BACK_ARCH_TUBE)
tube3 = Tube(TUBE_OD, TUBE_ID, BACK_TOP_TUBE/2)
back_arch, back_info = connect(tube1, bend1,tube2,bend2,tube3)

top_support_span = back_info['right']-front_info['right']+ARCH_DEPTH
top_support = Tube(SMALL_TUBE_OD, SMALL_TUBE_ID, top_support_span, rotateY=90)
top_support = top_support().right(front_info['right']).up(ARCH_HEIGHT).forward(TOP_SUPPORT_OFFSET)


#brace = Tube(SMALL_TUBE_OD, SMALL_TUBE_ID, (2*TOP_SUPPORT_OFFSET**2)**0.5, rotateY=0)
#brace = brace().rotateX(-45).rotateY(back_info['rotateY']).right(back_info['right']+ARCH_DEPTH).up(ARCH_HEIGHT-TOP_SUPPORT_OFFSET).forward(TOP_SUPPORT_OFFSET)


side_support_span = back_info['right']-front_info['right']+ARCH_DEPTH\
                + SIDE_SUPPORT_OFFSET*math.tan(math.radians((front_info['rotateY']-back_info['rotateY'])))
z_angle = math.degrees(math.atan((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2/side_support_span))

side_support = Tube(SMALL_TUBE_OD, SMALL_TUBE_ID, side_support_span,rotateY=90)
side_support = side_support().rotateZ(z_angle).right(front_info['right'] 
                            - SIDE_SUPPORT_OFFSET*math.tan(math.radians(front_info['rotateY']))).up(ARCH_HEIGHT-SIDE_SUPPORT_OFFSET)

rail_span = ARCH_DEPTH - RAIL_HEIGHT*math.tan(math.radians(
            (FRONT_STANTION_ANGLE - BACK_STANTION_ANGLE)))
z_angle = math.degrees(math.atan((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2/rail_span))

rail = Tube(SMALL_TUBE_OD, SMALL_TUBE_ID, rail_span,rotateY=90)
rail = rail().rotateZ(z_angle).right(
        RAIL_HEIGHT*math.tan(math.radians(FRONT_STANTION_ANGLE))).up(RAIL_HEIGHT)

half_rail_span = ARCH_DEPTH - RAIL_HEIGHT/2*math.tan(math.radians(
            (FRONT_STANTION_ANGLE - BACK_STANTION_ANGLE)))
z_angle = math.degrees(math.atan((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2/half_rail_span))

half_rail = Tube(SMALL_TUBE_OD, SMALL_TUBE_ID, half_rail_span,rotateY=90)
half_rail = half_rail().rotateZ(z_angle).right(
        RAIL_HEIGHT/2*math.tan(math.radians(FRONT_STANTION_ANGLE))).up(RAIL_HEIGHT/2)

#Cross support
ring = circle(d=SMALL_TUBE_OD) - circle(d=SMALL_TUBE_ID)

startX = ARCH_DEPTH + back_info['right'] - 0.8*CROSS_SUPPORT_OFFSET*math.tan(math.radians(back_info['rotateY']))
startY = (FRONT_ARCH_WIDTH - BACK_ARCH_WIDTH)/2
startZ = ARCH_HEIGHT- 0.8*CROSS_SUPPORT_OFFSET

endX = ARCH_DEPTH + back_info['right']
endY = CROSS_SUPPORT_OFFSET
endZ = ARCH_HEIGHT

cross_support = ring.extrude_from_to([startX,startY ,startZ],
                            [endX,endY,endZ])


#Davit
davit = Tube(TUBE_OD, TUBE_ID, DAVIT_LENGTH, rotateY=90)
cap = Tube(TUBE_OD, 0, 0.3, rotateY=90)
davit = davit() + cap().right(DAVIT_LENGTH)
davit = davit.right(ARCH_DEPTH+back_info['right']).up(ARCH_HEIGHT).forward(TOP_SUPPORT_OFFSET)

#Feet
RAD30 = math.radians(30)
RAD60 = math.radians(60)
foot = Tube(FEET_DIAMETER, 0, FEET_WIDTH, rotateY=0)()
bolt_hole = Tube(BOLT_HOLE_DIAMETER,0,FEET_WIDTH)()
foot = foot - bolt_hole.right(math.cos(RAD60)*(FEET_DIAMETER/2 - 1.5)).forward(
    math.cos(RAD30)*(FEET_DIAMETER/2 - 1.5))
foot = foot - bolt_hole.right(math.cos(RAD60)*(FEET_DIAMETER/2 - 1.5)).back(
    math.cos(RAD30)*(FEET_DIAMETER/2 - 1.5))
foot = foot - bolt_hole.left(FEET_DIAMETER/2 - 1.5)
back_foot = foot.right(ARCH_DEPTH).forward((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2)

#Flatten stantion edges from bottom of feet and make hole for wiring
foot_minus = foot + Tube(TUBE_ID,0,FEET_WIDTH*2)()
back_foot_minus = foot_minus.right(ARCH_DEPTH).forward((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2)

arch = front_arch + back_arch.right(ARCH_DEPTH).forward((FRONT_ARCH_WIDTH-BACK_ARCH_WIDTH)/2) \
        + top_support + side_support +  rail + half_rail \
            + cross_support \
                + davit \
                + foot + back_foot 

arch = arch - foot_minus.down(FEET_WIDTH) - back_foot_minus.down(FEET_WIDTH)

arch = arch + arch.mirrorY().forward(FRONT_ARCH_WIDTH)

arch.save_as_scad("solar_arch.scad")

assert math.isclose(front_info['up'],back_info['up'])
print('Height=',round(front_info['up'],1))
print('Top depth=',round(top_support_span,1))
print('Top setback=',round(front_info['right'],1),'(distance from perpendicular at base front)')
print('Top-back setback=',round(back_info['right'],1),'(distance from perpendicular at base back)')
