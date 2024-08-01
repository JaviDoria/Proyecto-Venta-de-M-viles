
CREATE TABLE venta_mobiles (
  TransactionID INT NOT NULL,
  DateSale DATE,
  MobileModel INT,
  Brand VARCHAR(100),
  Price INT,
  CustomerAge INT,
  CustomerGender VARCHAR(20),
  Location VARCHAR(50),
  PaymentMethod VARCHAR(30),
  UnitsSOLD INT(3),
  TotalRevenue INT(20)
);

#VISTA GENERAL DE LA TABLA
SELECT * 
FROM mobile_sales;

#CONTEO DE DÍAS DE VENTA
SELECT COUNT(DISTINCT(Date)) 
FROM mobile_sales;

#CONTEO TOTAL DE TRANSACCIONES
SELECT COUNT(DISTINCT(TransactionID)) 
FROM mobile_sales;

#PRIMERA VENTA
SELECT MIN(Date) 
FROM mobile_sales;

#VENTA MÁS RECIENTE
SELECT MAX(Date) 
FROM mobile_sales;

#EDAD MEDIA DE LOS CLIENTES
SELECT ROUND(AVG(CustomerAge),0) 
FROM mobile_sales;

#CLIENTE MÁS JOVEN
SELECT MIN(CustomerAge) 
FROM mobile_sales;

#CLIENTE DE MAYOR EDAD
SELECT MAX(CustomerAge) 
FROM mobile_sales;

#PRECIO MEDIO DE LOS MOVILES VENDIDOS
SELECT ROUND(AVG(Price),2) 
FROM mobile_sales;

#PRECIO MÍNIMO DE LOS MOVILES VENDIDOS
SELECT MIN(Price) 
FROM mobile_sales;

#PRECIO MÁXIMO DE LOS MOVILES VENDIDOS
SELECT MAX(Price) 
FROM mobile_sales;

#CONTEO DE TODOS LOS MODELOS DE MOVILES VENDIDOS
SELECT MobileModel,Brand, SUM(UnitsSOLD) AS Total
FROM mobile_sales
GROUP BY MobileModel, Brand;

#CUALES SON LOS MOVILES MÁS VENDIDOS
SELECT MobileModel, Brand, SUM(UnitsSOLD) AS Total_Vendidos
FROM mobile_sales
GROUP BY MobileModel, Brand
ORDER BY Total_Vendidos DESC;


#LISTA DE PRECIO EN ORDEN DESCENDENTE DE LOS MOVILES VENDIDOS
SELECT MobileModel,Brand, Price 
FROM mobile_sales
GROUP BY MobileModel, Brand, Price
ORDER BY Price DESC;

#CONTEO DE CLIENTES POR GÉNERO
SELECT CustomerGender AS Gender, COUNT(*) AS num_compras
FROM mobile_sales
GROUP BY Gender;

#CONTEO DE VENTAS POR MARCA DE MOVIL
SELECT Brand , SUM(UnitsSOLD) AS num_compras
FROM mobile_sales
GROUP BY Brand;

#DÍAS EN QUE SE VENDIARON MÁS MOVILES
SELECT Date, total_ventas
FROM (
    SELECT Date, SUM(UnitsSOLD) AS total_ventas
    FROM mobile_sales
    GROUP BY Date
) AS ventas_por_fecha
WHERE total_ventas = (
    SELECT MAX(total_ventas)
    FROM (
        SELECT SUM(UnitsSOLD) AS total_ventas
        FROM mobile_sales
        GROUP BY Date
    ) AS max_ventas
);

#DÍAS EN QUE SE VENDIERON MENOS MOVILES
SELECT Date, total_ventas
FROM (
    SELECT Date, SUM(UnitsSOLD) AS total_ventas
    FROM mobile_sales
    GROUP BY Date
) AS ventas_por_fecha
WHERE total_ventas = (
    SELECT MIN(total_ventas)
    FROM (
        SELECT SUM(UnitsSOLD) AS total_ventas
        FROM mobile_sales
        GROUP BY Date
    ) AS max_ventas
);

#CONTEO DE VENTAS POR MÉTODO DE PAGO
SELECT PaymentMethod,COUNT(*)
FROM mobile_sales
GROUP BY PaymentMethod;

#CONTEO DE VENTAS DE UNIDADES DE MOVILES POR LOCALIZACIÓN
SELECT Location, SUM(UnitsSOLD) AS Total_Ventas
FROM mobile_sales
GROUP BY Location
ORDER BY Total_Ventas DESC;

#IMPORTE TOTAL DE VENTAS EN DINERO POR FECHA
SELECT Date, TotalRevenue
FROM mobile_sales
GROUP BY Date, TotalRevenue
ORDER BY Date DESC;

#EL DÍA DE MÁS VENTA
SELECT Date, Total
FROM (
    SELECT Date, SUM(TotalRevenue) AS Total
    FROM mobile_sales
    GROUP BY Date
) AS Ventas_totales
WHERE Total = (
    SELECT MAX(Total)
    FROM (
        SELECT SUM(TotalRevenue) AS Total
        FROM mobile_sales
        GROUP BY Date
    ) AS Max_total
);

#EL DÍA DE MENOR VENTA
SELECT Date, Total
FROM (
    SELECT Date, SUM(TotalRevenue) AS Total
    FROM mobile_sales
    GROUP BY Date
) AS Ventas_totales
WHERE Total = (
    SELECT MIN(Total)
    FROM (
        SELECT SUM(TotalRevenue) AS Total
        FROM mobile_sales
        GROUP BY Date
    ) AS Max_total
);




















