page 59032 "PM Main List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "PM Main List";
    Editable = false;
    DeleteAllowed = false;
    CardPageId = "CMMS PM Main Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the PM No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("FA No."; Rec."FA No.")
                {
                    ToolTip = 'Specifies the value of the FA No. field.';
                    Caption = 'Equipment No';  //TECSA Change Request on 19-Dec-2023
                }
                field("FA Description"; Rec."FA Description")
                {
                    ToolTip = 'Specifies the value of the FA Description field.';
                    Caption = 'Equipment Name';  //TECSA Change Request on 19-Dec-2023
                }
                field("Routes No."; Rec."Routes No.")
                {
                    ToolTip = 'Specifies the value of the Routes No. field.';
                }
                field("Routes Description"; Rec."Routes Description")
                {
                    ToolTip = 'Specifies the value of the Routes Description field.';
                }
                field("PM Status"; Rec."PM Status")
                {
                    ToolTip = 'Specifies the value of the PM Status field.';
                }
                field("Next Job Plan"; Rec."Next Job Plan")
                {
                    ToolTip = 'Specifies the value of the Next Job Plan field.';
                    Visible = false;
                }
                field("First Start Date"; Rec."First Start Date")
                {
                    ToolTip = 'Specifies the value of the First Start Date field.';
                }
                field("Next Due Date"; Rec."Next Due Date")
                {
                    ToolTip = 'Specifies the value of the Next Due Date field.';
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