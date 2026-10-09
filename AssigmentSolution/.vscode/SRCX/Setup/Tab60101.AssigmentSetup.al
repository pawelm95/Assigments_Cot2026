table 60101 "Assigment Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }
        field(2; "Assigment Nos"; Code[20])
        {
            TableRelation = "No. Series";

        }

        //You might want to add fields here

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        RecordHasBeenRead: Boolean;

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure InsertIfNotExists()
    begin
        Reset();
        if not Get() then begin
            Init();
            Insert(true);
        end;
    end;


}