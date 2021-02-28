Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnStartup');
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnControlAddInReady', null);

var _frame;
var _origin;

window.SetPage = function (url) {
    try {
        //alert(url);
        _origin = getViewerOrigin(url);
        var controlAddIn = document.getElementById('controlAddIn');

        /*
        IFRAME SOLUTION: DEPRECATED
        controlAddIn.innerHTML = '<iframe id="viewer" style="border-style: none; margin: 0px; padding: 0px; height: 100%; width: 100%" allowFullScreen></iframe>'
        _frame = document.getElementById('viewer');
        _frame.src = url;
        */
        LoadPage(url);

        console.log(url);
    } catch (err) {
        alert('Error: ' + url + ' -  ' + err);
        console.log(err);
    }
}

function LoadPage(url) {

    try {
        setTimeout(function () {
            DelayedLoadPage(url);
        }, 1000);
    }
    catch (err) {
        alert(err);
    }

}

function DelayedLoadPage(url) {

    try {
        $.ajax({
            url: url,
            xhrFields: {
                withCredentials: true
            }
        }
        ).done(function (data) {
            $("#controlAddIn").text(data);
        });

    }
    catch (err) {
        alert(err);
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