page 60106 "Assigment Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Assigment Setup";
    InsertAllowed = false;
    DeleteAllowed = false;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("Assigment Nos"; Rec."Assigment Nos")
                {
                    ToolTip = 'Specifies the value of the Assigment Nos field.', Comment = '%';
                }
            }
        }
    }




    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Rec.InsertIfNotExists();
    end;

}


