include <./base.scad>;
$fn = 100;

// sbc_off = false;
// accessory_name = "rpi5_m2hat";

translate([ -30, 22, -34 ])
difference()
{
	union()
	{

		// main case
		translate([ 0, -19, -2 ])
		difference()
		{
			union()
			{
				translate([ -15, 0, 0 ])
				base(sbc_off, accessory_name);
				// fan holder
				// translate([ 38, -2, 1 ])
				// linear_extrude(h = 37) square([ 35, 20 ]);

				// power hole
				translate([ -11, 17, 38 ])
				rotate([ 90, 90, 0 ])
				linear_extrude(h = 20) offset(2) offset(-2) square([ 32, 16 ]);
			}

			union()
			{
				translate([ -19, -6 ])
				linear_extrude(h = 2) square([ 113, 98 ]);

				translate([ -15, 0, -34 ])
				linear_extrude(h = 38) square([ 87, 75 ]);

				translate([ 8, -7, -26 ])
				linear_extrude(h = 55) offset(4) offset(-4) square([ 33, 16 ]);

				translate([ 66, 58, 10 ])
				linear_extrude(h = 17) square([ 10, 16 ]);

				translate([ 66, 40, 10 ])
				linear_extrude(h = 17) square([ 10, 16 ]);

				// fancutout
				// translate([ 42, 0, 5 ])
				// vent_hex(15, 10, 12, 2, 1.5, "vertical");

				// fan holder
				// translate([ 40, 0, -9 ])
				// linear_extrude(h = 45) square([ 31, 8 ]);
				// translate([ 42, 0, -9 ])
				// linear_extrude(h = 45) square([ 27, 19 ]);

				// power hole
				translate([ -10, 18, 16 ])
				rotate([ 90, 90, 0 ])
				linear_extrude(h = 27) offset(2) offset(-2) square([ 8, 14 ]);

				// button hole
				translate([ 50, 10, 18 ])
				rotate([ 0, 90, 0 ])
				linear_extrude(h = 37) circle(r = 6);
			}
		}
		translate([ 75, 38, 17 ])
		linear_extrude(h = 9) square([ 2, 18 ]);

		// fastener with channel
		translate([ -12, -8, -8 ])
		difference()
		{
			union()
			{
				translate([ 56, -10, -23 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 60, scale = [ 1, 1 ]) offset(4) offset(-4) square([ 39, 18 ]);

				translate([ 56, -11, 37 ])
				rotate([ 180, 180, 0 ])
				linear_extrude(h = 5, scale = [ 1, .2 ]) offset(4) offset(-4) square([ 39, 17 ]);
			}
			union()
			{
				translate([ 56, -4, -16 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 56) square([ 39, 10 ]);
				translate([ 56, -6, -16 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 24) square([ 39, 10 ]);
				translate([ 53, -8, -20 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 56, scale = [ 1, 1 ]) offset(2) offset(-2) square([ 33, 18 ]);

				translate([ 34, -20, -30 ])
				linear_extrude(h = 18, scale = [ 1, 1 ]) square([ 6, 2 ]);
			}
		}

		// fastener without channel
		translate([ -16, 0, -2 ])
		difference()
		{
			union()
			{

				translate([ 26, 56, -26 ])
				linear_extrude(h = 32) offset(1) offset(-1) square([ 30, 6 ]);

				translate([ 26, 59, 6 ])
				linear_extrude(h = 4, scale = [ 1, .3 ]) offset(1) offset(-1) square([ 30, 3 ]);
			}

			union()
			{
				translate([ 38, 54, -22 ])
				linear_extrude(h = 18, scale = [ 1, 1 ]) square([ 6, 4 ]);
				translate([ 38, 58, -30 ])
				linear_extrude(h = 18, scale = [ 1, 1 ]) square([ 6, 2 ]);
				translate([ 26, 55, -19 ])
				linear_extrude(h = 26) square([ 30, 4 ]);
			}
		}

		//
		// translate([ 0, -20, 31 ])
		// difference()
		// {
		// 	linear_extrude(h = 3) square([ 89, 78 ]);

		// 	union()
		// 	{
		// 		translate([ 36, 48, 0 ])
		// 		linear_extrude(h = 20) circle(r = 20);
		// 		translate([ 6, 23, 0 ])
		// 		linear_extrude(h = 20) circle(r = 4);
		// 		translate([ 6, 73, 0 ])
		// 		linear_extrude(h = 20) circle(r = 4);
		// 		translate([ 64, 23, 0 ])
		// 		linear_extrude(h = 20) circle(r = 4);
		// 		translate([ 64, 73, 0 ])
		// 		linear_extrude(h = 20) circle(r = 4);
		// 	}
		// }
	}

	// translate([ -3, -24, 34 ])

	// linear_extrude(h = 30) square([ 94, 96 ]);
}
