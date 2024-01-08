table 50153 "CMMS Asset"      // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Asset No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment No.';  //TECSA Change Request on 21-Dec-2023
        }
        field(2; "Asset Name - Equipment"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Name';   //TECSA Change Request on 21-Dec-2023
        }
        field(3; "Asset Category"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Category';                //TECSA Change Request on 21-Dec-2023
            TableRelation = "CMMS Asset Category";
        }
        field(4; "Plant ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant';
            TableRelation = Plant;
        }
        field(5; "Section ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Section';
            TableRelation = Section where("Plant ID" = field("Plant ID"));
        }
        field(6; "Asset Dimension Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Dimension';
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(7));
            trigger OnValidate()
            Begin
                DimValue.Reset();
                if DimValue.Get("Asset Dimension Code") then begin
                    "Asset Dimension Code" := DimValue.Code;
                end

            End;
        }
    }

    keys
    {
        key(Key1; "Asset No.")
        {
            Clustered = true;
        }
        key(Key2; "Asset Category")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Asset No.", "Asset Name - Equipment", "Asset Category")
        {
        }
    }

    var
        Plant: Record Plant;
        Section: Record Section;
        DimValue: Record "Dimension Value";

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