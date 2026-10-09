codeunit 60101 "JsonPlaceholder Mgt."
{
    procedure getData()
    var
        Assigment: Record Assigments temporary;
        Client: HttpClient;
        Respons: HttpResponseMessage;
        ResponseText: Text;
        JToken: JsonToken;
        JObject: JsonObject;
        JArray: JsonArray;
        AssigmentCnt: Integer;
        UserIdvar: Integer;
    begin
        Client.Get('jsonplaceholder.typicode.com/todos', Respons);
        Respons.Content.ReadAs(ResponseText);
        //Message(ResponseText);

        JArray.ReadFrom(ResponseText);
        foreach Jtoken in Jarray do begin
            JObject := JToken.AsObject();
            JObject.SelectToken('userId', JToken);
            Assigment."User ID" := JToken.AsValue().AsInteger();

            JObject.SelectToken('id', JToken);
            Assigment."No." := JToken.AsValue().AsText();
            JObject.SelectToken('title', JToken);
            Assigment.Title := JToken.AsValue().AsText();
            IF TryInsertAssigment(Assigment) then
                AssigmentCnt += 1;
        end;


    end;

    [TryFunction]
    local procedure TryInsertAssigment(TempAssigment: Record Assigments temporary)
    var
        Assigment: Record Assigments;
    begin
        Assigment.Init();
        Assigment.TransferFields(TempAssigment);
        Assigment.Insert();
    end;

    var
        myInt: Integer;
}