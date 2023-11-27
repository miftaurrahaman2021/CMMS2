tableextension 59004 "Fixed Assets Ext" extends "Fixed Asset"
{
    fields
    {
        field(59000; "Model No."; Code[20])
        {
            Caption = 'Model No.';
        }/* 
        field(59001; OEM; Code[20])
        {
            Caption = 'OEM';
        } */
        field(59002; "PID No."; Code[20])
        {
            Caption = 'P&ID No.';
        }
        field(59003; Criticalty; Code[20])
        {
            Caption = 'Criticalty';
        }
        /*   field(59004; "Process Fluid"; Code[30])
          {
              Caption = 'Process Fluid';
          } */
        field(59005; "Line Loop No."; Code[20])
        {
            Caption = 'Line/Loop No';
        }
        /*   field(59006; "Responsibility Center"; Code[10])
          {
              Caption = 'Responsibility Center';
              TableRelation = "Responsibility Center";
          } */
        /*   field(59007; "Manufacturer Code"; Code[20])
          {
              Caption = 'Manufacturer Code';
          } */
        field(59008; "PO Number"; Code[20])
        {
            Caption = 'PO Number';
        }
        field(59009; "Vendor Description"; Text[100])
        {
            Caption = 'Vendor Description';
        }
        /*    field(59010; Equipment; Boolean)
           {
               Caption = 'Equipment';
               DataClassification = ToBeClassified;
           } */
    }

    var
        myInt: Integer;
}