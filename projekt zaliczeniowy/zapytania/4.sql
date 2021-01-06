use kursy;
-- numery indeksów, nazwiska studentów razem z nazwą kursu na który zostali zarejestrowani.
 Select s.NrIndeksu, s.Nazwisko, k.Nazwa AS Nazwa_Kursu
FROM Studenci s INNER JOIN Rejestracje r ON s.NrIndeksu=r.NrIndeksu, Kursy k WHERE k.IdKursu=r.IdKursu;