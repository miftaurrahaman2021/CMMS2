pageextension 59002 "Fixed Assets Card Ext" extends "Fixed Asset Card"
{
    layout
    {
        addafter("Last Date Modified")
        {
            /*  field(Equipment; Rec.Equipment)
             {
                 ApplicationArea = All;
                 Caption = 'Equipment';
             } */
        }
        addafter(Maintenance)
        {
            group("Maintenance BOM Line")
            {
                part(MaintenanceBOM; "CMMS Equipment BOM Subform")
                {
                    ApplicationArea = All;
                    UpdatePropagation = Both;
                    //   Enabled = true;
                    //   Editable = true;
                    Visible = true;
                    SubPageLink = "FA No." = field("No.");

                }
            }
            group(History)
            {
                part(AssetWOHistory; "Asset Work Order History")
                {
                    ApplicationArea = All;
                    UpdatePropagation = Both;
                    Visible = true;
                    SubPageLink = "FA No." = field("No.");
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}