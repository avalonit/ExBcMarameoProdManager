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
                    JsonObject: JsonObject;

                begin
                    JsonObject.ReadFrom(message);

                    Message('RaiseControlAddIn completed!');
                end;

                // The control add-in events can be handled by defining a trigger with a corresponding name.
                trigger OnBcPageCallBack(JsonText: text)
                var
                    JsonObject: JsonObject;
                    MRMRecord: Record "MRM Prod View Model";
                begin
                    JsonObject.ReadFrom(JsonText);
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
                    Message('Action completed!');
                end;

                trigger OnStartup()
                //var
                //  webConfig: Record "MRM Web Setup";
                begin
                    //webConfig.GetRecord();
                    //CurrPage.ControlName.SetPage(webConfig."Web Viewer URL");
                end;

            }


        }
    }


    actions
    {
        area(Creation)
        {
            action("Buchen")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    // The control add-in methods can be invoked via a reference to the usercontrol.
                    CurrPage.ControlName.CallJavaScript('Buchen');
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
}