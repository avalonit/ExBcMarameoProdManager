//alert('web_main.js');

function CallJavaScript(s) 
{
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcPageCallBack', [s]);
}