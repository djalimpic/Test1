namespace Test.Test;

page 50302 "Office Supplies List"
{
    ApplicationArea = All;
    Caption = 'Office Supplies List';
    PageType = List;
    SourceTable = "Office Supplies";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit of Measure field.', Comment = '%';
                }
                field("Current Quantity"; Rec."Current Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Current Quantity field.', Comment = '%';
                }
                field("Minimum Quantity"; Rec."Minimum Quantity")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Quantity field.', Comment = '%';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price field.', Comment = '%';
                }
                field("Active"; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Price field.', Comment = '%';
                }
            }
        }
        area(FactBoxes)
        {
            part("Office Supplies FactBox"; "Office Supplies FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Code" = field("Code"); // SubPageLInk sluzi za dodatno filtriranje na FactBoxu, a ovaj nastavak pokazuje Code iskjkucivo za jednog customera
            }
        }
    }
}
