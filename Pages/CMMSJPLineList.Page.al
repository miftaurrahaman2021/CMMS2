page 59037 "Job Plan Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Job Plan Line2";
    Caption = 'Job Plan Line List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Job Plan No."; Rec."Job Plan No.")
                {
                    ToolTip = 'Specifies the value of the Job Plan No. field.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Job Plan Description field.';
                }
                field("Line No."; Rec."Line No.")
                {
                    ToolTip = 'Specifies the value of the Line No. field.';
                    Visible = false;
                }
                field("Seq.No"; Rec."Seq.No")
                {
                    ToolTip = 'Specifies the value of the Seq.No field.';
                }
                field("Task No."; Rec."Task No.")
                {
                    ToolTip = 'Specifies the value of the Task No. field.';
                }
                field("Task Description"; Rec."Task Description")
                {
                    ToolTip = 'Specifies the value of the Task Description field.';
                }
                field("Resource Type"; Rec."Resource Type")
                {
                    ToolTip = 'Specifies the value of the Resource Type field.';
                }
                field("Resource ID"; Rec."Resource ID")
                {
                    ToolTip = 'Specifies the value of the Resource ID field.';
                }
                field("Resource Name"; Rec."Resource Name")
                {
                    ToolTip = 'Specifies the value of the Resource Name field.';
                }
                field("Base UOM"; Rec."Base UOM")
                {
                    ToolTip = 'Specifies the value of the Base UOM field.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ToolTip = 'Specifies the value of the Unit Price field.';
                }
                field("Duration"; Rec."Duration")
                {
                    ToolTip = 'Specifies the value of the Standard Duration field.';
                }
                field("Job Plan Status"; Rec."Job Plan Status")
                {
                    ToolTip = 'Specifies the value of the Job Plan Status field.';
                }




            }
        }
    }
}