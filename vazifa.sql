--------------1-Masala-----------------------

create databases vazifa_Soxibjon;
show databases;
use vazifa_Soxibjon;
create table info_mijoz(MijozID int auto_increment primary key, Ism varchar(50), Shahar varchar(50), Telefon varchar(14));
INSERT INTO info_mijoz (Ism, Shahar, Telefon)
VALUES
("Olim", "Toshkent", "998901234567"),
("Shahnoza", "Samarqand", "998912345678"),
("Murod", "Toshkent", "998933456789");

SELECT * FROM info_mijoz WHERE Shahar = "Toshkent";

---------------2-MAsala------------

create table mahsulotlar (
    mahsulotid int auto_increment primary key,
    mahsulotnomi varchar(50),
    narx decimal(10,2)
);
insert into mahsulotlar (mahsulotnomi, narx) values ("smartfon", 1500000.00),
("noutbuk", 4500000.00),
("televizor", 2800000.00);
select mahsulotnomi from mahsulotlar where narx > 2000000;


--------------3-Masala------------------

create table buyurtmalar (
    buyurtmaID int auto_increment primary key,
    mijoz_ismi varchar(50),
    mahsulot_nomi varchar(50),
    buyurtma_sana date,
    qiymat decimal(10,2)
);

insert into buyurtmalar (mijoz_ismi, mahsulot_nomi, buyurtma_sana, qiymat) values ("Azizbek", "iphone x", '2023-03-15', 4500000.00), ("Elnurbek", "iphone 14", '2023-03-15', 9500999.00), ("Soxibjon", "iphone 13", '2023-03-15', 8700000.00), ("Abdulla", "iphone 14 pro max", '2023-03-18', 12500000.00);
select * from buyurtmalar where year(buyurtma_sana) = 2023;
select * from buyurtmalar group by mijoz_ismi order by sum(qiymat) desc limit 1;

-----------------4-Masala------------------------

create table xodimlar (xodimid int auto_increment primary key, ism varchar(50), lavozim varchar(50), maosh decimal(10,2));
insert into xodimlar (ism, lavozim, maosh) values
("Aziz", "sotuvchi", 2000000.00),("Dilnoza", "kassir", 1800000.00),
("Shavkat", "sotuvchi", 2100000.00),("Oydin", "boshqaruvchi", 3500000.00),
("Javlon", "omborchi", 1600000.00);
select * from xodimlar where maosh > 2000000;

-----------------5-masala-----------------------------

create table mahsulotlar2 (ID int auto_increment primary key, mahsulot_nomi varchar(50), narx decimal(10,2));
insert into mahsulotlar2 (mahsulot_nomi, narx) values("smartfon", 1500000.00),("noutbuk", 4500000.00), ("televizor", 2800000.00), ("muzlatgich", 2000000.00), ("changyutgich", 700000.00);
select * from mahsulotlar2 order by narx desc limit 1;

-------------------6-MAsala----------------------------

create table oylik_xarajatlar (ID int auto_increment primary key, mijoz_ismi varchar(50), oy date, umumiy_xarajat decimal(10,2));
insert into oylik_xarajatlar (mijoz_ismi, oy, umumiy_xarajat) values ("akmal", '2023-06-01', 3000000.00),
("anvar", '2023-06-01', 4500000.00), ("adiz", '2023-06-01', 2000000.00);
select * from oylik_xarajatlar where oy = '2023-06-01' order by umumiy_xarajat desc limit 1;


