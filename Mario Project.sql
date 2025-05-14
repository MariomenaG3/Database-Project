CREATE DATABASE Library;
CREATE TABLE AUTHOR(
    AOTHOR_ID INT PRIMARY KEY AUTO_INCREMENT,
Author_Name VARCHAR(50) NOT NULL);
CREATE TABLE PUBLISHER(
    Publisher_ID INT PRIMARY KEY AUTO_INCREMENT,
Publisher_Name VARCHAR(50) NOT NULL);
CREATE TABLE CATEGORY (
    Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_Name VARCHAR(50) NOT NULL
);
CREATE TABLE BOOK (
    Book_ID INT PRIMARY KEY AUTO_INCREMENT ,
    Title VARCHAR(50) NOT NULL,
    Author_ID INT,
    Publisher_ID INT,
    ISBN VARCHAR(13) UNIQUE,
    Category_ID INT,
    Number_of_Copies INT NOT NULL,
    FOREIGN KEY (Author_ID) REFERENCES AUTHOR(Author_ID),
    FOREIGN KEY (Publisher_ID) REFERENCES PUBLISHER(Publisher_ID),
    FOREIGN KEY (Category_ID) REFERENCES CATEGORY(Category_ID)
);
CREATE TABLE MEMBER (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Address TEXT NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Membership_Date DATE NOT NULL
);
CREATE TABLE LIBRARIAN (
    Librarian_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Phone VARCHAR(15) NOT NULL
);
CREATE TABLE LOAN (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Book_ID INT,
    Member_ID INT,
    Librarian_ID INT,
    Loan_Date DATE NOT NULL,
    Return_Date DATE,
    FOREIGN KEY (Book_ID) REFERENCES BOOK(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES MEMBER(Member_ID),
    FOREIGN KEY (Librarian_ID) REFERENCES LIBRARIAN(Librarian_ID)
);

INSERT INTO AUTHOR (Author_Name) VALUES
('Ahmed Khaled Tawfik'),
('Naguib Mahfouz'),
('Taha Hussein'),
('Amal Donqol'),
('Youssef Idris'),
('Ghada Samman'),
('Hanan Al-Shaykh'),
('Tayeb Salih'),
('Leila Aboulela'),
('Mohamed Choukri');
INSERT INTO PUBLISHER (Publisher_Name) VALUES
('Dar Al-Shorouk'),
('Dar Al-Mada'),
('Dar Al-Adab'),
('Dar Al-Saqi'),
('Dar Al-Farabi'),
('Dar Al-Kitab Al-Arabi'),
('Dar Al-Nahar'),
('Dar Al-Jadeed'),
('Dar Al-Tanweer'),
('Dar Al-Maktabi');
INSERT INTO CATEGORY (Category_Name) VALUES
('Fiction'),
('Non-Fiction'),
('Poetry'),
('History'),
('Science'),
('Biography'),
('Fantasy'),
('Mystery'),
('Romance'),
('Self-Help');
INSERT INTO BOOK (Title, Author_ID, Publisher_ID, ISBN, Category_ID, Number_of_Copies) VALUES
('Utopia', 1, 1, '9789770912345', 1, 8),
('Palace Walk', 2, 2, '9789770923456', 1, 5),
('The Days', 3, 3, '9789770934567', 6, 3),
('The Moon Does Not Tell', 4, 4, '9789770945678', 3, 4),
('The Cheapest Nights', 5, 5, '9789770956789', 1, 6),
('Beirut Nightmares', 6, 6, '9789770967890', 1, 7),
('The Story of Zahra', 7, 7, '9789770978901', 1, 5),
('Season of Migration to the North', 8, 8, '9789770989012', 1, 4),
('Destiny', 9, 9, '9789770990123', 1, 3),
('For Bread Alone', 10, 10, '9789770901234', 6, 2);
INSERT INTO MEMBER (Name, Address, Phone, Email, Membership_Date) VALUES
('Mohamed Ali', '15 Tahrir St, Cairo', '01012345678', 'mohamed.ali@example.com', '2024-01-10'),
('Fatima Ahmed', '22 Nile St, Giza', '01123456789', 'fatima.ahmed@example.com', '2024-02-15'),
('Omar Khaled', '10 Pyramids Rd, Giza', '01234567890', 'omar.khaled@example.com', '2024-03-20'),
('Laila Hassan', '5 Downtown, Alexandria', '01098765432', 'laila.hassan@example.com', '2024-04-25'),
('Youssef Amr', '8 Salah Salem, Cairo', '01187654321', 'youssef.amr@example.com', '2024-05-30'),
('Sara Mostafa', '12 Zamalek, Cairo', '01265432109', 'sara.mostafa@example.com', '2024-06-05'),
('Khaled Nour', '20 Nasr City, Cairo', '01045678912', 'khaled.nour@example.com', '2024-07-10'),
('Nourhan Adel', '25 Heliopolis, Cairo', '01178912345', 'nourhan.adel@example.com', '2024-08-15'),
('Ahmed Samir', '30 Maadi, Cairo', '01232165498', 'ahmed.samir@example.com', '2024-09-20'),
('Mona Zaki', '18 Shubra, Cairo', '01014785236', 'mona.zaki@example.com', '2024-10-25');
INSERT INTO LIBRARIAN (Name, Email, Phone) VALUES
('Hassan Mahmoud', 'hassan.mahmoud@library.com', '01011122233'),
('Amina Salem', 'amina.salem@library.com', '01122233344'),
('Karim Fathy', 'karim.fathy@library.com', '01233344455'),
('Rania Adel', 'rania.adel@library.com', '01044455566'),
('Tamer Hosny', 'tamer.hosny@library.com', '01155566677'),
('Dina Sherif', 'dina.sherif@library.com', '01266677788'),
('Mostafa Kamal', 'mostafa.kamal@library.com', '01077788899'),
('Shaimaa Essam', 'shaimaa.essam@library.com', '01188899900'),
('Adel Mahmoud', 'adel.mahmoud@library.com', '01299900011'),
('Reem Hany', 'reem.hany@library.com', '01000011122');
INSERT INTO LOAN (Book_ID, Member_ID, Librarian_ID, Loan_Date, Return_Date) VALUES
(1, 1, 1, '2025-01-01', '2025-01-15'),
(2, 2, 2, '2025-02-01', '2025-02-15'),
(3, 3, 3, '2025-03-01', '2025-03-15'),
(4, 4, 4, '2025-04-01', '2025-04-15'),
(5, 5, 5, '2025-05-01', NULL),
(6, 6, 6, '2025-06-01', '2025-06-15'),
(7, 7, 7, '2025-07-01', '2025-07-15'),
(8, 8, 8, '2025-08-01', NULL),
(9, 9, 9, '2025-09-01', '2025-09-15'),
(10, 10, 10, '2025-10-01', '2025-10-15');
