create table customer (
cust_id varchar(8) primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
DOB date not null,
remainning_point number(6) not null,
email varchar(30) unique not null,
registration_date date not null);

create table employee (
emp_id varchar(8) primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
DOB date not null,
DOE date not null,
position varchar(30) not null,
salary int not null,
tel varchar(10) not null,
manager varchar(8));

create table coupon (
coupon_id varchar(8) primary key,
coupon_name varchar(30) not null ,
point_value number not null,
end_date date not null,
coupon_status number(1) not null,
redemption_rr_date date);

create table point_earning (
record_pe_id varchar(8) primary key,
emp_id varchar(8) not null,
cust_id varchar(8) not null,
earn_point number not null,
earn_date date not null,
constraint point_emp_id_fk foreign key (emp_id) references employee (emp_id),
constraint point_cust_id_fk foreign key (cust_id) references customer (cust_id));

create table redeem_coupon (
record_rc_id varchar(8) primary key,
coupon_id varchar(8) not null,
cust_id varchar(8) not null,
redemption_rc_date date not null,
constraint coupon_id_fk foreign key (coupon_id) references coupon (coupon_id),
constraint cust_id_fk foreign key (cust_id) references customer (cust_id));


set linesize 200;


insert into customer
values
('CT000001', 'Panachat', 'Aiamnam', to_date('2002/11/29', 'YYYY/MM/DD'), 100, 'panachat.ai@mail.wu.ac.th', to_date('2006/11/25', 'YYYY/MM/DD'));
insert into customer
values
('CT000002', 'Kasidit', 'Boonchai', to_date('2002/10/30', 'YYYY/MM/DD'), 150, 'kasidit.bo@mail.wu.ac.th', to_date('2006/11/27', 'YYYY/MM/DD'));
insert into customer
values
('CT000003', 'Jirayu', 'Satsanatayat', to_date('2002/2/23', 'YYYY/MM/DD'), 50, 'jirayu.sa@mail.wu.ac.th', to_date('2006/11/27', 'YYYY/MM/DD'));
insert into customer
values
('CT000004', 'Thanawat', 'Sriwilai', to_date('2000/11/27', 'YYYY/MM/DD'), 200, 'thanawat.si@mail.wu.ac.th', to_date('2006/11/30', 'YYYY/MM/DD'));

---

insert into customer
values
('CT000005', 'Thanaporn', 'Mimapun', to_date('2001/8/30', 'YYYY/MM/DD'), 55, 'thanaporn.mi@mail.wu.ac.th', to_date('2006/5/30', 'YYYY/MM/DD'));
insert into customer
values
('CT000006', 'Teepakon', 'Thakonklkit', to_date('2002/5/17', 'YYYY/MM/DD'), 100, 'teepakon.th@mail.wu.ac.th', to_date('2006/8/17', 'YYYY/MM/DD'));
insert into customer
values
('CT000007', 'Methanusorn', 'Sutthirat', to_date('1999/3/8', 'YYYY/MM/DD'), 200, 'methanusorn.su@mail.wu.ac.th', to_date('2006/2/8', 'YYYY/MM/DD'));
insert into customer
values
('CT000008', 'Supanut', 'Koomruck', to_date('1999/12/25', 'YYYY/MM/DD'), 400, 'supanut.ko@mail.wu.ac.th', to_date('2006/11/25', 'YYYY/MM/DD'));


insert into employee
values 
('EM000001', 'Kanjana', 'Haruehansapong', to_date('1977/4/18', 'YYYY/MM/DD'), to_date('1997/4/18', 'YYYY/MM/DD'), 'manager', 30000, '0856728460', Null);
insert into employee
values 
('EM000002', 'Theerat', 'Saichoo', to_date('1987/9/1', 'YYYY/MM/DD'), to_date('2017/9/1', 'YYYY/MM/DD'), 'senior sales associate', 20000, '0675823945', 'EM000001');
insert into employee
values 
('EM000003', 'Charlee', 'Kaewrat', to_date('1990/10/1', 'YYYY/MM/DD'), to_date('2020/10/1', 'YYYY/MM/DD'), 'sales associate', 15000, '0644561415', 'EM000002');
insert into employee
values 
('EM000004', 'Bukhoree', 'Sahoh', to_date('1991/6/14', 'YYYY/MM/DD'), to_date('2021/6/14', 'YYYY/MM/DD'), 'sales associate', 15000, '0817857689', 'EM000002');



