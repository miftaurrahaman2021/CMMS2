page 50142 "CM Work Order Card"
{
    Caption = 'CM Work Order Card';
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
                    Editable = false;
                }
                field("PM Equipment No."; Rec."PM Equipment No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equipment No. field.';
                    Caption = 'Equipment No.';

                    // This is For CM WorkOrder created 27-11-2023 Patric  
                    TableRelation = "CMMS Equipment Master";
                    trigger OnValidate()
                    var
                        EquipMast: Record "CMMS Equipment Master";
                    begin
                        EquipMast.Reset();
                        EquipMast.SetRange("No.", Rec."PM Equipment No.");
                        if EquipMast.FindFirst() then Begin
                            Rec."PM Equip.Description" := EquipMast."Equipment Description";
                        End

                    end;

                    // This is For CM WorkOrder created 27-11-2023 Patric
                }
                field("PM Equip.Description"; Rec."PM Equip.Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Equip.Description field.';
                    Caption = 'Equipment Description';
                    Editable = false;
                }
                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                    Caption = 'Job Plan No.';
                    Editable = false;
                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                    Caption = 'Job Plan Descriptiion';
                }
                field("PM First Start Date"; Rec."PM First Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM First Start Date field.';
                    Caption = 'Job Plan Start Date';
                }
                field("PM Routes No."; Rec."PM Routes No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes No. field.';
                    Caption = 'Route No.';
                }
                field("PM Routes Name"; Rec."PM Routes Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Routes Name field.';
                    Caption = 'Route Name';
                }
                field("Work Order Date"; Rec."Work Order Date") // This is For CM WorkOrder created 27-11-2023 Patric
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Date field.';
                    Caption = 'Work Order Date';
                }
                field("Work Order Start Date"; Rec."Work Order Start Date") // This is For CM WorkOrder created 27-11-2023 Patric
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Start Date field.';
                    Caption = 'Work Order Start Date';
                }
                field("Work Order End Date"; Rec."Work Order End Date") // This is For CM WorkOrder created 27-11-2023 Patric
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                    Caption = 'Work Order Completion Date';
                    Editable = false;
                }
                field("RL Task Name"; Rec."RL Task Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL Task Name field.';
                    Caption = 'Task Name';
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
                Visible = false;
            }
            group("Work Order Actual")
            {
                Editable = Not IsEditable;
                field("Work Order Completion Date"; Rec."Work Order Completion Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Completion Date field.';
                    Editable = false;
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
                    Editable = false;
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
                    Rec."Work Order End Date" := WorkDate();  // This is For CM WorkOrder created 27-11-2023 Patric      
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
        }
    }
    trigger OnAfterGetCurrRecord()
    begin
        if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
            IsEditable := true
        else
            IsEditable := false;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    var
        NosMgt: Codeunit NoSeriesManagement;
        QCSetup: Record "CMMS Setup2";
    begin
        if Rec."Work Order No." = '' then begin
            QCSetup.Get();
            QCSetup.TestField("CM Work Order Nos.");
            Rec."Work Order No." := NosMgt.GetNextNo(QCSetup."CM Work Order Nos.", WorkDate(), true);
            Rec."PM No." := Rec."Work Order No.";
        end;
        Rec."PM Status" := Rec."PM Status"::Open;
        Rec."Work Order Type" := Rec."Work Order Type"::CM;

    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var
        NosMgt: Codeunit NoSeriesManagement;
        QCSetup: Record "CMMS Setup2";
    begin
        if Rec."Work Order No." = '' then begin
            QCSetup.Get();
            QCSetup.TestField("CM Work Order Nos.");
            Rec."Work Order No." := NosMgt.GetNextNo(QCSetup."CM Work Order Nos.", WorkDate(), true);
            Rec."PM No." := Rec."Work Order No.";
        end;
        Rec."PM Status" := Rec."PM Status"::Open;
    end;

    var
        PMMainList: Record "PM Main List";
        IsEditable: Boolean;
        CMMSPMSch: Record "CMMS PM Schedule";
}