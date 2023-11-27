table 59007 "CMMS Routes Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Routes Line';

    fields
    {
        field(1; "Routes Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Routes Code';
        }
        field(2; "Routes Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Routes Name';
        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No.';
        }
        field(4; "Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment No';
            TableRelation = "CMMS Equipment Master";
        }
        field(5; "JP No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Job Plan No.';
        }
        field(6; "JP Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Job Plan Description';
            Editable = false;
        }
        field(7; "JP Task No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Code';
            Editable = false;
        }
        field(8; "JP Task Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Name';
            Editable = false;
        }
        field(9; "JP Seq.No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Seq.No.';
            Editable = false;
        }
        field(10; "JP Task Time"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Task Duration';
            Editable = false;
        }
        field(11; "Routes Remarks"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Remarks';
        }

        // Defining the Resource Details in the Routes....

        field(12; "Resource Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource';
            Editable = false;
        }

        field(13; "Type"; Enum "Resource Type")
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Type';
            Editable = false;
        }
        field(14; "Resource Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Resource Name';
            Editable = false;
        }
        field(15; "Base UOM"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Base UOM';
            Editable = false;
        }
        field(16; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Price';
            Editable = false;
        }
        field(17; "Route Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Route Status';
        }
        field(21; "PM No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'PM No.';
        }
        field(22; "PM First Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'PM First Date';
        }
    }

    keys
    {
        key(PK; "Routes Code", "Equipment No.", "JP No.", "JP Task No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Routes Code", "Routes Name", "Equipment No.", "Route Status")
        {

        }
    }

    var
        JobPlanLineRec: Record "Job Plan Line2";
        RouteHead: Record "CMMS Routes Header";

    trigger OnInsert()
    begin
        "Route Status" := "Route Status"::Open;
        RouteHead.Reset();
        RouteHead.SetRange("No.", "Routes Code");
        if RouteHead.FindFirst() then Begin
            "Routes Name" := RouteHead."Routes Description";
        End

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