create database kursy;
use kursy;
CREATE TABLE Studenci
       (NrIndeksu NUMERIC(4,0)PRIMARY KEY,
        Nazwisko VARCHAR(20),
        RokUrodzenia NUMERIC(4,0),
  Kierunek VARCHAR(20));

CREATE INDEX Ind_S_Nazwisko ON Studenci(Nazwisko);

INSERT INTO Studenci VALUES(101, 'Kuczyńska Ewa', 1980,'Bazy danych');
INSERT INTO Studenci VALUES(102, 'Lubicz Robert', 1985,'Multimedia');
INSERT INTO Studenci VALUES(103, 'Krajewski Bogdan', 1988,'Bazy danych');
INSERT INTO Studenci VALUES(104, 'Lityńska Anna', 1987,'Multimedia');
INSERT INTO Studenci VALUES(105, 'Marzec Marcin', 1982,'Multimedia');
INSERT INTO Studenci VALUES(106, 'Cichocki Rafał', 1989,'Bazy danych');
INSERT INTO Studenci VALUES(107, 'Ebert Rafał', 1980,'Bazy danych');
INSERT INTO Studenci VALUES(108, 'Wachowski Paweł', 1985,'Multimedia');
INSERT INTO Studenci VALUES(109, 'Malina Bogdan', 1988,'Bazy danych');
INSERT INTO Studenci VALUES(110, 'Malinowska Alicja', 1987,'Multimedia');
INSERT INTO Studenci VALUES(111, 'Kowal Adam', 1982,'Multimedia');
INSERT INTO Studenci VALUES(112, 'Kowalski Rafał', 1989,'Bazy danych');

CREATE TABLE Wykladowcy
       (IdWykladowcy NUMERIC(4,0)PRIMARY KEY,
        Nazwisko VARCHAR(20),
        Stopien VARCHAR(10),
  Stanowisko VARCHAR(10));

CREATE INDEX Ind_W_Nazwisko ON Wykladowcy(Nazwisko);

INSERT INTO Wykladowcy VALUES(1010, 'Kowalski Jan', 'Dr', 'Adiunkt');
INSERT INTO Wykladowcy VALUES(1011, 'Jakubowski Emil', 'Dr hab', 'Docent');
INSERT INTO Wykladowcy VALUES(1012, 'Gazda Mirosława', 'Dr', 'Profesor');
INSERT INTO Wykladowcy VALUES(1013, 'Gazda Mirosława', 'Dr', 'Profesor');
INSERT INTO Wykladowcy VALUES(1014, 'Andryczuk Karol', 'Dr hab', 'docent');
INSERT INTO Wykladowcy VALUES(1015, 'Domżała Michał', 'Dr', 'Profesor');
INSERT INTO Wykladowcy VALUES(1016, 'Olifirko Bartosz', 'Dr', 'adiunkt');
INSERT INTO Wykladowcy VALUES(1017, 'Pskowski Rafał', 'Dr', 'Profesor');
INSERT INTO Wykladowcy VALUES(1018, 'Jedynak Karolina', 'Dr', 'Profesor');
INSERT INTO Wykladowcy VALUES(1019, 'Siuda Patrycja', 'Dr', 'Profesor');


CREATE TABLE Kursy
       (IdKursu NUMERIC(2,0)PRIMARY KEY,
        Nazwa VARCHAR(20),
        IdWykladowcy NUMERIC(4,0)REFERENCES Wykladowcy);

CREATE UNIQUE INDEX Ind_K_Nazwa ON Kursy(Nazwa);
CREATE INDEX Ind_Kursy_IdWyk ON Kursy(IdWykladowcy DESC);

INSERT INTO Kursy VALUES(1, 'Bazy danych', 1010);
INSERT INTO Kursy VALUES(2, 'Systemy operacyjne', 1012);
INSERT INTO Kursy VALUES(3, 'Multimedia', 1011);
INSERT INTO Kursy VALUES(5, 'Programowanie', 1013);
INSERT INTO Kursy VALUES(6, 'Modelowanie', 1014);
INSERT INTO Kursy VALUES(7, 'Bazy danych II', 1015);
INSERT INTO Kursy VALUES(8, 'Modelowanie II', 1016);
INSERT INTO Kursy VALUES(9, 'Programowanie II', 1017);
INSERT INTO Kursy VALUES(10, 'Multimedia II', 1018);
INSERT INTO Kursy VALUES(11, 'Sieci komputerowe', 1019);

CREATE TABLE Rejestracje
(NrIndeksu NUMERIC(4,0)REFERENCES Studenci,
IdKursu NUMERIC(2,0) REFERENCES Kursy, Data DATE);

CREATE INDEX Ind_NrIndeksu_Rej ON Rejestracje(NrIndeksu);
CREATE INDEX Ind_IdKursu_Rej ON Rejestracje(IdKursu);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(101, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(102, 3);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(104, 3);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(106, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(104, 2);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(101, 4);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(103, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(103, 6);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(105, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(106, 5);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(107, 3);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(108, 3);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(109, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(110, 2);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(111, 4);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(112, 8);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(102, 1);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(104, 10);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(108, 7);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(104, 11);
INSERT INTO Rejestracje (NrIndeksu, IdKursu) VALUES(103, 10);
CREATE TABLE Kursy_cena
       (IdKursu NUMERIC(2,0),
        cena decimal(10,2)
        );