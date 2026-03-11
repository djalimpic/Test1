namespace Test.Test;

page 50300 "Company Equipment List"
{
    ApplicationArea = All;
    Caption = 'Company Equipment List';
    PageType = List;
    SourceTable = "Company Equipment";
    CardPageId = "Company Equipment Card";
    UsageCategory = Lists; //proveri

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(Category; Rec.Category)
                {
                    ToolTip = 'Specifies the value of the Category field.', Comment = '%';
                }
                field("Purchase Date"; Rec."Purchase Date")
                {
                    ToolTip = 'Specifies the value of the Purchase Date field.', Comment = '%';
                }
                field("Serial No"; Rec."Serial No")
                {
                    ToolTip = 'Specifies the value of the Serial No field.', Comment = '%';
                }
                field(Active; Rec.Active)
                {
                    ToolTip = 'Specifies the value of the Active field.', Comment = '%';
                }
            }
        }
    }
}
