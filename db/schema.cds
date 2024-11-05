namespace cap.l2l.first.project;

using {cuid} from '@sap/cds/common';

//Association
// 

//Composition
entity Customers: cuid {
    name    : String(100);
    age     : Integer;
    orders  : Composition of many Orders on orders.customer = $self;
}

entity Orders : cuid {
    amount      : Decimal;
    customer    : Association to Customers;
    nf          : Composition of one NFs on nf.order = $self; 
}

entity NFs: cuid {
    id_fiscal   : String;
    order       : Association to Orders;      
}