insert into coupon
VALUES 
('CP000001','Ice tea award', 100, to_date('2023/3/31', 'YYYY/MM/DD'), 0, null);
insert into coupon
VALUES 
('CP000002','Green tea award', 120, to_date('2023/3/31', 'YYYY/MM/DD'), 1,to_date('2023/1/11', 'YYYY/MM/DD'));
insert into coupon
VALUES 
('CP000003','Coffee award', 5, to_date('2023/3/31', 'YYYY/MM/DD'), 1,to_date('2023/2/1', 'YYYY/MM/DD'));
insert into coupon
VALUES 
('CP000004','Ice milk award', 5, to_date('2023/3/31', 'YYYY/MM/DD'), 0, null);
insert into coupon
VALUES 
('CP000005','Ice milk II award', 5, to_date('2023/3/31', 'YYYY/MM/DD'), 0, null);

insert into coupon
VALUES 
('CP000006','Ice milk III award', 5, to_date('2023/5/11', 'YYYY/MM/DD'), 1, to_date('2023/6/2', 'YYYY/MM/DD'));
insert into coupon
VALUES 
('CP000007','Ice milk VI award', 5, to_date('2023/2/2', 'YYYY/MM/DD'), 1, to_date('2023/3/2', 'YYYY/MM/DD'));



insert into point_earning VALUES ('PE000001','EM000001','CT000001',50,to_date('2020/6/16', 'YYYY/MM/DD'));
insert into point_earning VALUES('PE000002','EM000001','CT000001',30,to_date('2020/7/04', 'YYYY/MM/DD'));
insert into point_earning VALUES('PE000003','EM000001','CT000001',55,to_date('2019/6/14', 'YYYY/MM/DD'));
insert into point_earning VALUES('PE000004','EM000001','CT000001',10,to_date('2019/6/19', 'YYYY/MM/DD'));
insert into point_earning VALUES('PE000005','EM000001','CT000001',25,to_date('2017/6/24', 'YYYY/MM/DD'));
insert into point_earning VALUES('PE000006','EM000003','CT000002',15,to_date('2018/6/24', 'YYYY/MM/DD'));

insert into redeem_Coupon VALUES
('RC00001','CP000001','CT000001', to_date('2010/9/24', 'YYYY/MM/DD'));
insert into redeem_Coupon VALUES
('RC00002','CP000001','CT000001', to_date('2004/12/24', 'YYYY/MM/DD'));
insert into redeem_Coupon VALUES
('RC00003','CP000001','CT000001', to_date('2012/6/24', 'YYYY/MM/DD'));
insert into redeem_Coupon VALUES
('RC00004','CP000001','CT000001', to_date('2023/1/30', 'YYYY/MM/DD'));


insert into redeem_Coupon VALUES
('RC00005','CP000001','CT000001', to_date('2023/1/30', 'YYYY/MM/DD'));


-- Join

-- วัตถุประสงค์: เพื่อให้เห็นข้อมูลของพนักงานและหัวหน้าของพนักงานว่าใครเป็นใคร
-- ให้กลุ่มผู้ใช้: ผู้จัดการ, ผู้ดูแลระบบ, หน่วยงานต่างๆ ที่ต้องการตรวจสอบว่าพนักงานแต่ละคนมีตำแหน่งและหัวหน้า
select emp.emp_id, emp.first_name, emp.last_name, emp.position, 
emp.salary, emp.tel, mgr.first_name || ' ' || mgr.last_name AS mgr_name
from employee emp inner join employee mgr 
on emp.manager = mgr.emp_id;

