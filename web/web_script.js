

function CallJavaScript(s) {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcPageCallBack', [s]);
}

function RaiseControlAddInEvent(index,message) {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnBcRaiseControlAddInEventCallBack', [index,message]);
}

