table 70360201 "MRM Prod Addins"
{
    DataPerCompany = false;
    DataClassification = CustomerContent;
    LookupPageId = "MRM Prod Addins";
    DrillDownPageId = "MRM Prod Addins";

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
        }
        field(3; ProdOrderNo; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(4; OperationNo; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(5; MachineNo; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(6; Description; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(7; Output; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(8; Action; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(9; Status; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(10; MachineType; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(11; Finish; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(12; ProcessingTime; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(13; SetupTime; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(14; IdleTime; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(15; IdleCode; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(16; FinishedQuantity; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(17; ScrapQuantity; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(18; WorkCenterCode; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(19; WorkCenterGroupCode; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(20; SeperatorCode; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(21; StartProcessingCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(22; EndProcessingCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(23; StartSetupCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(24; EndSetupCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(25; StartIdleCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(26; EndIdleCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(27; PostCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(28; SkipOperationCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(29; ChangeUserCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(30; ChangeMachineCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(31; OutPutButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(32; ScrapButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(33; FinishButtonCommand; Text[250])
        {
            DataClassification = CustomerContent;
        }

        field(34; RequiredActionType; Text[250])
        {
            DataClassification = CustomerContent;
        }
        field(35; SelectedInput; Text[250])
        {
            DataClassification = CustomerContent;
        }

    }

    trigger OnInsert()
    begin
        prod_guid := CreateGuid();
    end;
}