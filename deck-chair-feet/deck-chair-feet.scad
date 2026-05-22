// Deck Chair Feet
// A cylindrical foot cap with center hole and chamfered edge

// Parameters
outer_diameter = 36.5;  // [30:50] Outer diameter in mm
height = 10;           // [5:15] Height in mm
hole_diameter = 21.5;   // [15:30] Center hole diameter in mm
chamfer = 2;          // [0.5:3] Chamfer size in mm
notch_width = 8;      // [5:12] Screwdriver notch width in mm
notch_depth = 4;      // [2:6] Screwdriver notch depth in mm
notch_height = 5;     // [2:7] Screwdriver notch height in mm

// Model
difference() {
    cylinder(h = height, d = outer_diameter, $fn = 256);

    // Center hole
    translate([0, 0, -0.1])
        cylinder(h = height + 0.2, d = hole_diameter, $fn = 256);

    // Top outer chamfer
    translate([0, 0, height - chamfer])
        difference() {
            cylinder(h = chamfer + 0.1, d = outer_diameter + 0.2, $fn = 256);
            cylinder(h = chamfer + 0.1, d1 = outer_diameter, d2 = outer_diameter - chamfer * 2, $fn = 256);
        }

    // Screwdriver notches open to inside hole
    for (angle = [0, 180]) {
        rotate([0, 0, angle])
            translate([0, -notch_width / 2, -0.1])
                cube([hole_diameter / 2 + notch_depth, notch_width, notch_height + 0.1]);
    }
}
