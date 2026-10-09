page 60104 AssigmentAPI
{
    PageType = API;
    Caption = 'assigmentAPI';
    APIPublisher = 'pawel';
    APIGroup = 'assigment';
    APIVersion = 'v1.0';
    EntityName = 'assigment';
    EntitySetName = 'assigment';
    SourceTable = Assigments;
    DelayedInsert = true;
    ApplicationArea = all;
    //https://api.businesscentral.dynamics.com/v2.0/788804f2-ac77-43ab-9e10-65a8af5561b0/SanboxDevPM/api/pawel/assigment/v1.0/companies(b59478e4-f6bb-f111-85be-70a8a578e91b)/assigment
    layout
    {
        area(Content)
        {
            repeater(Assigments)
            {


                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(title; Rec.Title)
                {
                    Caption = 'Title';
                }
                field(customerNo; Rec."Customer No.")
                {
                    Caption = 'Customer No.';
                }
                field(categoryCode; Rec."Category Code")
                {
                    Caption = 'Category Code';
                }
                field(userID; Rec."User ID")
                {
                    Caption = 'User ID';
                }

            }
        }
    }
}