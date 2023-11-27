page 59029 "CMMS Task Master"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Task Master";
    Caption = 'Task Master List';
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Code field.';
                }
                field("Task Description"; Rec."Task Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Description field.';
                }
                field("Task Duration"; Rec."Task Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Task Std.Time. Minutes) field.';
                }
                field("Asset Sub Class Code"; Rec."Asset Sub Class Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Asset Sub Class field.';
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