echo(version=version());

// Using a shape that touches the X axis is allowed and produces
// 3D objects that don't have a hole in the center.
// color("green")
module end_piece () {
    rotate_extrude($fn = 80)
        polygon( points=[[0,0],[1.85,0],[1.85,1.5],[1.1,1.5],[1.1,2.5],[0.95,2.5],[0.95,6.4],[1.2,6.4],[0.8,7.6],[0.3,7.9],[0,7.9]] );
}

translate([12.5,0,0])
    rotate([0,90,0])
        end_piece();
translate([-12.5,0,0])
    rotate([0,-90,0])
        end_piece();

rotate([0,90,0])
    cylinder(h=17, d=3.8, center=true, $fn=80);

module valec () {
    difference() {
        cylinder(h=6.5, d1=5.1, d2=5.9, center=true, $fn=80);
        cylinder(h=6.7, d1=2.9, d2=2.6, center=true, $fn=80);
        }
    }
    
translate([10.5,0,0.6])    
    valec();
    
translate([-10.5,0,0.6])    
    valec();
    