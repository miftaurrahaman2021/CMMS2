page 59014 "CMMS Routes List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Routes Header";
    Editable = false;
    DeleteAllowed = false;
    CardPageId = "CMMS Routes Card";


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Code field.';
                }
                field("Routes Description"; Rec."Routes Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Description field.';
                }
                field("Equipment No."; Rec."Equipment No.")
                {
                    ToolTip = 'Specifies the value of the Equipment field.';
                }
                field("Equipment Name"; Rec."Equipment Name")
                {
                    ToolTip = 'Specifies the value of the Equipment Name field.';
                }
                field("Route Status"; Rec."Route Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Route Status field.';
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}