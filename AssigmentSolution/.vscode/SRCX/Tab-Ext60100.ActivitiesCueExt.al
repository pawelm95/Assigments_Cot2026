tableextension 60100 "Activities Cue Ext" extends "Activities Cue"
{
    fields
    {
        field(60100; Assigments; Integer)
        {
            Caption = 'Assigments';
            //DataClassification = SystemMetadata;
            FieldClass = FlowField;
            CalcFormula = count(Assigments);

        }
        field(60101; "Incompleted Assigments"; Integer)
        {
            Caption = 'Incompleted Assigments';
            //DataClassification = SystemMetadata;
            FieldClass = FlowField;
            CalcFormula = count(Assigments);

        }
        field(60102; "In progress Assigments"; Integer)
        {
            Caption = 'In progress Assigments';
            //DataClassification = SystemMetadata;
            FieldClass = FlowField;
            CalcFormula = count(Assigments);

        }
        field(60103; "Completed Assigments"; Integer)
        {
            Caption = 'Completed Assigments';
            //DataClassification = SystemMetadata;
            FieldClass = FlowField;
            CalcFormula = count(Assigments);

        }
        // Add changes to table fields here
    }



}