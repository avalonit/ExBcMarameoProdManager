page 70360201 "MRM Prod View Model"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = "MRM Prod View Model";
    ApplicationArea = All;
    Caption = 'MRM Prod View Model';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field(User; Rec.User)
                {
                    ApplicationArea = All;
                }
                field(ProdOrderNo; Rec.ProdOrderNo)
                {
                    ApplicationArea = All;
                }
                field(OperationNo; Rec.OperationNo)
                {
                    ApplicationArea = All;
                }

                field(MachineNo; Rec.MachineNo)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Output; Rec.Output)
                {
                    ApplicationArea = All;
                }
                field(Action; Rec.Action)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field(MachineType; Rec.MachineType)
                {
                    ApplicationArea = All;
                }
                field(Finish; Rec.Finish)
                {
                    ApplicationArea = All;
                }
                field(ProcessingTime; Rec.ProcessingTime)
                {
                    ApplicationArea = All;
                }
                field(SetupTime; Rec.SetupTime)
                {
                    ApplicationArea = All;
                }
                field(IdleTime; Rec.IdleTime)
                {
                    ApplicationArea = All;
                }
                field(IdleCode; Rec.IdleCode)
                {
                    ApplicationArea = All;
                }
                field(FinishedQuantity; Rec.FinishedQuantity)
                {
                    ApplicationArea = All;
                }
                field(ScrapQuantity; Rec.ScrapQuantity)
                {
                    ApplicationArea = All;
                }

                field(WorkCenterCode; Rec.WorkCenterCode)
                {
                    ApplicationArea = All;
                }
                field(WorkCenterGroupCode; Rec.WorkCenterGroupCode)
                {
                    ApplicationArea = All;
                }
                field(SeperatorCode; Rec.SeperatorCode)
                {
                    ApplicationArea = All;
                }
                field(StartProcessingCommand; Rec.StartProcessingCommand)
                {
                    ApplicationArea = All;
                }
                field(EndProcessingCommand; Rec.EndProcessingCommand)
                {
                    ApplicationArea = All;
                }
                field(StartSetupCommand; Rec.StartSetupCommand)
                {
                    ApplicationArea = All;
                }
                field(EndSetupCommand; Rec.EndSetupCommand)
                {
                    ApplicationArea = All;
                }
                field(StartIdleCommand; Rec.StartIdleCommand)
                {
                    ApplicationArea = All;
                }
                field(EndIdleCommand; Rec.EndIdleCommand)
                {
                    ApplicationArea = All;
                }
                field(PostCommand; Rec.PostCommand)
                {
                    ApplicationArea = All;
                }
                field(SkipOperationCommand; Rec.SkipOperationCommand)
                {
                    ApplicationArea = All;
                }
                field(ChangeUserCommand; Rec.ChangeUserCommand)
                {
                    ApplicationArea = All;
                }
                field(ChangeMachineCommand; Rec.ChangeMachineCommand)
                {
                    ApplicationArea = All;
                }
                field(OutPutButtonCommand; Rec.OutPutButtonCommand)
                {
                    ApplicationArea = All;
                }
                field(ScrapButtonCommand; Rec.ScrapButtonCommand)
                {
                    ApplicationArea = All;
                }
                field(FinishButtonCommand; Rec.FinishButtonCommand)
                {
                    ApplicationArea = All;
                }

                field(RequiredActionType; Rec.RequiredActionType)
                {
                    ApplicationArea = All;
                }
                field(SelectedInput; Rec.SelectedInput)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

}