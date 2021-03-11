page 70360200 "MRM Web Viewer"
{
    Caption = 'MRM Web Viewer';

    PageType = Card;
    Editable = false;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            // The control add-in can be placed on the page using usercontrol keyword.
            usercontrol(ControlName; MRMControlAddin)
            {
                ApplicationArea = All;

                trigger OnControlAddInReady()
                begin
                    ControlIsReady := false;
                    InitializePageViewer();
                    ControlIsReady := true;
                end;


                // The control add-in events can be handled by defining a trigger with a corresponding name.
                trigger OnBcRaiseControlAddInEventCallBack(index: Integer; message: Text)
                var
                begin
                    Message('RaiseControlAddIn: ' + message);
                    //LOGIC OF NAV->MIGRATED
                end;

                // The control add-in events can be handled by defining a trigger with a corresponding name.
                trigger OnBcPageCallBack(JsonText: text)
                var
                    JsonObject: JsonObject;
                    MRMRecord: Record "MRM Prod View Model";
                begin
                    JsonObject.ReadFrom(JsonText);
                    MRMRecord.Init();
                    MRMRecord.Action := GetJsonValue(JsonObject, 'Action');
                    MRMRecord.ChangeMachineCommand := GetJsonValue(JsonObject, 'ChangeMachineCommand');
                    MRMRecord.ChangeUserCommand := GetJsonValue(JsonObject, 'ChangeUserCommand');
                    MRMRecord.Description := GetJsonValue(JsonObject, 'Description');
                    MRMRecord.EndIdleCommand := GetJsonValue(JsonObject, 'EndIdleCommand');
                    MRMRecord.EndProcessingCommand := GetJsonValue(JsonObject, 'EndProcessingCommand');
                    MRMRecord.EndSetupCommand := GetJsonValue(JsonObject, 'EndSetupCommand');
                    MRMRecord.Finish := GetJsonValue(JsonObject, 'Finish');
                    MRMRecord.FinishButtonCommand := GetJsonValue(JsonObject, 'FinishButtonCommand');
                    MRMRecord.FinishedQuantity := GetJsonValue(JsonObject, 'FinishedQuantity');
                    MRMRecord.IdleCode := GetJsonValue(JsonObject, 'IdleCode');
                    MRMRecord.IdleTime := GetJsonValue(JsonObject, 'IdleTime');
                    MRMRecord.MachineNo := GetJsonValue(JsonObject, 'MachineNo');
                    MRMRecord.MachineType := GetJsonValue(JsonObject, 'MachineType');
                    MRMRecord.OperationNo := GetJsonValue(JsonObject, 'OperationNo');
                    MRMRecord.Output := GetJsonValue(JsonObject, 'Output');
                    MRMRecord.OutPutButtonCommand := GetJsonValue(JsonObject, 'OutPutButtonCommand');
                    MRMRecord.PostCommand := GetJsonValue(JsonObject, 'PostCommand');
                    MRMRecord.ProcessingTime := GetJsonValue(JsonObject, 'ProcessingTime');
                    MRMRecord.ProdOrderNo := GetJsonValue(JsonObject, 'ProdOrderNo');
                    MRMRecord.RequiredActionType := GetJsonValue(JsonObject, 'RequiredActionType');
                    MRMRecord.ScrapButtonCommand := GetJsonValue(JsonObject, 'ScrapButtonCommand');
                    MRMRecord.ScrapQuantity := GetJsonValue(JsonObject, 'ScrapQuantity');
                    MRMRecord.SelectedInput := GetJsonValue(JsonObject, 'SelectedInput');
                    MRMRecord.SeperatorCode := GetJsonValue(JsonObject, 'SeperatorCode');
                    MRMRecord.SetupTime := GetJsonValue(JsonObject, 'SetupTime');
                    MRMRecord.SkipOperationCommand := GetJsonValue(JsonObject, 'SkipOperationCommand');
                    MRMRecord.StartIdleCommand := GetJsonValue(JsonObject, 'StartIdleCommand');
                    MRMRecord.StartProcessingCommand := GetJsonValue(JsonObject, 'StartProcessingCommand');
                    MRMRecord.StartSetupCommand := GetJsonValue(JsonObject, 'StartSetupCommand');
                    MRMRecord.Status := GetJsonValue(JsonObject, 'Status');
                    MRMRecord.User := GetJsonValue(JsonObject, 'User');
                    MRMRecord.WorkCenterCode := GetJsonValue(JsonObject, 'WorkCenterCode');
                    MRMRecord.WorkCenterGroupCode := GetJsonValue(JsonObject, 'WorkCenterGroupCode');
                    MRMRecord.DateEventInsert := CURRENTDATETIME;
                    MRMRecord.Insert(true);
                    //Message('Action completed!');
                end;


            }


        }
    }


    actions
    {
        area(Creation)
        {
            action("PostControlAddInEvent")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    PostControlAddInEventDummy();
                end;
            }
        }
    }


    var
        ControlIsReady: Boolean;

    local procedure InitializePageViewer()
    var
        webConfig: Record "MRM Web Setup";
    begin
        webConfig.GetRecord();
        CurrPage.ControlName.SetPage(webConfig."Web Viewer URL");
    end;

    procedure GetJsonToken(JsonObject: JsonObject; TokenKey: text) JsonToken: JsonToken;
    begin
        if not JsonObject.Get(TokenKey, JsonToken) then
            Error('Could not find a token with key %1', TokenKey);
    end;

    procedure GetJsonValue(JsonObject: JsonObject; TokenKey: text): Text
    var
        JsonToken: JsonToken;
    begin
        if not JsonObject.Get(TokenKey, JsonToken) then begin
            exit('')
        end;
        exit(GetJsonToken(JsonObject, TokenKey).AsValue.AsText());
    end;

    local procedure PostControlAddInEventDummy()
    var
        prodAddins: Record "MRM Prod Addins";
        prodAddinsJson: JsonObject;
        prodAddinsJsonTxt: Text;
    begin
        prodAddins.FindFirst();
        prodAddinsJson.Add('Action', prodAddins.Action);
        prodAddinsJson.Add('Description', prodAddins.Description);
        prodAddinsJson.Add('MachineNo', prodAddins.MachineNo);
        prodAddinsJson.Add('MachineType', prodAddins.MachineType);
        prodAddinsJson.Add('OperationNo', prodAddins.OperationNo);
        prodAddinsJson.Add('Output', prodAddins.Output);
        prodAddinsJson.Add('ProdOrderNo', prodAddins.ProdOrderNo);
        prodAddinsJson.Add('Status', prodAddins.Status);
        prodAddinsJson.Add('User', prodAddins.User);
        prodAddinsJson.Add('Finish', prodAddins.Finish);
        prodAddinsJson.Add('ProcessingTime', prodAddins.ProcessingTime);
        prodAddinsJson.Add('SetupTime', prodAddins.SetupTime);
        prodAddinsJson.Add('IdleTime', prodAddins.IdleTime);
        prodAddinsJson.Add('IdleCode', prodAddins.IdleCode);
        prodAddinsJson.Add('FinishedQuantity', prodAddins.FinishedQuantity);
        prodAddinsJson.Add('ScrapQuantity', prodAddins.ScrapQuantity);
        prodAddinsJson.Add('RequiredActionType', prodAddins.RequiredActionType);
        prodAddinsJson.Add('SelectedInput', prodAddins.SelectedInput);
        prodAddinsJson.Add('WorkCenterCode', prodAddins.WorkCenterCode);
        prodAddinsJson.Add('WorkCenterGroupCode', prodAddins.WorkCenterGroupCode);

        prodAddinsJson.Add('SeperatorCode', prodAddins.SeperatorCode);
        prodAddinsJson.Add('StartProcessingCommand', prodAddins.StartProcessingCommand);
        prodAddinsJson.Add('EndProcessingCommand', prodAddins.EndProcessingCommand);
        prodAddinsJson.Add('StartSetupCommand', prodAddins.StartSetupCommand);
        prodAddinsJson.Add('EndSetupCommand', prodAddins.EndSetupCommand);
        prodAddinsJson.Add('StartIdleCommand', prodAddins.StartIdleCommand);

        prodAddinsJson.Add('EndIdleCommand', prodAddins.EndIdleCommand);
        prodAddinsJson.Add('PostCommand', prodAddins.PostCommand);
        prodAddinsJson.Add('SkipOperationCommand', prodAddins.SkipOperationCommand);
        prodAddinsJson.Add('ChangeUserCommand', prodAddins.ChangeUserCommand);
        prodAddinsJson.Add('ChangeMachineCommand', prodAddins.ChangeMachineCommand);

        prodAddinsJson.Add('OutPutButtonCommand', prodAddins.OutPutButtonCommand);
        prodAddinsJson.Add('ScrapButtonCommand', prodAddins.ScrapButtonCommand);

        prodAddinsJson.WriteTo(prodAddinsJsonTxt);
        CurrPage.ControlName.PostControlAddInEvent(prodAddinsJsonTxt);
    end;
}