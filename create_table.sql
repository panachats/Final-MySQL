-- create table customer (
-- cust_id varchar(250) primary key,
-- first_name varchar(250) not null,
-- last_name varchar(250) not null,
-- DOB date not null,
-- remainning_point number(6) not null,
-- email varchar(250) unique not null,
-- registration_date date not null);




-- create table employee (
-- emp_id varchar(250) primary key,
-- first_name varchar(250) not null,
-- last_name varchar(250) not null,
-- age number(2) not null,
-- positon varchar(250) not null,
-- salary int not null,
-- address varchar(250) not null);



-- create table point_earning (
-- record_id varchar(250) primary key,
-- emp_id varchar(250) ,
-- cust_id varchar(250) ,
-- _point number not null,
-- constraint point_emp_id_fk foreign key (emp_id) references employee (emp_id),
-- constraint point_cust_id_fk foreign key (cust_id) references customer (cust_id));



-- create table coupon (
-- coupon_id int primary key,
-- cust_id varchar(250),
-- coupon_name varchar(250) not null ,
-- point_value number not null,
-- end_date date not null,
-- constraint cust_id_fk foreign key (cust_id) references customer (cust_id));



-- create table reward (
-- reward_id number primary key,
-- reward_name varchar(250) unique not null,
-- prize_value number not null ,
-- balance_reward number not null,
-- reward_date date not null,
-- coupon_id varchar(250),
-- constraint coupon_id_fk foreign key (coupon_id) references coupon (coupon_id));
