CREATE DATABASE lab4;

USE lab4;

CREATE TABLE Addresses (
	Address_id int IDENTITY(1,1),
	Address_name varchar (255),
	primary key(Address_id)
);

CREATE TABLE Coordinates (
	Coordinates_id int IDENTITY(1,1),
	Latitude varchar (255),
	Longitude varchar (255),
	primary key(Coordinates_id)
);

CREATE TABLE Info (
	Info_id int IDENTITY(1,1),
	Info_text varchar (255),
	primary key(Info_id)
);

CREATE TABLE Pictures (
	Pic_id int IDENTITY(1,1),
	Link_toPic varchar (255),
	primary key(Pic_id)
);

CREATE TABLE Sight (
	Sight_id int IDENTITY(1,1),
	Sight_name varchar (255),
	Address_id int FOREIGN KEY REFERENCES Addresses (Address_id),
	Coordinates_id int FOREIGN KEY REFERENCES Coordinates (Coordinates_id),
	Info_id int FOREIGN KEY REFERENCES Info (Info_id),
	Pic_id int FOREIGN KEY REFERENCES Pictures (Pic_id),
	primary key (Sight_id)
);

INSERT INTO Addresses(Address_name) values('проспект Ленина, 35'); --дом севастьянова
INSERT INTO Addresses(Address_name) values('ул.Карла Либкнехта, 26'); -- музей истории
INSERT INTO Addresses(Address_name) values('ул.Горького, 14'); --клавиатура
INSERT INTO Addresses(Address_name) values('ул.Воеводина, 5'); --музей изо
INSERT INTO Addresses(Address_name) values('ул.Бориса Ельцина, 3'); -- ельцин центр
INSERT INTO Addresses(Address_name) values('проспект Ленина, 69, корп. 2'); -- гор. чекистов
INSERT INTO Addresses(Address_name) values('ул. Царская, 10'); -- храм на крови
INSERT INTO Addresses(Address_name) values('ул.Карла Либкнехта, 38А'); -- филармония
INSERT INTO Addresses(Address_name) values('ул.Карла Либкнехта, 36'); -- дом метенкова
INSERT INTO Addresses(Address_name) values('проспект Ленина, 37'); -- музей юв. искусства
INSERT INTO Addresses(Address_name) values('ул.Красноармейская, 10'); --памятник высоцкому
INSERT INTO Addresses(Address_name) values('ул.Народной Воли, 49');--россия моя история
INSERT INTO Addresses(Address_name) values('ул.Бакинских Комиссаров, 2а');--белая башня


UPDATE Addresses SET Address_name = 'ул.Народной Воли, 49' 
WHERE Address_name = 'ул. Народной Воли, 49';


INSERT INTO Coordinates(Latitude, Longitude) values ('56.839139','60.60608');--дом севастьянова
INSERT INTO Coordinates(Latitude, Longitude) values ('56.840779','60.611506'); -- музей истории
INSERT INTO Coordinates(Latitude, Longitude) values ('56.831925','60.607679');--клавиатура
INSERT INTO Coordinates(Latitude, Longitude) values ('56.835165','60.603215');--музей изо
INSERT INTO Coordinates(Latitude, Longitude) values ('56.844894','60.591438');-- ельцин центр
INSERT INTO Coordinates(Latitude, Longitude) values ('56.84134','60.620346');-- гор. чекистов
INSERT INTO Coordinates(Latitude, Longitude) values ('56.844402','60.609081');-- храм на крови
INSERT INTO Coordinates(Latitude, Longitude) values ('56.842768','60.610716'); -- филармония
INSERT INTO Coordinates(Latitude, Longitude) values ('56.84196','60.610994');-- дом метенкова
INSERT INTO Coordinates(Latitude, Longitude) values ('56.839114','60.606952'); -- музей юв. искусства
INSERT INTO Coordinates(Latitude, Longitude) values ('56.837174','60.615288');--памятник высоцкому
INSERT INTO Coordinates(Latitude, Longitude) values ('56.825808','60.607446');--россия моя история
INSERT INTO Coordinates(Latitude, Longitude) values ('56.893181','60.572393');--белая башня


