////////////////////////////////////////////////////
//
// venturi.scad
//
////////////////////////////////////////////////////

VENTURI_RATIO = 0.60;

IN_W = INLET_W;
IN_H = INLET_H;

OUT_W = INLET_W * VENTURI_RATIO;
OUT_H = INLET_H * VENTURI_RATIO;

VENTURI_LEN = 26;

module VenturiOuter()
{

    hull()
    {

        translate([DUCT_LEN-VENTURI_LEN,23,4])
            OvalBox(IN_W,IN_H,10);

        translate([DUCT_LEN+VENTURI_LEN,23,4])
            OvalBox(OUT_W,OUT_H,10);

    }

}

module VenturiInner()
{

    hull()
    {

        translate([DUCT_LEN-VENTURI_LEN+WALL,23,5])
            OvalBox(
                IN_W-2*WALL,
                IN_H-2*WALL,
                8);

        translate([DUCT_LEN+VENTURI_LEN-WALL,23,5])
            OvalBox(
                OUT_W-2*WALL,
                OUT_H-2*WALL,
                8);

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
