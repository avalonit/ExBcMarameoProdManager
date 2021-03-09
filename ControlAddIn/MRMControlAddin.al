
controladdin MRMControlAddin
{
    HorizontalShrink = true;
    HorizontalStretch = true;
    VerticalShrink = true;
    VerticalStretch = true;
    MinimumWidth = 400;
    //RequestedWidth = 1000;
    //MaximumHeight = 200;

    // The Scripts property can reference both external and local scripts.
    //Scripts = 'https://cdnjs.cloudflare.com/ajax/libs/knockout/3.4.2/knockout-debug.js'
    //            , 'web/web_script.js';
    Scripts = 'https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js',
        'web/web_script.js';

    // The StartupScript is a special script that the web client calls once the page is loaded.
    StartupScript = 'web/web_startup.js';

    // Specifies the StyleSheets that are included in the control add-in.
    StyleSheets = 'web/web_skin.css';

    // Specifies the Images that are included in the control add-in.
    Images = 'web/web_logo.png';

    // The procedure declarations specify what JavaScript methods could be called from AL.
    // In main.js code, there should be a global function CallJavaScript(s) {Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcPageCallBack', [s]);}
    procedure CallJavaScript(s: text);
    procedure PostControlAddInEvent(message: text);
    procedure RaiseControlAddInEvent(index: integer; message: text);

    // The event declarations specify what callbacks could be raised from JavaScript by using the webclient API:
    //Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcPageCallBack', ['SAMPLE TEXT']);

    procedure SetPage(url: Text);
    event OnBcPageCallBack(s: text);
    event OnBcRaiseControlAddInEventCallBack(index: Integer; message: text);
    event OnStartup();
    event OnControlAddInReady();

}