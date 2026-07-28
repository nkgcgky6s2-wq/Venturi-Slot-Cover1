////////////////////////////////////////////////////
//
// vanes.scad
//
////////////////////////////////////////////////////

VANE_T = 1.2;
VANE_L = 20;
VANE_H = 9;

module OneVane(y)
{

translate([
60,
y,
5
])

cube([
VANE_L,
VANE_T,
VANE_H
]);

}

module Vanes()
{

OneVane(24);
OneVane(28);
OneVane(32);
OneVane(36);

}
