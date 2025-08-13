controladdin "Control-AddIn Framework TPE"
{
    RequestedHeight = 600;
    RequestedWidth = 800;

    MinimumHeight = 200;
    MinimumWidth = 320;

    MaximumHeight = 768;
    MaximumWidth = 1024;

    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    /*Scripts =
        'bc-react-app/dist/assets/*.js';*/
    StyleSheets =
        'bc-react-app/dist/assets/*.css';
    StartupScript = 'bc-react-app/dist/assets/index.js';
    RecreateScript = 'bc-react-app/dist/assets/index.js';
    RefreshScript = 'bc-react-app/dist/assets/index.js';
    Images =
        'bc-react-app/dist/assets/*.svg';

    // The procedure declarations specify what JavaScript methods could be called from AL.
    // In main.js code, there should be a global function CallJavaScript(i,s,d,c) {Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [i, s, d, c]);}
    procedure OnControlAddInReady();

    // The event declarations specify what callbacks could be raised from JavaScript by using the webclient API:
    // Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [42, 'some text', 5.8, 'c'])
    event Callback(i: integer; s: text; d: decimal; c: char);
}