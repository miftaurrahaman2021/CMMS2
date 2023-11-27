table 59002 "Overtime Type"
{
    // This is Table developed by JP on 24-Sep-2023

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Overtime Type Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Type Code';
        }
        field(2; "Overtime Type Description"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Type Description';
        }
        field(3; "Overtime Type Comments"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Overtime Type Comment';
        }
        field(4; "Hourly Time"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 2;
            Caption = 'Hourly Time'; // This is based on after 8 Hrs 1.5 , 2 Based on Company Policy
        }
        field(5; "Hourly Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 2 : 2;
            Caption = 'Hourly Rate'; // Streight Rate if Applicable orelse 0
        }
        field(6; "OT Type Status"; Enum "General Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'OT Time Status';
        }
        field(7; "Start Workday"; Enum workday)
        {
            DataClassification = ToBeClassified;
            Caption = 'Starting Workday';
        }
        field(8; "End Workday"; Enum workday)
        {
            DataClassification = ToBeClassified;
            Caption = 'End Workday';
        }
        field(9; "Account Map Dr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Account Code - Dr.';
            TableRelation = "G/L Account";
        }
        field(10; "Account Map Cr."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Account Code - Cr.';
            TableRelation = "G/L Account";
        }
        field(11; "Vat Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'VAT Account';
            TableRelation = "G/L Account";
        }

    }

    keys
    {
        key(PK; "Overtime Type Code")
        {
            Clustered = true;
        }
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
        Delete(false);
    end;

    trigger OnRename()
    begin
        Rename(false);
    end;

}