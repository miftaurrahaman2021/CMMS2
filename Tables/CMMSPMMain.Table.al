table 59017 "PM Main List"
{
    Caption = 'Preventive Maintenance';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'PM No.';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "FA No."; Code[20])
        {
            Caption = 'FA No.';
            TableRelation = "CMMS Equipment Master";
            trigger OnValidate()
            Begin
                FARec.Reset();
                FARec.SetRange("No.", "FA No.");
                if FARec.FindFirst() then begin
                    "FA Description" := FARec."Equipment Description";
                end;

            End;
        }
        field(4; "FA Description"; Text[100])
        {
            Caption = 'FA Description';
            Editable = false;
        }
        field(5; "Routes No."; Code[20])
        {
            Caption = 'Routes No.';
            TableRelation = "CMMS Routes Line" where("Equipment No." = field("FA No."));
            //    TableRelation = "CMMS Routes Header" where("Equipment No." = field("FA No."));
            trigger OnValidate()
            Begin
                RouteLineRec.Reset();
                RouteLineRec.SetRange("Routes Code", "Routes No.");
                if RouteLineRec.FindFirst() then Begin
                    "Routes Description" := RouteLineRec."Routes Name";
                    //    End;
                    RouteLineRec.Reset();
                    RouteLineRec.SetRange("Routes Code", "Routes No.");
                    if RouteLineRec.FindSet() then
                        repeat
                            RouteLineRec."PM No." := "No.";
                            //    
                            RouteLineRec.Modify();
                        until RouteLineRec.Next = 0;
                    //  RouteLineRec.ModifyAll();
                End;
            End;

            /*        TableRelation = "CMMS Routes Header";
                    trigger OnValidate()
                    Begin
                        if RoutesHeaderRec.Get("Routes No.") then
                            "Routes Description" := RoutesHeaderRec."Routes Description";
                    End;
        */
        }
        field(6; "Routes Description"; Code[100])
        {
            Caption = 'Routes Description';
            Editable = false;
        }
        field(7; "Next Job Plan"; Code[20])
        {
            Caption = 'Next Job Plan';
            TableRelation = "Job Plan Header2";
        }
        field(8; "Next Due Date"; Date)
        {
            Caption = 'Next Due Date';
        }
        field(9; "PM Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Status';
        }


        // This will be split it to another Table Need to Discuss With Rahaman


        field(10; "Work Order Status"; Enum "Work Order Status")
        {
            Caption = 'Work Order Status';
            //    TableRelation = "CMMS Work Order Status";
        }
        field(11; "Work Order Type"; Code[20])
        {
            Caption = 'Work Order Type';
            TableRelation = "CMMS WorkOrder Type";
        }
        field(12; "PM Posting Group"; Code[10])
        {
            Caption = 'PM Posting Group';
        }
        field(13; "Work Order Priority"; Code[10])
        {
            Caption = 'Work Order Priority';
        }
        field(14; Supervisor; Code[20])
        {
            Caption = 'Supervisor';
            TableRelation = Resource;
        }
        field(15; Craft; Code[20])
        {
            Caption = 'Craft';
            TableRelation = "Resource Skill";
        }
        field(16; "No.Of WO Gen."; Integer)
        {
            Caption = 'No. Of Work Orders Generated';
        }

        // Check whether need to create another Table?
        field(17; FDH; Duration)
        {
            Caption = 'Frequency In Hours';
        }
        field(18; FDWMQY; Integer)
        {
            Caption = 'Frequency (Days)';
        }
        field(19; "First Start Date"; Date)
        {
            Caption = 'First Start Date';
            trigger OnValidate()
            Begin
                Rec.TestField(FDWMQY);
                If "Next Due Date" = 0D then
                    "Next Due Date" := "First Start Date";
                RouteLineRec.Reset();
                RouteLineRec.SetRange("PM No.", "No.");
                if RouteLineRec.FindSet() then
                    repeat
                        RouteLineRec."PM First Date" := "First Start Date";
                        //    
                        RouteLineRec.Modify();
                    until RouteLineRec.Next = 0;

                //   "Last WO Target Start Date" := "First Start Date";
                //   "Last WO Completion Date" := "First Start Date" + FDWMQY;
                //   "Override Next Due Date" := "First Start Date" + FDWMQY;

            End;
        }
        field(20; "Last WO Target Start Date"; Date)
        {
            Caption = 'Last WO Target Start Date';
            Editable = false;
        }
        field(21; "Last WO Completion Date"; Date)
        {
            Caption = 'Last WO Completion Date';
            Editable = false;
        }
        field(22; "Use Target Start Date"; Boolean)
        {
            Caption = 'Use Target Start Date';
        }
        field(23; "Override Next Due Date"; Date)
        {
            Caption = 'Override Next Due Date';
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description)
        {

        }
    }

    var
        FARec: Record "CMMS Equipment Master";
        RoutesHeaderRec: Record "CMMS Routes Header";
        RouteLineRec: Record "CMMS Routes Line";

        PMMainRec: Record "PM Main List"; // Main PM Table
        PMScheduleRec: Record "CMMS PM Schedule"; // Temp Table where data has to insert from PM Main and Route Line.

    procedure PMCreateScheduler(Rec: Record "PM Main List")

    Begin
        RouteLineRec.Reset();
        RouteLineRec.SetRange("PM No.", Rec."No.");
        RouteLineRec.SetRange("Route Status", PMMainRec."PM Status"::Approved);
        if RouteLineRec.FindSet() then
            repeat
                PMScheduleRec.Init;
                PMScheduleRec."PM No." := Rec."No.";
                PMScheduleRec."PM Description" := Rec.Description;
                PMScheduleRec."PM Equipment No." := Rec."FA No.";
                PMScheduleRec."PM Equip.Description" := Rec.Description;
                PMScheduleRec."PM Routes No." := Rec."Routes No.";
                PMScheduleRec."PM Routes Name" := Rec."Routes Description";
                PMScheduleRec."PM Status" := Rec."PM Status";
                PMScheduleRec."PM First Start Date" := Rec."First Start Date";
                PMScheduleRec."PM Work Order Status" := Rec."Work Order Status";
                PMScheduleRec."PM Work Order Type" := Rec."Work Order Type";
                PMScheduleRec."PM Work Order Priority" := Rec."Work Order Priority";
                PMScheduleRec."PM Supervisor" := Rec.Supervisor;
                PMScheduleRec."PM Craft" := Rec.Craft;
                PMScheduleRec."RL Route No." := RouteLineRec."Routes Code";
                PMScheduleRec."RL Route Name" := RouteLineRec."Routes Name";
                PMScheduleRec."RL Equip. No" := RouteLineRec."Equipment No.";
                PMScheduleRec."RL Line No." := RouteLineRec."Line No.";
                PMScheduleRec."RL JP No." := RouteLineRec."JP No.";
                PMScheduleRec."RL JP Name" := RouteLineRec."JP Description";
                PMScheduleRec."RL Task No" := RouteLineRec."JP Task No.";
                PMScheduleRec."RL Task Name" := RouteLineRec."JP Task Name";
                PMScheduleRec."RL JP SqNo" := RouteLineRec."JP Seq.No.";
                PMScheduleRec."RL JP Task Time" := RouteLineRec."JP Task Time";
                PMScheduleRec."RL Route Ramarks" := RouteLineRec."Routes Remarks";
                PMScheduleRec."RL Route Status" := RouteLineRec."Route Status";
                PMScheduleRec."RL Resource Code" := RouteLineRec."Resource Code";
                PMScheduleRec."RL Resource Name" := RouteLineRec."Resource Name";
                PMScheduleRec."RL BOM" := RouteLineRec."Base UOM";
                PMScheduleRec."RL Unit Price" := RouteLineRec."Unit Price";
                PMScheduleRec.Insert();
            until RouteLineRec.Next = 0;
        Message('Recored Inserted In PM Schedule');
    end;

    procedure PMCreateScheduler1(PMStartdate: Date; PMEnddate: Date)
    var
        PMMainList: Record "PM Main List";
        PMScheduleRec2: Record "CMMS PM Schedule";
        PMScheduleRec3: Record "CMMS PM Schedule";
        SchNo: Integer;
        LastWODate: Date;
        WONo: Code[20];
        Created: Boolean;
    Begin
        PMScheduleRec2.Reset();
        PMScheduleRec2.setfilter("PM Work Order Status", '<>%1', PMScheduleRec2."PM Work Order Status"::"Post & Close");
        if PMScheduleRec2.FindSet() then
            PMScheduleRec2.Deleteall();
        PMMainList.Reset();
        PMMainList.SetFilter("Next Due Date", '%1..%2', PMStartdate, PMEnddate);
        if PMMainList.FindSet() then
            repeat
                PMScheduleRec3.Reset();
                PMScheduleRec3.SetRange("PM No.", PMMainList."No.");
                // PMScheduleRec3.SetRange("PM Status", PMMainList."PM Status");
                PMScheduleRec3.SetRange("PM Equipment No.", PMMainList."FA No.");
                PMScheduleRec3.SetRange("Work Order No.", '');
                if PMScheduleRec3.FindFirst() then
                    Error('Scheduler is ready to generate work order for %1 create Work order', PMScheduleRec3."PM No.");
                PMScheduleRec2.Reset();
                PMScheduleRec2.SetRange("PM No.", PMMainList."No.");
                // PMScheduleRec2.SetRange("PM Status", PMMainList."PM Status");
                PMScheduleRec2.SetRange("PM Equipment No.", PMMainList."FA No.");
                if PMScheduleRec2.FindLast() then
                    SchNo := PMScheduleRec2."PM Sch No."
                else
                    SchNo := 0;
                Clear(WONo);
                PMScheduleRec3.Reset();
                PMScheduleRec3.SetRange("PM No.", PMMainList."No.");
                // PMScheduleRec3.SetRange("PM Status", PMMainList."PM Status");
                PMScheduleRec3.SetRange("PM Equipment No.", PMMainList."FA No.");
                PMScheduleRec3.SetRange("Next PM Due Date", PMMainList."Next Due Date");
                PMScheduleRec3.Setfilter("Work Order No.", '<>%1', '');
                if PMScheduleRec3.FindFirst() then
                    WONo := PMScheduleRec3."Work Order No.";
                PMScheduleRec.Init;
                PMScheduleRec."PM Sch No." := SchNo + 1;
                PMScheduleRec."PM No." := PMMainList."No.";
                PMScheduleRec."PM Description" := PMMainList.Description;
                PMScheduleRec."PM Equipment No." := PMMainList."FA No.";
                PMScheduleRec."PM Equip.Description" := PMMainList.Description;
                PMScheduleRec."PM Routes No." := PMMainList."Routes No.";
                PMScheduleRec."PM Routes Name" := PMMainList."Routes Description";
                PMScheduleRec."PM Status" := PMMainList."PM Status";
                PMScheduleRec."PM First Start Date" := PMMainList."First Start Date";
                PMScheduleRec."Work Order Type" := PMScheduleRec."Work Order Type"::PM;
                PMScheduleRec.FDWMQY := PMMainList.FDWMQY;
                PMScheduleRec.FDH := PMMainList.FDH;
                PMScheduleRec."Work Order Completion Date" := PMMainList."Last WO Completion Date";
                PMMainList.TestField("Next Due Date");
                PMScheduleRec."Next PM Due Date" := PMMainList."Next Due Date";
                PMScheduleRec."PM Work Order Status" := PMMainList."Work Order Status";
                PMScheduleRec."PM Work Order Type" := PMMainList."Work Order Type";
                PMScheduleRec."PM Work Order Priority" := PMMainList."Work Order Priority";
                PMScheduleRec."PM Supervisor" := PMMainList.Supervisor;
                PMScheduleRec."PM Craft" := PMMainList.Craft;
                if WONo <> '' then
                    PMScheduleRec."Work Order No." := WONo;

                /*
                    PMScheduleRec."RL Route No." := RouteLineRec."Routes Code";
                    PMScheduleRec."RL Route Name" := RouteLineRec."Routes Name";
                    PMScheduleRec."RL Equip. No" := RouteLineRec."Equipment No.";
                    PMScheduleRec."RL Line No." := RouteLineRec."Line No.";
                    PMScheduleRec."RL JP No." := RouteLineRec."JP No.";
                    PMScheduleRec."RL JP Name" := RouteLineRec."JP Description";
                    PMScheduleRec."RL Task No" := RouteLineRec."JP Task No.";
                    PMScheduleRec."RL Task Name" := RouteLineRec."JP Task Name";
                    PMScheduleRec."RL JP SqNo" := RouteLineRec."JP Seq.No.";
                    PMScheduleRec."RL JP Task Time" := RouteLineRec."JP Task Time";
                    PMScheduleRec."RL Route Ramarks" := RouteLineRec."Routes Remarks";
                    PMScheduleRec."RL Route Status" := RouteLineRec."Route Status";
                    PMScheduleRec."RL Resource Code" := RouteLineRec."Resource Code";
                    PMScheduleRec."RL Resource Name" := RouteLineRec."Resource Name";
                    PMScheduleRec."RL BOM" := RouteLineRec."Base UOM";
                    PMScheduleRec."RL Unit Price" := RouteLineRec."Unit Price";
                    */
                if not PMScheduleRec.Insert() then begin
                    PMScheduleRec.Modify();
                    Created := true;
                end;
            //  until RouteLineRec.Next = 0;
            /*   if PMMainList."Next Due Date" <> 0D then begin
                  PMMainList."Last WO Completion Date" := PMScheduleRec."Work Order Completion Date" + PMMainList.FDWMQY;
                  PMMainList.Modify();
              end; */
            until PMMainList.Next = 0;
        if Created then
            Message('Recored Inserted In PM Schedule');
    End;

    trigger OnInsert()
    var
        NosMgt: Codeunit NoSeriesManagement;
        QCSetup: Record "CMMS Setup2";
    begin
        if "No." = '' then begin
            QCSetup.Get();
            QCSetup.TestField("Preventive Maintenance Nos.");
            "No." := NosMgt.GetNextNo(QCSetup."Preventive Maintenance Nos.", WorkDate(), true);
        end;
        "PM Status" := "PM Status"::Open;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}