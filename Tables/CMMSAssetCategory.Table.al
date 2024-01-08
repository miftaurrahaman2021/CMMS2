table 50173 "CMMS Asset Category"     // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Asset Category Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Group Code';   //TECSA Change Request on 19-Dec-2023 
        }
        field(2; "Asset Category Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Equipment Group Name';   //TECSA Change Request on 19-Dec-2023 
        }
    }

    keys
    {
        key(Key1; "Asset Category Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Asset Category Code", "Asset Category Name")
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