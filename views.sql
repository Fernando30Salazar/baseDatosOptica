CREATE VIEW cliente_persona AS (
SELECT 
    c.id idCliente,
    c.codigoUnico codigoUnicoCliente,
    c.estatus estatusCliente,
    p.id idPersona,
    p.rfc rfcPersona,
    p.correo correoPersona,
    p.nombre nombrePersona,
    p.apellidoPaterno apellidoPaternoPersona,
    p.apellidoMaterno apellidoMaternoPersona,
    p.genero generoPersona,
    p.telMovil telMovilPersona,
    p.telCasa telCasaPersona
FROM cliente c
INNER JOIN persona p ON c.id = p.cliente_id
);

# consulta con inner join de cliente y persona
SELECT * FROM cliente_persona;
