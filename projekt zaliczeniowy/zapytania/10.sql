use kursy;
-- największ liczba kursów na jakś zapisany jest jeden student.
 WITH Tymcz AS
(SELECT r.NRINDEKSU,  ROW_NUMBER()OVER(PARTITION BY r.NRINDEKSU ORDER BY r.NRINDEKSU) Liczba FROM Rejestracje r)
SELECT t.*, s.Nazwisko FROM Tymcz t  JOIN Studenci s ON t.NRINDEKSU = s.NRINDEKSU
WHERE t.Liczba IN (SELECT MAX(Liczba) FROM Tymcz);