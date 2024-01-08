table 50175 Section   // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Section';
        }
        field(2; "Section Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Section Name';
        }
        field(3; "Plant ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant ID';
            TableRelation = Plant;
        }
        field(4; "Equipment No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment No.';
            TableRelation = "CMMS Asset";
        }
    }

    keys
    {
        key(Key1; "No.", "Plant ID", "Equipment No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDow; "No.", "Section Name", "Plant ID", "Equipment No.")
        {
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

    end;

    trigger OnRename()
    begin

    end;

}