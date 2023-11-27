page 59039 "CMMS Job Plan CUE"
{
    PageType = CardPart;
    SourceTable = "CMMS Job Plan CUE";
    Caption = 'Job Plan CUE';

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                field("Total Job Plan"; Rec."Total Job Plan")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Job Plan No. field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
                }
                field("Total Open JP"; Rec."Total Open JP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the OPEN Job Plans field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
                }
                field("Total Approved JP"; Rec."Total Approved JP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the APPROVED Job Plan field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
                }
                field("Total Scheduled JP"; Rec."Total Scheduled JP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total SCHEDULED Job Plan field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
                }
                field("Total Under Maintenance"; Rec."Total Under Maintenance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total UNDER MAINTENANCE Job Plan field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
                }
                field("Total Closed JP"; Rec."Total Closed JP")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total CLOSED Job Plan field.';
                    Style = AttentionAccent;
                    DrillDownPageId = "CMMS Job Plan List";
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

    trigger OnOpenPage()
    Begin
        Rec.Reset();
        if not Rec.Get() then Begin
            Rec.Init();
            Rec.Insert()
        End
    End;
}