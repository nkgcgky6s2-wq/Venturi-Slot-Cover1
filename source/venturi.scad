////////////////////////////////////////////////////
//
// venturi.scad
//
////////////////////////////////////////////////////

module VenturiOuter()
{

hull()
{

translate([BracketWidth+70,33,3])

scale([1.2,1,1])

cylinder(
d=10,
h=10);

translate([BracketWidth+96,34,5])

scale([0.8,0.7,1])

cylinder(
d=8,
h=8);

}

}

module VenturiInner()
{

hull()
{

translate([BracketWidth+70,33,5])

scale([1.0,0.8,1])

cylinder(
d=7,
h=7);

translate([BracketWidth+96,34,6])

scale([0.6,0.5,1])

cylinder(
d=5,
h=5);

}

}

module Venturi()
{

difference()
{

VenturiOuter();

VenturiInner();

}

}
module VenturiDuct()
{

difference()
{

VenturiOuter();

VenturiInner();

}

}
