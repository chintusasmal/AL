tableextension 50112 CustomerCardExt extends Customer
{
    fields
    {
        field(10000;Customer;Text[100])
        {
            //aption= 'Enter your Description';
            DataClassification = ToBeClassified;
            CaptionML = ENU= 'Name',DAN='Navn',ESP='Nombre',FRA='Nom',ENC='Name';

        }
    }
    
    var
        myInt: Integer;
}