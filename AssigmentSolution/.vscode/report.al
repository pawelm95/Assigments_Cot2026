report 60100 "Assigments Reports"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = DefaultWrd;

    dataset
    {
        dataitem(Assigments; Assigments)
        {

            column(CategoryCode_Assigments; "Category Code")
            {
                IncludeCaption = true;
            }
            column(CustomerNo_Assigments; "Customer No.")
            {
                IncludeCaption = true;
            }
            column(Description_Assigments; Description)
            {
                IncludeCaption = true;
            }
            column(No_Assigments; "No.")
            {
                IncludeCaption = true;
            }
            column(Status_Assigments; Status)
            {
                IncludeCaption = true;
            }
            column(SystemCreatedAt_Assigments; SystemCreatedAt)
            {
                IncludeCaption = true;
            }
            column(SystemCreatedBy_Assigments; SystemCreatedBy)
            {
                IncludeCaption = true;
            }
            column(SystemId_Assigments; SystemId)
            {
                IncludeCaption = true;
            }
            column(SystemModifiedAt_Assigments; SystemModifiedAt)
            {
                IncludeCaption = true;
            }
            column(SystemModifiedBy_Assigments; SystemModifiedBy)
            {
                IncludeCaption = true;
            }
            column(Title_Assigments; Title)
            {
                IncludeCaption = true;
            }
            column(UserID_Assigments; "User ID")
            {
                IncludeCaption = true;
            }
        }
    }








    rendering
    {
        layout(DefaultWrd)
        {
            Type = Word;
            LayoutFile = 'reports/Assigments.docx';
        }
    }

    var
        myInt: Integer;
}