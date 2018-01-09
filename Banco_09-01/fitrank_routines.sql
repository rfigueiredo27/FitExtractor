-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: albali.eic.cefet-rj.br    Database: fitrank
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `bd_ativ_pos`
--

DROP TABLE IF EXISTS `bd_ativ_pos`;
/*!50001 DROP VIEW IF EXISTS `bd_ativ_pos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bd_ativ_pos` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nome_usuario`,
 1 AS `id_app`,
 1 AS `nome_app`,
 1 AS `id_atividade`,
 1 AS `modalidade`,
 1 AS `desc_atividade`,
 1 AS `duracao_decimal`,
 1 AS `distancia`,
 1 AS `duracao`,
 1 AS `velocidade_media`,
 1 AS `ritmo_medio`,
 1 AS `caloria_aproximada`,
 1 AS `data_publicacao`,
 1 AS `horario`,
 1 AS `id_periodo`,
 1 AS `desc_periodo`,
 1 AS `url_atividade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bd_atividades`
--

DROP TABLE IF EXISTS `bd_atividades`;
/*!50001 DROP VIEW IF EXISTS `bd_atividades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bd_atividades` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nome_usuario`,
 1 AS `id_app`,
 1 AS `nome_app`,
 1 AS `id_atividade`,
 1 AS `modalidade`,
 1 AS `desc_atividade`,
 1 AS `duracao_decimal`,
 1 AS `distancia`,
 1 AS `duracao`,
 1 AS `velocidade_media`,
 1 AS `ritmo_medio`,
 1 AS `caloria_aproximada`,
 1 AS `data_publicacao`,
 1 AS `horario`,
 1 AS `id_periodo`,
 1 AS `desc_periodo`,
 1 AS `url_atividade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `consolidado`
--

DROP TABLE IF EXISTS `consolidado`;
/*!50001 DROP VIEW IF EXISTS `consolidado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `consolidado` AS SELECT 
 1 AS `nome`,
 1 AS `data_cadastro`,
 1 AS `primeira_publicacao`,
 1 AS `atividades_pos`,
 1 AS `dias_pos_fitrank`,
 1 AS `dias_a_cada_ativ_pos`,
 1 AS `atividades_ciclismo_pos`,
 1 AS `atividades_caminhadas_pos`,
 1 AS `atividades_corridas_pos`,
 1 AS `atividades_pre`,
 1 AS `dias_pre_fitrank`,
 1 AS `dias_a_cada_ativ_pre`,
 1 AS `atividades_ciclismo_pre`,
 1 AS `atividades_caminhadas_pre`,
 1 AS `atividades_corridas_pre`,
 1 AS `total_atividades`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pre_fitrank`
--

DROP TABLE IF EXISTS `pre_fitrank`;
/*!50001 DROP VIEW IF EXISTS `pre_fitrank`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pre_fitrank` AS SELECT 
 1 AS `atividades_pre`,
 1 AS `nome`,
 1 AS `id_usuario_pre`,
 1 AS `data_cadastro`,
 1 AS `primeira_publicacao`,
 1 AS `dias_pre_fitrank`,
 1 AS `dias_a_cada_ativ_pre`,
 1 AS `atividades_ciclismo_pre`,
 1 AS `atividades_caminhadas_pre`,
 1 AS `atividades_corridas_pre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bd_atividades_completo`
--

DROP TABLE IF EXISTS `bd_atividades_completo`;
/*!50001 DROP VIEW IF EXISTS `bd_atividades_completo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `bd_atividades_completo` AS SELECT 
 1 AS `id_usuario`,
 1 AS `nome_usuario`,
 1 AS `id_app`,
 1 AS `nome_app`,
 1 AS `id_atividade`,
 1 AS `modalidade`,
 1 AS `desc_atividade`,
 1 AS `duracao_decimal`,
 1 AS `distancia`,
 1 AS `duracao`,
 1 AS `velocidade_media`,
 1 AS `ritmo_medio`,
 1 AS `caloria_aproximada`,
 1 AS `data_publicacao`,
 1 AS `horario`,
 1 AS `id_periodo`,
 1 AS `desc_periodo`,
 1 AS `url_atividade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `pos_fitrank`
--

DROP TABLE IF EXISTS `pos_fitrank`;
/*!50001 DROP VIEW IF EXISTS `pos_fitrank`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `pos_fitrank` AS SELECT 
 1 AS `atividades_pos`,
 1 AS `nome`,
 1 AS `id_usuario_pos`,
 1 AS `data_cadastro`,
 1 AS `ultima_publicacao`,
 1 AS `dias_pos_fitrank`,
 1 AS `dias_a_cada_ativ_pos`,
 1 AS `atividades_ciclismo_pos`,
 1 AS `atividades_caminhadas_pos`,
 1 AS `atividades_corridas_pos`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `bd_ativ_pos`
--

/*!50001 DROP VIEW IF EXISTS `bd_ativ_pos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bd_ativ_pos` AS select `p`.`id_usuario` AS `id_usuario`,`p`.`nome` AS `nome_usuario`,`a`.`id_aplicativo` AS `id_app`,`a`.`nome` AS `nome_app`,`c`.`id_course` AS `id_atividade`,`pf`.`modalidade` AS `modalidade`,(case `pf`.`modalidade` when 'B' then 'CICLISMO' when 'R' then 'CORRIDA' when 'W' then 'CAMINHADA' end) AS `desc_atividade`,`pf`.`duracao` AS `duracao_decimal`,`pf`.`distancia_percorrida` AS `distancia`,cast(sec_to_time(((`pf`.`duracao` * 3600) + 0)) as char charset utf8) AS `duracao`,(`pf`.`distancia_percorrida` / `pf`.`duracao`) AS `velocidade_media`,(cast(sec_to_time(((`pf`.`duracao` * 3600) + 0)) as char charset utf8) / `pf`.`distancia_percorrida`) AS `ritmo_medio`,(case `pf`.`modalidade` when 'B' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 60) as signed) when 'W' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 75) as signed) when 'R' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 90) as signed) end) AS `caloria_aproximada`,`pf`.`data_publicacao` AS `data_publicacao`,cast(`pf`.`data_publicacao` as time) AS `horario`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 0 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 1 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 2 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 3 end) AS `id_periodo`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 'MADRUGADA' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 'MANHÃ' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 'TARDE' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 'NOITE' end) AS `desc_periodo`,`pf`.`url` AS `url_atividade` from (((`course` `c` join `post_fitness` `pf` on((`c`.`id_post` = `pf`.`id_publicacao`))) join `aplicativo` `a` on((`pf`.`id_app` = `a`.`id_aplicativo`))) join `pessoa` `p` on((`pf`.`id_pessoa` = `p`.`id_usuario`))) where (exists(select 1 from `atividades` where (`c`.`id_course` = `atividades`.`id_atividade_fitrank`)) and (cast(`pf`.`data_publicacao` as time) <> '00:00:00')) order by `pf`.`data_publicacao` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bd_atividades`
--

/*!50001 DROP VIEW IF EXISTS `bd_atividades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bd_atividades` AS select `p`.`id_usuario` AS `id_usuario`,`p`.`nome` AS `nome_usuario`,`a`.`id_aplicativo` AS `id_app`,`a`.`nome` AS `nome_app`,`c`.`id_course` AS `id_atividade`,`pf`.`modalidade` AS `modalidade`,(case `pf`.`modalidade` when 'B' then 'CICLISMO' when 'R' then 'CORRIDA' when 'W' then 'CAMINHADA' end) AS `desc_atividade`,`pf`.`duracao` AS `duracao_decimal`,`pf`.`distancia_percorrida` AS `distancia`,sec_to_time((`pf`.`duracao` * 3600)) AS `duracao`,(`pf`.`distancia_percorrida` / `pf`.`duracao`) AS `velocidade_media`,sec_to_time(((`pf`.`duracao` * 3600) / `pf`.`distancia_percorrida`)) AS `ritmo_medio`,(case `pf`.`modalidade` when 'B' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 60) as signed) when 'W' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 75) as signed) when 'R' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 90) as signed) end) AS `caloria_aproximada`,`pf`.`data_publicacao` AS `data_publicacao`,cast(`pf`.`data_publicacao` as time) AS `horario`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 0 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 1 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 2 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 3 end) AS `id_periodo`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 'MADRUGADA' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 'MANHÃ' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 'TARDE' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 'NOITE' end) AS `desc_periodo`,`pf`.`url` AS `url_atividade` from (((`course` `c` join `post_fitness` `pf` on((`c`.`id_post` = `pf`.`id_publicacao`))) join `aplicativo` `a` on((`pf`.`id_app` = `a`.`id_aplicativo`))) join `pessoa` `p` on((`pf`.`id_pessoa` = `p`.`id_usuario`))) where (not(exists(select 1 from `atividades` where (`c`.`id_course` = `atividades`.`id_atividade_fitrank`)))) order by `pf`.`data_publicacao` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `consolidado`
--

/*!50001 DROP VIEW IF EXISTS `consolidado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `consolidado` AS select `pre_fitrank`.`nome` AS `nome`,`pre_fitrank`.`data_cadastro` AS `data_cadastro`,`pre_fitrank`.`primeira_publicacao` AS `primeira_publicacao`,`pos_fitrank`.`atividades_pos` AS `atividades_pos`,`pos_fitrank`.`dias_pos_fitrank` AS `dias_pos_fitrank`,`pos_fitrank`.`dias_a_cada_ativ_pos` AS `dias_a_cada_ativ_pos`,`pos_fitrank`.`atividades_ciclismo_pos` AS `atividades_ciclismo_pos`,`pos_fitrank`.`atividades_caminhadas_pos` AS `atividades_caminhadas_pos`,`pos_fitrank`.`atividades_corridas_pos` AS `atividades_corridas_pos`,`pre_fitrank`.`atividades_pre` AS `atividades_pre`,`pre_fitrank`.`dias_pre_fitrank` AS `dias_pre_fitrank`,`pre_fitrank`.`dias_a_cada_ativ_pre` AS `dias_a_cada_ativ_pre`,`pre_fitrank`.`atividades_ciclismo_pre` AS `atividades_ciclismo_pre`,`pre_fitrank`.`atividades_caminhadas_pre` AS `atividades_caminhadas_pre`,`pre_fitrank`.`atividades_corridas_pre` AS `atividades_corridas_pre`,(`pos_fitrank`.`atividades_pos` + `pre_fitrank`.`atividades_pre`) AS `total_atividades` from (`pos_fitrank` join `pre_fitrank`) where (`pos_fitrank`.`id_usuario_pos` = `pre_fitrank`.`id_usuario_pre`) order by (`pos_fitrank`.`atividades_pos` + `pre_fitrank`.`atividades_pre`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pre_fitrank`
--

/*!50001 DROP VIEW IF EXISTS `pre_fitrank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pre_fitrank` AS select count(`pf`.`id_publicacao`) AS `atividades_pre`,`p`.`nome` AS `nome`,`p`.`id_usuario` AS `id_usuario_pre`,cast(`p`.`data_cadastro` as date) AS `data_cadastro`,min(cast(`pf`.`data_publicacao` as date)) AS `primeira_publicacao`,(to_days(cast(`p`.`data_cadastro` as date)) - to_days(min(cast(`pf`.`data_publicacao` as date)))) AS `dias_pre_fitrank`,((to_days(cast(`p`.`data_cadastro` as date)) - to_days(min(cast(`pf`.`data_publicacao` as date)))) / count(`pf`.`id_publicacao`)) AS `dias_a_cada_ativ_pre`,(select count(`pf_bikes`.`id_publicacao`) from `post_fitness` `pf_bikes` where ((`pf_bikes`.`id_pessoa` = `p`.`id_usuario`) and (`pf_bikes`.`modalidade` = 'B') and (cast(`pf_bikes`.`data_publicacao` as date) < cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_ciclismo_pre`,(select count(`pf_walks`.`id_publicacao`) from `post_fitness` `pf_walks` where ((`pf_walks`.`id_pessoa` = `p`.`id_usuario`) and (`pf_walks`.`modalidade` = 'W') and (cast(`pf_walks`.`data_publicacao` as date) < cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_caminhadas_pre`,(select count(`pf_runs`.`id_publicacao`) from `post_fitness` `pf_runs` where ((`pf_runs`.`id_pessoa` = `p`.`id_usuario`) and (`pf_runs`.`modalidade` = 'R') and (cast(`pf_runs`.`data_publicacao` as date) < cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_corridas_pre` from (`post_fitness` `pf` join `pessoa` `p`) where ((`pf`.`id_pessoa` = `p`.`id_usuario`) and (cast(`pf`.`data_publicacao` as date) < cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bd_atividades_completo`
--

/*!50001 DROP VIEW IF EXISTS `bd_atividades_completo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `bd_atividades_completo` AS select `p`.`id_usuario` AS `id_usuario`,`p`.`nome` AS `nome_usuario`,`a`.`id_aplicativo` AS `id_app`,`a`.`nome` AS `nome_app`,`c`.`id_course` AS `id_atividade`,`pf`.`modalidade` AS `modalidade`,(case `pf`.`modalidade` when 'B' then 'CICLISMO' when 'R' then 'CORRIDA' when 'W' then 'CAMINHADA' end) AS `desc_atividade`,`pf`.`duracao` AS `duracao_decimal`,`pf`.`distancia_percorrida` AS `distancia`,sec_to_time((`pf`.`duracao` * 3600)) AS `duracao`,(`pf`.`distancia_percorrida` / `pf`.`duracao`) AS `velocidade_media`,sec_to_time(((`pf`.`duracao` * 3600) / `pf`.`distancia_percorrida`)) AS `ritmo_medio`,(case `pf`.`modalidade` when 'B' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 60) as signed) when 'W' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 75) as signed) when 'R' then cast(((`pf`.`duracao` * (`pf`.`distancia_percorrida` / `pf`.`duracao`)) * 90) as signed) end) AS `caloria_aproximada`,`pf`.`data_publicacao` AS `data_publicacao`,cast(`pf`.`data_publicacao` as time) AS `horario`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 0 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 1 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 2 when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 3 end) AS `id_periodo`,(case when cast((hour(cast(`pf`.`data_publicacao` as time)) < 6) as signed) then 'MADRUGADA' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 6 and 11) as signed) then 'MANHÃ' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 12 and 17) as signed) then 'TARDE' when cast((hour(cast(`pf`.`data_publicacao` as time)) between 18 and 23) as signed) then 'NOITE' end) AS `desc_periodo`,`pf`.`url` AS `url_atividade` from (((`course` `c` join `post_fitness` `pf` on((`c`.`id_post` = `pf`.`id_publicacao`))) join `aplicativo` `a` on((`pf`.`id_app` = `a`.`id_aplicativo`))) join `pessoa` `p` on((`pf`.`id_pessoa` = `p`.`id_usuario`))) where ((not(exists(select 1 from `atividades` where (`c`.`id_course` = `atividades`.`id_atividade_fitrank`)))) and (cast(`pf`.`data_publicacao` as time) <> '00:00:00')) order by `pf`.`data_publicacao` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pos_fitrank`
--

/*!50001 DROP VIEW IF EXISTS `pos_fitrank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`fitrank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pos_fitrank` AS select count(`pf`.`id_publicacao`) AS `atividades_pos`,`p`.`nome` AS `nome`,`p`.`id_usuario` AS `id_usuario_pos`,cast(`p`.`data_cadastro` as date) AS `data_cadastro`,max(cast(`pf`.`data_publicacao` as date)) AS `ultima_publicacao`,(to_days(curdate()) - to_days(cast(`p`.`data_cadastro` as date))) AS `dias_pos_fitrank`,((to_days(curdate()) - to_days(cast(`p`.`data_cadastro` as date))) / count(`pf`.`id_publicacao`)) AS `dias_a_cada_ativ_pos`,(select count(`pf_bikes`.`id_publicacao`) from `post_fitness` `pf_bikes` where ((`pf_bikes`.`id_pessoa` = `p`.`id_usuario`) and (`pf_bikes`.`modalidade` = 'B') and (cast(`pf_bikes`.`data_publicacao` as date) >= cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_ciclismo_pos`,(select count(`pf_walks`.`id_publicacao`) from `post_fitness` `pf_walks` where ((`pf_walks`.`id_pessoa` = `p`.`id_usuario`) and (`pf_walks`.`modalidade` = 'W') and (cast(`pf_walks`.`data_publicacao` as date) >= cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_caminhadas_pos`,(select count(`pf_runs`.`id_publicacao`) from `post_fitness` `pf_runs` where ((`pf_runs`.`id_pessoa` = `p`.`id_usuario`) and (`pf_runs`.`modalidade` = 'R') and (cast(`pf_runs`.`data_publicacao` as date) >= cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario`) AS `atividades_corridas_pos` from (`post_fitness` `pf` join `pessoa` `p`) where ((`pf`.`id_pessoa` = `p`.`id_usuario`) and (cast(`pf`.`data_publicacao` as date) >= cast(`p`.`data_cadastro` as date))) group by `p`.`id_usuario` */;
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

-- Dump completed on 2018-01-09  6:44:56
