////////////////////////////////////////////////////
//
// vanes.scad
//
////////////////////////////////////////////////////

VANE_LENGTH = 22;
VANE_HEIGHT = 10;
VANE_WIDTH  = 1.2;

module Vane(x)
{

translate([
BracketWidth+74,
x,
5
])

cube([
VANE_LENGTH,
VANE_WIDTH,
VANE_HEIGHT
]);

}

module Vanes()
{

Vane(28);

Vane(32);

Vane(36);

Vane(40);

}
