page 70360200 "MRM Web Viewer"
{
    Caption = 'MRM Web Viewer';

    PageType = List;
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
                trigger OnBcPageCallBack(s: text)
                begin
                    Message('OnBcPageCallBack: %1', s);
                end;

                trigger OnStartup()
                var
                    webConfig: Record "MRM Web Setup";
                begin
                    webConfig.GetRecord();
                    CurrPage.ControlName.SetPage(webConfig."Web Viewer URL");
                end;
            }
        }
    }


    actions
    {
        area(Creation)
        {
            action("Send a CallBack to BC")
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    // The control add-in methods can be invoked via a reference to the usercontrol.
                    CurrPage.ControlName.CallJavaScript('Invoke JS on client and get it back on Business Central Trigger');
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
}