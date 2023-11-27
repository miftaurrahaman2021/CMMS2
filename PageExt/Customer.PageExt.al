pageextension 50101 "Customer Ext" extends "Customer Card"
{
    layout
    {
        // This Field is added by JP On 3-Oct-2023 requested by Vendor.
        addafter(Name)
        {
            /*             field("Customer Loyalty"; Rec."Customer Loyalty")
                        {
                            ApplicationArea = All;
                        } */
        }
    }

    actions
    {

        // Add changes to page actions here
    }

    var
        myInt: Integer;
}