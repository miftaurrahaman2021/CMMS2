page 59001 "Overtime Type"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Overtime Type";
    Caption = 'Overtime Type Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Overtime Type Code"; Rec."Overtime Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Code field.';
                }
                field("Overtime Type Description"; Rec."Overtime Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Description field.';
                }
                field("Overtime Type Comments"; Rec."Overtime Type Comments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Comment field.';
                }
                field("Hourly Time"; Rec."Hourly Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hourly Time field.';
                }
                field("Hourly Rate"; Rec."Hourly Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hourly Rate field.';
                }
                field("Start Workday"; Rec."Start Workday")
                {
                    ApplicationArea = All;
                }
                field("End Workday"; Rec."End Workday")
                {
                    ApplicationArea = All;
                }
                field("OT Type Status"; Rec."OT Type Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OT Time Status field.';
                }

            }
            group("Account Mapping")
            {
                field("Account Map Dr."; Rec."Account Map Dr.")
                {
                    ApplicationArea = All;
                }
                field("Account Map Cr."; Rec."Account Map Cr.")
                {
                    ApplicationArea = All;
                }
                field("Vat Account"; Rec."Vat Account")
                {
                    ApplicationArea = All;
                }
            }
            group(Administration)
            {
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}