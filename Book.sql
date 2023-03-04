CREATE DATABASE book;

GO;

USE book;

CREATE TABLE BookExam(
BookExam_id int IDENTITY(1,1),
BookExamName varchar(100),
PRIMARY KEY(BookExam_id)
);

CREATE TABLE BookCritic(
BookCritic_id int IDENTITY(1,1),
BookCriticName varchar(100),
PRIMARY KEY(BookCritic_id)
);

CREATE TABLE Book(
Book_id int IDENTITY(1,1),
BookName varchar(100),
BookLen int,
BookExam_id int FOREIGN KEY REFERENCES BookExam(BookExam_id),
BookCritic_id int FOREIGN KEY REFERENCES BookCritic(BookCritic_id)
PRIMARY KEY(Book_id)
);

CREATE TABLE UserType(
UserType_id int IDENTITY(1,1),
UserTypeName varchar(100)
PRIMARY KEY(UserType_id)
);

CREATE TABLE Users(
User_id int IDENTITY(1,1),
Login varchar(100),
Password varchar(100),
UserName varchar(100),
UserType_id int FOREIGN KEY REFERENCES UserType(UserType_id),
PRIMARY KEY(User_id)
);

CREATE TABLE Log(
Log_id int IDENTITY(1,1),
User_id int FOREIGN KEY REFERENCES Users(User_id),
Book_id int FOREIGN KEY REFERENCES Book(Book_id),
PRIMARY KEY(Log_id)
);

USE book;

INSERT INTO BookExam(BookExamName) values ('������������ ������������ ����������� ��������� ��� ����������');
INSERT INTO BookExam(BookExamName) values ('������������ �� ������������ ����������� ��������� ��� ����������');

INSERT INTO BookCritic(BookCriticName) values ('������������ ����� ������ ��������');
INSERT INTO BookCritic(BookCriticName) values ('������������ �� ����� ������� ��������');

INSERT INTO UserType(UserTypeName) values ('�����');
INSERT INTO UserType(UserTypeName) values ('������');
INSERT INTO UserType(UserTypeName) values ('��������');

INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('�������', 377, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('���� �� ���', 151, 2, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('����� � ���', 847, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('����������� �����', 162, 1, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('������� ����', 400, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('������ � ���������', 378, 1, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('������� ������', 77, 2, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('������� ������', 250, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('���� � ����', 56, 2, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('����� ������ �������', 142, 1, 2);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('������� �������', 112, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('�����', 342, 1, 1);
INSERT INTO Book(BookName, BookLen, BookExam_id, BookCritic_id) values ('����������', 42, 1, 1);

INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Mih_Bul', 'Password0', '������ ��������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Nic_Gog', 'Password1', '������� ������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Lev_Tol', 'Password2', '��� �������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Alek_Push', 'Password3', '��������� ������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ivan_Turg', 'Password4', '���� ��������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Alek_Grib', 'Password5', '��������� ���������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Mih_Ler', 'Password6', '������ ���������', 1);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Nik_Vlas', 'Password7', '������ ������', 2);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Sav_Most', 'Password8', '������� ��������', 2);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ivan_Pet', 'Password9', '���� ������', 2);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Nic_Osip', 'Password10', '������� ������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Rom_Pavl', 'Password11', '����� ����������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Bor_Kamal', 'Password12', '����� ����������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Rus_Ost', 'Password13', '������ ��������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Dmit_Ber', 'Password14', '������� ���������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Vlad_Zot', 'Password15', '�������� �����', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Vlad_Kot', 'Password16', '�������� �����', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ant_Pop', 'Password17', '����� �����', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ivan_Rud', 'Password18', '���� �������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ser_Log', 'Password19', '������ �������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Rust_D', 'Password20', '������ ������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Alek_Dub', 'Password21', '��������� ��������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Ger_Grom', 'Password22', '������ ������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Mat_Gor', 'Password23', '������ ��������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Bor_El', 'Password24', '����� ������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Oleg_Bud', 'Password25', '���� �����', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Konst_Bor', 'Password26', '���������� �������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Af_Rot', 'Password27', '�������� ���������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Stas_Lob', 'Password28', '���� �������', 3);
INSERT INTO Users(Login, Password, UserName, UserType_id) values ('Vik_Car', 'Password29', '������ �������', 3);

INSERT INTO Log(User_id, Book_id) values (1, 6);
INSERT INTO Log(User_id, Book_id) values (1, 7);
INSERT INTO Log(User_id, Book_id) values (2, 1);
INSERT INTO Log(User_id, Book_id) values (2, 5);
INSERT INTO Log(User_id, Book_id) values (3, 3);
INSERT INTO Log(User_id, Book_id) values (4, 4);
INSERT INTO Log(User_id, Book_id) values (4, 8);
INSERT INTO Log(User_id, Book_id) values (4, 11);
INSERT INTO Log(User_id, Book_id) values (4, 13);
INSERT INTO Log(User_id, Book_id) values (5, 9);
INSERT INTO Log(User_id, Book_id) values (5, 12);
INSERT INTO Log(User_id, Book_id) values (6, 2);
INSERT INTO Log(User_id, Book_id) values (7, 10);
INSERT INTO Log(User_id, Book_id) values (8, 1);
INSERT INTO Log(User_id, Book_id) values (8, 3);
INSERT INTO Log(User_id, Book_id) values (8, 5);
INSERT INTO Log(User_id, Book_id) values (9, 8);
INSERT INTO Log(User_id, Book_id) values (10, 11);
INSERT INTO Log(User_id, Book_id) values (10, 12);
INSERT INTO Log(User_id, Book_id) values (10, 13);
INSERT INTO Log(User_id, Book_id) values (11, 1)
INSERT INTO Log(User_id, Book_id) values (11, 3)
INSERT INTO Log(User_id, Book_id) values (11, 15)
INSERT INTO Log(User_id, Book_id) values (12, 2);
INSERT INTO Log(User_id, Book_id) values (12, 9);
INSERT INTO Log(User_id, Book_id) values (13, 5);
INSERT INTO Log(User_id, Book_id) values (14, 7);
INSERT INTO Log(User_id, Book_id) values (14, 3);
INSERT INTO Log(User_id, Book_id) values (14, 13);
INSERT INTO Log(User_id, Book_id) values (14, 2);
INSERT INTO Log(User_id, Book_id) values (15, 4);
INSERT INTO Log(User_id, Book_id) values (16, 11);
INSERT INTO Log(User_id, Book_id) values (17, 12);
INSERT INTO Log(User_id, Book_id) values (17, 5);
INSERT INTO Log(User_id, Book_id) values (17, 8);
INSERT INTO Log(User_id, Book_id) values (18, 7);
INSERT INTO Log(User_id, Book_id) values (19, 8);
INSERT INTO Log(User_id, Book_id) values (20, 8);
INSERT INTO Log(User_id, Book_id) values (21, 6)
INSERT INTO Log(User_id, Book_id) values (21, 7)
INSERT INTO Log(User_id, Book_id) values (22, 10);
INSERT INTO Log(User_id, Book_id) values (22, 9);
INSERT INTO Log(User_id, Book_id) values (23, 9);
INSERT INTO Log(User_id, Book_id) values (24, 12);
INSERT INTO Log(User_id, Book_id) values (25, 1);
INSERT INTO Log(User_id, Book_id) values (26, 2);
INSERT INTO Log(User_id, Book_id) values (27, 3);
INSERT INTO Log(User_id, Book_id) values (27, 13);
INSERT INTO Log(User_id, Book_id) values (27, 8);
INSERT INTO Log(User_id, Book_id) values (27, 1);
INSERT INTO Log(User_id, Book_id) values (28, 5);
INSERT INTO Log(User_id, Book_id) values (29, 13);
INSERT INTO Log(User_id, Book_id) values (30, 1);
INSERT INTO Log(User_id, Book_id) values (30, 10);

Use book;

SELECT * FROM BookExam;
SELECT * FROM BookCritic;
SELECT * FROM Book;
SELECT * FROM UserType;
SELECT * FROM Users;
SELECT * FROM Log;

--������� ���� ������ ������������ � ��������: ������������ �� ������������ ����������� ��������� ��� ���������� 

SELECT BookName, BookExamName FROM Book, BookExam 
WHERE Book.BookExam_id = BookExam.BookExam_id;

--������� ������ ������������ ������� ���������

SELECT BookName FROM UserType, Users, Book, Log
WHERE Users.UserName = '������ ��������' and UserType.UserType_id = Users.UserType_id and Users.User_id = Log.User_id and Log.Book_id = Book.Book_id;

--������� ������ �������� � ������������ �� ������� ��� �������� ���� ��������

SELECT UserName, BookName FROM UserType, Users, Book, Log
WHERE UserType.UserTypeName = '������' and UserType.UserType_id = Users.UserType_id and Users.User_id = Log.User_id and Log.Book_id = Book.Book_id;

--������� ������ ������������ ������� � ���������, ������� ��������� ��� ������������

SELECT BookName, UserName FROM UserType, Users, Book, Log
WHERE UserType.UserType_id = Users.UserType_id and Users.User_id = Log.User_id and Log.Book_id = Book.Book_id 
and UserType.UserTypeName = '��������' and (Log.Book_id = 4 or Log.Book_id = 8 or Log.Book_id = 11 or Log.Book_id = 13) ORDER BY BookName;

--������� ��� �������, ������� ������� �������� �� ����� � ���

SELECT BookName, UserName From UserType, Users, Book, Log, BookCritic
WHERE UserType.UserType_id = Users.UserType_id and Users.User_id = Log.User_id and Log.Book_id = Book.Book_id and Book.BookCritic_id = BookCritic.BookCritic_id
and BookName = '����� � ���' and Book.BookCritic_id = 1 and UserType.UserTypeName = '������';
