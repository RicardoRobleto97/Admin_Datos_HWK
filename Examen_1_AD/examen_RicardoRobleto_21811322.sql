

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aperturacierrecaja
-- ----------------------------
DROP TABLE IF EXISTS `aperturacierrecaja`;
CREATE TABLE `aperturacierrecaja`  (
  `idAperturaCierreCaja` bigint NOT NULL AUTO_INCREMENT,
  `fechaHoraApertura` datetime(0) NULL DEFAULT NULL,
  `fechaHoraCierre` datetime(0) NULL DEFAULT NULL,
  `idEmpleado` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idAperturaCierreCaja`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of aperturacierrecaja
-- ----------------------------
INSERT INTO `aperturacierrecaja` VALUES (1, '2023-02-18 23:17:09', '2023-02-18 23:17:14', 10);
INSERT INTO `aperturacierrecaja` VALUES (2, '2023-02-18 23:17:09', '2023-02-18 23:17:09', 10);
INSERT INTO `aperturacierrecaja` VALUES (3, '2023-02-18 23:17:09', '2023-02-18 23:17:09', 10);
INSERT INTO `aperturacierrecaja` VALUES (4, '2023-02-18 23:17:09', '0000-00-00 00:00:00', 10);
INSERT INTO `aperturacierrecaja` VALUES (5, '2023-02-18 23:17:09', '0000-00-00 00:00:00', 10);
INSERT INTO `aperturacierrecaja` VALUES (6, '2023-02-18 23:17:09', '0000-00-00 00:00:00', 10);
INSERT INTO `aperturacierrecaja` VALUES (7, '2023-02-18 23:17:09', '2023-02-14 23:18:00', 10);
INSERT INTO `aperturacierrecaja` VALUES (8, '2023-02-18 23:17:09', '2023-03-01 23:18:03', 10);
INSERT INTO `aperturacierrecaja` VALUES (9, '2023-02-18 23:17:09', '2023-02-21 23:18:06', 10);
INSERT INTO `aperturacierrecaja` VALUES (10, '2023-02-18 23:17:09', '2023-02-28 23:18:09', 10);

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `idCliente` bigint NOT NULL AUTO_INCREMENT,
  `nombreCliente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefono` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `limiteCredito` float NULL DEFAULT NULL,
  PRIMARY KEY (`idCliente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Ricardo1', '97777834', 150);
INSERT INTO `clientes` VALUES (2, 'Ricardo2', '97777834', 160);
INSERT INTO `clientes` VALUES (3, 'Ricardo3', '97777834', 170);
INSERT INTO `clientes` VALUES (4, 'Ricardo4', '97777834', 180);
INSERT INTO `clientes` VALUES (5, 'Ricardo5', '97777834', 190);
INSERT INTO `clientes` VALUES (6, 'Ricardo6', '97777834', 200);
INSERT INTO `clientes` VALUES (7, 'Ricardo7', '97777834', 210);
INSERT INTO `clientes` VALUES (8, 'Ricardo8', '97777834', 220);
INSERT INTO `clientes` VALUES (9, 'Ricardo9', '97777834', 230);
INSERT INTO `clientes` VALUES (10, 'Ricardo10', '97777834', 240);
INSERT INTO `clientes` VALUES (11, 'Ricardo11', '97777834', 250);

-- ----------------------------
-- Table structure for compras
-- ----------------------------
DROP TABLE IF EXISTS `compras`;
CREATE TABLE `compras`  (
  `idCompra` bigint NOT NULL AUTO_INCREMENT,
  `fechaCompra` datetime(0) NULL DEFAULT NULL,
  `idCliente` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idCompra`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of compras
-- ----------------------------
INSERT INTO `compras` VALUES (1, '2023-02-18 23:13:27', 1);
INSERT INTO `compras` VALUES (2, '2023-02-18 23:13:27', 2);
INSERT INTO `compras` VALUES (3, '2023-02-18 23:13:27', 3);
INSERT INTO `compras` VALUES (4, '2023-02-18 23:13:27', 4);
INSERT INTO `compras` VALUES (5, '2023-02-18 23:13:27', 5);
INSERT INTO `compras` VALUES (6, '2023-02-18 23:13:27', 6);
INSERT INTO `compras` VALUES (7, '2023-02-18 23:13:27', 7);
INSERT INTO `compras` VALUES (8, '2023-02-18 23:13:27', 8);
INSERT INTO `compras` VALUES (9, '2023-02-18 23:13:27', 9);
INSERT INTO `compras` VALUES (10, '2023-02-18 23:13:27', 10);

-- ----------------------------
-- Table structure for detalle_compra
-- ----------------------------
DROP TABLE IF EXISTS `detalle_compra`;
CREATE TABLE `detalle_compra`  (
  `idDetalleCompra` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int NULL DEFAULT NULL,
  `precioVenta` float NULL DEFAULT NULL,
  `idProducto` bigint NULL DEFAULT NULL,
  `idCompra` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalleCompra`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_compra
-- ----------------------------
INSERT INTO `detalle_compra` VALUES (1, 23242, 1, 1, 1);
INSERT INTO `detalle_compra` VALUES (2, 23242, 2, 2, 2);
INSERT INTO `detalle_compra` VALUES (3, 23242, 3, 3, 3);
INSERT INTO `detalle_compra` VALUES (4, 23242, 4, 4, 4);
INSERT INTO `detalle_compra` VALUES (5, 23242, 5, 5, 5);
INSERT INTO `detalle_compra` VALUES (6, 23242, 6, 6, 6);
INSERT INTO `detalle_compra` VALUES (7, 23242, 7, 7, 7);
INSERT INTO `detalle_compra` VALUES (8, 23242, 8, 8, 8);
INSERT INTO `detalle_compra` VALUES (9, 23242, 9, 9, 9);
INSERT INTO `detalle_compra` VALUES (10, 23242, 10, 10, 10);

-- ----------------------------
-- Table structure for detalle_ventas
-- ----------------------------
DROP TABLE IF EXISTS `detalle_ventas`;
CREATE TABLE `detalle_ventas`  (
  `idDetalleVenta` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int NULL DEFAULT NULL,
  `precioVenta` float NULL DEFAULT NULL,
  `idProducto` bigint NULL DEFAULT NULL,
  `idAperturaCierreCaja` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalleVenta`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of detalle_ventas
-- ----------------------------
INSERT INTO `detalle_ventas` VALUES (1, 242, 1, 1, NULL);
INSERT INTO `detalle_ventas` VALUES (2, 243, 2, 2, NULL);
INSERT INTO `detalle_ventas` VALUES (3, 244, 3, 3, NULL);
INSERT INTO `detalle_ventas` VALUES (4, 245, 4, 4, NULL);
INSERT INTO `detalle_ventas` VALUES (5, 246, 5, 5, NULL);
INSERT INTO `detalle_ventas` VALUES (6, 247, 6, 6, NULL);
INSERT INTO `detalle_ventas` VALUES (7, 248, 7, 7, NULL);
INSERT INTO `detalle_ventas` VALUES (8, 249, 8, 8, NULL);
INSERT INTO `detalle_ventas` VALUES (9, 250, 9, 9, NULL);
INSERT INTO `detalle_ventas` VALUES (10, 251, 10, 10, NULL);

-- ----------------------------
-- Table structure for gasto_casa
-- ----------------------------
DROP TABLE IF EXISTS `gasto_casa`;
CREATE TABLE `gasto_casa`  (
  `idGastoCasa` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaGasto` datetime(0) NULL DEFAULT NULL,
  `montoGasto` float NULL DEFAULT NULL,
  PRIMARY KEY (`idGastoCasa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gasto_casa
-- ----------------------------
INSERT INTO `gasto_casa` VALUES (1, NULL, '2023-02-18 23:26:24', 125);
INSERT INTO `gasto_casa` VALUES (2, NULL, '2023-02-15 23:26:30', 225);
INSERT INTO `gasto_casa` VALUES (3, NULL, '2023-02-22 23:26:27', 325);
INSERT INTO `gasto_casa` VALUES (4, NULL, '2023-02-15 23:26:37', 425);
INSERT INTO `gasto_casa` VALUES (5, NULL, '2023-02-08 23:26:34', 525);
INSERT INTO `gasto_casa` VALUES (6, NULL, '2023-01-31 23:26:40', 625);
INSERT INTO `gasto_casa` VALUES (7, NULL, '2023-02-23 23:26:46', 725);
INSERT INTO `gasto_casa` VALUES (8, NULL, '2023-03-03 23:26:49', 825);
INSERT INTO `gasto_casa` VALUES (9, NULL, '2023-02-16 23:26:43', 925);
INSERT INTO `gasto_casa` VALUES (10, NULL, '2023-02-22 23:26:53', 1025);

-- ----------------------------
-- Table structure for impuesto
-- ----------------------------
DROP TABLE IF EXISTS `impuesto`;
CREATE TABLE `impuesto`  (
  `idImpuesto` bigint NOT NULL AUTO_INCREMENT,
  `montoImpuesto` int NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idImpuesto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of impuesto
-- ----------------------------
INSERT INTO `impuesto` VALUES (1, 432, NULL);
INSERT INTO `impuesto` VALUES (2, 433, NULL);
INSERT INTO `impuesto` VALUES (3, 434, NULL);
INSERT INTO `impuesto` VALUES (4, 435, NULL);
INSERT INTO `impuesto` VALUES (5, 436, NULL);
INSERT INTO `impuesto` VALUES (6, 437, NULL);
INSERT INTO `impuesto` VALUES (7, 438, NULL);
INSERT INTO `impuesto` VALUES (8, 439, NULL);
INSERT INTO `impuesto` VALUES (9, 440, NULL);
INSERT INTO `impuesto` VALUES (10, 441, NULL);
INSERT INTO `impuesto` VALUES (11, 442, NULL);

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario`  (
  `idInventario` bigint NOT NULL AUTO_INCREMENT,
  `cantidad` int NULL DEFAULT NULL,
  `idProducto` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idInventario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of inventario
-- ----------------------------
INSERT INTO `inventario` VALUES (1, 242, 1);
INSERT INTO `inventario` VALUES (2, 243, 2);
INSERT INTO `inventario` VALUES (3, 244, 3);
INSERT INTO `inventario` VALUES (4, 245, 4);
INSERT INTO `inventario` VALUES (5, 246, 5);
INSERT INTO `inventario` VALUES (6, 247, 6);
INSERT INTO `inventario` VALUES (7, 248, 7);
INSERT INTO `inventario` VALUES (8, 249, 8);
INSERT INTO `inventario` VALUES (9, 250, 9);
INSERT INTO `inventario` VALUES (10, 251, 10);
INSERT INTO `inventario` VALUES (11, 252, 11);

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago`  (
  `idPago` bigint NOT NULL AUTO_INCREMENT,
  `idCliente` bigint NULL DEFAULT NULL,
  `fechaPago` datetime(0) NULL DEFAULT NULL,
  `montoPago` float NULL DEFAULT NULL,
  PRIMARY KEY (`idPago`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pago
-- ----------------------------
INSERT INTO `pago` VALUES (1, NULL, '2023-02-18 23:20:46', 54);
INSERT INTO `pago` VALUES (2, NULL, '2023-02-18 23:21:14', 1);
INSERT INTO `pago` VALUES (3, NULL, '2023-02-18 23:21:17', 2);
INSERT INTO `pago` VALUES (4, NULL, '2023-02-18 23:21:20', 3);
INSERT INTO `pago` VALUES (5, NULL, '2023-02-18 23:21:23', 4);
INSERT INTO `pago` VALUES (6, NULL, '2023-02-06 23:21:29', 5);
INSERT INTO `pago` VALUES (7, NULL, '2023-02-22 23:21:26', 6);
INSERT INTO `pago` VALUES (8, NULL, '2023-03-07 23:21:32', 7);
INSERT INTO `pago` VALUES (9, NULL, '2023-02-15 23:21:36', 8);
INSERT INTO `pago` VALUES (10, NULL, '2023-02-17 23:21:40', 9);
INSERT INTO `pago` VALUES (11, NULL, '2023-02-17 23:21:44', 10);

-- ----------------------------
-- Table structure for pago_negocio
-- ----------------------------
DROP TABLE IF EXISTS `pago_negocio`;
CREATE TABLE `pago_negocio`  (
  `idPagoNegocio` bigint NOT NULL AUTO_INCREMENT,
  `descripcionPago` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fechaPago` datetime(0) NULL DEFAULT NULL,
  `montoPago` float NULL DEFAULT NULL,
  PRIMARY KEY (`idPagoNegocio`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pago_negocio
-- ----------------------------
INSERT INTO `pago_negocio` VALUES (1, NULL, '2023-02-18 23:25:03', 432);
INSERT INTO `pago_negocio` VALUES (2, NULL, '2023-02-18 23:25:10', 433);
INSERT INTO `pago_negocio` VALUES (3, NULL, '2023-02-19 23:25:06', 434);
INSERT INTO `pago_negocio` VALUES (4, NULL, '2023-02-22 23:25:17', 435);
INSERT INTO `pago_negocio` VALUES (5, NULL, '2023-03-01 23:25:13', 436);
INSERT INTO `pago_negocio` VALUES (6, NULL, '2023-02-24 23:25:24', 437);
INSERT INTO `pago_negocio` VALUES (7, NULL, '2023-02-28 23:25:20', 438);
INSERT INTO `pago_negocio` VALUES (8, NULL, '2023-02-10 23:25:31', 439);
INSERT INTO `pago_negocio` VALUES (9, NULL, '2023-02-08 23:25:28', 440);
INSERT INTO `pago_negocio` VALUES (10, NULL, '2023-02-21 23:25:35', 441);

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `idProducto` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `precioCompra` float NULL DEFAULT NULL,
  `idProveedor` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`idProducto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, 'Mango1', 150, 1);
INSERT INTO `productos` VALUES (2, 'Mango2', 160, 2);
INSERT INTO `productos` VALUES (3, 'Mango3', 170, 3);
INSERT INTO `productos` VALUES (4, 'Mango4', 180, 4);
INSERT INTO `productos` VALUES (5, 'Mango5', 190, 5);
INSERT INTO `productos` VALUES (6, 'Mango6', 200, 6);
INSERT INTO `productos` VALUES (7, 'Mango7', 210, 7);
INSERT INTO `productos` VALUES (8, 'Mango8', 220, 8);
INSERT INTO `productos` VALUES (9, 'Mango9', 230, 9);
INSERT INTO `productos` VALUES (10, 'Mango10', 240, 10);

-- ----------------------------
-- Table structure for proveedor
-- ----------------------------
DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE `proveedor`  (
  `idProveedor` bigint NOT NULL AUTO_INCREMENT,
  `nombreProveedor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idProveedor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of proveedor
-- ----------------------------
INSERT INTO `proveedor` VALUES (1, 'Yummy2', '97777834');
INSERT INTO `proveedor` VALUES (2, 'Yummy3', '97777834');
INSERT INTO `proveedor` VALUES (3, 'Yummy4', '97777834');
INSERT INTO `proveedor` VALUES (4, 'Yummy5', '97777834');
INSERT INTO `proveedor` VALUES (5, 'Yummy6', '97777834');
INSERT INTO `proveedor` VALUES (6, 'Yummy7', '97777834');
INSERT INTO `proveedor` VALUES (7, 'Yummy8', '97777834');
INSERT INTO `proveedor` VALUES (8, 'Yummy9', '97777834');
INSERT INTO `proveedor` VALUES (9, 'Yummy10', '97777834');
INSERT INTO `proveedor` VALUES (10, 'Yummy11', '97777834');
INSERT INTO `proveedor` VALUES (11, 'Yummy12', '97777834');

SET FOREIGN_KEY_CHECKS = 1;
