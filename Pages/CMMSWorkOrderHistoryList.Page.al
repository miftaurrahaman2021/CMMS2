page 50177 "CMMS WorkOrder History List" // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    Editable = false;
    SourceTable = "CMMS PM Schedule";
    CardPageId = "CMMS Work Order Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                    Caption = 'Work Order No.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                    Caption = 'Description';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                    Caption = 'Equipment No.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                    Caption = 'Equipment Description';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                    Caption = 'Route No.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                    Caption = 'Route Name';
                }
                field("PM Status"; Rec."PM Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Status field.';
                    Caption = 'Work Order Status';
                }
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                    Caption = 'Start Date';
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                field("PM Work Order Type"; Rec."PM Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                    Caption = 'Work Order Type';
                }
                /*         field("PM Work Order Priority"; Rec."PM Work Order Priority")
                         {
                             ApplicationArea = All;
                             ToolTip = 'Specifies the value of the Work Order Priority field.';
                         }
                         field("Work Order No."; Rec."Work Order No.")
                         {
                             ApplicationArea = All;
                             ToolTip = 'Specifies the value of the Work Order No. field.';
                         }
                         field("RL Route No."; Rec."RL Route No.")
                         {
                             ApplicationArea = All;
                             ToolTip = 'Specifies the value of the Route Code Line field.';
                         }
                         field("RL Route Name"; Rec."RL Route Name")
                         {
                             ApplicationArea = All;
                             ToolTip = 'Specifies the value of the RL Route Name field.';
                         }
                 */
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