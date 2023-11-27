tableextension 59002 "Main Asset Components Ext" extends "Main Asset Component"
{
    fields
    {
        field(59000; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(59001; "FA Location"; Code[10])
        {
            Caption = 'FA Location';
            TableRelation = "FA Location";
        }
        field(59002; "Manufacturer Code"; Code[20])
        {
            Caption = 'Manufacturer Code';
        }
    }

    var

}