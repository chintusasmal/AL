codeunit 50101 MyFirstCode
{
    trigger OnRun()
    var
        myInt1: Decimal; myInt2 : Decimal;
        
    begin
        CheckSize();
    end;
    procedure CheckSize() 
        var result : Decimal;
        i : integer;
        myarray : array[10] of Integer;
        
    begin
        i:=0;
        for result := i to 10 do
        begin
        myarray[i] := result;
        i:=+1;
        end;
        //result := num1 div num2;
        Message('The list of numbers %1',myarray[i]);
        
    end;
    

}