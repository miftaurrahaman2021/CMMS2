table 59021 "Cause Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Problem/Cause Code';
        }
        field(2; "Cause Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Cause Description';
        }
        field(3; "Remedy Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solution Code';
            TableRelation = "Solution Master";
            trigger OnValidate()
            var
                SolutionRec: Record "Solution Master";
            Begin
                if SolutionRec.Get("Remedy Code") then
                    "Solution Description" := SolutionRec."Solution Description";
            End;
        }
        field(4; "Solution Description"; Text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Solutions';
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
        fieldgroup(DropDown; "No.", "Cause Description", "Remedy Code")
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