page 60103 "Assignment RC"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(RoleCenter)
        {
            part(Control139; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control16; "O365 Activities")
            {
                AccessByPermission = TableData "Activities Cue" = I;
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {

    }

    var
        myInt: Integer;
}