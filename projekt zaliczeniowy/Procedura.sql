
CREATE TABLE Konto_studenta(
        NrIndeksu numeric(4,0),
        stan_konta numeric(5,0)
 );
 INSERT INTO Konto_studenta VALUES(101, 200);
INSERT INTO Konto_studenta VALUES(102,320 );
Create procedure p3() select NrIndeksu, stan_konta, stan_konta*0.1 as odsetki from Konto_studenta
;
CALL p3();