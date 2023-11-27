page 59002 "Overtime Type List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Overtime Type";
    Caption = 'Overtime Type List';
    Editable = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field("Hourly Time"; Rec."Hourly Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Hourly Time field.';
                }
                field("Start Workday"; Rec."Start Workday")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Starting Workday field.';
                }
                field("End Workday"; Rec."End Workday")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Workday field.';
                }
                field("OT Type Status"; Rec."OT Type Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OT Time Status field.';
                }
                field("Overtime Type Comments"; Rec."Overtime Type Comments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Overtime Type Comment field.';
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