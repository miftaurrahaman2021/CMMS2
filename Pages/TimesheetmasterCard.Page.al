page 59003 "Timesheet Master card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Timesheet Master";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Timesheet Code"; Rec."Timesheet Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Timesheet Code field.';
                }
                field("Timesheet Description"; Rec."Timesheet Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Timesheet Description field.';
                }
                field("Start Working Hours"; Rec."Start Working Hours")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Working Hours field.';
                }
                field("End Working Hours"; Rec."End Working Hours")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Working Hours field.';
                }
                field("Actual Working Hours"; Rec."Actual Working Hours")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Working Hours field.';
                }
                field("Overtime Type"; Rec."Overtime Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type field.';
                }
                field("Overtime Hour"; Rec."Overtime Hour")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Hour field.';
                }
                field("Timesheet Status"; Rec."Timesheet Status")
                {
                    Caption = 'Timesheet Status';
                }

            }
            group(Administration)
            {
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
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