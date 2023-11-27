page 59041 "CMMS Work Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Work Order History";
    Caption = 'Work Order List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("CMMS Work Order"; Rec."CMMS Work Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the CMMS Work Order field.';
                }
                field("WO.RL Equip. No"; Rec."WO.RL Equip. No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Equip.No field.';
                }
                field("WO.RL JP No."; Rec."WO.RL JP No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP No. field.';
                }
                field("WO.RL JP Name"; Rec."WO.RL JP Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP Name field.';
                }
                field("WO.RL Route No."; Rec."WO.RL Route No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Route Code Line field.';
                }
                field("WO.RL Route Name"; Rec."WO.RL Route Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Route Name field.';
                }
                field("WO.RL Task No"; Rec."WO.RL Task No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Task No. field.';
                }
                field("WO.RL Task Name"; Rec."WO.RL Task Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Task Name field.';
                }
                field("WO.RL Resource Type"; Rec."WO.RL Resource Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Type field.';
                }
                field("WO.RL Resource Code"; Rec."WO.RL Resource Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Code field.';
                }
                field("WO.RL Resource Name"; Rec."WO.RL Resource Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Resource Name field.';
                }
                field("WO.RL Unit Price"; Rec."WO.RL Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Unit Price field.';
                }
                field("WO.PM First Start Date"; Rec."WO.PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                }
                field("WO.PM Work Order Type"; Rec."WO.PM Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                }
                field("WO.PM Work Order Status"; Rec."WO.PM Work Order Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Status field.';
                }
                field("WO.PM Work Order Priority"; Rec."WO.PM Work Order Priority")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Priority field.';
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