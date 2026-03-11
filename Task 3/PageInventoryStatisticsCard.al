page 50303 "Inventory Statistics Card"
{
    ApplicationArea = All;
    Caption = 'Inventory Statistics Card';
    PageType = Card;
    SourceTable = "Temp Inventory Statistics";
    UsageCategory = Tasks;
    InsertAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field(TotalValue; Rec.TotalValue)
                {
                    ApplicationArea = All;
                    Editable = false;
                    StyleExpr = TotalValueStyle;
                    ToolTip = 'Specifies the value of the Total Value field.', Comment = '%';
                }
                field(ItemCount; Rec.ItemCount)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Item Count field.', Comment = '%';
                }
                field(CriticalCount; Rec.CriticalCount)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Critical Count field.', Comment = '%';
                }
                field(LargestDeficitName; Rec.LargestDeficitName)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Largest Deficit field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Run Analysis")
            {
                Caption = 'Run Analysis';
                ApplicationArea = All;
                Image = Calculate;

                trigger OnAction()
                var
                    InventoryCalculator: Codeunit "Inventory Calculator";
                    TempStats: Record "Temp Inventory Statistics" temporary;
                begin
                    TempStats.Reset();
                    TempStats.DeleteAll();

                    InventoryCalculator.CalculateStatistics(TempStats);

                    if TempStats.FindFirst() then begin
                        Rec := TempStats;
                        CurrPage.Update(false);
                    end;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        InventoryCalculator: Codeunit "Inventory Calculator";
    begin
        TotalValueStyle := InventoryCalculator.DetermineRowStyle(
            Rec.ItemCount,
            Rec.CriticalCount,
            Rec.TotalValue);
    end;

    var
        TotalValueStyle: Text;
}
