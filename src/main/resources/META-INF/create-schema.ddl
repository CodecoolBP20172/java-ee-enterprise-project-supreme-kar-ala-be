create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
create sequence hibernate_sequence start 1 increment 1
create table Amenity (id  bigserial not null, hasAirCondition boolean not null, hasWifi boolean not null, primary key (id))
create table facility (id  serial not null, beds int4, rooms int4, primary key (id))
create table picture (id  serial not null, picture_name varchar(255), picture_url varchar(255), rental_id int4, user_id int4, primary key (id))
create table rental (id  serial not null, city varchar(255), description varchar(255), name varchar(255), guests int4, price float8, rating float8, amenity_id int8, facility_id int4, user_id int4, primary key (id))
create table rental_reservation (Rental_id int4 not null, reservations_id int4 not null)
create table Rental_reservedPeriod (Rental_id int4 not null, reservedPeriod varchar(255))
create table reservation (id  serial not null, number_of_people int4, rental_id int4, reservationPeriod_id int4, user_id int4, primary key (id))
create table reservation_period (reservation_type varchar(50) not null, id  serial not null, end_date timestamp, start_date timestamp, primary key (id))
create table review (id int4 not null, rating float8, text varchar(255), rental_id int4, user_id int4, primary key (id))
create table users (id  serial not null, contacts varchar(255), email varchar(255) not null, name varchar(255), password varchar(255), primary key (id))
alter table rental_reservation add constraint UK_5mqi5uf6xt8ld3ebfqblixx5w unique (reservations_id)
alter table users add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email)
alter table picture add constraint FKgtefot5y24iiu04tbbjuekh2l foreign key (rental_id) references rental
alter table picture add constraint FKb9ekwnjr3d94qb7y7fm1ljroa foreign key (user_id) references users
alter table rental add constraint FKh0aaxluq7ha849jyygq66eijj foreign key (amenity_id) references Amenity
alter table rental add constraint FKap2jcynglma7filx2g15t16j3 foreign key (facility_id) references facility
alter table rental add constraint FKj1ty59tjbwlmx7p4uotyto7lp foreign key (user_id) references users
alter table rental_reservation add constraint FK32h5rq4lywdms3bk90hy6hlw1 foreign key (reservations_id) references reservation
alter table rental_reservation add constraint FKa85g29dv4g19a6hiyrri4mag5 foreign key (Rental_id) references rental
alter table Rental_reservedPeriod add constraint FKm2nesoe76xxg77rmwupmiiuos foreign key (Rental_id) references rental
alter table reservation add constraint FKgmky6qaseahtbj0l8cjyqng53 foreign key (rental_id) references rental
alter table reservation add constraint FK9e9v6vc62wgtbq8m40sy4dxl7 foreign key (reservationPeriod_id) references reservation_period
alter table reservation add constraint FKrea93581tgkq61mdl13hehami foreign key (user_id) references users
alter table review add constraint FKepgoywl64bq50e5ovpx0pduvf foreign key (rental_id) references rental
alter table review add constraint FK6cpw2nlklblpvc7hyt7ko6v3e foreign key (user_id) references users
