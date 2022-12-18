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

INSERT INTO Addresses(Address_name) values('�������� ������, 35'); --��� ������������
INSERT INTO Addresses(Address_name) values('��.����� ���������, 26'); -- ����� �������
INSERT INTO Addresses(Address_name) values('��.��������, 14'); --����������
INSERT INTO Addresses(Address_name) values('��.���������, 5'); --����� ���
INSERT INTO Addresses(Address_name) values('��.������ �������, 3'); -- ������ �����
INSERT INTO Addresses(Address_name) values('�������� ������, 69, ����. 2'); -- ���. ��������
INSERT INTO Addresses(Address_name) values('��. �������, 10'); -- ���� �� �����
INSERT INTO Addresses(Address_name) values('��.����� ���������, 38�'); -- ����������
INSERT INTO Addresses(Address_name) values('��.����� ���������, 36'); -- ��� ���������
INSERT INTO Addresses(Address_name) values('�������� ������, 37'); -- ����� ��. ���������
INSERT INTO Addresses(Address_name) values('��.���������������, 10'); --�������� ���������
INSERT INTO Addresses(Address_name) values('��.�������� ����, 49');--������ ��� �������
INSERT INTO Addresses(Address_name) values('��.��������� ����������, 2�');--����� �����


UPDATE Addresses SET Address_name = '��.�������� ����, 49' 
WHERE Address_name = '��. �������� ����, 49';


INSERT INTO Coordinates(Latitude, Longitude) values ('56.839139','60.60608');--��� ������������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.840779','60.611506'); -- ����� �������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.831925','60.607679');--����������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.835165','60.603215');--����� ���
INSERT INTO Coordinates(Latitude, Longitude) values ('56.844894','60.591438');-- ������ �����
INSERT INTO Coordinates(Latitude, Longitude) values ('56.84134','60.620346');-- ���. ��������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.844402','60.609081');-- ���� �� �����
INSERT INTO Coordinates(Latitude, Longitude) values ('56.842768','60.610716'); -- ����������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.84196','60.610994');-- ��� ���������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.839114','60.606952'); -- ����� ��. ���������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.837174','60.615288');--�������� ���������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.825808','60.607446');--������ ��� �������
INSERT INTO Coordinates(Latitude, Longitude) values ('56.893181','60.572393');--����� �����


INSERT INTO Info(Info_text) values('�����-�� ���������� � ���� ������������'); --��� ������������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����� �������'); -- ����� �������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ��������� ����������'); --����������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����� ���������������� ���������'); --����� ���
INSERT INTO Info(Info_text) values('�����-�� ���������� � ������ ������'); -- ������ �����
INSERT INTO Info(Info_text) values('�����-�� ���������� � ������� ��������'); -- ���. ��������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����� �� �����'); -- ���� �� �����
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����������'); -- ����������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ���� ���������'); -- ��� ���������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����� ���������� ���������');  -- ����� ��. ���������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ��������� ��������� ��������� � ������ �����'); --�������� ���������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ������������ ����� "������ - ��� �������"'); --������ ��� �������
INSERT INTO Info(Info_text) values('�����-�� ���������� � ����� �����'); --����� �����



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
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('��� ������������','1','1','1','1');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('����� �������','2','2','2','2');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('�������� ����������','3','3','3','3');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('����� ���������������� ���������','4','4','4','4');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('������ �����','5','5','5','5');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('������� ��������','6','6','6','6');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('���� �� �����','7','7','7','7');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('����������','8','8','8','8');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('��� ���������','9','9','9','9');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('����� ������������ � ���������� ��������','10','10','10','10');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('�������� ��������� ��������� � ������ �����','11','11','11','11');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('������������ ���� "������ - ��� �������"','12','12','12','12');
INSERT INTO Sight(Sight_name, Address_id, Coordinates_id, Info_id, Pic_id) values('����� �����','13','13','13','13');



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
where Sight_name = '������ �����'

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where CHARINDEX('��',Address_name,1) != 0

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where Address_name LIKE '%��������%'

UPDATE Info SET Info_text = '����� ������������ � ���������� ���������' 
WHERE Info_text = '����� ���������� ���������';

UPDATE Sight SET Sight_name = '����� ������������ � ���������� ���������' 
WHERE Sight_name = '����� ������������ � ���������� ��������';
select * from Sight

select Sight_name, Address_name, Coordinates. Latitude, Coordinates.Latitude, Info.Info_text, Pictures.Link_toPic from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id
where Sight_name LIKE '%���%'

select Sight_id, Coordinates. Latitude, Coordinates.Latitude from Sight
join Addresses on Sight.Address_id = Addresses.Address_id
join Coordinates on Sight.Coordinates_id = Coordinates.Coordinates_id
join Info on Sight.Info_id = Info.Info_id
join Pictures on Sight.Pic_id = Pictures.Pic_id


