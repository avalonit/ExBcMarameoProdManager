//Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', ['Test'])

//var iframe = window.frameElement;

//iframe.parentElement.style.display = 'flex';
//iframe.parentElement.style.flexDirection = 'column';
//iframe.parentElement.style.flexGrow = '1';

//iframe.style.removeProperty('height');
//iframe.style.removeProperty('max-height');
//iframe.style.minHeight = '400px';

//iframe.style.flexGrow = '1';
//iframe.style.flexShrink = '1';
//iframe.style.flexBasis = 'auto';
//iframe.style.paddingBottom = '42px';

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnStartup');
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnControlAddInReady', null);
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnPageReady', null);

var __ViewerFrame;
var __ViewerOrigin;

window.SetPage = function (url) {
    try {
        alert(url);
        __ViewerOrigin = getViewerOrigin(url);
        //window.addEventListener("message", onMessage, false);
        var controlAddIn = document.getElementById('controlAddIn');
        controlAddIn.innerHTML = '<iframe id="viewer" style="border-style: none; margin: 0px; padding: 0px; height: 100%; width: 100%" allowFullScreen></iframe>'
        __ViewerFrame = document.getElementById('viewer');
        __ViewerFrame.src = url;

        console.log(url);
    } catch (err) {
        alert('Error: '+err);
        console.log(err);
    }
}


function getViewerOrigin(url) {
    if (isIE()) {
        var l = document.createElement("a");
        l.href = url;
        return (l.protocol + "//" + l.hostname);
    } else {
        return (new URL(url)).origin;
    }
}

function isIE() {
    ua = navigator.userAgent;
    /* MSIE used to detect old browsers and Trident used to newer ones*/
    var is_ie = ua.indexOf("MSIE ") > -1 || ua.indexOf("Trident/") > -1;
    
    return is_ie; 
  }