INSERT INTO Info(Info_text) values('Какая-то информация о Доме Севастьянова'); --дом севастьянова
INSERT INTO Info(Info_text) values('Какая-то информация о Музее Истории'); -- музей истории
INSERT INTO Info(Info_text) values('Какая-то информация о памятнике клавиатуре'); --клавиатура
INSERT INTO Info(Info_text) values('Какая-то информация о Музее Изобразительного Искусства'); --музей изо
INSERT INTO Info(Info_text) values('Какая-то информация о Ельцин Центре'); -- ельцин центр
INSERT INTO Info(Info_text) values('Какая-то информация о Городке Чекистов'); -- гор. чекистов
INSERT INTO Info(Info_text) values('Какая-то информация о Храме на Крови'); -- храм на крови
INSERT INTO Info(Info_text) values('Какая-то информация о Филармонии'); -- филармония
INSERT INTO Info(Info_text) values('Какая-то информация о Доме Метенкова'); -- дом метенкова
INSERT INTO Info(Info_text) values('Какая-то информация о Музее Ювелирного искусства');  -- музей юв. искусства
INSERT INTO Info(Info_text) values('Какая-то информация о Памятнике Владимиру Высоцкому и Марине Влади'); --памятник высоцкому
INSERT INTO Info(Info_text) values('Какая-то информация о Историческом парке "Россия - Моя История"'); --россия моя история
INSERT INTO Info(Info_text) values('Какая-то информация о Белой башне'); --белая башня



INSERT INTO Pictures(Link_toPic) values('D:\1.png');
INSERT INTO Pictures(Link_toPic) values('D:\2.png');
INSERT INTO Pictures(Link_toPic) values('D:\3.png');
INSERT INTO Pictures(Link_toPic) values('D:\4.png');
INSERT INTO Pictures(Link_toPic) values('D:\5.png');
INSERT INTO Pictures(Link_toPic) values('D:\6.png');
INSERT INTO Pictures(Link_toPic) values('D:\7.png');
INSERT INTO Pictures(Link_toPic) values('D:\8.png');
INSERT INTO Pictures(Link_toPic) values('D:\9.png');
INSERT INTO Pictures(Link_toPic) values('D:\10.png');
INSERT INTO Pictures(Link_toPic) values('D:\11.png');
INSERT INTO Pictures(Link_toPic) values('D:\12.png');
INSERT INTO Pictures(Link_toPic) values('D:\13.png');

UPDATE Pictures SET Link_toPic = 'D:\7.png' 
WHERE Link_toPic = 'D:\8.png';

UPDATE Pictures SET Link_toPic = 'D:\8.png' 
WHERE Link_toPic = 'D:\9.png';

UPDATE Pictures SET Link_toPic = 'D:\9.png' 
WHERE Link_toPic = 'D:\10.png';

UPDATE Pictures SET Link_toPic = 'D:\7.png' 
WHERE Pic_id = 7;

USE lab4;
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Дом Севастьянова','1','1','1','1');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Музей Истории','2','2','2','2');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Памятник клавиатуре','3','3','3','3');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Музей Изобразительного искусства','4','4','4','4');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Ельцин Центр','5','5','5','5');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Городок Чекистов','6','6','6','6');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Храм на Крови','7','7','7','7');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Филармония','8','8','8','8');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Дом Метенкова','9','9','9','9');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Музей камнерезного и ювелирного скусства','10','10','10','10');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Памятник Владимиру Высоцкому и Марине Влади','11','11','11','11');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Исторический парк "Россия - Моя История"','12','12','12','12');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('Белая башня','13','13','13','13');



select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where Sight_name = 'Ельцин Центр'

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where CHARINDEX('ул',Address_name,1) != 0

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where Address_name LIKE '%проспект%'

UPDATE Info SET Info_text = 'Музей камнерезного и ювелирного искусства' 
WHERE Info_text = 'Музее Ювелирного искусства';

UPDATE Sight SET Sight_name = 'Музей камнерезного и ювелирного искусства' 
WHERE Sight_name = 'Музей камнерезного и ювелирного скусства';
select * from Sight

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where Sight_name LIKE '%дом%'

select Sight_id, Coordinates. Latitude, Coordinates.Latitude from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id


