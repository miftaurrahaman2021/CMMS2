page 59008 "Pay Grade List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Pay Grade";
    Caption = 'Employee Pay Grade';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Grade Code"; Rec."Grade Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grade Description field.';
                }
                field("Gross Salary"; Rec."Gross Salary")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gross Salary field.';
                }
                field("Gross Incentive"; Rec."Gross Incentive")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gross Incentive field.';
                }
                field(Minha; Rec.Minha)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minha field.';
                }
                field("Gov.Minha"; Rec."Gov.Minha")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Government Minha field.';
                }
                field("Grade Net Pay"; Rec."Grade Net Pay")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grade Net Pay field.';
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