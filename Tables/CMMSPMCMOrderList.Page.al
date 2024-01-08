page 50152 "Complete Work Order List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS PM Schedule";
    Editable = false;
    DeleteAllowed = false;
    Caption = 'Complete Work Order List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Type';
                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order No';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    Caption = 'Equipment No';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    Caption = 'Equipment Description';
                }
                field("Plant Code"; Rec."Plant Code")
                {
                    ApplicationArea = All;
                    Caption = 'Plant';
                }
                field("Section Code"; Rec."Section Code")
                {
                    ApplicationArea = All;
                    Caption = 'Section';
                }

                // Corrective Maintenace Information

                field("Work Order Date"; Rec."Work Order Date")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Date';
                }
                field("Work Order Start Date"; Rec."Work Order Start Date")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Start Date';
                }
                field("Work Order End Date"; Rec."Work Order End Date")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Completion Date';
                }
                // Preventive Maintenace Information

                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan No.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan Description';
                }
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    Caption = 'PM First Start Date';
                }
                field(FDWMQY; Rec.FDWMQY)
                {
                    ApplicationArea = All;
                    Caption = 'PM Schedule Days';
                }
                field("Next PM Due Date"; Rec."Next PM Due Date")
                {
                    ApplicationArea = All;
                    Caption = 'PM Next Due Date';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    Caption = 'Route No';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    Caption = 'Route Name';
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