-- วัตถุประสงค์: เพื่อแสดงข้อมูลแต้มที่เพิ่มขึ้นและพนักงานที่ให้บริการการเพิ่มแต้มให้กับลูกค้าในแต่ละครั้ง
-- ให้กลุ่มผู้ใช้: ผู้ดูแลระบบ และผู้ใช้งานที่ต้องการตรวจสอบข้อมูลแต้มและการให้บริการของพนักงาน
select point.record_pe_id, emp.first_name || ' ' || emp.last_name AS emp_name, cust.first_name || ' ' || cust.last_name AS cust_name, point.earn_point, point.earn_date
from point_earning point inner join employee emp on point.emp_id = emp.emp_id
inner join customer cust on cust.cust_id = point.cust_id;


-- Aggregate function

-- วัตถุประสงค์: เพื่อแสดงข้อมูลผลรวมของเงินเดือนพนักงานตำแหน่ง sales associate ทั้งหมด
-- ให้กลุ่มผู้ใช้:  ฝ่ายการเงิน
SELECT SUM(salary) FROM employee WHERE position = 'sales associate';

-- วัตถุประสงค์: เพื่อแสดงข้อมูลพนักงานที่ไม่ใช่พนักงานปฏิบัติการที่มีค่ามากที่สุดและน้อยที่สุด
-- ให้กลุ่มผู้ใช้: ฝ่ายการเงิน
SELECT MAX(salary),MIN(salary) FROM employee 
WHERE position <> 'manager';




-- Build-in function

-- วัตถุประสงค์: เพื่อแสดงข้อมูลอายุงานของพนักงานทุกคนยกเว้นพนักงานตำแหน่ง manager
-- ให้กลุ่มผู้ใช้:  Manager
select emp_id, first_name, last_name, dob, doe, position, salary, tel, manager,
trunc((current_date - doe) / 365,0) as worked_year
from employee, dual
where position <> 'manager';

-- วัตถุประสงค์: เพื่อแสดงข้อมูลจำนวนของพนักงานทุกคนที่ไม่ใช่ตำแหน่ง manager และ มีเงินเดือนน้อยกว่าหรือเท่ากับ 15000
-- ให้กลุ่มผู้ใช้:  Manager
select count(emp_id) as employee from employee where position <> 'manager' and salary <= 15000;




-- order by
-- วัตถุประสงค์: เพื่อแสดงข้อมูลเงินเดือนและโบนัสที่ได้ในตลอดทั้งปีของพนักงาน
-- ให้กลุ่มผู้ใช้:  ฝ่ายการเงิน พนักงาน
select emp_id, first_name || ' ' || last_name AS emp_name, position, salary * 12 AS Annual_salary, salary * 12 * 0.05 AS Annual_Bonus
from employee
order by position DESC, Annual_salary DESC;                


-- วัตถุประสงค์: เพื่อแสดงข้อมูลและอายุของลูกค้าลูกค้าทั้งหมด เพื่อที่จะนำมาเป็นปัจจัยหลักในการคิดโปรโมชันหรือของรางวัล
-- ให้กลุ่มผู้ใช้:  พนักงานขาย
select cust_id, first_name || ' ' || last_name AS cust_name, dob, trunc((current_date - dob) / 365,0) as Age
from customer, dual
order by Age DESC, dob ASC;

--group by + having
-- วัตถุประสงค์: เพื่อแสดงจำนวนคูปองที่มีสถาณะเป็น 1 
-- ให้กลุ่มผู้ใช้: พนักงานขาย ผู้ดูแลระบบ
SELECT coupon_status, point_value, COUNT(*) as num_coupon
FROM coupon
WHERE coupon_status = 1 
GROUP BY coupon_status, point_value;


