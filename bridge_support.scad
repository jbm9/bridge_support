deck=42;
side=3;
floor=51;
slope=4;
depth=10;

thickness = 5;

difference() {
hull() {
cube([deck+2*side+slope*2, thickness, thickness]);
translate([slope, floor, 0]) cube([deck+2*side, depth, thickness]);
}

translate([slope+side, floor, 0]) cube([deck, depth, thickness]);

hull() {
       translate([thickness, thickness,0]) cube([deck+2*(side+slope-thickness), 1,thickness]);
       translate([thickness+slope, floor-thickness, 0]) cube([deck-slope, 1,thickness]);
}

}
