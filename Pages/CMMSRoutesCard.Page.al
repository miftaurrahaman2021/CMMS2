page 59015 "CMMS Routes Card"
{
    PageType = Document;
    RefreshOnActivate = true;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CMMS Routes Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Code field.';
                    Caption = 'Route No.';
                }
                field("Routes Description"; Rec."Routes Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Routes Description field.';
                    Caption = 'Description';
                }
                field("Equipment No."; Rec."Equipment No.")
                {
                    ToolTip = 'Specifies the value of the Equipment field.';
                }
                field("Equipment Name"; Rec."Equipment Name")
                {
                    ToolTip = 'Specifies the value of the Equipment Name field.';
                }

                field("Route Status"; Rec."Route Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Route Status field.';
                }
            }
            part(RoutesLine; "CMMS Routes Subform")
            {
                ApplicationArea = All;
                Caption = 'Routes Line';
                SubPageLink = "Routes Code" = field("No."), "Equipment No." = field("Equipment No.");
                UpdatePropagation = Both;
                Visible = true;

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
                    Rec."Route Status" := Rec."Route Status"::Approved;
                    Rec.Modify();

                    RouetLine.Reset();
                    RouetLine.SetRange("Routes Code", Rec."No.");
                    if RouetLine.FindSet() then
                        repeat
                            RouetLine."Route Status" := RouteHeader."Route Status"::Approved;
                            RouetLine.Modify();
                        until RouetLine.Next = 0;
                end;
            }
        }
    }

    var
        RouteHeader: Record "CMMS Routes Header";
        RouetLine: Record "CMMS Routes Line";
}