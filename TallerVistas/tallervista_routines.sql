-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tallervista
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `vista_proveedores_partes`
--

DROP TABLE IF EXISTS `vista_proveedores_partes`;
/*!50001 DROP VIEW IF EXISTS `vista_proveedores_partes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_proveedores_partes` AS SELECT 
 1 AS `ProveedorID`,
 1 AS `NombreProveedor`,
 1 AS `ParteID`,
 1 AS `NombreParte`,
 1 AS `CantidadUtilizada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_partes_mas_utilizadas`
--

DROP TABLE IF EXISTS `vista_partes_mas_utilizadas`;
/*!50001 DROP VIEW IF EXISTS `vista_partes_mas_utilizadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_partes_mas_utilizadas` AS SELECT 
 1 AS `ParteID`,
 1 AS `NombreParte`,
 1 AS `CantidadTotalUtilizada`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_proveedores_por_estado`
--

DROP TABLE IF EXISTS `vista_proveedores_por_estado`;
/*!50001 DROP VIEW IF EXISTS `vista_proveedores_por_estado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_proveedores_por_estado` AS SELECT 
 1 AS `Estado`,
 1 AS `NumeroDeProveedores`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_partes_por_ciudad`
--

DROP TABLE IF EXISTS `vista_partes_por_ciudad`;
/*!50001 DROP VIEW IF EXISTS `vista_partes_por_ciudad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_partes_por_ciudad` AS SELECT 
 1 AS `Ciudad`,
 1 AS `NombreParte`,
 1 AS `CantidadTotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_total_partes_por_proveedor`
--

DROP TABLE IF EXISTS `vista_total_partes_por_proveedor`;
/*!50001 DROP VIEW IF EXISTS `vista_total_partes_por_proveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_total_partes_por_proveedor` AS SELECT 
 1 AS `ProveedorID`,
 1 AS `NombreProveedor`,
 1 AS `TotalPartesSuministradas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_proveedores_partes`
--

/*!50001 DROP VIEW IF EXISTS `vista_proveedores_partes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_proveedores_partes` AS select `p`.`ProveedorID` AS `ProveedorID`,`p`.`Nombre` AS `NombreProveedor`,`pa`.`ParteID` AS `ParteID`,`pa`.`Nombre` AS `NombreParte`,`t`.`CantidadUtilizada` AS `CantidadUtilizada` from ((`taller` `t` join `proveedores` `p` on((`t`.`ProveedorID` = `p`.`ProveedorID`))) join `partes` `pa` on((`t`.`ParteID` = `pa`.`ParteID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_partes_mas_utilizadas`
--

/*!50001 DROP VIEW IF EXISTS `vista_partes_mas_utilizadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_partes_mas_utilizadas` AS select `pa`.`ParteID` AS `ParteID`,`pa`.`Nombre` AS `NombreParte`,sum(`t`.`CantidadUtilizada`) AS `CantidadTotalUtilizada` from (`taller` `t` join `partes` `pa` on((`t`.`ParteID` = `pa`.`ParteID`))) group by `pa`.`ParteID`,`pa`.`Nombre` order by `CantidadTotalUtilizada` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_proveedores_por_estado`
--

/*!50001 DROP VIEW IF EXISTS `vista_proveedores_por_estado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_proveedores_por_estado` AS select `proveedores`.`Estado` AS `Estado`,count(`proveedores`.`ProveedorID`) AS `NumeroDeProveedores` from `proveedores` group by `proveedores`.`Estado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_partes_por_ciudad`
--

/*!50001 DROP VIEW IF EXISTS `vista_partes_por_ciudad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_partes_por_ciudad` AS select `pa`.`Ciudad` AS `Ciudad`,`pa`.`Nombre` AS `NombreParte`,sum(`t`.`CantidadUtilizada`) AS `CantidadTotal` from (`taller` `t` join `partes` `pa` on((`t`.`ParteID` = `pa`.`ParteID`))) group by `pa`.`Ciudad`,`pa`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_total_partes_por_proveedor`
--

/*!50001 DROP VIEW IF EXISTS `vista_total_partes_por_proveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_total_partes_por_proveedor` AS select `p`.`ProveedorID` AS `ProveedorID`,`p`.`Nombre` AS `NombreProveedor`,sum(`t`.`CantidadUtilizada`) AS `TotalPartesSuministradas` from (`taller` `t` join `proveedores` `p` on((`t`.`ProveedorID` = `p`.`ProveedorID`))) group by `p`.`ProveedorID`,`p`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-12 23:52:36
