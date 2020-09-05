include <config.scad>

difference() {
    union() {
        linear_extrude(wall_thickness) {
            // base
            square([length, width]);
        }

        linear_extrude(height) {
            // sides
            square([length, wall_thickness]);
            square([wall_thickness, width]);
            translate([0, width - wall_thickness, 0])
                square([length, wall_thickness]);
            translate([length - wall_thickness, 0, 0])
                square([wall_thickness, width]);

            // box bolt bases
            square([box_bolt_size, box_bolt_size]);
            translate([0, width - box_bolt_size, 0])
                square([box_bolt_size, box_bolt_size]);
            translate([length - box_bolt_size, 0, 0])
                square([box_bolt_size, box_bolt_size]);
            translate([length - box_bolt_size, width - box_bolt_size, 0])
                square([box_bolt_size, box_bolt_size]);
        }

        // pcb bolt bases
        linear_extrude(thread_base_height) {
            translate([h1_x, h1_y, 0])
                circle(d=thread_base_d, $fn=20);
            translate([h2_x, h2_y, 0])
                circle(d=thread_base_d, $fn=20);
            translate([h3_x, h3_y, 0])
                circle(d=thread_base_d, $fn=20);
            translate([h4_x, h4_y, 0])
                circle(d=thread_base_d, $fn=20);
        }
    }

    translate([0, 0, height - 16]) {
        linear_extrude(16) {
            translate([box_bolt_size/2, box_bolt_size/2, 0])
                circle(d=box_bolt, $fn=20);
            translate([box_bolt_size/2, width - (box_bolt_size/2), 0])
                circle(d=box_bolt, $fn=20);
            translate([length - (box_bolt_size/2), box_bolt_size/2, 0])
                circle(d=box_bolt, $fn=20);
            translate([length - (box_bolt_size/2), width - (box_bolt_size/2), 0])
                circle(d=box_bolt, $fn=20);
        }
    }

    linear_extrude(wall_thickness) {
        translate([6.5, 30, 0])
            circle(d=3.6, $fn=20);
        translate([length - 6.5, 30, 0])
            circle(d=3.6, $fn=20);
    }

    translate([0, 0, thread_base_height - thread_hole_height]) {
        linear_extrude(thread_hole_height) {
            translate([h1_x, h1_y, 0])
                circle(d=thread_hole_d, $fn=20);
            translate([h2_x, h2_y, 0])
                circle(d=thread_hole_d, $fn=20);
            translate([h3_x, h3_y, 0])
                circle(d=thread_hole_d, $fn=20);
            translate([h4_x, h4_y, 0])
                circle(d=thread_hole_d, $fn=20);
        }
    }

    translate([0, 0, height - display_cut_height])
        linear_extrude(display_cut_height)
            translate([display_cut_x, 0, 0])
                square([display_cut_length, wall_thickness]);

    rotate([-90, 0, -90])
        linear_extrude(wall_thickness)
            translate([-15, -height/2, 0])
                square([4, 2], center=true);

    translate([length - wall_thickness - 1, 0, 0])
        rotate([-90, 0, -90])
            linear_extrude(wall_thickness + 1)
                translate([-15, -height/2, 0])
                    square([7, 2], center=true);
}
