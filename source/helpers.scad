module RoundedBox(size,r)
{

hull()
{

for(x=[r,size[0]-r])
for(y=[r,size[1]-r])
for(z=[r,size[2]-r])

translate([x,y,z])

sphere(r);

}

}
