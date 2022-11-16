create database `QuanLyBanHang`;
use `QuanLyBanHang`;

create table `Customer` 
(
	cID int primary key,
    cName varchar(50),
    cAge int
);

create table `Order` 
(
	oID int primary key,
    cID int,
    oDate Datetime,
    oTotalPrice float,
    foreign key (cID) references `Customer`(cID)
);

create table `Product` 
(
	pID int primary key,
    pName varchar(50),
    pPrice float
);

create table `OrderDetail` 
(
	oID int not null,
    pID int not null,
    odQTY int,
    primary key (oID, pID),
    foreign key (oID) references `Order`(oID),
    foreign key (pID) references `Product`(pID)
);