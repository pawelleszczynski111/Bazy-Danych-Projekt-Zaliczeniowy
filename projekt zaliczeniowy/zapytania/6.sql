use kursy;
-- numery indeksów i nazwiska studentów, którzy zapisali się na kurs prowadzony przez wykładowcę o  nazwisku 'KOWALSKI'.
Select s. NrIndeksu, s.Nazwisko
FROM Studenci s, Rejestracje r, Wykladowcy w, Kursy k
WHERE (s. NrIndeksu=r.NrIndeksu) AND (r.IdKursu=k.IdKursu) AND (k.IdWykladowcy=w.IdWykladowcy) AND (w.Nazwisko LIKE 'Kowalski%');
