table 60100 Assigments
{
    Caption = 'Assigment';
    DataClassification = CustomerContent;
    DataCaptionFields = "No.", Title;
    DrillDownPageId = "Assigment List";
    LookupPageId = "Assigment List";
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = SystemMetadata;
            Caption = 'No.';
            trigger OnValidate()
            begin
                TestNoSeries();
            end;

        }
        field(2; "User ID"; Integer)
        {
            DataClassification = SystemMetadata;
            Caption = 'User ID';
        }
        field(3; Title; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Title';
        }

        field(4; Description; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(5; "Customer No."; Code[20])
        {
            DataClassification = OrganizationIdentifiableInformation;
            Caption = 'Customer No.';
        }
        field(6; "Category Code"; Code[20])
        {
            DataClassification = SystemMetadata;
            Caption = 'Category Code';
        }
        field(10; Status; Enum "Assigment Status")
        {
            DataClassification = SystemMetadata;

        }
        field(11; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Assigment: Record Assigments;
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeInsert(Rec, IsHandled);
        if IsHandled then
            exit;

        if "No." = '' then begin
            AssigmentSetup.Get();
            AssigmentSetup.TestField("Assigment Nos");
            "No. Series" := AssigmentSetup."Assigment Nos";
            if NoSeries.AreRelated("No. Series", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeries.GetNextNo("No. Series");
            Assigment.ReadIsolation(IsolationLevel::ReadUncommitted);
            Assigment.SetLoadFields("No.");
            while Assigment.Get("No.") do
                "No." := NoSeries.GetNextNo("No. Series");
        end;
    end;

    local procedure TestNoSeries()
    var
        Assigment: Record Assigments;
        IsHandled: Boolean;
    begin
        IsHandled := false;

        if IsHandled then
            exit;

        if "No." <> xRec."No." then
            if not Assigment.Get(Rec."No.") then begin
                // SalesSetup.Get();
                // NoSeries.TestManual(SalesSetup."Customer Nos.");
                // "No. Series" := '';
            end;
    end;

    procedure AssistEdit(OldAssigment: Record Assigments): Boolean
    var
        Assigments: Record Assigments;
    begin
        Assigments := Rec;
        AssigmentSetup.Get();
        AssigmentSetup.TestField("Assigment Nos");
        if NoSeries.LookupRelatedNoSeries(AssigmentSetup."Assigment Nos", OldAssigment."No. Series", Assigments."No. Series") then begin
            Assigments."No." := NoSeries.GetNextNo(Assigments."No. Series");
            Rec := Assigments;
            //OnAssistEditOnBeforeExit(Assigments);
            exit(true);
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeInsert(var Assigments: Record Assigments; var IsHandled: Boolean)
    begin
    end;

    var
        AssigmentSetup: Record "Assigment Setup";
        NoSeries: Codeunit "No. Series";
}