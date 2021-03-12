page 70360202 "MRM Prod Addins"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "MRM Prod Addins";
    ApplicationArea = All;
    Caption = 'MRM Prod Addins';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field(User; Rec.User)
                {
                    ApplicationArea = All;
                    Caption = 'User';
                    ToolTip = 'User';
                }
                field(ProdOrderNo; Rec.ProdOrderNo)
                {
                    ApplicationArea = All;
                    Caption = 'Prod Order No';
                    ToolTip = 'Prod Order No';
                }
                field(OperationNo; Rec.OperationNo)
                {
                    ApplicationArea = All;
                    Caption = 'Operation No';
                    ToolTip = 'Operation No';
                }

                field(MachineNo; Rec.MachineNo)
                {
                    ApplicationArea = All;
                    Caption = 'Machine No';
                    ToolTip = 'Machine No';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    ToolTip = 'Description';
                }
                field(Output; Rec.Output)
                {
                    ApplicationArea = All;
                    Caption = 'Output';
                    ToolTip = 'Output';
                }
                field(Action; Rec.Action)
                {
                    ApplicationArea = All;
                    Caption = 'Action';
                    ToolTip = 'Action';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                    ToolTip = 'Status';
                }
                field(MachineType; Rec.MachineType)
                {
                    ApplicationArea = All;
                    Caption = 'Machine Type';
                    ToolTip = 'Machine Type';
                }
                field(Finish; Rec.Finish)
                {
                    ApplicationArea = All;
                    Caption = 'Finish';
                    ToolTip = 'Finish';
                }
                field(ProcessingTime; Rec.ProcessingTime)
                {
                    ApplicationArea = All;
                    Caption = 'Processing Time';
                    ToolTip = 'Processing Time';
                }
                field(SetupTime; Rec.SetupTime)
                {
                    ApplicationArea = All;
                    Caption = 'Setup Time';
                    ToolTip = 'Setup Time';
                }
                field(IdleTime; Rec.IdleTime)
                {
                    ApplicationArea = All;
                    Caption = 'Idle Time';
                    ToolTip = 'Idle Time';
                }
                field(IdleCode; Rec.IdleCode)
                {
                    ApplicationArea = All;
                    Caption = 'Idle Code';
                    ToolTip = 'Idle Code';
                }
                field(FinishedQuantity; Rec.FinishedQuantity)
                {
                    ApplicationArea = All;
                    Caption = 'Finished Quantity';
                    ToolTip = 'Finished Quantity';
                }
                field(ScrapQuantity; Rec.ScrapQuantity)
                {
                    ApplicationArea = All;
                    Caption = 'Scrap Quantity';
                    ToolTip = 'Scrap Quantity';
                }

                field(WorkCenterCode; Rec.WorkCenterCode)
                {
                    ApplicationArea = All;
                    Caption = 'Work Center Code';
                    ToolTip = 'Work Center Code';
                }
                field(WorkCenterGroupCode; Rec.WorkCenterGroupCode)
                {
                    ApplicationArea = All;
                    Caption = 'Work Center Group Code';
                    ToolTip = 'Work Center Group Code';
                }
                field(SeperatorCode; Rec.SeperatorCode)
                {
                    ApplicationArea = All;
                    Caption = 'Seperator Code';
                    ToolTip = 'Seperator Code';
                }
                field(StartProcessingCommand; Rec.StartProcessingCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Start Processing Command';
                    ToolTip = 'Start Processing Command';
                }
                field(EndProcessingCommand; Rec.EndProcessingCommand)
                {
                    ApplicationArea = All;
                    Caption = 'End Processing Command';
                    ToolTip = 'End Processing Command';
                }
                field(StartSetupCommand; Rec.StartSetupCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Start Setup Command';
                    ToolTip = 'Start Setup Command';
                }
                field(EndSetupCommand; Rec.EndSetupCommand)
                {
                    ApplicationArea = All;
                    Caption = 'End Setup Command';
                    ToolTip = 'End Setup Command';
                }
                field(StartIdleCommand; Rec.StartIdleCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Start Idle Command';
                    ToolTip = 'Start Idle Command';
                }
                field(EndIdleCommand; Rec.EndIdleCommand)
                {
                    ApplicationArea = All;
                    Caption = 'End Idle Command';
                    ToolTip = 'End Idle Command';
                }
                field(PostCommand; Rec.PostCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Post Command';
                    ToolTip = 'Post Command';
                }
                field(SkipOperationCommand; Rec.SkipOperationCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Skip Operation Command';
                    ToolTip = 'Skip Operation Command';
                }
                field(ChangeUserCommand; Rec.ChangeUserCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Change User Command';
                    ToolTip = 'Change User Command';
                }
                field(ChangeMachineCommand; Rec.ChangeMachineCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Change Machine Command';
                    ToolTip = 'Change Machine Command';
                }
                field(OutPutButtonCommand; Rec.OutPutButtonCommand)
                {
                    ApplicationArea = All;
                    Caption = 'OutPut Button Command';
                    ToolTip = 'OutPut Button Command';
                }
                field(ScrapButtonCommand; Rec.ScrapButtonCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Scrap Button Command';
                    ToolTip = 'Scrap Button Command';
                }
                field(FinishButtonCommand; Rec.FinishButtonCommand)
                {
                    ApplicationArea = All;
                    Caption = 'Finish Button Command';
                    ToolTip = 'Finish Button Command';
                }

                field(RequiredActionType; Rec.RequiredActionType)
                {
                    ApplicationArea = All;
                    Caption = 'Required Action Type';
                    ToolTip = 'Required Action Type';
                }
                field(SelectedInput; Rec.SelectedInput)
                {
                    ApplicationArea = All;
                    Caption = 'Selected Input';
                    ToolTip = 'Selected Input';
                }
            }
        }
        area(Factboxes)
        {

        }
    }
    actions
    {
        area(Creation)
        {
            action("ActionType_Init")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    ActionType_Init_Insert();
                end;
            }
        }
    }

    // The control add-in events can be handled by defining a trigger with a corresponding name.
    local procedure ActionType_Init_Insert()
    var
        prodAddins: Record "MRM Prod Addins";
        Options: Text[250];
        Selected: Integer;
        ActionType: Text;
        Text000: Label '0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16';
        Text001: Label 'You selected option %1.';
        Text002: Label 'Create one of the following ActionType:';
    begin

        Options := Text000;
        Selected := Dialog.StrMenu(Options, 1, Text002);
        ActionType := Format(Selected - 1);
        prodAddins.Init();
        prodAddins.Action := 'ACTION ' + ActionType;
        prodAddins.Description := 'DESCRIPTION ' + ActionType;
        prodAddins.MachineNo := 'MACH.NO. ' + ActionType;
        prodAddins.MachineType := 'MACH. TYPE ' + ActionType;
        prodAddins.OperationNo := 'OP.NO ' + ActionType;
        prodAddins.Output := 'OUTPUT ' + ActionType;
        prodAddins.ProdOrderNo := 'PROD ORD NO ' + ActionType;
        prodAddins.Status := 'STATUS ' + ActionType;
        prodAddins.User := 'USER ' + ActionType;
        prodAddins.Finish := 'FINISH ' + ActionType;
        prodAddins.ProcessingTime := '01';
        prodAddins.SetupTime := '02';
        prodAddins.IdleTime := '03';
        prodAddins.IdleCode := '04';
        prodAddins.FinishedQuantity := '11';
        prodAddins.ScrapQuantity := '12';
        prodAddins.RequiredActionType := ActionType;
        prodAddins.SelectedInput := 'SEL INPUT ' + ActionType;
        prodAddins.WorkCenterCode := 'WORK CENT. ' + ActionType;
        prodAddins.WorkCenterGroupCode := 'WORK CENT. GRP.' + ActionType;

        prodAddins.SeperatorCode := '-';
        prodAddins.StartProcessingCommand := 'StartProcessingCommand';
        prodAddins.EndProcessingCommand := 'EndProcessingCommand';
        prodAddins.StartSetupCommand := 'StartSetupCommand';
        prodAddins.EndSetupCommand := 'EndSetupCommand';
        prodAddins.StartIdleCommand := 'StartIdleCommand';

        prodAddins.EndIdleCommand := 'EndIdleCommand';
        prodAddins.PostCommand := 'PostCommand';
        prodAddins.SkipOperationCommand := 'SkipOperationCommand';
        prodAddins.ChangeUserCommand := 'ChangeUserCommand';
        prodAddins.ChangeMachineCommand := 'ChangeMachineCommand';

        prodAddins.OutPutButtonCommand := 'OutPutButtonCommand';
        prodAddins.ScrapButtonCommand := 'ScrapButtonCommand';

        prodAddins.Insert(true);
        Message('Record inserted!');
    end;

}