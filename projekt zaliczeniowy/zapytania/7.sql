use kursy;
-- ilość kursów, w których bierze udział każdy student
SELECT r.NrIndeksu, Count(IdKursu) Liczba FROM Rejestracje r GROUP BY r.NrIndeksu;