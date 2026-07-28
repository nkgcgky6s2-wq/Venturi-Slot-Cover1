include <parameters.scad>
include <helpers.scad>
include <bracket.scad>
include <duct.scad>
include <venturi.scad>
include <vanes.scad>

module Assembly()
{

union()
{

Bracket();

translate([BracketWidth-1,18,0])
{

Duct();

Venturi();

Vanes();

}

}

}

Assembly();
