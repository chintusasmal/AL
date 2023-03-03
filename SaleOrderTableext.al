tableextension 50110 SaleSorderExt extends "Sales Header"
{
    
    fields
    {
        field(900;"Total Sales"; decimal)
        {
            
            FieldClass = Normal;
            Editable =false;
            DataClassification = ToBeClassified;

            trigger OnValidate();
            begin
                
            end;
            
        }
    
    }
    
    var
        myInt: Integer;
        Convert : Codeunit ConvertGBPUSD;

}