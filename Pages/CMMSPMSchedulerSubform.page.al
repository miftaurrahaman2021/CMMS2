page 50110 "CMMS PM Scheduler Subform"
{
    PageType = ListPart;
    SourceTable = "CMMS PM Schedule";
    Caption = 'PM Scheduler List for Work Order';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                }
                field("Next PM Due Date"; Rec."Next PM Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next PM Due Date field.';
                    Editable = false;
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No. field.';
                    Editable = false;
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
            }
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