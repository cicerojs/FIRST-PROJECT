using {cap.l2l.first.project as db} from '../db/schema';

service Main @(path: '/main'){
    entity Customers as projection on db.Customers;
}