namespace cap.l2l.first.project;

using {cuid, managed} from '@sap/cds/common';

entity Customers: cuid, managed {
    name    : String(100);
    age     : Integer
}