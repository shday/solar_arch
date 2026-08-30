# CLAUDE.md

Guidance for AI coding assistants working in this repository.

## Project

`solar_arch` is a **code-first parametric CAD project**: an arched steel-tube
frame for mounting solar panels (a boat structure), with **davits for lifting
a tender/dinghy** — not for lifting the structure itself. Material is **316L
stainless steel**.

A single Python generator (`solar_arch.py`, SolidPython2 + BOSL2) derives every
member length from dimension constants and emits OpenSCAD source, which is
rendered to STL/PNG.

## Build / regeneration pipeline

```
solar_arch.py ──► solar_arch.scad (+ loop.scad, foot.scad) ──► OpenSCAD ──► solar_arch.stl / solar_arch.png
```

- **`solar_arch.py` is the source of truth.** Edit constants at the top of the
  file (units: mm) and regenerate — never hand-edit the generated `.scad`
  files.
- Regenerate with: `python solar_arch.py`
  (needs the `scad` conda env: Python 3.13 + `solidpython2==2.1.2` per
  `requirements.txt`; BOSL2 is bundled inside solidpython2).
- Render with OpenSCAD (separate install, not pip): `openscad -o solar_arch.stl
  solar_arch.scad`, `openscad -o solar_arch.png --autocenter --viewall
  solar_arch.scad`.
- The run is **deterministic**: regenerating must produce a byte-identical
  `solar_arch.scad`.

## Git conventions

- `solar_arch.scad` is committed and must match generator output.
- `loop.scad` / `foot.scad` (3D-printable sub-parts) are regenerated on every
  run and are **deliberately untracked** — do not commit them.
- The committed STL is ASCII; suggest binary export if a smaller file matters.

## Design conventions

- All geometry is **derived from constants**, not hard-coded (arch tube
  lengths, support spans, rail lengths are computed from the top-of-file
  constants).
- The whole assembly is mirrored in Y to form both sides; the weight estimate
  counts both sides.
- Sanity checks: the generator asserts both arches reach the same height
  (`assert math.isclose(front_info['up'], back_info['up'])`) and prints the
  geometry info plus a 316L weight breakdown at the end of each run
  (`STEEL_DENSITY = 7980e-9` kg/mm³ — change it there if the alloy changes).

## Gotchas

- Generated `.scad` files embed **absolute BOSL2 include paths** from the
  machine that generated them. They are not portable — after cloning or
  switching environments, regenerate via the script rather than using the
  checked-in `.scad` directly.
- `connect()` in `solar_arch.py` chains tube→bend→tube→bend→tube with
  hand-rolled displacement math that assumes a 90° corner bend. It is tuned
  for the current parameter set: changing `BEND_RADIUS`, stantion/arch angles,
  or the bend orientation may silently drift the geometry. After any parameter
  change, verify with the height assert and a render.
- Tube sizes: main Ø40/Ø37 mm, bracing Ø25.4/Ø24 mm (1" legacy). Feet are
  Ø100 mm discs with 3 × Ø8.5 mm bolt holes; the davit loop has a Ø20 mm hole.
