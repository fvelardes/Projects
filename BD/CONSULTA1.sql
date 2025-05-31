CREATE PROCEDURE CONSULTA1 (IN paqueteId INT)
BEGIN
    -- Realiza la consulta con UNION para obtener eventos y lugares turísticos asociados al paquete
    SELECT DISTINCT P.IdPaquete, E.Nombre AS NombreEvento
    FROM PAQUETE P
    INNER JOIN CONTIENE C ON P.IdPaquete = C.PAQUETE_IdPaquete
    INNER JOIN EVENTO E ON C.EVENTO_IdEvento = E.IdEvento
    WHERE P.IdPaquete = paqueteId
    UNION
    SELECT P.IdPaquete, L.Nombre AS NombreLugar
    FROM PAQUETE P
    INNER JOIN REALIZA R ON P.IdPaquete = R.PAQUETE_IdPaquete
    INNER JOIN ACTIVIDAD A ON R.ACTIVIDAD_Id_Actividad = A.Id_Actividad
    INNER JOIN SE_REALIZAN_EN S ON A.Id_Actividad = S.ACTIVIDAD_Id_Actividad
    INNER JOIN LUGAR_TURÍSTICO L ON S.LUGAR_TURÍSTICO_IdLugarTuristico = L.IdLugarTuristico
    WHERE P.IdPaquete = paqueteId;
END
