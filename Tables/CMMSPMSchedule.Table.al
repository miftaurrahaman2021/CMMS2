table 59010 "CMMS PM Schedule"
{
    DataClassification = ToBeClassified;
    Caption = 'PM Schedle';
    DrillDownPageId = "Work Order Lists";
    LookupPageId = "Work Order Lists";

    fields
    {
        field(1; "PM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Code';
        }
        field(2; "PM Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Description';
        }
        field(3; "PM Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equipment No.';
        }
        field(4; "PM Equip.Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equip.Description';
            Editable = false;
        }
        field(5; "PM Routes No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes No.';
        }
        field(6; "PM Routes Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes Name';
        }
        field(7; "PM Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Status';

        }
        field(8; "PM First Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM First Start Date';
        }
        field(11; "PM Work Order Status"; Enum "Work Order Status")
        {
            Caption = 'Work Order Status';
            //    TableRelation = "CMMS Work Order Status";
        }
        field(12; "PM Work Order Type"; Code[20])
        {
            Caption = 'Work Order Type';
            TableRelation = "CMMS WorkOrder Type";
        }
        field(13; "PM Work Order Priority"; Code[10])
        {
            Caption = 'Work Order Priority';
        }
        field(14; "PM Supervisor"; Code[20])
        {
            Caption = 'Supervisor';
            TableRelation = Resource;
        }
        field(15; "PM Craft"; Code[20])
        {
            Caption = 'Craft';
            TableRelation = "Resource Skill";
        }

        field(16; "Work Order No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order No.';
        }

        field(17; "Work Order Date"; Date)              // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Date';
        }
        field(18; "Work Order Start Date"; Date)      // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Start Date';
        }
        field(19; "Work Order End Date"; Date)    // This is For CM WorkOrder created 27-11-2023 Patric
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Completion Date';
        }

        // Route Line Information 

        field(31; "RL Route No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Route Code Line';
        }
        field(32; "RL Route Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Name';
        }
        field(33; "RL Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Line No';
        }
        field(34; "RL Equip. No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Equip.No';
        }
        field(35; "RL JP No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP No.';
        }
        field(36; "RL JP Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Name';
        }
        field(37; "RL Task No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task No.';
        }
        field(38; "RL Task Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task Name';
        }
        field(39; "RL JP SqNo"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Seq.No';
        }
        field(40; "RL JP Task Time"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Task Time';
        }
        field(41; "RL Route Ramarks"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Remarks';
        }
        field(42; "RL Resource Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Code';
        }
        field(43; "RL Resource Type"; Enum "Resource Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Type';
        }
        field(44; "RL Resource Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Name';
        }
        field(45; "RL BOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL BOM';
        }
        field(46; "RL Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Unit Price';
        }
        field(47; "RL Route Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Status';
        }
        field(52; FDH; Duration)
        {
            Caption = 'Frequency In Hours';
        }
        field(53; FDWMQY; Integer)
        {
            Caption = 'Frequency (Days)';
        }
        field(54; "Next PM Due Date"; Date)
        {
            Caption = 'Next PM Due Date';
        }
        field(55; "PM Sch No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Scheduler No.';
        }
        field(51; "Work Order Completion Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Completion Date';

        }
        field(58; "Work Order Type"; Enum "Work Order Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order Type';
        }

    }

    keys
    {
        //   key(PK; "PM No.", "PM Description", "PM Equipment No.", "PM Equip.Description", "PM Routes No.", "PM Status")
        key(PK; "PM No.", "RL Route Status", "RL Equip. No", "RL Task No", "PM Sch No.")
        {
            Clustered = true;
        }
        key(PK1; "RL Equip. No", "PM Sch No.")
        {

        }
        key(PK2; "Work Order No.", "Work Order Type")
        {

        }

    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        T: Record "Requisition Line";

    trigger OnInsert()
    begin
        "Work Order Date" := WorkDate();
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