-- วัตถุประสงค์:   เพื่อแสดงจำนวนครั้งทั้งหมดที่ลูกค้าแลกคูปอง ตามรหัสลูกค้าที่ระบุ
-- ให้กลุ่มผู้ใช้:  ผู้จัดการ
SELECT redeem_coupon.cust_id, COUNT(redeem_coupon.cust_id) AS Customer_ID_Count
FROM redeem_coupon
inner join customer on customer.cust_id = redeem_coupon.cust_id
GROUP BY redeem_coupon.cust_id
HAVING redeem_coupon.cust_id = 'CT000001';

-- sub query
-- วัตถุประสงค์: แสดงค่าเฉลี่ยของจำนวนแต้มของลูกค้าที่มากกว่าค่าเฉลี่ยโดยเรียงจากมากไปหาน้อย
-- ให้กลุ่มผู้ใช้:  พนักงานขาย
select * from Customer where remainning_point > (select avg(remainning_point) from Customer) ORDER BY remainning_point DESC;






-- View

-- วัตถุประสงค์: เพื่อแสดงรายละเอียดประวัติการแลกคูปองทั้งหมด 
-- ให้กลุ่มผู้ใช้:  พนักงานขาย, manager

create view report_redeemed_coupon
as select Customer.first_name, Customer.last_name, Coupon.coupon_name, Coupon.point_value, Redeem_Coupon.redemption_rc_date, Coupon.redemption_rr_date
FROM Customer 
INNER JOIN Redeem_Coupon ON Customer.cust_id = Redeem_Coupon.cust_id
INNER JOIN Coupon ON Redeem_Coupon.coupon_id = Coupon.coupon_id;


-- Duplicate
-- วัตถุประสงค: เพื่อเรียกดูและแสดงข้อมูลของพนักงานและหัวหน้าของพนักงานคนนั้นๆ ได้อย่างง่าย
-- ให้กลุ่มผู้ใช่: ผู้จัดการ, ผู้ดูแลระบบ, หน่วยงานต่างๆ ที่ต้องการตรวจสอบว่าพนักงานแต่ละคนมีตำแหน่งและหัวหน้า
create view manager_view_for_emp
as select emp.emp_id, emp.first_name, emp.last_name, emp.position, emp.salary, emp.tel, mgr.first_name || ' ' || mgr.last_name AS mgr_name
from employee emp inner join employee mgr 
on emp.manager = mgr.emp_id;


-- Duplicate
-- วัตถุประสงค์: เพื่อเรียกดูและแสดงข้อมูลของเงินเดือนและดารได้โบนัสตลอดทั้งปี ได้อย่างง่าย
-- ให้กลุ่มผู้ใช้:  ฝ่ายการเงิน พนักงาน
create view salary_by_year
as select emp_id, first_name || ' ' || last_name AS emp_name, position, salary * 12 AS Annual_salary, salary * 12 * 0.05 AS Annual_Bonus
from employee
order by position DESC, Annual_salary DESC;   


-- Duplicate
-- วัตถุประสงค์: เพื่อเรียกดูและแสดงข้อมูลอายุการทำงานของพนักงานแต่ละคน ยกเว้นตำแหน่ง manager ได้อย่างง่าย
-- ให้กลุ่มผู้ใช้:  Manager
create view emp_worked_year
as select emp_id, first_name, last_name, dob, doe, position, salary, tel, manager,trunc((current_date - doe) / 365,0) as worked_year
from employee, dual
where position <> 'manager';


-- วัตถุประสงค์: เพื่อเรียกดูและแสดงข้อมูลคูปองที่ยังไม่ได้โดนแรก ได้อย่างง่าย
-- ให้กลุ่มผู้ใช้:  พนักงานขาย ผู้ดูแลระบบ
create view coupon_left
as SELECT *
FROM coupon
WHERE coupon_status = 0;



-- update redeem_coupon
-- set coupon_id = 'CP000007' 
-- where record_rc_id = 'RC00004';
