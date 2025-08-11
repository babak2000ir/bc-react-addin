page 70249925 PageWithAddIn
{
    layout
    {
        area(Content)
        {
            // The control add-in can be placed on the page using usercontrol keyword.
            usercontrol(ControlName; "Control-AddIn Framework TPE")
            {

                ApplicationArea = All;

                // The control add-in events can be handled by defining a trigger with a corresponding name.
                trigger Callback(i: integer; s: text; d: decimal; c: char)
                begin
                    Message('Got from js: %1, %2, %3, %4', i, s, d, c);
                end;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(CallJavaScript)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                    // The control add-in methods can be invoked via a reference to the usercontrol.
                    CurrPage.ControlName.CallJavaScript(5, 'text', 6.3, 'c');
                end;
            }
        }
    }
}