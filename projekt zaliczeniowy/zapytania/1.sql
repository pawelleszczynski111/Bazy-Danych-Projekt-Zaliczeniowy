use kursy;
-- kursy, które nie mają przyporządkowanych wykładowców.
SELECT * FROM Kursy k WHERE k.IdWykladowcy IS NULL;