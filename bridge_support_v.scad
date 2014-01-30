deck=42;
side=3;
floor=51;
slope=4;
depth=10;

thickness = 4;

w=1.2;

difference() {
hull() {
cube([deck+2*side+slope*2, thickness, thickness]);
translate([slope, 0, floor]) cube([deck+2*side, thickness, depth]);
}

translate([slope+side, 0, floor]) cube([deck, thickness, depth]);


/*
hull() {
       translate([w, w, 2*w]) cube([deck+2*(side+slope-w), thickness-2*w, thickness]);
       translate([thickness+slope, w, floor-thickness]) cube([deck-2*slope, thickness-2*w,thickness]);
}
*/
}
