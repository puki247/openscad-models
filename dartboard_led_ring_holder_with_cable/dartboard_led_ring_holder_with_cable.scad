difference () {
    translate([0, -222, 0])
        import("HolderV4_short.stl");

    translate([-15.6, 100, 84])
        cylinder(h=20, d=7, $fn=30);
}

module cable_clip (orientation="left") {
    rotation = (orientation == "left") ? 1 : -1;
    rotate([0, rotation * (180 - 31), rotation * 90])
        union() {
            cube([10, 4, 9]);
            translate([0, 2, 7])
                cube([10, 8, 4]);
            translate([0, 2, 9])
                rotate([0, 90, 0])
                    cylinder(h=10, d=4, $fn=30);
        }
}

//translate([-12.4, 15, 40])
//  rotate([-59, 0, 3.5])
//    cube([4, 4, 100]);

translate([-21.8, 85, 83.5])
  rotate([0, 0, 3.5])
    cable_clip("right");
translate([-6.1, 59, 67.7])
  rotate([0, 0, 3.5])
    cable_clip("left");
translate([-17.4, 15, 41.4])
  rotate([0, 0, 3.5])
    cable_clip("right");
