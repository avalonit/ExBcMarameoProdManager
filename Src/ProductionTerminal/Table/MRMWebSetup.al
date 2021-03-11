table 70360199 "MRM Web Setup"
{
    DataPerCompany = false;
    DataClassification = CustomerContent;
    LookupPageId = "MRM Web Setup";
    DrillDownPageId = "MRM Web Setup";

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = SystemMetadata;
        }
        field(2; "Web Viewer URL"; Text[250])
        {
            DataClassification = CustomerContent;
            Description = 'Web Viewer URL';
        }
    }

    procedure GetRecord()
    begin
        if not Get() then
            Insert();
    end;
}