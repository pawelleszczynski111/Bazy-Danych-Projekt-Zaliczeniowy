use kursy;
	CREATE TRIGGER suma BEFORE INSERT ON kursy_cena
       FOR EACH ROW SET @sum = @sum + NEW.cena;
       SET @sum = 0;
       INSERT INTO kursy_cena VALUES(1,214.98),(2,337.50),(3,100.00),(4,350.50),(5,457.50),(6,237.50),(7,187.50),(8,267.50),(9,147.50),(10,207.50);
       SELECT @sum AS 'Suma';
        select*from Kursy_cena;
       DELIMITER //;
 CREATE TRIGGER konto_bu
         BEFORE UPDATE ON Kursy_cena
         FOR EACH ROW
         BEGIN
           IF NEW.cena < 0 THEN
             SET NEW.cena = 0;
           ELSEIF NEW.cena > 100 THEN
             SET NEW.cena = 100;
           END IF;
         END;//
 DELIMITER ;//