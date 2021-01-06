use kursy;
-- nazwiska wykładowców razem z nazwą kursu, który wykładają.
Select w.Nazwisko, k.Nazwa
FROM Wykladowcy w INNER JOIN Kursy k ON w.IdWykladowcy=k.IdWykladowcy;