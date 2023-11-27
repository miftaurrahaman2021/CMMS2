page 59030 "CMMS Equipment CUE"
{
    PageType = CardPart;
    SourceTable = "CMMS Equipment CUE";

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                field("Total Equipment"; Rec."Total Equipment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Equipment field.';
                    Style = Ambiguous;
                    DrillDownPageId = "CMMS Equipment List";
                }
                field("Total Active Equipment"; Rec."Total Active Equipment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Active Equipments field.';
                    Style = Favorable;
                    DrillDownPageId = "CMMS Equipment List";
                }
                field("Total InActive Equipment"; Rec."Total InActive Equipment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total InActive Equipments field.';
                    Style = Attention;
                    DrillDownPageId = "CMMS Equipment List";
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
        End;
    End;
}