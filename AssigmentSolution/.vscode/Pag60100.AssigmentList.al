page 60100 "Assigment List"
{
    Caption = 'Assigment List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Assigments;
    CardPageId = "Assigment Card";
    Editable = false;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {


                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.', Comment = '%';
                }
            }
        }
        area(Factboxes)
        {
            part(assigmentFactBox; "Assigment FactBox")
            {
                SubPageLink = "no." = field("Customer No.");
            }
        }

    }

}