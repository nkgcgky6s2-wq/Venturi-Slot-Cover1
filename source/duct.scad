////////////////////////////////////////////////////
//
// duct.scad
//
////////////////////////////////////////////////////

INLET_W = 20;
INLET_H = 18;

OUTLET_W = 12;
OUTLET_H = 10;

DUCT_LEN = 74;
WALL = 2.4;

module OvalBox(w,h,z)
{
    scale([w/h,1,1])
        cylinder(d=h,h=z,$fn=64);
}

module DuctOuter()
{

    hull()
    {

        translate([0,20,0])
            OvalBox(INLET_W,INLET_H,18);

        translate([22,21,1])
            OvalBox(18,16,16);

        translate([48,22,2])
            OvalBox(15,13,13);

        translate([DUCT_LEN,23,4])
            OvalBox(OUTLET_W,OUTLET_H,10);

    }

}

module DuctInner()
{

    hull()
    {

        translate([WALL,20,WALL])
            OvalBox(INLET_W-2*WALL,
                    INLET_H-2*WALL,
                    18-WALL);

        translate([22,21,WALL+1])
            OvalBox(16,14,14);

        translate([48,22,WALL+2])
            OvalBox(13,11,11);

        translate([DUCT_LEN-2,23,WALL+3])
            OvalBox(
                OUTLET_W-2*WALL,
                OUTLET_H-2*WALL,
                8);

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
