difference () {
    cylinder(h=7.5, d=5.1, $fn=80);
    translate([0,0,-0.05])
        cylinder(h=6.55, d=2, $fn=80);
    };
    
rotate_extrude ($fn=80)
    translate([5.7, 1.1,0])
        polygon([[0,0],[2.3,0],[2.3,0.9],[3.5,0.9],[3.5,5.9],[1.4,5.9],[1.4,7.3],[0,7.3]]);
    
module ray () {
    translate([2.4, -0.5, 1.9])
        cube([3.4, 1, 5.6]);
}

for (a = [ 0 : 1 : 4 ])
    rotate([0, 0, a * 72])
        ray();