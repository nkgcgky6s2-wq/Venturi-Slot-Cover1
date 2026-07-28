////////////////////////////////////////////////////
//
// duct.scad
//
////////////////////////////////////////////////////

DUCT_LEN = 74;
DUCT_H = 18;
DUCT_W = 20;
WALL = 2.4;

module DuctOuter()
{

hull()
{

translate([0,18,0])
cube([12,DUCT_W,DUCT_H]);

translate([DUCT_LEN,22,3])
cube([12,12,12]);

}

}

module DuctInner()
{

hull()
{

translate([WALL,20,WALL])
cube([10,DUCT_W-4,DUCT_H-4]);

translate([DUCT_LEN-2,24,5])
cube([10,8,8]);

}

}

module Duct()
{

difference()
{

DuctOuter();

DuctInner();

}

}
