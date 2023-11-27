page 59013 "Job Plan Subform"
{
    Caption = 'Job Plan Subform';
    //   DelayedInsert = true;
    //   MultipleNewLines = true;
    //   AutoSplitKey = true;
    PageType = ListPart;
    SourceTable = "Job Plan Line2";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Job Plan No."; Rec."Job Plan No.")
                {
                    ApplicationArea = All;
                    Caption = 'Job Plan No.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    Visible = false;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                    Caption = 'Line No.';
                    Visible = false;
                }

                field("Task No."; Rec."Task No.")
                {
                    ApplicationArea = All;
                    Caption = 'Task No.';
                }
                field("Task Description"; Rec."Task Description")
                {
                    ApplicationArea = All;
                    Caption = 'Task Description';
                }
                field("Seq.No"; Rec."Seq.No")
                {
                    ApplicationArea = All;
                    Caption = 'Seq.No';
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


                // Defining the Resource Allocation based on Task in the Job Plan Line...
                field("Resource ID"; Rec."Resource ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource ID field.';
                }
                field("Resource Type"; Rec."Resource Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource Type field.';
                }
                field("Resource Name"; Rec."Resource Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Resource Name field.';
                }
                field("Base UOM"; Rec."Base UOM")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Base UOM field.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price field.';
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