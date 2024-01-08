table 59006 "CMMS Routes Header"
{
    DataClassification = ToBeClassified;
    Caption = 'Routes Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Routes Code';
        }
        field(2; "Routes Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Routes Description';
        }
        field(3; "Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment';
            TableRelation = "CMMS Equipment Master";
            trigger OnValidate()
            Begin
                EquipmentRec.Reset();
                EquipmentRec.SetRange("No.", "Equipment No.");
                if EquipmentRec.FindFirst() then begin
                    "Equipment Name" := EquipmentRec."Equipment Description";
                    "Plant Code" := EquipmentRec."Plant Code";
                    "Section Code" := EquipmentRec."Section Code";
                end

            End;
        }
        field(4; "Equipment Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Name';
            Editable = false;
        }
        field(5; "Route Status"; Enum "PM Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Route Status';
        }
        field(6; "Plant Code"; Code[20])  // Modified by Patric on 13-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant';
            Editable = false;
        }
        field(7; "Section Code"; Code[20])  // Modified by Patric on 13-Dec-2023
        {
            DataClassification = ToBeClassified;
            Caption = 'Section Code';
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.", "Equipment No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Routes Description", "Equipment No.", "Route Status")
        {

        }
    }

    var
        EquipmentRec: Record "CMMS Equipment Master";
        RouteLine: Record "CMMS Routes Line";

    trigger OnInsert()
    var
        NosMgt: Codeunit NoSeriesManagement;
        QCSetup: Record "CMMS Setup2";
    begin
        "Route Status" := "Route Status"::Open;
        if Rec."No." = '' then begin
            QCSetup.Get();
            QCSetup.TestField("Route Nos.");
            Rec."No." := NosMgt.GetNextNo(QCSetup."Route Nos.", WorkDate(), true);
        end;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        TestField("Route Status", "Route Status"::Open);
        RouteLine.Reset();
        RouteLine.SetRange("Routes Code", Rec."No.");
        if RouteLine.FindSet() then
            RouteLine.DeleteAll();
    end;

    trigger OnRename()
    begin

    end;

}