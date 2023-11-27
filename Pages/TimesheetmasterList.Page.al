page 59004 "Timesheet Master List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Timesheet Master";
    Caption = 'Timesheet Master List';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Timesheet Status field.';
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