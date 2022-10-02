#crear insercion de datos en la tabla cliente y persona
DELIMITER //
CREATE PROCEDURE insertarCliente(
    IN v_codigoUnico VARCHAR(32),
    IN v_rfc VARCHAR(13),
    IN v_correo VARCHAR(50),
    IN v_nombre VARCHAR(50),
    IN v_apellidoPaterno VARCHAR(50),
    IN v_apellidoMaterno VARCHAR(50),
    IN v_genero VARCHAR(1),
    IN v_telMovil VARCHAR(10),
    IN v_telCasa VARCHAR(10)
)
BEGIN
INSERT INTO cliente(codigoUnico) VALUES(v_codigoUnico);
INSERT INTO persona(rfc,correo,nombre,apellidoPaterno,apellidoMaterno,genero,telMovil,telCasa,cliente_id) VALUES(v_rfc,v_correo,v_nombre,v_apellidoPaterno,v_apellidoMaterno,v_genero,v_telMovil,v_telCasa,cliente_id);
END //
DELIMITER ;

CALL insertarCliente('12132ddedce','1234567890123','urieher@gmail.com','Uriel','Hernandez','Garcia','M','1234567890','1234567890');