create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int8, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int8, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int8, primary key (id))
create table User (id  bigserial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table User add constraint UK_e6gkqunxajvyxl5uctpl2vl2p unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKpy32p480ju27x20j3pcla4qcj foreign key (user_id) references User
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKf0xcjhvt0kidlgegr8ukg6kop foreign key (user_id) references User
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FKrxrkayxefv3870n1j2k5740e9 foreign key (user_id) references User
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int8, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int8, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int8, primary key (id))
create table user (id  bigserial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKfa3htlps9ddix2jx1spmpedko foreign key (user_id) references user
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKm4oimk0l1757o9pwavorj6ljg foreign key (user_id) references user
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FKiyf57dy48lyiftdrf7y87rnxi foreign key (user_id) references user
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int8, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int8, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int8, primary key (id))
create table user (id  bigserial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table user add constraint UK_ob8kqyqqgmefl0aco34akdtpe unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKfa3htlps9ddix2jx1spmpedko foreign key (user_id) references user
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKm4oimk0l1757o9pwavorj6ljg foreign key (user_id) references user
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FKiyf57dy48lyiftdrf7y87rnxi foreign key (user_id) references user
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int8, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int8, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int8, primary key (id))
create table users (id  bigserial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, amenity_id int8, facility_id int4, primary key (id))
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, end_date timestamp not null, number_of_people int4, start_date timestamp not null, rental_id int4, user_id int4, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
