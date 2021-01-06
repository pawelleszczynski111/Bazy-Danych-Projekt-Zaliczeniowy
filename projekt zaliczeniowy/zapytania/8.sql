use kursy;
-- kursy, na które zapisało się co najmniej 5 studentów.
WITH Tymcz AS
(SELECT r.IdKursu, COUNT(*) Liczba FROM Rejestracje r
GROUP BY r.IdKursu
HAVING COUNT(*)>=5)
SELECT k.Nazwa, t.IdKursu, t.Liczba
FROM Tymcz t JOIN Kursy k ON t. IdKursu =k. IdKursu
