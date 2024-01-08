table 50156 "Ecom BC API"
{
    DataClassification = ToBeClassified;
    Caption = 'E-Commerce & MSBC API Info';

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Transaction ID';
        }
        field(2; "Transaction DT"; DateTime)
        {
            DataClassification = ToBeClassified;
            Caption = 'Transaction Date & Time';
        }
        field(3; "Payment Method Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(4; "Transaction Status"; Enum "Transaction Status")
        {
            DataClassification = ToBeClassified;
            Caption = 'Transaction Status';
        }
        field(5; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Currenc Code';
        }
        field(6; "Transaction Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Transaction Amount';
        }
        field(11; "Customer No"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer ID';
        }
        field(12; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Name';
        }
        field(13; "Customer Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Billing Address';
        }
        field(14; "Customer Ship-Address"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Customer Shipping Address';
        }

        field(15; "Customer City"; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'City';
        }
        field(16; "E-Mail"; Text[80])
        {
            DataClassification = ToBeClassified;
            Caption = 'Email';
        }
        field(17; "Phone No."; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone No.';
        }
        /*  field(21; "Payment Gateway ID"; Code[30])
         {
             DataClassification = ToBeClassified;
             Caption = 'Payment Gateway ID';
         }
         field(22; "Secure Token ID"; Code[20])
         {
             DataClassification = ToBeClassified;
             Caption = 'Secure Token ID';
         } */

        // This is related to Sales Order & Sales Invoice Infornation

        /*   field(31; "Order ID"; Code[20])
          {
              DataClassification = ToBeClassified;
              Caption = 'Sales Order No.';
          } */
        field(32; "Invoice No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Sales Invoice No.';
        }
        field(40; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Line No.';
        }
        field(41; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Product ID';
        }
        field(42; "Item Description"; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Product Name';
        }
        field(43; "Qty. to Ship"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Qty';
        }
        field(44; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Price';
        }
        field(45; "VAT %"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'VAT %';
        }
        field(46; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount';
        }
        field(47; "Amount Including VAT"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Amount Including VAT';
        }
        /*  field(51; "Authorization Code"; Code[20])
         {
             DataClassification = ToBeClassified;
             Caption = 'Authorization Code';
         } */
        field(52; "Payment Confirmation ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Confirmation ID';
        }
        field(53; "Return Transaction ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Return Transaction ID';
        }
        field(54; "Reason for Return"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Reason for Return';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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