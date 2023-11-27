page 59000 "Employee Category List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Employee Category";
    Caption = 'Employee Category List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Employee Category Code"; Rec."Employee Category Code")
                {
                    ApplicationArea = All;
                }
                field("Employee Category Name"; Rec."Employee Category Name")
                {
                    ApplicationArea = All;
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