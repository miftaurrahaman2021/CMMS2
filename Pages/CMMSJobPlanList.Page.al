page 59019 "CMMS Job Plan List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Job Plan Header2";
    DeleteAllowed = false;
    CardPageId = "Job Plan Creation";
    Caption = 'Job Plan List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Duration"; Rec."Duration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Duration field.';
                }
                field("Job Plan Status"; Rec."Job Plan Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan Status field.';
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