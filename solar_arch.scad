include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/version.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/constants.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/transforms.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/distributors.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/miscellaneous.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/color.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/attachments.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/beziers.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/shapes3d.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/shapes2d.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/drawing.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/masks3d.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/masks2d.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/math.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/paths.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/lists.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/comparisons.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/linalg.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/trigonometry.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/vectors.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/affine.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/coords.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/geometry.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/regions.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/strings.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/vnf.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/structs.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/rounding.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/skin.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/utility.scad>;
include </Users/stephenday/miniconda3/envs/scad/lib/python3.13/site-packages/solid2/extensions/bosl2/BOSL2/partitions.scad>;

$fn = 72;

union() {
	rotate(a = [0, 15, 0]) {
		linear_extrude(height = 77.64571353075623) {
			difference() {
				circle(d = 4);
				circle(d = 3.7);
			}
		}
	}
	translate(v = [0, 0, 75.0]) {
		translate(v = [20.0961894323342, 0, 0]) {
			rotate(a = [0, 15, 0]) {
				rotate(a = [0, 0, 0]) {
					rotate(a = [90, 0, 0]) {
						rotate(a = [0, 180, 0]) {
							translate(v = [-20, 0, 0]) {
								rotate_extrude(angle = 15) {
									translate(v = [20, 0, 0]) {
										difference() {
											circle(d = 4);
											circle(d = 3.7);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 79.82361909794959]) {
		translate(v = [22.09419788242679, 0, 0]) {
			rotate(a = [0, 30, 0]) {
				rotate(a = [0, 0, 0]) {
					linear_extrude(height = 118.7677317280676) {
						difference() {
							circle(d = 4);
							circle(d = 3.7);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 182.6794919243112]) {
		translate(v = [81.47806374646058, 0, 0]) {
			rotate(a = [0, 30, 0]) {
				rotate(a = [0, 0, 90]) {
					rotate(a = [90, 0, 0]) {
						rotate(a = [0, 180, 0]) {
							translate(v = [-20, 0, 0]) {
								rotate_extrude(angle = 90) {
									translate(v = [20, 0, 0]) {
										difference() {
											circle(d = 4);
											circle(d = 3.7);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 19.999999999999996, 0]) {
		translate(v = [0, 0, 199.99999999999997]) {
			translate(v = [91.47806374646058, 0, 0]) {
				rotate(a = [-90, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 155.0) {
							difference() {
								circle(d = 4);
								circle(d = 3.7);
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 5.0, 0]) {
		translate(v = [100, 0, 0]) {
			union() {
				rotate(a = [0, 5, 0]) {
					linear_extrude(height = 75.28648781575106) {
						difference() {
							circle(d = 4);
							circle(d = 3.7);
						}
					}
				}
				translate(v = [0, 0, 75.0]) {
					translate(v = [6.5616497644443, 0, 0]) {
						rotate(a = [0, 5, 0]) {
							rotate(a = [0, 0, 0]) {
								rotate(a = [90, 0, 0]) {
									rotate(a = [0, 180, 0]) {
										translate(v = [-20, 0, 0]) {
											rotate_extrude(angle = 20) {
												translate(v = [20, 0, 0]) {
													difference() {
														circle(d = 4);
														circle(d = 3.7);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 81.70925037986082]) {
					translate(v = [8.359387985546212, 0, 0]) {
						rotate(a = [0, 25, 0]) {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 110.51940114838234) {
									difference() {
										circle(d = 4);
										circle(d = 3.7);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 181.873844259267]) {
					translate(v = [55.06690518749862, 0, 0]) {
						rotate(a = [0, 25, 0]) {
							rotate(a = [0, 0, 90]) {
								rotate(a = [90, 0, 0]) {
									rotate(a = [0, 180, 0]) {
										translate(v = [-20, 0, 0]) {
											rotate_extrude(angle = 90) {
												translate(v = [20, 0, 0]) {
													difference() {
														circle(d = 4);
														circle(d = 3.7);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 19.999999999999996, 0]) {
					translate(v = [0, 0, 200.0]) {
						translate(v = [63.51927042231261, 0, 0]) {
							rotate(a = [-90, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									linear_extrude(height = 150.0) {
										difference() {
											circle(d = 4);
											circle(d = 3.7);
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 75, 0]) {
		translate(v = [0, 0, 200]) {
			translate(v = [91.47806374646058, 0, 0]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 72.04120667585204) {
						difference() {
							circle(d = 2.54);
							circle(d = 2.4);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 175]) {
		translate(v = [77.04430701671994, 0, 0]) {
			rotate(a = [0, 0, 3.8536018747352228]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 74.22842326400014) {
						difference() {
							circle(d = 2.54);
							circle(d = 2.4);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 75]) {
		translate(v = [20.096189432334203, 0, 0]) {
			rotate(a = [0, 0, 3.29773453200068]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 86.77547644686513) {
						difference() {
							circle(d = 2.54);
							circle(d = 2.4);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 37.5]) {
		translate(v = [10.048094716167101, 0, 0]) {
			rotate(a = [0, 0, 3.064702465304389]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 93.38773822343256) {
						difference() {
							circle(d = 2.54);
							circle(d = 2.4);
						}
					}
				}
			}
		}
	}
	extrude_from_to(pt1 = [128.54619606068772, 5.0, 125], pt2 = [163.51927042231262, 75, 200]) {
		difference() {
			circle(d = 2.54);
			circle(d = 2.4);
		}
	}
	translate(v = [0, 350, 0]) {
		mirror(v = [0, 1, 0]) {
			union() {
				rotate(a = [0, 15, 0]) {
					linear_extrude(height = 77.64571353075623) {
						difference() {
							circle(d = 4);
							circle(d = 3.7);
						}
					}
				}
				translate(v = [0, 0, 75.0]) {
					translate(v = [20.0961894323342, 0, 0]) {
						rotate(a = [0, 15, 0]) {
							rotate(a = [0, 0, 0]) {
								rotate(a = [90, 0, 0]) {
									rotate(a = [0, 180, 0]) {
										translate(v = [-20, 0, 0]) {
											rotate_extrude(angle = 15) {
												translate(v = [20, 0, 0]) {
													difference() {
														circle(d = 4);
														circle(d = 3.7);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 79.82361909794959]) {
					translate(v = [22.09419788242679, 0, 0]) {
						rotate(a = [0, 30, 0]) {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 118.7677317280676) {
									difference() {
										circle(d = 4);
										circle(d = 3.7);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 182.6794919243112]) {
					translate(v = [81.47806374646058, 0, 0]) {
						rotate(a = [0, 30, 0]) {
							rotate(a = [0, 0, 90]) {
								rotate(a = [90, 0, 0]) {
									rotate(a = [0, 180, 0]) {
										translate(v = [-20, 0, 0]) {
											rotate_extrude(angle = 90) {
												translate(v = [20, 0, 0]) {
													difference() {
														circle(d = 4);
														circle(d = 3.7);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 19.999999999999996, 0]) {
					translate(v = [0, 0, 199.99999999999997]) {
						translate(v = [91.47806374646058, 0, 0]) {
							rotate(a = [-90, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									linear_extrude(height = 155.0) {
										difference() {
											circle(d = 4);
											circle(d = 3.7);
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 5.0, 0]) {
					translate(v = [100, 0, 0]) {
						union() {
							rotate(a = [0, 5, 0]) {
								linear_extrude(height = 75.28648781575106) {
									difference() {
										circle(d = 4);
										circle(d = 3.7);
									}
								}
							}
							translate(v = [0, 0, 75.0]) {
								translate(v = [6.5616497644443, 0, 0]) {
									rotate(a = [0, 5, 0]) {
										rotate(a = [0, 0, 0]) {
											rotate(a = [90, 0, 0]) {
												rotate(a = [0, 180, 0]) {
													translate(v = [-20, 0, 0]) {
														rotate_extrude(angle = 20) {
															translate(v = [20, 0, 0]) {
																difference() {
																	circle(d = 4);
																	circle(d = 3.7);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 81.70925037986082]) {
								translate(v = [8.359387985546212, 0, 0]) {
									rotate(a = [0, 25, 0]) {
										rotate(a = [0, 0, 0]) {
											linear_extrude(height = 110.51940114838234) {
												difference() {
													circle(d = 4);
													circle(d = 3.7);
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 181.873844259267]) {
								translate(v = [55.06690518749862, 0, 0]) {
									rotate(a = [0, 25, 0]) {
										rotate(a = [0, 0, 90]) {
											rotate(a = [90, 0, 0]) {
												rotate(a = [0, 180, 0]) {
													translate(v = [-20, 0, 0]) {
														rotate_extrude(angle = 90) {
															translate(v = [20, 0, 0]) {
																difference() {
																	circle(d = 4);
																	circle(d = 3.7);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 19.999999999999996, 0]) {
								translate(v = [0, 0, 200.0]) {
									translate(v = [63.51927042231261, 0, 0]) {
										rotate(a = [-90, 0, 0]) {
											rotate(a = [0, 0, 0]) {
												linear_extrude(height = 150.0) {
													difference() {
														circle(d = 4);
														circle(d = 3.7);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 75, 0]) {
					translate(v = [0, 0, 200]) {
						translate(v = [91.47806374646058, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 72.04120667585204) {
									difference() {
										circle(d = 2.54);
										circle(d = 2.4);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 175]) {
					translate(v = [77.04430701671994, 0, 0]) {
						rotate(a = [0, 0, 3.8536018747352228]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 74.22842326400014) {
									difference() {
										circle(d = 2.54);
										circle(d = 2.4);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 75]) {
					translate(v = [20.096189432334203, 0, 0]) {
						rotate(a = [0, 0, 3.29773453200068]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 86.77547644686513) {
									difference() {
										circle(d = 2.54);
										circle(d = 2.4);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 37.5]) {
					translate(v = [10.048094716167101, 0, 0]) {
						rotate(a = [0, 0, 3.064702465304389]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 93.38773822343256) {
									difference() {
										circle(d = 2.54);
										circle(d = 2.4);
									}
								}
							}
						}
					}
				}
				extrude_from_to(pt1 = [128.54619606068772, 5.0, 125], pt2 = [163.51927042231262, 75, 200]) {
					difference() {
						circle(d = 2.54);
						circle(d = 2.4);
					}
				}
			}
		}
	}
}
