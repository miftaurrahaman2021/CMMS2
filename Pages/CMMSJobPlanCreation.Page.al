page 59012 "Job Plan Creation"
{
    Caption = 'Job Planning';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Job Plan Header2";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan No.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                }
                field(Duration; Rec.Duration)
                {
                    ApplicationArea = All;
                    Caption = 'Duration';
                }
                field("Job Plan Status"; Rec."Job Plan Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Job Plan Status field.';
                }

            }
            part(JobplanLines; "Job Plan Subform")
            {
                ApplicationArea = Suite;
                Visible = true;
                SubPageLink = "Job Plan No." = field("No.");
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Approve)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.Reset();
                    Rec."Job Plan Status" := Rec."Job Plan Status"::Approved;
                    Rec.Modify();

                    JobPlanLine.Reset();
                    JobPlanLine.SetRange("Job Plan No.", Rec."No.");
                    if JobPlanLine.FindSet() then
                        repeat
                            JobPlanLine."Job Plan Status" := JobPlanHead."Job Plan Status"::Approved;
                            JobPlanLine.Modify();
                        until JobPlanLine.Next = 0;
                End;

            }
        }
    }

    var
        JobPlanHead: Record "Job Plan Header2";
        JobPlanLine: Record "Job Plan Line2";
}