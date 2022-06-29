USE Estudiante_34;

SELECT
	productos.Nombre AS Producto,
    clientes.Nombre AS Cliente,
    tipoTransacciones.Tipo AS Tipo_transaccion,
	proveedores.Nombre AS Proveedor,
    Cantidad,
    Fecha_movimiento
  
FROM 
	Hecho_Movimiento AS movimientos,
    Cliente AS clientes,
	Producto AS productos,
    TipoTransaccion AS tipoTransacciones,
    Proveedor AS proveedores
WHERE
	movimientos.Fecha_movimiento BETWEEN '1989-01-01' AND '1989-05-01'
    AND movimientos.ID_Cliente = clientes.ID_Cliente
    AND movimientos.ID_Producto = productos.ID_Producto
    AND movimientos.ID_proveedor = proveedores.ID_proveedor
    AND movimientos.ID_Tipo_transaccion = tipoTransacciones.ID_Tipo_transaccion;