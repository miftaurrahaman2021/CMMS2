table 59026 "CMMS Work Order History"
{
    DataClassification = ToBeClassified;
    Caption = 'Work Order Details';

    fields
    {
        field(1; "CMMS Work Order"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Order';
        }
        field(11; "WO.PM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Code';
        }
        field(12; "WO.PM Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Description';
        }
        field(13; "WO.PM Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equipment No.';
        }
        field(14; "WO.PM Equip.Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Equip.Description';
        }
        field(15; "WO.PM Routes No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes No.';
        }
        field(16; "WO.PM Routes Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Routes Name';
        }
        field(17; "WO.PM Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'PM Status';
        }
        field(18; "WO.PM First Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM First Start Date';
        }
        field(21; "WO.PM Work Order Status"; Code[20])
        {
            Caption = 'Work Order Status';
            TableRelation = "CMMS Work Order Status";
        }
        field(22; "WO.PM Work Order Type"; Code[20])
        {
            Caption = 'Work Order Type';
            TableRelation = "CMMS WorkOrder Type";
        }
        field(23; "WO.PM Work Order Priority"; Code[10])
        {
            Caption = 'Work Order Priority';
        }
        field(24; "WO.PM Supervisor"; Code[20])
        {
            Caption = 'Supervisor';
            TableRelation = Resource;
        }
        field(25; "WO.PM Craft"; Code[20])
        {
            Caption = 'Craft';
            TableRelation = "Resource Skill";
        }

        // Route Line Information 

        field(31; "WO.RL Route No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Route Code Line';
        }
        field(32; "WO.RL Route Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Name';
        }
        field(33; "WO.RL Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Line No';
        }
        field(34; "WO.RL Equip. No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Equip.No';
        }
        field(35; "WO.RL JP No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP No.';
        }
        field(36; "WO.RL JP Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Name';
        }
        field(37; "WO.RL Task No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task No.';
        }
        field(38; "WO.RL Task Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Task Name';
        }
        field(39; "WO.RL JP SqNo"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Seq.No';
        }
        field(40; "WO.RL JP Task Time"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL JP Task Time';
        }
        field(41; "WO.RL Route Ramarks"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Remarks';
        }
        field(42; "WO.RL Resource Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Code';
        }
        field(43; "WO.RL Resource Type"; Enum "Resource Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Type';
        }
        field(44; "WO.RL Resource Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Resource Name';
        }
        field(45; "WO.RL BOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'RL BOM';
        }
        field(46; "WO.RL Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Unit Price';
        }
        field(47; "WO.RL Route Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'RL Route Status';
        }
    }

    keys
    {
        key(PK; "CMMS Work Order", "WO.RL Equip. No", "WO.PM No.", "WO.RL Route No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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