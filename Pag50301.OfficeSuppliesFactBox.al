namespace Test.Test;

page 50301 "Office Supplies FactBox"
{
    ApplicationArea = All;
    Caption = 'Office Supplies FactBox';
    PageType = CardPart;
    SourceTable = "Office Supplies";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
                field(InventoryValue; InventoryValue)
                {
                    Caption = 'Total Inventory Value';
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        InventoryValue: Decimal;

    trigger OnAfterGetRecord()
    begin
        if Rec.Active then
            InventoryValue := Rec."Current Quantity" * Rec."Unit Price"
        else
            InventoryValue := 0;
    end; // ako je zapis aktivan onda računaj vrednost, ako nije onda prikaži 0
}
