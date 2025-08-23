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
	difference() {
		union() {
			rotate(a = [0, 15, 0]) {
				linear_extrude(height = 776.4571353075622) {
					difference() {
						circle(d = 40);
						circle(d = 37);
					}
				}
			}
			translate(v = [0, 0, 750.0]) {
				translate(v = [200.961894323342, 0, 0]) {
					rotate(a = [0, 15, 0]) {
						rotate(a = [0, 0, 0]) {
							rotate(a = [90, 0, 0]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [-200, 0, 0]) {
										rotate_extrude(angle = 15) {
											translate(v = [200, 0, 0]) {
												difference() {
													circle(d = 40);
													circle(d = 37);
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
			translate(v = [0, 0, 798.2361909794959]) {
				translate(v = [220.94197882426792, 0, 0]) {
					rotate(a = [0, 30, 0]) {
						rotate(a = [0, 0, 0]) {
							linear_extrude(height = 1187.6773172806759) {
								difference() {
									circle(d = 40);
									circle(d = 37);
								}
							}
						}
					}
				}
			}
			translate(v = [0, 0, 1826.7949192431122]) {
				translate(v = [814.7806374646058, 0, 0]) {
					rotate(a = [0, 30, 0]) {
						rotate(a = [0, 0, 90]) {
							rotate(a = [90, 0, 0]) {
								rotate(a = [0, 180, 0]) {
									translate(v = [-200, 0, 0]) {
										rotate_extrude(angle = 90) {
											translate(v = [200, 0, 0]) {
												difference() {
													circle(d = 40);
													circle(d = 37);
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
			translate(v = [0, 199.99999999999997, 0]) {
				translate(v = [0, 0, 2000.0]) {
					translate(v = [914.7806374646058, 0, 0]) {
						rotate(a = [-90, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 1550.0) {
									difference() {
										circle(d = 40);
										circle(d = 37);
									}
								}
							}
						}
					}
				}
			}
			rotate(a = [0, 195, 0]) {
				linear_extrude(height = 8) {
					difference() {
						circle(d = 40);
						circle(d = 37);
					}
				}
			}
		}
		translate(v = [0, 0, -16]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = 24) {
					circle(d = 100);
				}
			}
		}
	}
	translate(v = [0, 50.0, 0]) {
		translate(v = [1000, 0, 0]) {
			difference() {
				union() {
					rotate(a = [0, 5, 0]) {
						linear_extrude(height = 752.8648781575106) {
							difference() {
								circle(d = 40);
								circle(d = 37);
							}
						}
					}
					translate(v = [0, 0, 750.0]) {
						translate(v = [65.616497644443, 0, 0]) {
							rotate(a = [0, 5, 0]) {
								rotate(a = [0, 0, 0]) {
									rotate(a = [90, 0, 0]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [-200, 0, 0]) {
												rotate_extrude(angle = 20) {
													translate(v = [200, 0, 0]) {
														difference() {
															circle(d = 40);
															circle(d = 37);
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
					translate(v = [0, 0, 817.0925037986083]) {
						translate(v = [83.59387985546212, 0, 0]) {
							rotate(a = [0, 25, 0]) {
								rotate(a = [0, 0, 0]) {
									linear_extrude(height = 1105.1940114838233) {
										difference() {
											circle(d = 40);
											circle(d = 37);
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 1818.73844259267]) {
						translate(v = [550.6690518749862, 0, 0]) {
							rotate(a = [0, 25, 0]) {
								rotate(a = [0, 0, 90]) {
									rotate(a = [90, 0, 0]) {
										rotate(a = [0, 180, 0]) {
											translate(v = [-200, 0, 0]) {
												rotate_extrude(angle = 90) {
													translate(v = [200, 0, 0]) {
														difference() {
															circle(d = 40);
															circle(d = 37);
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
					translate(v = [0, 199.99999999999997, 0]) {
						translate(v = [0, 0, 2000.0]) {
							translate(v = [635.192704223126, 0, 0]) {
								rotate(a = [-90, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 1500.0) {
											difference() {
												circle(d = 40);
												circle(d = 37);
											}
										}
									}
								}
							}
						}
					}
					rotate(a = [0, 185, 0]) {
						linear_extrude(height = 8) {
							difference() {
								circle(d = 40);
								circle(d = 37);
							}
						}
					}
				}
				translate(v = [0, 0, -16]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 24) {
							circle(d = 100);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 750, 0]) {
		translate(v = [0, 0, 2000]) {
			translate(v = [914.7806374646058, 0, 0]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 720.4120667585203) {
						difference() {
							circle(d = 25.4);
							circle(d = 24);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 1750]) {
		translate(v = [770.4430701671994, 0, 0]) {
			rotate(a = [0, 0, 3.8536018747352236]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 742.2842326400013) {
						difference() {
							circle(d = 25.4);
							circle(d = 24);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 750]) {
		translate(v = [200.96189432334202, 0, 0]) {
			rotate(a = [0, 0, 3.29773453200068]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 867.7547644686513) {
						difference() {
							circle(d = 25.4);
							circle(d = 24);
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 375.0]) {
		translate(v = [100.48094716167101, 0, 0]) {
			rotate(a = [0, 0, 3.064702465304389]) {
				rotate(a = [0, 90, 0]) {
					linear_extrude(height = 933.8773822343256) {
						difference() {
							circle(d = 25.4);
							circle(d = 24);
						}
					}
				}
			}
		}
	}
	extrude_from_to(pt1 = [1355.4081093301268, 50.0, 1400.0], pt2 = [1635.192704223126, 750, 2000]) {
		difference() {
			circle(d = 25.4);
			circle(d = 24);
		}
	}
	translate(v = [0, 750, 0]) {
		translate(v = [0, 0, 2000]) {
			translate(v = [1635.192704223126, 0, 0]) {
				union() {
					rotate(a = [0, 90, 0]) {
						linear_extrude(height = 300) {
							difference() {
								circle(d = 40);
								circle(d = 37);
							}
						}
					}
					translate(v = [300, 0, 0]) {
						rotate(a = [0, 90, 0]) {
							linear_extrude(height = 3) {
								circle(d = 40);
							}
						}
					}
					translate(v = [320.0, 0, 0]) {
						rotate(a = [90, 0, 0]) {
							extrude_from_to(pt1 = [0, 0, -4.0], pt2 = [0, 0, 4.0]) {
								difference() {
									union() {
										circle(d = 37);
										translate(v = [-20.0, 0, 0]) {
											square(center = true, size = 37);
										}
									}
									circle(d = 20);
								}
							}
						}
					}
				}
			}
		}
	}
	difference() {
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = 8) {
				circle(d = 100);
			}
		}
		translate(v = [0, 30.310889132455355, 0]) {
			translate(v = [17.500000000000004, 0, 0]) {
				rotate(a = [0, 0, 0]) {
					linear_extrude(height = 8) {
						circle(d = 8.5);
					}
				}
			}
		}
		translate(v = [0, -30.310889132455355, 0]) {
			translate(v = [17.500000000000004, 0, 0]) {
				rotate(a = [0, 0, 0]) {
					linear_extrude(height = 8) {
						circle(d = 8.5);
					}
				}
			}
		}
		translate(v = [-35.0, 0, 0]) {
			rotate(a = [0, 0, 0]) {
				linear_extrude(height = 8) {
					circle(d = 8.5);
				}
			}
		}
		rotate(a = [0, 0, 0]) {
			linear_extrude(height = 8) {
				circle(d = 37);
			}
		}
	}
	translate(v = [0, 50.0, 0]) {
		translate(v = [1000, 0, 0]) {
			difference() {
				rotate(a = [0, 0, 0]) {
					linear_extrude(height = 8) {
						circle(d = 100);
					}
				}
				translate(v = [0, 30.310889132455355, 0]) {
					translate(v = [17.500000000000004, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							linear_extrude(height = 8) {
								circle(d = 8.5);
							}
						}
					}
				}
				translate(v = [0, -30.310889132455355, 0]) {
					translate(v = [17.500000000000004, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							linear_extrude(height = 8) {
								circle(d = 8.5);
							}
						}
					}
				}
				translate(v = [-35.0, 0, 0]) {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 8) {
							circle(d = 8.5);
						}
					}
				}
				rotate(a = [0, 0, 0]) {
					linear_extrude(height = 8) {
						circle(d = 37);
					}
				}
			}
		}
	}
	translate(v = [0, 3500, 0]) {
		mirror(v = [0, 1, 0]) {
			union() {
				difference() {
					union() {
						rotate(a = [0, 15, 0]) {
							linear_extrude(height = 776.4571353075622) {
								difference() {
									circle(d = 40);
									circle(d = 37);
								}
							}
						}
						translate(v = [0, 0, 750.0]) {
							translate(v = [200.961894323342, 0, 0]) {
								rotate(a = [0, 15, 0]) {
									rotate(a = [0, 0, 0]) {
										rotate(a = [90, 0, 0]) {
											rotate(a = [0, 180, 0]) {
												translate(v = [-200, 0, 0]) {
													rotate_extrude(angle = 15) {
														translate(v = [200, 0, 0]) {
															difference() {
																circle(d = 40);
																circle(d = 37);
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
						translate(v = [0, 0, 798.2361909794959]) {
							translate(v = [220.94197882426792, 0, 0]) {
								rotate(a = [0, 30, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 1187.6773172806759) {
											difference() {
												circle(d = 40);
												circle(d = 37);
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 1826.7949192431122]) {
							translate(v = [814.7806374646058, 0, 0]) {
								rotate(a = [0, 30, 0]) {
									rotate(a = [0, 0, 90]) {
										rotate(a = [90, 0, 0]) {
											rotate(a = [0, 180, 0]) {
												translate(v = [-200, 0, 0]) {
													rotate_extrude(angle = 90) {
														translate(v = [200, 0, 0]) {
															difference() {
																circle(d = 40);
																circle(d = 37);
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
						translate(v = [0, 199.99999999999997, 0]) {
							translate(v = [0, 0, 2000.0]) {
								translate(v = [914.7806374646058, 0, 0]) {
									rotate(a = [-90, 0, 0]) {
										rotate(a = [0, 0, 0]) {
											linear_extrude(height = 1550.0) {
												difference() {
													circle(d = 40);
													circle(d = 37);
												}
											}
										}
									}
								}
							}
						}
						rotate(a = [0, 195, 0]) {
							linear_extrude(height = 8) {
								difference() {
									circle(d = 40);
									circle(d = 37);
								}
							}
						}
					}
					translate(v = [0, 0, -16]) {
						rotate(a = [0, 0, 0]) {
							linear_extrude(height = 24) {
								circle(d = 100);
							}
						}
					}
				}
				translate(v = [0, 50.0, 0]) {
					translate(v = [1000, 0, 0]) {
						difference() {
							union() {
								rotate(a = [0, 5, 0]) {
									linear_extrude(height = 752.8648781575106) {
										difference() {
											circle(d = 40);
											circle(d = 37);
										}
									}
								}
								translate(v = [0, 0, 750.0]) {
									translate(v = [65.616497644443, 0, 0]) {
										rotate(a = [0, 5, 0]) {
											rotate(a = [0, 0, 0]) {
												rotate(a = [90, 0, 0]) {
													rotate(a = [0, 180, 0]) {
														translate(v = [-200, 0, 0]) {
															rotate_extrude(angle = 20) {
																translate(v = [200, 0, 0]) {
																	difference() {
																		circle(d = 40);
																		circle(d = 37);
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
								translate(v = [0, 0, 817.0925037986083]) {
									translate(v = [83.59387985546212, 0, 0]) {
										rotate(a = [0, 25, 0]) {
											rotate(a = [0, 0, 0]) {
												linear_extrude(height = 1105.1940114838233) {
													difference() {
														circle(d = 40);
														circle(d = 37);
													}
												}
											}
										}
									}
								}
								translate(v = [0, 0, 1818.73844259267]) {
									translate(v = [550.6690518749862, 0, 0]) {
										rotate(a = [0, 25, 0]) {
											rotate(a = [0, 0, 90]) {
												rotate(a = [90, 0, 0]) {
													rotate(a = [0, 180, 0]) {
														translate(v = [-200, 0, 0]) {
															rotate_extrude(angle = 90) {
																translate(v = [200, 0, 0]) {
																	difference() {
																		circle(d = 40);
																		circle(d = 37);
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
								translate(v = [0, 199.99999999999997, 0]) {
									translate(v = [0, 0, 2000.0]) {
										translate(v = [635.192704223126, 0, 0]) {
											rotate(a = [-90, 0, 0]) {
												rotate(a = [0, 0, 0]) {
													linear_extrude(height = 1500.0) {
														difference() {
															circle(d = 40);
															circle(d = 37);
														}
													}
												}
											}
										}
									}
								}
								rotate(a = [0, 185, 0]) {
									linear_extrude(height = 8) {
										difference() {
											circle(d = 40);
											circle(d = 37);
										}
									}
								}
							}
							translate(v = [0, 0, -16]) {
								rotate(a = [0, 0, 0]) {
									linear_extrude(height = 24) {
										circle(d = 100);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 750, 0]) {
					translate(v = [0, 0, 2000]) {
						translate(v = [914.7806374646058, 0, 0]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 720.4120667585203) {
									difference() {
										circle(d = 25.4);
										circle(d = 24);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 1750]) {
					translate(v = [770.4430701671994, 0, 0]) {
						rotate(a = [0, 0, 3.8536018747352236]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 742.2842326400013) {
									difference() {
										circle(d = 25.4);
										circle(d = 24);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 750]) {
					translate(v = [200.96189432334202, 0, 0]) {
						rotate(a = [0, 0, 3.29773453200068]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 867.7547644686513) {
									difference() {
										circle(d = 25.4);
										circle(d = 24);
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 375.0]) {
					translate(v = [100.48094716167101, 0, 0]) {
						rotate(a = [0, 0, 3.064702465304389]) {
							rotate(a = [0, 90, 0]) {
								linear_extrude(height = 933.8773822343256) {
									difference() {
										circle(d = 25.4);
										circle(d = 24);
									}
								}
							}
						}
					}
				}
				extrude_from_to(pt1 = [1355.4081093301268, 50.0, 1400.0], pt2 = [1635.192704223126, 750, 2000]) {
					difference() {
						circle(d = 25.4);
						circle(d = 24);
					}
				}
				translate(v = [0, 750, 0]) {
					translate(v = [0, 0, 2000]) {
						translate(v = [1635.192704223126, 0, 0]) {
							union() {
								rotate(a = [0, 90, 0]) {
									linear_extrude(height = 300) {
										difference() {
											circle(d = 40);
											circle(d = 37);
										}
									}
								}
								translate(v = [300, 0, 0]) {
									rotate(a = [0, 90, 0]) {
										linear_extrude(height = 3) {
											circle(d = 40);
										}
									}
								}
								translate(v = [320.0, 0, 0]) {
									rotate(a = [90, 0, 0]) {
										extrude_from_to(pt1 = [0, 0, -4.0], pt2 = [0, 0, 4.0]) {
											difference() {
												union() {
													circle(d = 37);
													translate(v = [-20.0, 0, 0]) {
														square(center = true, size = 37);
													}
												}
												circle(d = 20);
											}
										}
									}
								}
							}
						}
					}
				}
				difference() {
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 8) {
							circle(d = 100);
						}
					}
					translate(v = [0, 30.310889132455355, 0]) {
						translate(v = [17.500000000000004, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 8) {
									circle(d = 8.5);
								}
							}
						}
					}
					translate(v = [0, -30.310889132455355, 0]) {
						translate(v = [17.500000000000004, 0, 0]) {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 8) {
									circle(d = 8.5);
								}
							}
						}
					}
					translate(v = [-35.0, 0, 0]) {
						rotate(a = [0, 0, 0]) {
							linear_extrude(height = 8) {
								circle(d = 8.5);
							}
						}
					}
					rotate(a = [0, 0, 0]) {
						linear_extrude(height = 8) {
							circle(d = 37);
						}
					}
				}
				translate(v = [0, 50.0, 0]) {
					translate(v = [1000, 0, 0]) {
						difference() {
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 8) {
									circle(d = 100);
								}
							}
							translate(v = [0, 30.310889132455355, 0]) {
								translate(v = [17.500000000000004, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 8) {
											circle(d = 8.5);
										}
									}
								}
							}
							translate(v = [0, -30.310889132455355, 0]) {
								translate(v = [17.500000000000004, 0, 0]) {
									rotate(a = [0, 0, 0]) {
										linear_extrude(height = 8) {
											circle(d = 8.5);
										}
									}
								}
							}
							translate(v = [-35.0, 0, 0]) {
								rotate(a = [0, 0, 0]) {
									linear_extrude(height = 8) {
										circle(d = 8.5);
									}
								}
							}
							rotate(a = [0, 0, 0]) {
								linear_extrude(height = 8) {
									circle(d = 37);
								}
							}
						}
					}
				}
			}
		}
	}
}
