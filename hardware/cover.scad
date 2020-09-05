include <config.scad>

difference() {
    cube([length, width, wall_thickness]);

    linear_extrude(height) {
        translate([box_bolt_size/2, box_bolt_size/2, 0])
            circle(d=box_bolt_cover, $fn=20);
        translate([box_bolt_size/2, width - (box_bolt_size/2), 0])
            circle(d=box_bolt_cover, $fn=20);
        translate([length - (box_bolt_size/2), box_bolt_size/2, 0])
            circle(d=box_bolt_cover, $fn=20);
        translate([length - (box_bolt_size/2), width - (box_bolt_size/2), 0])
            circle(d=box_bolt_cover, $fn=20);
    }

    linear_extrude(height) {
        translate([led_x, led_y, 0]) {
            circle(d=5.3, $fn=20);
            translate([distance_led_button, 0, 0])
                circle(d=7.5, $fn=20);
        }

        translate([display_cut_x, 0, 0])
            square([display_cut_length, display_cut_width]);
    }
}
