/* STORED PROCEDURE 1 */
DROP PROCEDURE IF EXISTS `creaLibro`;
DELIMITER //
CREATE PROCEDURE `creaLibro` (uTitulo VARCHAR(50), uidGenero INT(11), uidAutor
INT(11))
BEGIN
  INSERT INTO Libros(Titulo, idGenero, idAutor) VALUES(uTitulo, uidGenero,
uidAutor);
END //
DELIMITER ;

/* STORED PROCEDURE 2 */
DROP PROCEDURE IF EXISTS `modificaLibro`;
DELIMITER //
CREATE PROCEDURE `modificaLibro`(uISBN INT(11), uTitulo VARCHAR(50), uidGenero INT(11), uidAutor INT(11))
BEGIN
	UPDATE Libros SET Titulo = uTitulo, idGenero = uidGenero, idAutor = uidAutor WHERE ISBN = uISBN;
END //
DELIMITER ;


/* STORED PROCEDURE 3 */
DROP PROCEDURE IF EXISTS `eliminaLibro`;
DELIMITER //
CREATE PROCEDURE `eliminaLibro` (uISBN INT(11), uTitulo VARCHAR(50), uidGenero
INT(11), uidAutor INT(11))
BEGIN
  DELETE FROM Libros WHERE ISBN = uISBN AND Titulo = uTitulo AND idGenero =
uidGenero AND idAutor = uidAutor;
END //
DELIMITER ;
