pageextension 60100 "O365 Activities EXT" extends "O365 Activities"
{
    layout
    {
        addafter("Incoming Documents")
        {
            cuegroup(Assigment)
            {
                Caption = 'Assigments';
                field(Assigments; Rec.Assigments)
                {
                    ApplicationArea = all;

                }
                field("Incompleted Assigments"; Rec.Assigments)
                {
                    ApplicationArea = all;

                }
                field("In progress Assigments"; Rec.Assigments)
                {
                    ApplicationArea = all;

                }
                field("Completed Assigments"; Rec.Assigments)
                {
                    ApplicationArea = all;

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}