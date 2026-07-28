include <parameters.scad>
include <helpers.scad>
include <bracket.scad>
include <duct.scad>
include <vanes.scad>

module Assembly()
{

union()
{

Bracket();

translate([
BracketWidth-1,
18,
0
])

Duct();

Vanes();

}

}

Assembly();
