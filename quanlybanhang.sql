create database quanlybanhang;
use quanlybanhang;
create table customer(
	cID int not null primary key,
    cName nvarchar(50),
    cAge int
);
create table invoice(
	iID int not null primary key,
    cID int,
    iDate date,
    iTotalPrice float,
    foreign key (cID) references customer(cID)
);
create table product(
	pID int not null primary key,
    pName nvarchar(50),
    pPrice float
);
create table invocie_detail(
	iID int not null,
    pID int not null,
    primary key(iID, pID),
    inQTY float,
    foreign key(iID) references invoice(iID),
    foreign key(pID) references product(pID)
);

