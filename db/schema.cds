namespace cap.l2l.first.project;

using {cuid, managed} from '@sap/cds/common';

entity Customers: cuid, managed {
    name    : String(100);
    age     : Integer;
    orders  : Association to many Orders on orders.customer = $self;
}

entity Orders : cuid, managed {
    amount      : Decimal;
    customer    : Association to Customers;
}

entity NFs {
    id_fiscal: String;
}