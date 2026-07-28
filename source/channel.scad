////////////////////////////////////////////////////
//
// channel.scad
//
////////////////////////////////////////////////////

module AirSection(x,y,z,w,h)
{

translate([x,y,z])

scale([w/h,1,1])

cylinder(
d=h,
h=1);

}

module ChannelOuter()
{

hull()
{

AirSection(
BracketWidth+4,
30,
0,
20,
18);

AirSection(
BracketWidth+24,
31,
1,
18,
16);

AirSection(
BracketWidth+48,
32,
2,
15,
13);

AirSection(
BracketWidth+72,
33,
3,
12,
10);

}

}

module ChannelInner()
{

hull()
{

AirSection(
BracketWidth+6,
30,
2,
16,
14);

AirSection(
BracketWidth+25,
31,
3,
14,
12);

AirSection(
BracketWidth+48,
32,
4,
11,
9);

AirSection(
BracketWidth+70,
33,
5,
8,
6);

}

}

module Channel()
{

difference()
{

ChannelOuter();

ChannelInner();

}

}
module AirDuct()
{

difference()
{

union()
{

ChannelOuter();

}

union()
{

ChannelInner();

}

}

}
