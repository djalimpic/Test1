table 50301 "Office Supplies"
{
    Caption = 'Office Supplies';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(4; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
        }
        field(5; "Current Quantity"; Decimal)
        {
            Caption = 'Current Quantity';
            trigger OnValidate()
            begin
                if "Current Quantity" < 0 then
                    Error('Current Quantity cannot be a negative number.');
                if "Current Quantity" < "Minimum Quantity" then
                    Message('Warning: the current quantity is less than the minimum quantity.');
            end;
        }
        field(6; "Minimum Quantity"; Decimal)
        {
            Caption = 'Minimum Quantity';
        }
        field(7; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            trigger OnValidate()
            begin
                if "Unit Price" < 0 then
                    Error('Unit Price cannot be a negative number.');
            end;
        }
        field(8; Active; Boolean)
        {
            Caption = 'Active';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
