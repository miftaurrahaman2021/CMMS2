page 59042 "CMMS Work Order Card"
{
    Caption = 'Work Order Card';
    PageType = Card;
    SourceTable = "CMMS PM Schedule";
    // This is the Work Order In Progress

    layout
    {
        area(Content)
        {
            group(General)
            {
                Editable = Not IsEditable;
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order No. field.';
                    Caption = 'Work Order No.';
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                }
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                }
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                }

            }
            //    part(WOItem; "CMMS Equipment Components List")
            part(WOItem; "CMMS Equipment BOM Subform")
            {
                ApplicationArea = All;
                Caption = 'Work Order Item List';
                UpdatePropagation = Both;
                SubPageLink = "Equipment No." = field("PM Equipment No.");
                //Editable = false;
            }
            part(WORoute; "CMMS Routes Subform")
            {
                ApplicationArea = All;
                Caption = 'Route Information';
                UpdatePropagation = Both;
                SubPageLink = "Routes Code" = field("PM Routes No.");
                Editable = false;
            }
            group("Work Order Actual")
            {
                Editable = Not IsEditable;
                field("Work Order Completion Date"; Rec."Work Order Completion Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                }
                /*      field("PM Work Order Status"; Rec."PM Work Order Status")
                      {
                          ApplicationArea = All;
                          ToolTip = 'Specifies the value of the Work Order Status field.';
                      }
                      */
                field("PM Status"; Rec."PM Status")
                {
                    ToolTip = 'Specifies the value of the PM Status field.';
                    Caption = 'PM Status';
                    Visible = false;
                }
                field("PM Work Order Status"; Rec."PM Work Order Status")
                {
                    ApplicationArea = All;
                    Caption = 'Work Order Status';
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("PMPCWO")
            {
                ApplicationArea = All;
                Caption = 'Post & Close Work Order';

                trigger OnAction()
                begin
                    if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
                        Error('Already Posted and Closed');
                    Rec."Work Order Completion Date" := WorkDate();
                    Rec."PM Work Order Status" := Rec."PM Work Order Status"::"Post & Close";
                    Rec.Modify();
                    PMMainList.Reset();
                    PMMainList.SetRange("No.", Rec."PM No.");
                    if PMMainList.FindFirst() then Begin
                        if PMMainList."First Start Date" > WorkDate() then
                            Error('Can not be closed as Start Date is Greater than workdate');
                        PMMainList."Last WO Completion Date" := WorkDate();
                        PMMainList."Next Due Date" := PMMainList."Last WO Completion Date" + PMMainList.FDWMQY;
                        PMMainList.Modify();
                    End;
                    Message('Work Order has been Posted & Closed..');
                end;
            }
            action("Print PM Work Order")  // Modified on 18-Feb-2024 by Patric - Request from TECSA
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    PMWorkOrder: Record "CMMS PM Schedule";
                    WOItemL: Record "CMMS Equipment BOM";
                    PMRoute: Record "CMMS Routes Line";

                Begin
                    PMWorkOrder.Reset();
                    PMWorkOrder.SetRange("PM No.", Rec."PM No.");
                    PMWorkOrder.SetRange("Work Order No.", Rec."Work Order No.");
                    Report.RunModal(Report::"CM PM Work Order", true, true, PMWorkOrder);
                End;
            }


        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
            IsEditable := true
        else
            IsEditable := false;
    end;

    var
        PMMainList: Record "PM Main List";
        IsEditable: Boolean;
}