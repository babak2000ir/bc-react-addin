controladdin "Control-AddIn Framework TPE"
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    /* Scripts =
        'script1.js',
        'script2.js';
    StyleSheets =
        'style.css';
    StartupScript = 'startupScript.js';
    RecreateScript = 'recreateScript.js';
    RefreshScript = 'refreshScript.js';
    Images =
        'image1.png',
        'image2.png'; */

    // The procedure declarations specify what JavaScript methods could be called from AL.
    // In main.js code, there should be a global function CallJavaScript(i,s,d,c) {Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [i, s, d, c]);}
    procedure CallJavaScript(i: integer; s: text; d: decimal; c: char);

    // The event declarations specify what callbacks could be raised from JavaScript by using the webclient API:
    // Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [42, 'some text', 5.8, 'c'])
    event Callback(i: integer; s: text; d: decimal; c: char);
}