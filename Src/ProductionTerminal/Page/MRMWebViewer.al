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
                    Message('RaiseControlAddIn ' + message);
                    //LOGIC OF NAV->MIGRATED
                end;

                // The control add-in events can be handled by defining a trigger with a corresponding name.
                trigger OnBcPageCallBack(JsonText: text)
                var
                    JsonObject: JsonObject;
                    MRMRecord: Record "MRM Prod View Model";
                begin
                    MRMRecord.Init();
                    MRMRecord.Action := GetJsonToken(JsonObject, 'Action').AsValue.AsText();
                    MRMRecord.ChangeMachineCommand := GetJsonToken(JsonObject, 'ChangeMachineCommand').AsValue.AsText();
                    MRMRecord.ChangeUserCommand := GetJsonToken(JsonObject, 'ChangeUserCommand').AsValue.AsText();
                    MRMRecord.Description := GetJsonToken(JsonObject, 'Description').AsValue.AsText();
                    MRMRecord.EndIdleCommand := GetJsonToken(JsonObject, 'EndIdleCommand').AsValue.AsText();
                    MRMRecord.EndProcessingCommand := GetJsonToken(JsonObject, 'EndProcessingCommand').AsValue.AsText();
                    MRMRecord.EndSetupCommand := GetJsonToken(JsonObject, 'EndSetupCommand').AsValue.AsText();
                    MRMRecord.Finish := GetJsonToken(JsonObject, 'Finish').AsValue.AsText();
                    MRMRecord.FinishButtonCommand := GetJsonToken(JsonObject, 'FinishButtonCommand').AsValue.AsText();
                    MRMRecord.FinishedQuantity := GetJsonToken(JsonObject, 'FinishedQuantity').AsValue.AsText();
                    MRMRecord.IdleCode := GetJsonToken(JsonObject, 'IdleCode').AsValue.AsText();
                    MRMRecord.IdleTime := GetJsonToken(JsonObject, 'IdleTime').AsValue.AsText();
                    MRMRecord.MachineNo := GetJsonToken(JsonObject, 'MachineNo').AsValue.AsText();
                    MRMRecord.MachineType := GetJsonToken(JsonObject, 'MachineType').AsValue.AsText();
                    MRMRecord.OperationNo := GetJsonToken(JsonObject, 'OperationNo').AsValue.AsText();
                    MRMRecord.Output := GetJsonToken(JsonObject, 'Output').AsValue.AsText();
                    MRMRecord.OutPutButtonCommand := GetJsonToken(JsonObject, 'OutPutButtonCommand').AsValue.AsText();
                    MRMRecord.PostCommand := GetJsonToken(JsonObject, 'PostCommand').AsValue.AsText();
                    MRMRecord.ProcessingTime := GetJsonToken(JsonObject, 'ProcessingTime').AsValue.AsText();
                    MRMRecord.ProdOrderNo := GetJsonToken(JsonObject, 'ProdOrderNo').AsValue.AsText();
                    MRMRecord.RequiredActionType := GetJsonToken(JsonObject, 'RequiredActionType').AsValue.AsText();
                    MRMRecord.ScrapButtonCommand := GetJsonToken(JsonObject, 'ScrapButtonCommand').AsValue.AsText();
                    MRMRecord.ScrapQuantity := GetJsonToken(JsonObject, 'ScrapQuantity').AsValue.AsText();
                    MRMRecord.SelectedInput := GetJsonToken(JsonObject, 'SelectedInput').AsValue.AsText();
                    MRMRecord.SeperatorCode := GetJsonToken(JsonObject, 'SeperatorCode').AsValue.AsText();
                    MRMRecord.SetupTime := GetJsonToken(JsonObject, 'SetupTime').AsValue.AsText();
                    MRMRecord.SkipOperationCommand := GetJsonToken(JsonObject, 'SkipOperationCommand').AsValue.AsText();
                    MRMRecord.StartIdleCommand := GetJsonToken(JsonObject, 'StartIdleCommand').AsValue.AsText();
                    MRMRecord.StartProcessingCommand := GetJsonToken(JsonObject, 'StartProcessingCommand').AsValue.AsText();
                    MRMRecord.StartSetupCommand := GetJsonToken(JsonObject, 'StartSetupCommand').AsValue.AsText();
                    MRMRecord.Status := GetJsonToken(JsonObject, 'Status').AsValue.AsText();
                    MRMRecord.User := GetJsonToken(JsonObject, 'User').AsValue.AsText();
                    MRMRecord.WorkCenterCode := GetJsonToken(JsonObject, 'WorkCenterCode').AsValue.AsText();
                    MRMRecord.WorkCenterGroupCode := GetJsonToken(JsonObject, 'WorkCenterGroupCode').AsValue.AsText();
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

    local procedure PostControlAddInEventDummy()
    var
        prodAddins: Record "MRM Prod Addins";
        prodAddinsJson: JsonObject;
        prodAddinsJsonTxt: Text[250];
    begin
        prodAddins.Get();
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