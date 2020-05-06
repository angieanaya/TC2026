DROP PROCEDURE IF EXISTS `creaIncidente`;
DELIMITER // 
CREATE PROCEDURE `creaIncidente` (uidLugar INT(11), uidTipo INT(11))
BEGIN
	INSERT INTO incidentes(idLugar, idTipo) VALUES(uidLugar, uidTipo);
END //
DELIMITER ;