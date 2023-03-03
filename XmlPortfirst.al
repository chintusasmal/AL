xmlport 50114 CustXML
{
    Direction = Export;
    Format = FixedText;
    // FormatEvaluate = xml;
    //FieldSeparator = '-';
    //FieldDelimiter = '#';
    //FileName = 'CustXML.txt';
    UseRequestPage = false;

    schema
    {
        textelement(root)
        {

            tableelement(Customer; Customer)//caption and table name
            {
                //AutoSave = true;
                //AutoUpdate = true;
                AutoReplace = true;
                //RequestFilterFields = "No.";
                fieldattribute(Number; Customer."No.") { Width = 10;}
                fieldattribute(Language; Customer."Language Code") { }


                fieldelement(Name; Customer.Name) {
                    Width = 40;
                 }


                textelement(Address)
                {
                    fieldelement(StreetAndNr; Customer.Address)
                    {Width = 20;
                        fieldattribute(Address2; customer."Address 2") { }
                    }
                    fieldelement(City; Customer.City)
                    {Width = 10;
                         fieldattribute(Zipcode; Customer."Post Code") { }
                    }
                }


                fieldelement(Phone; Customer."Phone No.") { }
            }
        }
    }




    var
        myInt: Integer;
}