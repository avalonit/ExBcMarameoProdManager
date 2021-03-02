page 70360199 "MRM Web Setup"
{
    PageType = Card;
    SourceTable = "MRM Web Setup";
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Web Viewer URL"; "Web Viewer URL")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        GetRecord();
    end;
}