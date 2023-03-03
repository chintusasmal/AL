table 50102 MyDept
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;DeptId; Text[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2;"Dept Name"; Text[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(3;"Dept Head"; Text[10])
        {
            DataClassification = ToBeClassified;
            
        }
        

    }
    

    
    keys
    {
        key(Key1; DeptId)
        {
            Clustered = true;
        }
    }
    fieldgroups
        {
            fieldgroup(DropDown;DeptId,"Dept Name")
            {
                
            }
        }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}