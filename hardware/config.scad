pcb_length = 66.1;
pcb_width = 36.1;
pcb_height = 15;
pcb_clearance = 4;

empty_width = 16;

thread_base_height = 7;
thread_base_d = 7.3;

thread_hole_height = 5.7;
thread_hole_d = 4.3;

length = pcb_length + 24;
width = pcb_width + empty_width + (2 * pcb_clearance);
height = pcb_height + thread_base_height + 1.8;

display_cut_x = 31;
display_cut_height = pcb_height - 3;
display_cut_length = 30;
display_cut_width = 22;

distance_led_button = 19;
led_x = (length - distance_led_button) / 2;
led_y = width - (empty_width / 2);

wall_thickness = 2;
box_bolt_size = 5;
box_bolt = 1.9;
box_bolt_cover = 2.2;

pcb_hole_abs_d = 2.5;

h1_x = 12 + pcb_hole_abs_d;
h1_y = pcb_clearance + pcb_hole_abs_d;
h2_x = length - 12 - pcb_hole_abs_d;
h2_y = h1_y;
h3_x = h1_x;
h3_y = pcb_clearance + pcb_hole_abs_d + 31 /* space between length holes */;
h4_x = h2_x;
h4_y = h3_y;
