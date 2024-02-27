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
                            Rec."Work Order Type" := Rec."Work Order Type"::CM;
                            Rec."Plant Code" := EquipMast."Plant Code";
                            Rec."Section Code" := EquipMast."Section Code";
                            Rec."Cost Center Code" := EquipMast."Sbu Code";
                            Rec."Posting Group" := EquipMast."Sbu2 Code";
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
                field("Plant Code"; Rec."Plant Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Plant field.';
                    Caption = 'Plant Code';
                    Editable = false;
                }
                field("Section Code"; Rec."Section Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Section field.';
                    Caption = 'Section';
                    Editable = false;
                }
                field("Cost Center Code"; Rec."Cost Center Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cost Center field.';
                    Caption = 'Cost Center';
                    //   Editable = false;   //TECSA Change Request on 19-Dec-2023
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Group field.';
                    Caption = 'Posting Group';
                    //    Editable = false;  //TECSA Change Request on 19-Dec-2023
                }
                field("Work Order Type"; Rec."Work Order Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Type field.';
                    Caption = 'Work Order Type';
                    Editable = false;
                }

                /*  field("PM Work Order Type"; Rec."PM Work Order Type")  // Modified by Patric on 12-Dec-2023
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the Work Order Type field.';
                     Caption = 'Work Order Type';
                     Editable = false;
                 } */

                field("PM No."; Rec."PM No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Code field.';
                    Caption = 'Job Plan No.';
                    Editable = false;  //TECSA Change Request on 20-Dec-2023
                    Visible = false;  //TECSA Change Request on 21-Dec-2023

                }
                field("PM Description"; Rec."PM Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PM Description field.';
                    Caption = 'Job Plan Descriptiion';
                    Visible = false;  //TECSA Change Request on 21-Dec-2023
                }
                field("RL JP No."; Rec."RL JP No.")  //TECSA Change Request on 21-Dec-2023
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP No. field.';
                    Caption = 'Job Plan No.';
                    TableRelation = "Job Plan Header2";
                    trigger OnValidate()
                    var
                        JPRec: Record "Job Plan Header2";
                    Begin
                        JPRec.Reset();
                        JPRec.SetRange("No.", Rec."RL JP No.");
                        if JPRec.FindFirst() then Begin
                            Rec."RL JP Name" := JPRec.Description;
                        End
                    End;
                }
                field("RL JP Name"; Rec."RL JP Name")  //TECSA Change Request on 21-Dec-2023
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RL JP Name field.';
                    Caption = 'Job Plan Descriptiion';
                }

                /*  field("PM First Start Date"; Rec."PM First Start Date") // Modified by Patric on 12-Dec-2023
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the PM First Start Date field.';
                     Caption = 'Job Plan Start Date';
                 } */
                /*  field("PM Routes No."; Rec."PM Routes No.") // Modified by Patric on 12-Dec-2023
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the PM Routes No. field.';
                     Caption = 'Route No.';
                 }
                 field("PM Routes Name"; Rec."PM Routes Name")  // Modified by Patric on 12-Dec-2023
                 {
                     ApplicationArea = All;
                     ToolTip = 'Specifies the value of the PM Routes Name field.';
                     Caption = 'Route Name';
                 } */
                field("Work Order Date"; Rec."Work Order Date") // This is For CM WorkOrder created 27-11-2023 Patric
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Work Order Date field.';
                    Caption = 'Work Order Creation Date';
                    Editable = false;
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
                field("HOD Approval Status"; Rec."HOD Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department Head Approval Status field.';
                    Editable = false;  //TECSA Change Request on 20-Dec-2023
                    Caption = 'Requester HOD Approval Status'; //TECSA Change Request on 21-Dec-2023
                }
                field("Store Approval Status"; Rec."Store Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Store Approval Status field.';
                    Editable = false;   //TECSA Change Request on 20-Dec-2023
                    Caption = 'Store HOD Approval Status'; //TECSA Change Request on 21-Dec-2023
                }

                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                    Editable = false;
                }
            }
            group(Remarks)
            {
                field("Remarks 1"; Rec."Remarks 1")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description of Work Order field.';
                    Caption = 'Description of Work Order';
                    MultiLine = true;
                }
                field("Remarks 2"; Rec."Remarks 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Observation & Action field.';
                    Caption = 'Observation & Action';
                    MultiLine = true;
                }
            }
            group("Problem/Solutions")
            {

                field("Failure Code"; Rec."Failure Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fault Code field.';
                }
                field("Failure Description"; Rec."Failure Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fault Description field.';
                }
                field("Cause Code"; Rec."Cause Code")  //TECSA Change Request on 21-Dec-2023
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cause Code field.';
                }
                field("Cause Description"; Rec."Cause Description")  //TECSA Change Request on 21-Dec-2023
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cause Description field.';
                }
                field("Solution Code"; Rec."Solution Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solution Code field.';
                    Caption = 'Soultion Code';
                }
                field("Solution Description"; Rec."Solution Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Solutions field.';
                    Caption = 'Solution Description';
                }
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
            //    part(WOItem; "CMMS Equipment Components List")
            part(WOItem; "CMMS Equipment BOM Subform")
            {
                ApplicationArea = All;
                Caption = 'Work Order Item List';
                UpdatePropagation = Both;
                //    SubPageLink = "Equipment No." = field("PM Equipment No.");
                SubPageLink = "Equipment No." = field("PM Equipment No."), "FA No." = field("PM Equipment No.");  //TECSA Change Request on 20-Dec-2023
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

            // Modified by Patric on 12-Dec-2023
            group("Posting Setup")
            {
                field("GL Account Code"; Rec."GL Account Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the GL Account Code field.';
                    Caption = 'G/L Account';  // Debit Side Account
                }
                field("Bal. GL Account"; Rec."Bal. GL Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bal. G/L Account field.';
                    Caption = 'Bal. G/L Account';  // Credit Side Account
                }
            }

            //************** ***************
        }
    }

    actions
    {
        area(Processing)
        {
            // Modified by Patric on 12-Dec-2023
            group("Send For Approval")
            {
                Caption = 'Send For Approval';
                Image = SendApprovalRequest;
                action("HOAPPROVALSUBMIT")
                {
                    ApplicationArea = All;
                    //        Caption = 'Department Head';   //TECSA Change Request on 19-Dec-2023
                    Caption = 'Requester HOD Approval Status';  //TECSA Change Request on 19-Dec-2023
                    trigger OnAction()

                    begin
                        if Rec."HOD Approval Status" = Rec."HOD Approval Status"::" " then Begin
                            /*  if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
                                 Error('Already Posted and Closed'); */
                            Rec."HOD Approval Status" := Rec."HOD Approval Status"::"Pending Approval";
                            Rec.Modify();
                        End

                    end;
                }
                action("STOREAPPROVALSUBMIT")
                {
                    ApplicationArea = All;
                    //    Caption = 'Store Department Head';  //TECSA Change Request on 19-Dec-2023
                    Caption = 'Store HOD Approval Status';
                    trigger OnAction()
                    begin
                        if Rec."Store Approval Status" = Rec."Store Approval Status"::" " then Begin
                            /* if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
                                Error('Already Posted and Closed'); */
                            Rec."Store Approval Status" := Rec."Store Approval Status"::"Pending Approval";
                            Rec.Modify();
                        End
                    end;
                }
            }
            group(Approval)
            {
                Caption = 'Approvals';
                Image = Approvals;
                action("HOAPPROVAL")
                {
                    ApplicationArea = All;
                    Caption = 'Approve - HOD';
                    trigger OnAction()
                    begin
                        if Rec."HOD Approval Status" = Rec."HOD Approval Status"::"Pending Approval" then Begin
                            /* if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
                                Error('Already Posted and Closed'); */
                            Rec."HOD Approval Status" := Rec."HOD Approval Status"::Released;
                            Rec.Modify();
                        End
                    end;
                }
                action("STOREAPPROVAL")
                {
                    ApplicationArea = All;
                    Caption = 'Approve - STORE';
                    trigger OnAction()
                    begin
                        if Rec."Store Approval Status" = Rec."Store Approval Status"::"Pending Approval" then Begin
                            /* if Rec."PM Work Order Status" = Rec."PM Work Order Status"::"Post & Close" then
                                Error('Already Posted and Closed'); */
                            Rec."Store Approval Status" := Rec."Store Approval Status"::Released;
                            Rec.Modify();
                        End
                    end;
                }
            }
            group(Postings)
            {
                Caption = 'Postings';
                Image = Post;
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

                        //TECSA Change Request on 19-Feb-2024

                        //    if CMMSPMSch.Get(Rec."PM No.") then Begin
                        JnlCreateCMWorkOrder.CreateCMWordOrderJournal(Rec);
                        Message('Journal Created Successfully!!!!!');

                        // ********** *************
                    end;
                }
            }
            group(Print) //TECSA Change Request on 28-Dec-2023
            {
                action("Print CM Work Order")
                {

                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        CMWorkOrder: Record "CMMS PM Schedule";
                        WOItemL: Record "CMMS Equipment BOM";
                    Begin
                        CMWorkOrder.Reset();
                        CMWorkOrder.SetRange("PM No.", Rec."PM No.");
                        CMWorkOrder.SetRange("Work Order No.", Rec."Work Order No.");
                        //   Report.RunModal(Report::"CM Work Order", true, true, WOItemL);
                        Report.RunModal(Report::"CM Work Order", true, true, CMWorkOrder); //TECSA Change Request on 24-Jan-2024
                    End;

                }
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
            Rec."PM No." := Rec."Work Order No.";   //TECSA Change Request on 20-Dec-2023
            Rec."RL JP No." := 'DEFAULT'; //TECSA Change Request on 21-Dec-2023
            Rec."RL JP Name" := 'Corrective Maintenance'; //TECSA Change Request on 21-Dec-2023
        end;
        Rec."PM Status" := Rec."PM Status"::Open;
        Rec."PM Work Order Status" := Rec."PM Work Order Status"::"WO Created";  // Modified by Patric on 12-Dec-2023
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
            Rec."RL JP No." := 'DEFAULT'; //TECSA Change Request on 21-Dec-2023
            Rec."RL JP Name" := 'Corrective Maintenance'; //TECSA Change Request on 21-Dec-2023

        end;
        Rec."PM Status" := Rec."PM Status"::Open;
        Rec."PM Work Order Status" := Rec."PM Work Order Status"::"WO Created"; // Modified by Patric on 12-Dec-2023
    end;

    var
        PMMainList: Record "PM Main List";
        IsEditable: Boolean;
        CMMSPMSch: Record "CMMS PM Schedule";
        JnlCreateCMWorkOrder: Codeunit "CM Transfer Journal Line";

}