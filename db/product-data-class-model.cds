// namespace productdetailsdataclass;
context productdetailsdataclass {


    entity Class {
        key classID   : String; //class id is assosiate with both charcterictcs and products
            className : String(100);
    }

    entity Characteristic {
        key characteristicID   : String;
            classID            : Association to Class;
            characteristicName : String(100);
    }

    entity CharacteristicValue {
       
       key  characteristicID      : Association to Characteristic;
            value                 : String(100); // Part of composite key (value must be unique for a given characteristic)
            valueDescription      : String(255);
    }

    entity Product {
        key productID   : String;
            productName : String(100);
            type        : String(50);
    }

    entity ProductClass {
       
           key productID      : Association to Product;
           key classID        : Association to Class;
    }
}

@cds.persistence.exists
@cds.persistence.table
entity PRODUCTCALCLASSVIEWS { //---------entity for productclass cal view----------
    PRODUCTNAME        : String(100);
    key PRODUCTID          : String;
    TYPE               : String(50);
    CHARACTERISTICNAME : String(100);
    VALUE              : String(100);
    VALUEDESCRIPTION   : String(255);
   key CLASSID_CLASSID    : Integer;
 }
 @cds.persistence.exists
@cds.persistence.table
entity PRODUCTIDCLASSIDVIEW { //---------entity for productclass cal view----------
   
   key PRODUCTID          : String;
    PRODUCTNAME        :String;
   key CLASSID_CLASSID    : String;
 }

 
// @cds.persistence.exists
// @cds.persistence.table
// entity PRODUCTCLASSSQLVIEW {    //-----entity for PRODUCTCLASSSQLVIEW------
//     PRODUCTNAME        : String(100);
//     PRODUCTID          : String;
//     TYPE               : String(50);
//     CHARACTERISTICNAME : String(100);
//     VALUE              : String(100);
//     VALUEDESCRIPTION   : String(255);
//     CLASSID   : String;
// }


// @cds.persistence.exists
// @cds.persistence.table
// entity PRODUCTIDCLASSIDCALVIEWS {
//     PRODUCTID       : Integer;
//     PRODUCTNAME     : String(100);
//     CLASSID_CLASSID : Integer;
// }
