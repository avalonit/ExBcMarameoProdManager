//alert('web_script.js');


function CallJavaScript(s) 
{
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcPageCallBack', [s]);
}