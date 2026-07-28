////////////////////////////////////////////////////
//
// bracket.scad
//
////////////////////////////////////////////////////

HOOK_W = 11.3;
HOOK_H = 8.0;

EAR_Y = 9;

module Bracket()
{

difference()
{

union()
{

// Main plate
translate([0,0,0])
cube([BracketWidth,BracketHeight,BracketThickness]);

// Top hook
translate([
(BracketWidth-HOOK_W)/2,
BracketHeight-HOOK_H,
0
])
cube([
HOOK_W,
HOOK_H,
BracketThickness
]);

// Reinforced screw ear
translate([
BracketWidth/2,
EAR_Y,
0
])
cylinder(
d=18,
h=4.5);

// Neck
translate([
0,
0,
0
])
cube([
BracketWidth,
12,
4.5
]);

// Channel support
translate([
BracketWidth-1,
18,
0
])
cube([
8,
40,
18
]);

// Left rib
translate([
1,
14,
0
])
cube([
3,
30,
10
]);

// Right rib
translate([
BracketWidth-4,
14,
0
])
cube([
3,
30,
10
]);

}

// Screw hole
translate([
BracketWidth/2,
EAR_Y,
-1
])
cylinder(
d=4.2,
h=20);

}

}
