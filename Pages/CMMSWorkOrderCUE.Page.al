page 50153 "Work Order CUE"
{
    PageType = CardPart;
    Caption = 'Work Order CUE';
    SourceTable = "Work Order CUE";

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                field("Total WO"; Rec."Total WO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Work Order field.';
                    Style = StandardAccent;
                    DrillDownPageId = "Complete Work Order List";
                }
                field("PM WO"; Rec."PM WO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Preventive Maintenance Work Order field.';
                    Style = StandardAccent;
                    DrillDownPageId = "Complete Work Order List";
                }
                field("CM WO"; Rec."CM WO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Corrective Maintenance Work Order field.';
                    Style = StandardAccent;
                    DrillDownPageId = "Complete Work Order List";
                }
                field("HOD Pending WO"; Rec."HOD Pending WO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HOD Pending Work Order field.';
                    Style = Ambiguous;
                    DrillDownPageId = "Complete Work Order List";
                }
                field("Store Pending WO"; Rec."Store Pending WO")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the STORE Pending Work Order field.';
                    Style = Ambiguous;
                    DrillDownPageId = "Complete Work Order List";
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