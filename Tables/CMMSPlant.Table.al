table 50158 Plant       // Modified on 6-Dec-2023 by Patric - Request from TECSA
{
    DataClassification = ToBeClassified;
    DataCaptionFields = "No.", "Plant Name";
    Caption = 'Plant Master';
    DrillDownPageId = "Plant List";
    LookupPageId = "Plant List";



    fields
    {
        field(1; "No."; Code[20])       // TECSA Request Plant No is manal entry 11-Dec-2023
        {
            Caption = 'Plant Code';
            /*  trigger OnValidate()
             Begin
                 if "No." <> xRec."No." then Begin
                     CMMSSetup.Get();
                     NoSeriesMgt.TestManual(CMMSSetup.Plant);
                     "No." := '';
                 End
             End; */
        }
        field(2; "Plant Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant Name';
        }
        field(3; "Plant Location"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Plant Location';
            //   TableRelation = "FA Location";   //TECSA Change Request on 19-Dec-2023
        }
        field(4; "Plant Status"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Active / Inactive';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Plant Location")
        {

        }
        key(Key3; "Plant Status")
        {

        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Plant Name", "Plant Location", "Plant Status")
        {
        }
    }

    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        CMMSSetup: Record "CMMS Setup2";

    trigger OnInsert()
    begin
        /* if "No." = '' then Begin     // TECSA Request Plant No is manal entry 11-Dec-2023
            CMMSSetup.Get();
            CMMSSetup.TestField(Plant);
            "No." := NoSeriesMgt.GetNextNo(CMMSSetup.Plant, WorkDate, true);
        End; */
        "Plant Name" := "No.";
        "Plant Status" := true;
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