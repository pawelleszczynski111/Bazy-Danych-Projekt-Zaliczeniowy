use kursy;
-- kursy i ich prowadzący
Select  k.Nazwa, w.Nazwisko
FROM Kursy k 
Left OUTER JOIN wykladowcy w ON k.IdWykladowcy=w.IdWykladowcy;