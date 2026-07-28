////////////////////////////////////////////////////
//
// intake.scad
//
////////////////////////////////////////////////////

include <BOSL2/std.scad>;

module Intake()
{

skin(

profiles=[

ellipse(d=[22,18]),

ellipse(d=[20,16]),

ellipse(d=[17,14]),

ellipse(d=[14,11]),

ellipse(d=[12,10])

],

slices=24,

z=[

0,

18,

38,

58,

78

]

);

}
