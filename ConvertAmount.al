codeunit 50110 ConvertGBPUSD
{
    trigger OnRun()
    begin
        Convertor(a,b);
    end;

    procedure Convertor(var gb: Decimal; var usd: Decimal)

    begin

        exchange := 0.8 * gb;

    end;



    var
        a,b : decimal;
        myInt: Integer;
        exchange: Decimal;
        gbp: Record "Sales Header";

}