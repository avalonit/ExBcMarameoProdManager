table 70360200 "MRM Prod View Model"
{
    DataPerCompany = false;
    DataClassification = CustomerContent;
    LookupPageId = "MRM Prod View Model";
    DrillDownPageId = "MRM Prod View Model";

    fields
    {
        field(1; prod_guid; Guid)
        {
            DataClassification = CustomerContent;
            Description = 'GUID';
        }

        field(2; User; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'User';

        }
        field(3; ProdOrderNo; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ProdOrderNo';
        }
        field(4; OperationNo; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'OperationNo';
        }

        field(5; MachineNo; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'MachineNo';
        }
        field(6; Description; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Description';
        }
        field(7; Output; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Output';
        }
        field(8; Action; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Action';
        }
        field(9; Status; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Status';
        }
        field(10; MachineType; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'MachineType';
        }
        field(11; Finish; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Finish';
        }
        field(12; ProcessingTime; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ProcessingTime';
        }
        field(13; SetupTime; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'SetupTime';
        }
        field(14; IdleTime; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'IdleTime';
        }
        field(15; IdleCode; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'IdleCode';
        }
        field(16; FinishedQuantity; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'FinishedQuantity';
        }
        field(17; ScrapQuantity; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ScrapQuantity';
        }

        field(18; WorkCenterCode; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'WorkCenterCode';
        }
        field(19; WorkCenterGroupCode; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'WorkCenterGroupCode';
        }
        field(20; SeperatorCode; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'SeperatorCode';
        }
        field(21; StartProcessingCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'StartProcessingCommand';
        }
        field(22; EndProcessingCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'EndProcessingCommand';
        }
        field(23; StartSetupCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'StartSetupCommand';
        }
        field(24; EndSetupCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'EndSetupCommand';
        }
        field(25; StartIdleCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'StartIdleCommand';
        }
        field(26; EndIdleCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'EndIdleCommand';
        }
        field(27; PostCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'PostCommand';
        }
        field(28; SkipOperationCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'SkipOperationCommand';
        }
        field(29; ChangeUserCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ChangeUserCommand';
        }
        field(30; ChangeMachineCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ChangeMachineCommand';
        }
        field(31; OutPutButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'OutPutButtonCommand';
        }
        field(32; ScrapButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'ScrapButtonCommand';
        }
        field(33; FinishButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'FinishButtonCommand';
        }

        field(34; RequiredActionType; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'RequiredActionType';
        }
        field(35; SelectedInput; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'SelectedInput';
        }

        field(36; DateEventInsert; DateTime)
        {
            DataClassification = CustomerContent;
            Description = 'SelectedInput';
        }
    }

    trigger OnInsert()
    begin
        prod_guid := CreateGuid();
    end;
}