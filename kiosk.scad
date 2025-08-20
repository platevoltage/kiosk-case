include <./base.scad>;
$fn = 100;

sbc_off = false;
accessory_name = "rpi5_m2hat";

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
				base(sbc_off, accessory_name);

				// fan holder
				translate([ 38, 0, 10 ])
				linear_extrude(h = 20) square([ 34, 10 ]);
			}

			union()
			{
				translate([ -4, -6 ])
				linear_extrude(h = 2) square([ 98, 98 ]);

				translate([ 0, 0, -34 ])
				linear_extrude(h = 40) square([ 87, 75 ]);

				translate([ 4, -7, -26 ])
				linear_extrude(h = 55) offset(4) offset(-4) square([ 33, 16 ]);

				translate([ 90, 58, 10 ])
				linear_extrude(h = 17) square([ 10, 16 ]);

				translate([ 90, 40, 10 ])
				linear_extrude(h = 17) square([ 10, 16 ]);

				// fancutout
				translate([ 42, 0, 5 ])
				vent_hex(15, 10, 12, 2, 1.5, "vertical");
				// rotate([ 90, 0, 0 ])
				// linear_extrude(h = 20) circle(r = 12);

				// fan holder
				translate([ 40, 0, 8 ])
				linear_extrude(h = 22) square([ 30, 8 ]);
				translate([ 42, 0, 8 ])
				linear_extrude(h = 22) square([ 26, 12 ]);
			}
		}

		// fastener with channel
		translate([ -16, -8, -8 ])
		difference()
		{
			union()
			{
				translate([ 56, -10, -23 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 60, scale = [ 1, .9 ]) offset(4) offset(-4) square([ 39, 17 ]);

				translate([ 56, -11, 37 ])
				rotate([ 180, 180, 0 ])
				linear_extrude(h = 5, scale = [ 1, .3 ]) offset(4) offset(-4) square([ 39, 14 ]);
			}
			union()
			{
				translate([ 56, -4, -14 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 56) square([ 39, 10 ]);
				translate([ 56, -6, -14 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 22) square([ 39, 10 ]);
				translate([ 53, -8, -20 ])
				rotate([ 0, 0, 180 ])
				linear_extrude(h = 56, scale = [ 1, .9 ]) offset(2) offset(-2) square([ 33, 18 ]);
			}
		}

		// fastener without channel
		translate([ 0, 0, -2 ])
		difference()
		{
			union()
			{

				translate([ 26, 56, -23 ])
				linear_extrude(h = 28) offset(1) offset(-1) square([ 30, 6 ]);

				translate([ 26, 59, 5 ])
				linear_extrude(h = 4, scale = [ 1, .3 ]) offset(1) offset(-1) square([ 30, 3 ]);
			}

			translate([ 26, 55, -19 ])
			linear_extrude(h = 24) square([ 30, 4 ]);
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
