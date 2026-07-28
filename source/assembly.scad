////////////////////////////////////////////////////
//
// assembly.scad
//
////////////////////////////////////////////////////

module AirIntake()
{

    union()
    {

        AirDuct();

        if(MODE=="VENTURI")
            Venturi();

        Vanes();

    }

}

module Assembly()
{

    union()
    {

        Bracket();

        translate([
            BracketWidth-2,
            18,
            0
        ])

        AirIntake();

    }

}
