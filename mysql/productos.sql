CREATE DATABASE  IF NOT EXISTS `01_negocio`;
use 01_negocio;

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `prod_descripcion` varchar(55) NOT NULL,
  `prod_marca` varchar(55) NOT NULL,
  `prod_modelo` varchar(55) DEFAULT NULL,
  `prod_familia` varchar(55) DEFAULT NULL,
  `prod_precio` decimal(10,2) NOT NULL,
  `prod_fecha_precio` date NOT NULL,
  `prod_stock` int NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `productos` WRITE;
INSERT INTO `productos` VALUES (null, 'Disco externo 1 Tb usb', 'Seagate', 'FireCuda', 'Disco duro', 155.8, '2020-04-12', 11);
INSERT INTO `productos` VALUES (null, 'Cable HDMI 1.5m.', '', '', 'Cable', 12, '2018-05-14', 39);
INSERT INTO `productos` VALUES (null, 'PC X3456  i9 - 16Gb - 512 SSD', 'Dell', 'XPS', 'Sobremesa', 975, '2021-06-23', 5);
INSERT INTO `productos` VALUES (null, 'Teclado USB inalambrico', 'Logitech', 'T769X', 'Teclado', 22.5, '2020-12-08', 30);
INSERT INTO `productos` VALUES (null, 'Pen Drive 4 Gb USB 2.0', 'Toshiba', '4T', 'Memoria USB', 21.0, '2019-05-12', 0);
INSERT INTO `productos` VALUES (null, 'Disco 4Tb usb 3.0', 'Seagate', 'Barracuda', 'Disco duro', 315, '2020-07-30', 6);
INSERT INTO `productos` VALUES (null, 'Cable VGA', '', '', 'Cable', 4.5, '2019-03-16', 29);
INSERT INTO `productos` VALUES (null, 'Pen Drive 32 Gb USB 3.0', 'SanDisk', 'Ultra Flair', 'Memoria USB', 17.7, '2020-03-16', 16);
INSERT INTO `productos` VALUES (null, 'Pen Drive 16 Gb USB 2.0', 'SanDisk', 'Ultra Flair', 'Memoria USB', 12, '2020-06-04', 27);
INSERT INTO `productos` VALUES (null, 'Cable alimentacion PC', '', '', 'Cable', 3, '2019-10-01', 12);
INSERT INTO `productos` VALUES (null, 'Disco externo 2 Tb USB 3.0', 'Toshiba', 'TX12', 'Disco externo', 121, '2010-04-07', 2);
INSERT INTO `productos` VALUES (null, 'Portatil i7 - 14 - 16Gb - 512 SSD', 'Toshiba', 'X365B', 'Portatil', 1223, '2018-05-25', 20);
INSERT INTO `productos` VALUES (null, 'Portatil i5 - 15.6 - 8Gb - 1T HD', 'Acer', 'A678', 'Portatil', 875, '2019-04-16', 11);
INSERT INTO `productos` VALUES (null, 'IPad PRO 2020', 'Apple', 'Pro', 'Tablet', 1299, '2021-05-22', 26);
INSERT INTO `productos` VALUES (null, 'Portatil i7 -15.6 - 16Gb - 512 SSD', 'Asus', 'ZenBook', 'Portatil', 2150, '2021-03-10', 30);
INSERT INTO `productos` VALUES (null, 'Disco SATA3 SS5', 'Western Digital', 'Blue', 'Disco duro', 72, '2021-10-02', 16);
INSERT INTO `productos` VALUES (null, 'SSD Interna Crucial2 Tb 3d Nand SATA', 'Crucial', 'MX500', 'Disco SSD', 169.27, '2021-11-07', 92);
INSERT INTO `productos` VALUES (null, 'Cable USB Impresora', '', '', 'Cable', 3.3, '2021-11-18', 12);
INSERT INTO `productos` VALUES (null, 'Cable adaptador VGA/HDMI', '', '', 'Cable', 9.75, '2019-05-01', 26);
INSERT INTO `productos` VALUES (null, 'Pen Drive 64 Gb USB 3.0', 'Toshiba', '64-3', 'Memoria USB', 39, '2019-04-10', 29);
INSERT INTO `productos` VALUES (null, 'Pen Drive 128 Gb USB 3.0', 'Toshiba', '128-3', 'Memoria USB', 52.5, '2018-03-13', 21);
INSERT INTO `productos` VALUES (null, 'Disco externo 2.5" 4TB USB 3.0', 'Seagate', 'Expansion', 'Disco externo', 92.99, '2021-01-12', 31);
INSERT INTO `productos` VALUES (null, 'Raton USB inalambrico', 'Logitech', 'R456', 'Raton', 9.7, '2019-07-16', 10);
UNLOCK TABLES;
