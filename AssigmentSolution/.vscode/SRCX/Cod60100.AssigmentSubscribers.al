codeunit 60100 "Assigment Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Release Sales Document", OnAfterManualReleaseSalesDoc, '', false, false)]
    local procedure "Release Sales Document_OnAfterManualReleaseSalesDoc"(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean)

    var
        Assigment: Record Assigments;
        SalesHeaderReleaseMSG: Label 'Remember to post this %1';
    begin

        Assigment.Init();
        Assigment."No." := 'A' + Format(Random(999999));
        Assigment.Title := StrSubstNo(SalesHeaderReleaseMSG, SalesHeader."No.");
        Assigment.Description := Assigment.Title;
        Assigment.Insert();
    end;


}