table 50300 "Company Equipment"
{
    Caption = 'Company Equipment';
    DataClassification = ToBeClassified;
    DrillDownPageId = "Company Equipment List";
    LookupPageId = "Company Equipment List";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; Category; Enum "Category Enum")
        {
            Caption = 'Category';
        }
        field(4; "Purchase Date"; Date)
        {
            Caption = 'Purchase Date';
        }
        field(5; "Serial No"; Code[50])
        {
            Caption = 'Serial No';
        }
        field(6; Active; Boolean)
        {
            Caption = 'Active';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
