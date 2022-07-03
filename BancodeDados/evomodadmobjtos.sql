-- MySQL dump 10.13  Distrib 5.6.26, for Win32 (x86)
--
-- Host: localhost    Database: evomodadm
-- ------------------------------------------------------
-- Server version	5.6.26
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'evomodadm'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fcdesformatacnpj`(PCNPJ VarChar(20)) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
  RETURN CONCAT( SUBSTRING(PCNPJ,1,2) , 
            SUBSTRING(PCNPJ,4,3),
            SUBSTRING(PCNPJ,8,3),
            SUBSTRING(PCNPJ,12,4),
            SUBSTRING(PCNPJ,17,2));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fcdesformatacpf`(PCPF VarChar(20)) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
  RETURN CONCAT( SUBSTRING(PCPF,1,3) ,
            SUBSTRING(PCPF,5,3),
            SUBSTRING(PCPF,9,3),
            SUBSTRING(PCPF,13,2));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fcformatacnpj`(PCNPJ VarChar(20)) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
  RETURN CONCAT( SUBSTRING(PCNPJ,1,2) , '.',
            SUBSTRING(PCNPJ,3,3), '.',
            SUBSTRING(PCNPJ,6,3), '/',
            SUBSTRING(PCNPJ,9,4), '-',
            SUBSTRING(PCNPJ,13,2));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fcformatacpf`(PCPF VarChar(20)) RETURNS varchar(20) CHARSET latin1
    DETERMINISTIC
BEGIN
  RETURN CONCAT( SUBSTRING(PCPF,1,3) , '.',
            SUBSTRING(PCPF,4,3), '.',
            SUBSTRING(PCPF,7,3), '-',
            SUBSTRING(PCPF,10,2));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpApagaReplicacao`()
Begin
  Set @MyVar = 'STOP SLAVE';
  Prepare StMl From @MyVar;
  Execute StMl;
  Set @MyVar = 'RESET SLAVE ALL';
  Prepare StMl From @MyVar;
  Execute StMl;
  Set @MyVar = 'RESET MASTER';
  Prepare StMl From @MyVar;
  Execute StMl;
  Set @MyVar = 'START SLAVE';
  Prepare StMl From @MyVar;
  Execute StMl;     
  Deallocate Prepare StMl; 
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConfiguraReplicacao`(IN 
 IP Varchar(100),
 Port Varchar(4),
 Log Varchar(100),
 Pos Varchar(100))
Begin
  Set @MyVar = 'STOP SLAVE';
  Prepare StMl From @MyVar;
  Execute StMl;
  Set @myvar = concat('CHANGE MASTER TO ', ' MASTER_HOST=', "'", IP, "',", ' MASTER_PORT=', Port, ",",
                      ' MASTER_USER=',  "'", 'root', "',", ' MASTER_PASSWORD=',  "'", '3442',  "',",
                      ' MASTER_LOG_FILE=',  "'", Log, "',", ' MASTER_LOG_POS=', Pos);
  Prepare StMl From @MyVar;
  Execute StMl;
  Set @MyVar = 'START SLAVE';
  Prepare StMl From @MyVar;
  Execute StMl;
  Deallocate Prepare StMl; 
End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbadicional`(
IN 
tbAdicionalIdent Int(11), 
tbAdicionalCod VarChar(20), 
tbAdicionalDescr VarChar(200), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbAdicionalIdent != '' Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalIdent = tbAdicionalIdent
    And AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif;
  ElseIf
    tbAdicionalCod != '' Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalCod = tbAdicionalCod
    And AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif;
  ElseIf
    tbAdicionalDescr != '' Then    
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalDescr = tbAdicionalDescr
    And AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      AdicionalIdent, 
       EmpresaIdentFkAdicional,
       EmpresaCod,
       EmpresaRazaoSocial,
      AdicionalCod,
      AdicionalDescr,
        SecaoIdentFkAdicional,
        SecaoCod,
        SecaoNome,
        UnidMedidaIdentifFkAdicional,
        UnidMedidaNome,
        UnidMedidaAbrev,
      AdicionalFoto,
      AdicionalExcluido
    From tbadicional,
         tbempresa,
         tbsecao,
         tbunidmedida
    Where AdicionalExcluido is null
    And EmpresaIdentFkAdicional = EmpresaIdent
    And SecaoIdentFkAdicional = SecaoIdent
    And UnidMedidaIdentifFkAdicional = UnidMedidaIdentif
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcategpgtoreceb`(
IN 
tbCategPgtoRecebIdent Int(11), 
tbCategPgtoRecebDescr Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCategPgtoRecebIdent != '' Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb
    Where CategPgtoRecebIdent = tbCategPgtoRecebIdent;
  ElseIf 
    tbCategPgtoRecebDescr != '' Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb
    Where CategPgtoRecebDescr = tbCategPgtoRecebDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CategPgtoRecebIdent,
      CategPgtoRecebDescr,
      CategPgtoRecebFlagAtivo
    From tbcategpgtoreceb
    Limit tbInicio, tbQtde;               
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcep`(
IN 
tbCEPIdent Int(11), 
tbCEPCod VarChar(8), 
tbCEPEndereco VarChar(300), 
tbCidadeIdentFkCEP Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCEPIdent != '' Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPIdent = tbCEPIdent
    And CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;
  ElseIf
    tbCEPCod != '' Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPCod = tbCEPCod
    And CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;
  ElseIf
    tbCEPEndereco != '' Then    
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPEndereco like CONCAT('%', tbCEPEndereco, '%')
    And CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;    
  ElseIf
    tbCidadeIdentFkCEP != '' Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPExcluido is null
    And CidadeIdent = tbCidadeIdentFkCEP
    And EstadoSiglaFkCidade = EstadoSigla;      
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla 
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CEPIdent, 
      CEPCod,
      CEPEndereco,
      CEPBairro,
      CEPCompl,      
        CidadeCapital,
        CidadeIdentFkCEP,
        CidadeNome,
        Concat(EstadoNome, '/', EstadoSigla) as EstadoNomeSigla,
      CEPExcluido
    From tbcep, tbcidade, tbestado
    Where CEPExcluido is null
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla  
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcest`(
IN 
tbCESTIdent Int(11), 
tbCESTCod VarChar(20), 
tbCESTDescr VarChar(1000), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCESTIdent != '' Then
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTIdent = tbCESTIdent
    And CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent;
  ElseIf
    tbCESTCod != '' Then
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTCod = tbCESTCod
    And CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent;
  ElseIf
    tbCESTDescr != '' Then    
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTDescr = tbCESTDescr
    And CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent;  
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent; 
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CESTIdent, 
      CESTCod,
      NCMIdentFkCEST,
      NCMCod,
      NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CESTIdent, 
      CESTCod,
        NCMIdentFkCEST,
          NCMCod,
          NCMDescr,
      CESTSeguimento,
      CESTItem,
      CESTDescr,
      CESTAnexo,
      CESTExcluido
    From tbcest, 
         tbncm
    Where CESTExcluido is null
    And NCMIdentFkCEST = NCMIdent 
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcfop`(
IN 
tbCFOPIdent Int(11), 
tbCFOPCod SmallInt(4), 
tbCFOPDescr VarChar(300), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCFOPIdent != '' Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPIdent = tbCFOPIdent
    And CFOPExcluido is null;
  ElseIf
    tbCFOPCod != '' Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPCod = tbCFOPCod
    And CFOPExcluido is null;
  ElseIf
    tbCFOPDescr != '' Then    
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPDescr = tbCFOPDescr
    And CFOPExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPExcluido is null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CFOPIdent, 
      CFOPCod,
      CFOPDescr,
      CFOPFlagEntSai,
      CFOPFlagEstoque,
      CFOPFlagCalcIPI,
      CFOPEquivalente,
      CFOPExcluido
    From tbcfop
    Where CFOPExcluido is null
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcidade`(
IN 
tbCidadeIdent Int(11), 
tbCidadeNome VarChar(100),
tbInicio int(11), tbQtde int(11))
BEGIN
  If tbCidadeIdent != '' Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeIdent = tbCidadeIdent
    And CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado;  
  ElseIf
    tbCidadeNome != '' Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeNome = tbCidadeNome
    And CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado;      
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado
    Limit tbInicio, 1000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado  
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CidadeIdent, 
      CidadeCod,
      CidadeNome,
      CidadeCodIBGE,
      CidadeCapital,
        EstadoSiglaFkCidade,
          EstadoNome,
        PaisIdentFkEstado,
          PaisNome,
      CidadeExcluido
    From tbcidade, tbestado, tbpais
    Where CidadeExcluido is null
    And EstadoSiglaFkCidade = EstadoSigla
    And PaisIdent = PaisIdentFkEstado   
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcondicaopgtoreceb`(
IN 
tbCondicaoPgtoRecebIdent Int(11), 
tbCategPgtoRecebIdentFkCondicaoPgtoReceb Int(11), 
tbCondicaoPgtoRecebCod Int(11),
tbCondicaoPgtoRecebDescr VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCondicaoPgtoRecebIdent != '' Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdent
    And CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent;
  ElseIf 
    tbCategPgtoRecebIdentFkCondicaoPgtoReceb != '' Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CategPgtoRecebIdentFkCondicaoPgtoReceb = tbCategPgtoRecebIdentFkCondicaoPgtoReceb
    And CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent;
  ElseIf 
    tbCondicaoPgtoRecebCod != '' Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CondicaoPgtoRecebCod = tbCondicaoPgtoRecebCod
    And CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent;
  ElseIf 
    tbCondicaoPgtoRecebDescr != '' Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CondicaoPgtoRecebDescr = tbCondicaoPgtoRecebDescr
    And CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CondicaoPgtoRecebIdent,
        CategPgtoRecebIdentFkCondicaoPgtoReceb,
          CategPgtoRecebDescr,
          CategPgtoRecebFlagAtivo,
      CondicaoPgtoRecebCod,
      CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebFlagAtivo,
      CondicaoPgtoRecebFlagReceb,
      CondicaoPgtoRecebFlagPgto
    From tbcondicaopgtoreceb,
    tbcategpgtoreceb
    Where CategPgtoRecebIdentFkCondicaoPgtoReceb = CategPgtoRecebIdent
    Limit tbInicio, tbQtde;               
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbcondicaopgtorecebparc`(
IN 
tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc Int(11), 
tbCondicaoPgtoRecebParcNrParcela Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc != '')  && (tbCondicaoPgtoRecebParcNrParcela != '')) Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc
    And CondicaoPgtoRecebParcNrParcela = tbCondicaoPgtoRecebParcNrParcela
    And CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent;
  ElseIf 
    tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc != '' Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc
    And CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
        CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CondicaoPgtoRecebParcNrParcela,
      CondicaoPgtoRecebParcTotParc,
      CondicaoPgtoRecebParcDiasEntreParc,
      CondicaoPgtoRecebParcDescr
    From tbcondicaopgtorecebparc,
    tbcondicaopgtoreceb
    Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = CondicaoPgtoRecebIdent
    Limit tbInicio, tbQtde;               
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbempresa`(
IN 
tbEmpresaIdent Int(11), 
tbEmpresaCod VarChar(11), 
tbEmpresaRazaoSocial VarChar(100), 
tbEmpresaCNPJ VarChar(20), 
tbEmpresaNomeFantasia VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbEmpresaIdent != '' Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And EmpresaIdent = tbEmpresaIdent
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado;
  ElseIf
    tbEmpresaCod != '' Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And EmpresaCod = tbEmpresaCod
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado;
  ElseIf
    tbEmpresaRazaoSocial != '' Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And EmpresaRazaoSocial = tbEmpresaRazaoSocial
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado;
   ElseIf
    tbEmpresaCNPJ != '' Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And EmpresaCNPJ = tbEmpresaCNPJ
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado;
  ElseIf
    tbEmpresaNomeFantasia != '' Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And EmpresaNomeFantasia = tbEmpresaNomeFantasia
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado; 
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EmpresaIdent,
      EmpresaCod,
      EmpresaMatriz,
      EmpresaFilialMatriz,
      EmpresaRazaoSocial,
      EmpresaNomeFantasia,
      EmpresaCNPJ,
      EmpresaInscrEstad,
      EmpresaInscrMunic,
      EmpresaCNAEFisc,
      EmpresaEndereco,
      EmpresaEnderecoNr,
      EmpresaEnderecoCompl,
        CEPIdentFkEmpresa,
          CEPCod,
          CEPEndereco,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
          CidadeCodIBGE,
        EstadoSiglaFkCidade,
          EstadoNome,
          EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
          PaisCodIBGE,
      EmpresaNrFone,
      EmpresaNrFax,
      EmpresaRespons,
      EmpresaEmail,
      EmpresaSiteWeb,
      EmpresaInativa
    From tbempresa, tbcep, tbcidade, tbestado, tbpais
    Where EmpresaExcluido is null
    And CEPIdent = CEPIdentFkEmpresa
    And CidadeIdent = CidadeIdentFkCEP
    And EstadoSigla = EstadoSiglaFkCidade
    And PaisIdent = PaisIdentFkEstado 
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbempresaemail`(
IN 
tbEmpresaEmailIdent Int(11), 
tbEmpresaIdentFkEmpresaEmail Int(11), 
tbTipoEmailIdentFkEmpresaEmail Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbEmpresaEmailIdent != '' Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char) as EmpresaEmailUsuSenha,
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaEmailIdent = tbEmpresaEmailIdent
    And EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent;
  ElseIf
    tbEmpresaIdentFkEmpresaEmail != '' Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaIdentFkEmpresaEmail = tbEmpresaIdentFkEmpresaEmail
    And EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent;
  ElseIf
    tbTipoEmailIdentFkEmpresaEmail != '' Then    
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail
    And EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent;  
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent; 
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent 
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent 
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EmpresaEmailIdent,
        EmpresaIdentFkEmpresaEmail,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEmailIdentFkEmpresaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP,
      EmpresaEmailSMPTConSeg,
      EmpresaEmailUsu,
      CAST(AES_DECRYPT(EmpresaEmailUsuSenha, 'chavecriptografia') as Char),
      EmpresaEmailAssunto,
      EmpresaEmailMensagem,
      EmpresaEmailExcluido
    From tbempresaemail, tbempresa, tbtipoemail
    Where EmpresaEmailExcluido is null
    And EmpresaIdentFkEmpresaEmail = EmpresaIdent
    And TipoEmailIdentFkEmpresaEmail = TipoEmailIdent  
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbempresafone`(
IN 
tbEmpresaFoneIdent Int(11), 
tbEmpresaIdentFkEmpresaFone Int(11), 
tbInicio Int(11), 
tbQtde Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbEmpresaIdentFkEmpresaFone = '') Then
     Select 1 As CodRetorno, 'MSG001/tbEmpresaIdentFkEmpresaFone: Empresa não foi informada!' As Msg;
  ElseIf   
     tbEmpresaFoneIdent != '' Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaFoneIdent = tbEmpresaFoneIdent
    And EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent;
  ElseIf
    tbEmpresaIdentFkEmpresaFone != '' Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaIdentFkEmpresaFone = tbEmpresaIdentFkEmpresaFone
    And EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EmpresaFoneIdent, 
        EmpresaIdentFkEmpresaFone,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoFoneIdentFkEmpresaFone
          TipoFoneCod,
          TipoFoneDescr,
      EmpresaFoneDDI,
      EmpresaFoneDDD,
      EmpresaFoneNr,
      EmpresaFoneExcluido
    From tbempresafone, tbtipofone, tbempresa
    Where EmpresaFoneExcluido is null
    And EmpresaIdentFkEmpresaFone = EmpresaIdent
    And TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbempresalocal`(
IN 
tbEmpresaLocalIdent Int(11), 
tbEmpresaIdentFkEmpresaLocal Int(11), 
tbTipoEnderecoIdentFkEmpresaLocal Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbEmpresaLocalIdent != '' Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaLocalIdent = tbEmpresaLocalIdent
    And EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent
    And TipoEnderecoIdentFkEmpresaLocal = TipoEnderecoIdent
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;
  ElseIf
    tbEmpresaIdentFkEmpresaLocal != '' Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaIdentFkEmpresaLocal = tbEmpresaIdentFkEmpresaLocal
    And EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And TipoEnderecoIdentFkEmpresaLocal = TipoEnderecoIdent
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;
  ElseIf
    tbTipoEnderecoIdentFkEmpresaLocal != '' Then    
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where TipoEnderecoIdentFkEmpresaLocal = tbTipoEnderecoIdentFkEmpresaLocal
    And EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And TipoEnderecoIdentFkEmpresaLocal = TipoEnderecoIdent
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;  
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And TipoEnderecoIdentFkEmpresaLocal = TipoEnderecoIdent
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
          CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EmpresaLocalIdent, 
        EmpresaIdentFkEmpresaLocal,
          EmpresaCod,
          EmpresaRazaoSocial,
        TipoEnderecoIdentFkEmpresaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      EmpresaLocalEndereco,
      EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl
        CEPIdentFkEmpresaLocal,
          CEPCod,
          CEPBairro,
        CidadeIdentFkCEP,
          CidadeCod,
        CidadeNome,
        EstadoSiglaFkCidade,
          EstadoNome,
      EmpresaLocalExcluido
    From tbempresalocal, tbempresa, tbtipoendereco, tbcep, tbcidade, tbestado
    Where EmpresaLocalExcluido is null
    And EmpresaIdentFkEmpresaLocal = EmpresaIdent    
    And CEPIdentFkEmpresaLocal = CEPIdent
    And CidadeIdentFkCEP = CidadeIdent
    And EstadoSiglaFkCidade = EstadoSigla 
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbempresalogo`(
IN 
tbEmpresaLogoIdent Int(11), 
tbEmpresaIdentFkEmpresaLogo Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbEmpresaIdentFkEmpresaLogo = '') Then
   Select 1 As CodRetorno, 'MSG001/SpConsultatbempresalogo: Empresa não foi informada!' As Msg;
  Else
  Select 
    EmpresaLogoIdent,
    EmpresaIdentFkEmpresaLogo,
    EmpresaLogo
    From tbempresalogo
    Where EmpresaLogoExcluido is null
    And EmpresaIdentFkEmpresaLogo = tbEmpresaIdentFkEmpresaLogo;
  End If;  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbestado`(
IN 
tbEstadoIdent Int(11), 
tbEstadoNome VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbEstadoIdent != '' Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoIdent = tbEstadoIdent
    And EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado;  
  ElseIf
    tbEstadoNome != '' Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoNome = tbEstadoNome
    And EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado;     
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado    
    Limit tbInicio, 1000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado    
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EstadoIdent, 
      EstadoNome,
      EstadoSigla,
        PaisIdentFkEstado,
          PaisNome,
      EstadoExcluido
    From tbestado, tbpais
    Where EstadoExcluido is null
    And PaisIdent = PaisIdentFkEstado     
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbestadocivil`(
IN 
tbEstadoCivilIdent Int(11), 
tbEstadoCivilSigla VarChar(20), 
tbEstadoCivilDescr VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbEstadoCivilIdent != '' Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilIdent = tbEstadoCivilIdent
    And EstadoCivilExcluido is null;
  ElseIf
    tbEstadoCivilSigla != '' Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilSigla = tbEstadoCivilSigla
    And EstadoCivilExcluido is null;
  ElseIf
    tbEstadoCivilDescr != '' Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilDescr = tbEstadoCivilDescr
    And EstadoCivilExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilExcluido is null
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      EstadoCivilIdent,
      EstadoCivilSigla,
      EstadoCivilDescr,
      EstadoCivilExcluido
    From tbestadocivil
    Where EstadoCivilExcluido is null
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbgrade`(
IN 
tbGradeIdent Int(11), 
tbGradeCod VarChar(20), 
tbGradeDescr VarChar(100), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbGradeIdent != '' Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeIdent = tbGradeIdent
    And GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent;
  ElseIf
    tbGradeCod != '' Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeCod = tbGradeCod
    And GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent;
  ElseIf
    tbGradeDescr != '' Then    
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeDescr = tbGradeDescr
    And GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      GradeIdent, 
      GradeCod,
        EmpresaIdentFkGrade,
        EmpresaCod,
        EmpresaRazaoSocial,
      GradeDescr,
      GradeExcluido
    From tbgrade,
         tbempresa
    Where GradeExcluido is null
    And EmpresaIdentFkGrade = EmpresaIdent
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbindicinscrestad`(
IN 
tbIndicInscEstadIdent Int(11), 
tbIndicInscEstadCod VarChar(3), 
tbIndicInscEstadDescr VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbIndicInscEstadIdent != '' Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadIdent = tbIndicInscEstadIdent
    And IndicInscEstadExcluido is null;
  ElseIf
    tbIndicInscEstadCod != '' Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadCod = tbIndicInscEstadCod
    And IndicInscEstadExcluido is null;
  ElseIf
    tbIndicInscEstadDescr != '' Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadDescr = tbIndicInscEstadDescr
    And IndicInscEstadExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadExcluido is null
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      IndicInscEstadIdent,
      IndicInscEstadCod,
      IndicInscEstadDescr,
      IndicInscEstadExcluido 
    From tbindicinscrestad
    Where IndicInscEstadExcluido is null
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbncm`(
IN 
tbNCMIdent Int(11), 
tbNCMCod VarChar(20), 
tbNCMDescr VarChar(200), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbNCMIdent != '' Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMIdent = tbNCMIdent
    And NCMExcluido is null;
  ElseIf
    tbNCMCod != '' Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMCod = tbNCMCod
    And NCMExcluido is null;
  ElseIf
    tbNCMDescr != '' Then    
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMDescr = tbNCMDescr
    And NCMExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMExcluido is null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      NCMIdent, 
      NCMCod,
      NCMFlagAtivo,
      NCMEx,
      NCMTab,
      NCMDescr,
      NCMAliqIPI,
      NCMAliqII,
      NCMALiqMVADentroEstado,
      NCMAliqMVAForaEstado,
      NCMValDtnic,
      NCMExcluido
    From tbncm
    Where NCMExcluido is null
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbocupacao`(
IN 
tbOcupacaoIdent Int(11), 
tbOcupacaoCod VarChar(7), 
tbOcupacaoTitulo VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbOcupacaoIdent != '' Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoIdent = tbOcupacaoIdent
    And OcupacaoExcluido is null;
  ElseIf
    tbOcupacaoCod != '' Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoCod = tbOcupacaoCod
    And OcupacaoExcluido is null;
  ElseIf
    tbOcupacaoTitulo != '' Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoTitulo = tbOcupacaoTitulo
    And OcupacaoExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoExcluido is null
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      OcupacaoIdent,
      OcupacaoCod,
      OcupacaoTitulo,
      OcupacaoTipo,
      OcupacaoExcluido
    From tbocupacao
    Where OcupacaoExcluido is null
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpais`(
IN 
tbPaisIdent Int(11), 
tbPaisNome VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPaisIdent != '' Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisIdent = tbPaisIdent
    And PaisExcluido is null;  
  ElseIf
    tbPaisNOme != '' Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisNome = tbPaisNome
    And PaisExcluido is null;     
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisExcluido is null    
    Limit tbInicio, 1000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisExcluido is null    
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PaisIdent, 
      PaisNome,
      PaisCodIBGE,
      PaisExcluido
    From tbpais
    Where PaisExcluido is null    
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoa`(
IN 
tbPessoaIdent Int(11), 
tbPessoaCod VarChar(20), 
tbPessoaNomeouRazao VarChar(200),
tbPessoaCNPJCPF VarChar(45),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaIdent != '' Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaIdent = tbPessoaIdent
    And PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent;
  ElseIf
    tbPessoaCod != '' Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaCod = tbPessoaCod
    And PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent;
  ElseIf
    tbPessoaNomeouRazao != '' Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where ((PessoaNomeRazaoSocial = tbPessoaNomeouRazao) or (PessoaNome = tbPessoaNomeouRazao))
    And PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent;
  ElseIf
    tbPessoaCNPJCPF != '' Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaCNPJCPF = tbPessoaCNPJCPF
    And PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaIdent,
      PessoaCod,
      PessoaTipo,
      PessoaNomeRazaoSocial,
      PessoaNomeFantasia,
      PessoaNome, 
      PessoaSexo,
      PessoaDtNascimento,
      PessoaDtFundacao,
        PaisIdentNacFkPessoa,
          PaisNome,
        CidadeIdentNaturalFkPessoa,
          CidadeCod,
          CidadeNome,
          EstadoSiglaFkCidade,
        EstadoCivilIdentFkPessoa,
          EstadoCivilSigla,
          EstadoCivilDescr,
      PessoaNomePai,
      PessoaNomeMae,
      PessoaNomeConjuge,
      PessoaNomeContato,
      PessoaCNPJCPF,
      PessoaCNPJCPFConjuge,
      PessoaInscrEstad,
        IndicInscEstadIdentFkPessoa,
          IndicInscEstadCod,
          IndicInscEstadDescr,
      PessoaInscrMunic,
      PessoaInscrSuframa,
      PessoaIdentidade,
      PessoaIdentidadeDtEmis,
      PessoaIdentidadeOrgaoEmis,
        EstadoIdentIdentidadeEmisFkPessoa,
          EstadoNome,
          EstadoSigla,
        OcupacaoIdentFkPessoa,
          OcupacaoCod,
          OcupacaoTitulo,
      AES_DECRYPT(PessoaSenha, 'senhacriptografada'),
      PessoaFoneDDI,
      PessoaFoneDDD,
      PessoaNrFone,
      PessoaNrFax,
      PessoaEmail,
      PessoaSiteWeb,
      PessoaFacebook,
      PessoaInstagram,
      PessoaLinkedin,
      PessoaWhatSapp,
      PessoaTwitter,
      PessoaRespons,
      PessoaEndereco,
      PessoaEnderecoNr,
      PessoaEnderecoCompl,
        CEPIdentFkPessoa,
          CEPCod,
      PessoaFoto,
      PessoaExcluido
    From tbpessoa,
         tbpais,
         tbcidade,
         tbestadocivil,
         tbindicinscrestad,
         tbestado,
         tbocupacao,
         tbcep
    Where PessoaExcluido is null
    And PaisIdentNacFkPessoa = PaisIdent
    And CidadeIdentNaturalFkPessoa = CidadeIdent
    And EstadoCivilIdentFkPessoa = EstadoCivilIdent
    And IndicInscEstadIdentFkPessoa = IndicInscEstadIdent
    And EstadoIdentIdentidadeEmisFkPessoa = EstadoIdent
    And OcupacaoIdentFkPessoa = OcupacaoIdent
    And CEPIdentFkPessoa = CEPIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoacontato`(
IN 
tbPessoaContatoIdent Int(11), 
tbPessoaIdentFkPessoaContato Int(11), 
tbTipoContatoIdentFkPessoaContato Int(11), 
tbPessoaContatoNome VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaContatoIdent != '' Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoIdent = tbPessoaContatoIdent
    And PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
    tbPessoaIdentFkPessoaContato != '' Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato
    And PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
    tbTipoContatoIdentFkPessoaContato != '' Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where TipoContatoIdentFkPessoaContato = tbTipoContatoIdentFkPessoaContato
    And PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
    
  ElseIf
    tbPessoaContatoNome != '' Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoNome = tbPessoaContatoNome
    And PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaContatoIdent,
        PessoaIdentFkPessoaContato,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoContatoIdentFkPessoaContato,
          TipoContatoCod,
          TipoContatoDescr,
      PessoaContatoNome,
        PessoaFoneIdentFkPessoaContato,
          TipoFoneDescr,
          PessoaFoneNrDDD,
          PessoaFoneNr,
      PessoaContatoExcluido
    From tbpessoacontato,
         tbpessoa,
         tbtipocontato,
         tbpessoafone,
         tbtipofone
    Where PessoaContatoExcluido is null
    And PessoaIdentFkPessoaContato = PessoaIdent
    And TipoContatoIdentFkPessoaContato = TipoContatoIdent
    And PessoaFoneIdentFkPessoaContato = PessoaFoneIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoaemail`(
IN 
tbPessoaEmailIdent Int(11), 
tbPessoaIdentFkPessoaEmail Int(11), 
tbTipoEmailIdentFkPessoaEmail Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaEmailIdent != '' Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaEmailIdent = tbPessoaEmailIdent
    And PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent;
  ElseIf
    tbPessoaIdentFkPessoaEmail != '' Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail
    And PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent;
  ElseIf
    tbTipoEmailIdentFkPessoaEmail != '' Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail
    And PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaEmailIdent,
        PessoaIdentFkPessoaEmail,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEmailIdentFkPessoaEmail,
          TipoEmailCod,
          TipoEmailDescr,
      PessoaEnderEmail,    
      PessoaEmailExcluido
    From tbpessoaemail,
         tbpessoa,
         tbtipoemail 
    Where PessoaEmailExcluido is null
    And PessoaIdentFkPessoaEmail = PessoaIdent
    And TipoEmailIdentFkPessoaEmail = TipoEmailIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoaempresa`(
IN 
tbPessoaEmpresaIdent Int(11), 
tbPessoaIdentFkPessoaEmpresa Int(11), 
tbEmpresaIdentFkPessoaEmpresa Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaEmpresaIdent != '' Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaEmpresaIdent = tbPessoaEmpresaIdent
    And PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent;
  ElseIf
    tbPessoaIdentFkPessoaEmpresa != '' Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa
    And PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent;
    
  ElseIf
    tbEmpresaIdentFkPessoaEmpresa != '' Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa
    And PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaEmpresaIdent,
        PessoaIdentFkPessoaEmpresa,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        EmpresaIdentFkPessoaEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
      PessoaEmpresaFlagAtivo,
      PessoaEmpresaFlagCliente,
      PessoaEmpresaFlagFornec,
      PessoaEmpresaFlagFunc,
      PessoaEmpresaFlagTransp,
      PessoaEmpresaFlagUsu,
        PerfilAcesSistIdentFkPessoaEmpresa,
      PessoaEmpresaExcluido
    From tbpessoaempresa,
         tbpessoa,
         tbempresa
    Where PessoaEmpresaExcluido is null
    And PessoaIdentFkPessoaEmpresa = PessoaIdent
    And EmpresaIdentFkPessoaEmpresa = EmpresaIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoafone`(
IN 
tbPessoaFoneIdent Int(11), 
tbPessoaIdentFkPessoaFone Int(11), 
tbTipoFoneIdentFkPessoaFone Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaFoneIdent != '' Then
    Select 
      PessoaFoneIdent,
        PessoaIdentFkPessoaFone,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoFoneIdentFkPessoaFone,
          TipoFoneCod,
          TipoFoneDescr,
      PessoaFoneNrDDI,
      PessoaFoneNrDDD,
      PessoaFoneNr,
      PessoaFoneExcluido
    From tbpessoafone,
         tbpessoa,
         tbtipofone     
    Where PessoaFoneIdent = tbPessoaFoneIdent
    And PessoaFoneExcluido is null
    And PessoaIdentFkPessoaFone = PessoaIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
    tbPessoaIdentFkPessoaFone != '' Then
    Select 
      PessoaFoneIdent,
        PessoaIdentFkPessoaFone,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoFoneIdentFkPessoaFone,
          TipoFoneCod,
          TipoFoneDescr,
      PessoaFoneNrDDI,
      PessoaFoneNrDDD,
      PessoaFoneNr,
      PessoaFoneExcluido
    From tbpessoafone,
         tbpessoa,
         tbtipofone     
    Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone
    And PessoaFoneExcluido is null
    And PessoaIdentFkPessoaFone = PessoaIdent
    And TipoFoneIdentFkPessoaFone = TipoFoneIdent;
  ElseIf
    tbTipoFoneIdentFkPessoaFone != '' Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone
    And PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbpessoalocal`(
IN 
tbPessoaLocalIdent Int(11), 
tbPessoaIdentFkPessoaLocal Int(11), 
tbTipoEnderecoIdentFkPessoaLocal Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbPessoaLocalIdent != '' Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalIdent = tbPessoaLocalIdent
    And PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
    tbPessoaIdentFkPessoaLocal != '' Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal
    And PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
    tbTipoEnderecoIdentFkPessoaLocal != '' Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal
    And PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      PessoaLocalIdent,
        PessoaIdentFkPessoaLocal,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
        TipoEnderecoIdentFkPessoaLocal,
          TipoEnderecoCod,
          TipoEnderecoDescr,
      PessoaLocalEndereco,
      PessoaLocalEnderecoNr,
      PessoaLocalEnderecoCompl,
        CEPIdentFkPessoaLocal,
          CEPCod,
      PessoaLocalExcluido
    From tbpessoalocal,
         tbpessoa,
         tbtipoendereco,
         tbcep         
    Where PessoaLocalExcluido is null
    And PessoaIdentFkPessoaLocal = PessoaIdent
    And TipoEnderecoIdentFkPessoaLocal = TipoEnderecoIdent
    And CEPIdentFkPessoaLocal = CEPIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbproduto`(
IN 
tbProdutoIdent Int(11), 
tbProdutoCod BigInt(20), 
tbProdutoDescr VarChar(200), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoIdent != '' Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutoIdent = tbProdutoIdent
    And ProdutExcluido is null;
  ElseIf
    tbProdutoCod != '' Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutoCod = tbProdutoCod
    And ProdutExcluido is null;
  ElseIf
    tbProdutoDescr != '' Then    
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where tbProdutoDescr = tbProdutoDescr
    And ProdutExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutExcluido is null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoIdent, 
      ProdutoCod,
        ProdutoCodInterno,
        ProdutoStatus,
        ProdutoFlagServico,
      ProdutoDescr,
      ProdutExcluido
    From tbproduto
    Where ProdutExcluido is null
    Limit tbInicio, tbQtde;               
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutoadicional`(
IN 
tbProdutoAdicionalIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoAdicional Int(11), 
tbAdicionalIdentFkProdutoAdicional Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoAdicionalIdent != '' Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoAdicionalIdent = tbProdutoAdicionalIdent
    And ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoAdicional != '' Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional
    And ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent;
  ElseIf
    tbAdicionalIdentFkProdutoAdicional != '' Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional
    And ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent;   
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoAdicionalIdent, 
        ProdutoEmpresaIdentFkProdutoAdicional,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        AdicionalIdentFkProdutoAdicional,
          AdicionalCod,
          AdicionalDescr,
      ProdutoAdicionalVlrMargem,
      ProdutoAdicionalVlrPreco,
      ProdutoAdicionalExcluido
    From tbprodutoadicional,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbadicional
    Where ProdutoAdicionalExcluido is null
    And ProdutoEmpresaIdentFkProdutoAdicional = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And AdicionalIdentFkProdutoAdicional = AdicionalIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutocomposicao`(
IN 
tbProdutoComposicaoIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoPrinc Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoSecund Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoComposicaoIdent != '' Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoComposicaoIdent = tbProdutoComposicaoIdent
    And ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '' Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc
    And ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '' Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund
    And ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoComposicaoIdent, 
        ProdutoEmpresaIdentFkProdutoComposicaoPrinc,
          EmpresaCod,
          EmpresaRazaoSocial,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodPrinc,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoPrinc
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrPrinc,       
      ProdutoEmpresaIdentFkProdutoComposicaoSecund,
          (Select ProdutoCod
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodSecund,
          (Select ProdutoDescr
          From tbproduto, tbprodutoempresa
          Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkProdutoComposicaoSecund
          And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrSecund,             
      ProdutoComposicaoQtde,
        UnidMedidaIdentifFkProdutoComposicao,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoComposicaoExcluido
    From tbprodutocomposicao,
         tbprodutoempresa,
         tbproduto,
         tbunidmedida,
         tbempresa
    Where ProdutoComposicaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And UnidMedidaIdentifFkProdutoComposicao = UnidMedidaIdentif
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutoempresa`(
IN 
tbProdutoEmpresaIdent Int(11), 
tbProdutoIdentFkProdutoEmpresa Int(11), 
tbEmpresaIdentFkProdutoEmpresa Int(11), 
tbProdutoCod BigInt(20),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoEmpresaIdent != '' Then
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,    
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoEmpresaIdent = tbProdutoEmpresaIdent
    And ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent;
  ElseIf
    tbProdutoIdentFkProdutoEmpresa != '' Then
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa
    And ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent;
  ElseIf
    tbEmpresaIdentFkProdutoEmpresa != '' Then  
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa
    And ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent;    
  ElseIf
    tbProdutoCod != '' Then      
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoCod = tbProdutoCod
    And ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then  
    Select 
      ProdutoEmpresaIdent, 
      ProdutoCod,
        EmpresaIdentFkProdutoEmpresa,
          EmpresaCod,
          EmpresaRazaoSocial,
        ProdutoIdentFkProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaFlagEstoque,
      ProdutoEmpresaFlagComposicao,
      ProdutoEmpresaFlagVenda,
      ProdutoEmpresaFlagTbPreco,
      ProdutoEmpresaFlagSerial,
      ProdutoEmpresaFlagSerialEstoque,
      ProdutoEmpresaFlagLote,
      ProdutoEmpresaFlagGrade,
      ProdutoEmpresaFlagAdic,
      ProdutoEmpresaFlagProducao,
      ProdutoEmpresaFlagBalanca,
      ProdutoEmpresaFlagImprimeValid,
      ProdutoEmpresaFlagImprimeEmbal,
      ProdutoEmpresaFlagQtde,
      ProdutoEmpresaPrecoCusto,
      ProdutoEmpresaPrecoOutros,
      ProdutoEmpresaCustoMedio,
      ProdutoEmpresaCustoReal,
      ProdutoEmpresaCustoFinal,
      ProdutoEmpresaObs,
      ProdutoEmpresaCSOSN,
        CFOPIdentFkProdutoEmpresa,
          CFOPCod,
          CFOPDescr,
        NCMIdentFkProdutoEmpresa,
          NCMCod,
          NCMDescr,
        UnidMedidaIdentifFkProdutoEmpresa,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoEmpresaValidadeDias,
        CESTIdentFkProdutoEmpresa,
          CESTCod,
          CESTDescr,
      ProdutoEmpresaFlagProdIngr,          
      ProdutoEmpresaGTIN13,
      ProdutoEmpresaExcluido  
    From tbprodutoempresa,
         tbempresa,
         tbproduto,
         tbcfop,
         tbncm,
         tbunidmedida,
         tbcest
    Where ProdutoEmpresaExcluido is null
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And CFOPIdentFkProdutoEmpresa = CFOPIdent
    And NCMIdentFkProdutoEmpresa = NCMIdent
    And UnidMedidaIdentifFkProdutoEmpresa = UnidMedidaIdentif
    And CESTIdentFkProdutoEmpresa = CESTIdent
    Limit tbInicio, tbQtde;            
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutoempresatrib`(
IN 
tbProdutoEmpresaTribIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoEmpresaTrib Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoEmpresaTribIdent != '' Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent
    And ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;

  ElseIf
    tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '' Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib
    And ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoEmpresaTribIdent, 
        ProdutoEmpresaIdentFkProdutoEmpresaTrib,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoEmpresaTribCSTPISEnt,
      ProdutoEmpresaTribCSTPISSaida,
      ProdutoEmpresaTribAliqPIS,
      ProdutoEmpresaTribCSTCOFINSEnt,
      ProdutoEmpresaTribCSTCOFINSSaida,
      ProdutoEmpresaTribAliqCOFINS,
      ProdutoEmpresaTribAliqINSSRet,
      ProdutoEmpresaTribAliqINSSEmpresa,
      ProdutoEmpresaTribAliqIRRF,
      ProdutoEmpresaTribAliqCSLL,
      ProdutoEmpresaTribAliqISS,
      ProdutoEmpresaTribExcluido
    From tbprodutoempresatrib,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaTribExcluido is null
    And ProdutoEmpresaIdentFkProdutoEmpresaTrib = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutofornecedor`(
IN 
tbProdutoFornecedorIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoFornecedor Int(11), 
tbPessoaIdentFkProdutoFornecedor Int(11),
tbProdutoFornecedorDescr VarChar(200), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoFornecedorIdent != '' Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorIdent = tbProdutoFornecedorIdent
    And ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoFornecedor != '' Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor
    And ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;    
  ElseIf
    tbPessoaIdentFkProdutoFornecedor != '' Then  
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor
    And ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;        
  ElseIf
    tbProdutoFornecedorDescr != '' Then  
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorDescr = tbProdutoFornecedorDescr
    And ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;            
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;        
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent    
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoFornecedorIdent, 
        ProdutoEmpresaIdentFkProdutoFornecedor,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        PessoaIdentFkProdutoFornecedor,
          PessoaCod,
          If(PessoaTipo = 'F', PessoaNome, PessoaNomeRazaoSocial) As PessoaDescr,
      ProdutoFornecedorDescr,
        UnidMedidaIdentifFkProdutoFornecedor,
          UnidMedidaNome,
          UnidMedidaAbrev,
      ProdutoFornecedorExcluido
    From tbprodutofornecedor,
         tbprodutoempresa,
         tbproduto,
         tbpessoa,
         tbunidmedida,
         tbempresa
    Where ProdutoFornecedorExcluido is null
    And ProdutoEmpresaIdentFkProdutoFornecedor = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkProdutoFornecedor = PessoaIdent
    And UnidMedidaIdentifFkProdutoFornecedor = UnidMedidaIdentif
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent    
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutofoto`(
IN 
tbProdutoFotoIdent Int(11), 
tbProdutoIdentFkProdutoFoto Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoFotoIdent != '' Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoFotoIdent = tbProdutoFotoIdent
    And ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent;
  ElseIf
    tbProdutoIdentFkProdutoFoto != '' Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto
    And ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent;    
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoFotoIdent, 
        ProdutoIdentFkProdutoFoto,
          ProdutoCod,
          ProdutoDescr,
      ProdutoFotoImagem,
      ProdutoFotoIcon,
      ProdutoFotoExcluido
    From tbprodutofoto,
         tbproduto
    Where ProdutoFotoExcluido is null
    And ProdutoIdentFkProdutoFoto = ProdutoIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutograde`(
IN 
tbProdutoGradeIdent Int(11), 
tbGradeIdentFkProdutoGrade Int(11), 
tbProdutoEmpresaIdentFkProdutoGrade Int(11),
tbProdutoGradeDescr VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoGradeIdent != '' Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeIdent = tbProdutoGradeIdent
    And ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent;
  ElseIf
    tbGradeIdentFkProdutoGrade != '' Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade
    And ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoGrade != '' Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade
    And ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent;    
  ElseIf
    tbProdutoGradeDescr != '' Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeDescr = tbProdutoGradeDescr
    And ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent;       
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent;     
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoGradeIdent, 
        GradeIdentFkProdutoGrade,
          GradeCod,
          GradeDescr,
        ProdutoEmpresaIdentFkProdutoGrade,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
      ProdutoGradeSeq,
      ProdutoGradeSigla,
      ProdutoGradeDescr,
      ProdutoGradeExcluido
    From tbprodutograde,
         tbprodutoempresa,
         tbproduto,
         tbempresa,
         tbgrade
    Where ProdutoGradeExcluido is null
    And ProdutoEmpresaIdentFkProdutoGrade = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    And GradeIdentFkProdutoGrade = GradeIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutoprecomargem`(
IN 
tbProdutoPrecoMargemIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoPrecoMargem Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoPrecoMargemIdent != '' Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent
    And ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoPrecoMargem != '' Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoPrecoMargem = tbProdutoEmpresaIdentFkProdutoPrecoMargem
    And ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ProdutoPrecoMargemIdent, 
        ProdutoEmpresaIdentFkProdutoPrecoMargem,
        EmpresaCod,
        EmpresaRazaoSocial,
        ProdutoCod,
        ProdutoDescr,
      ProdutoPrecoMargemSeq,
      ProdutoPrecoMargemVlrPreco,
      ProdutoPrecoMargemVlrMargem,
      ProdutoPrecoMargemExcluido  
    From tbprodutoprecomargem,
         tbprodutoempresa,
         tbproduto,
         tbempresa
    Where ProdutoPrecoMargemExcluido is null
    And ProdutoEmpresaIdentFkProdutoPrecoMargem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbprodutosecao`(
IN 
tbProdutoSecaoIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoSecao Int(11), 
tbSecaoIdentFkProdutoSecao Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbProdutoSecaoIdent != '' Then
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoSecaoIdent = tbProdutoSecaoIdent
    And ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;
  ElseIf
    tbProdutoEmpresaIdentFkProdutoSecao != '' Then
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoEmpresaIdentFkProdutoSecao = tbProdutoEmpresaIdentFkProdutoSecao
    And ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;    
  ElseIf
    tbSecaoIdentFkProdutoSecao != '' Then  
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao
    And ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;    
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent;    
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent    
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent    
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then    
    Select 
      ProdutoSecaoIdent, 
        ProdutoEmpresaIdentFkProdutoSecao,
          EmpresaCod,
          EmpresaRazaoSocial,        
          ProdutoCod,
          ProdutoDescr,
        SecaoIdentFkProdutoSecao,
          SecaoCod,
          SecaoNome,
      ProdutoSecaoExcluido 
    From tbprodutosecao,
         tbprodutoempresa,
         tbproduto,
         tbsecao,
         tbempresa
    Where ProdutoSecaoExcluido is null
    And ProdutoEmpresaIdentFkProdutoSecao = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And SecaoIdentFkProdutoSecao = SecaoIdent
    And EmpresaIdentFkProdutoEmpresa = EmpresaIdent    
    Limit tbInicio, tbQtde;         
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbregiao`(
IN 
tbRegiaoIdent Int(11), 
tbRegiaoCod VarChar(10), 
tbRegiaoDescr VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbRegiaoIdent != '' Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoIdent = tbRegiaoIdent
    And RegiaoExcluido is null;
  ElseIf
    tbRegiaoCod != '' Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoCod = tbRegiaoCod
    And RegiaoExcluido is null;    
  ElseIf
    tbRegiaoDescr != '' Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoDescr = tbRegiaoDescr
    And RegiaoExcluido is null;      
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoExcluido is null;    
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoExcluido is null 
    Limit tbInicio, 1000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoExcluido is null  
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      RegiaoIdent, 
      RegiaoCod,
      RegiaoDescr,
      RegiaoExcluido
    From tbregiao
    Where RegiaoExcluido is null   
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbregiaocomposicao`(
IN 
tbRegiaoComposicaoIdent Int(11), 
tbRegiaoIdentFkRegiaoComposicao Int(11), 
tbCidadeIdentFkRegiaoComposicao Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbRegiaoComposicaoIdent != '' Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido  
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoComposicaoIdent = tbRegiaoComposicaoIdent
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao;
  ElseIf
    tbRegiaoIdentFkRegiaoComposicao != '' Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
        RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdentFkRegiaoComposicao = tbRegiaoIdentFkRegiaoComposicao
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao;
  ElseIf
    tbCidadeIdentFkRegiaoComposicao != '' Then    
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   CidadeIdentFkRegiaoComposicao = tbCidadeIdentFkRegiaoComposicao
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao 
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao 
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao 
    Limit tbInicio, tbQtde;   
  ElseIf
     ((tbRegiaoComposicaoIdent = '') && (tbRegiaoIdentFkRegiaoComposicao = '') && (tbCidadeIdentFkRegiaoComposicao = '')) Then
    Select 
      RegiaoComposicaoIdent, 
        RegiaoIdentFkRegiaoComposicao,
          RegiaoCod,
          RegiaoDescr,
        CidadeIdentFkRegiaoComposicao,
          CidadeNome,
        EstadoSiglaFkCidade,
      RegiaoComposicaoExcluido
    From tbregiaocomposicao, tbregiao, tbcidade
    Where RegiaoComposicaoExcluido is null
    And   RegiaoIdent = RegiaoIdentFkRegiaoComposicao
    And   CidadeIdent = CidadeIdentFkRegiaoComposicao 
    Limit tbInicio, tbQtde;     
    
       
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbsecao`(
IN 
tbSecaoIdent Int(11), 
tbSecaoCod VarChar(20), 
tbSecaoNome VarChar(200), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbSecaoIdent != '' Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoIdent = tbSecaoIdent
    And SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent;
  ElseIf
    tbSecaoCod != '' Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoCod = tbSecaoCod
    And SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent;
  ElseIf
    tbSecaoNome != '' Then    
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoNome = tbSecaoNome
    And SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      SecaoIdent, 
      SecaoCod,
        EmpresaIdentFkSecao,
        EmpresaCod,
        EmpresaRazaoSocial,
      SecaoClassif,
      SecaoNome,
      SecaoCompl,
      SecaoDescMax,
      SecaoMargemLucro,
      SecaoDescMaxUsu,
      SecaoFoto,
      SecaoExcluido
    From tbsecao,
         tbempresa
    Where SecaoExcluido is null
    And EmpresaIdentFkSecao = EmpresaIdent
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbtipocontato`(
IN 
tbTipoContatoIdent Int(11), 
tbTipoContatoCod VarChar(20), 
tbTipoContatoDescr VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbTipoContatoIdent != '' Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoIdent = tbTipoContatoIdent
    And TipoContatoExcluido is null;
  ElseIf
    tbTipoContatoCod != '' Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoCod = tbTipoContatoCod
    And TipoContatoExcluido is null;
  ElseIf
    tbTipoContatoDescr != '' Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoDescr = tbTipoContatoDescr
    And TipoContatoExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoExcluido is null;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoExcluido is null
    Limit 0, tbQtde; 
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      TipoContatoIdent, 
      TipoContatoCod,
      TipoContatoDescr,
      TipoContatoExcluido
    From tbtipocontato
    Where TipoContatoExcluido is null
    Limit tbInicio, tbQtde;          
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbtipoemail`(
IN 
tbTipoEmailIdent Int(11), 
tbTipoEmailCod VarChar(10), 
tbTipoEmailDescr VarChar(100), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbTipoEmailIdent != '' Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailIdent = tbTipoEmailIdent
    And TipoEmailExcluido is null;
  ElseIf
    tbTipoEmailCod != '' Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailCod = tbTipoEmailCod
    And TipoEmailExcluido is null;
  ElseIf
    tbTipoEmailDescr != '' Then    
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailDescr = tbTipoEmailDescr
    And TipoEmailExcluido is null;    
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailExcluido is null; 
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailExcluido is null 
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailExcluido is null 
    Limit 0, tbQtde;
  ElseIf    
    ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    TipoEmailIdent,
    TipoEmailCod,
    TipoEmailDescr,
    TipoEmailExcluido
    From tbtipoemail
    Where TipoEmailExcluido is null 
    Limit tbInicio, tbQtde;    
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbtipoendereco`(
IN 
tbTipoEnderecoIdent Int(11), 
tbTipoEnderecoCod VarChar(10), 
tbTipoEnderecoDescr VarChar(100),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbTipoEnderecoIdent != '' Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoIdent = tbTipoEnderecoIdent
    And TipoEnderecoExcluido is null;
  ElseIf
    tbTipoEnderecoCod != '' Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoCod = tbTipoEnderecoCod
    And TipoEnderecoExcluido is null;    
  ElseIf
    tbTipoEnderecoDescr != '' Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoDescr = tbTipoEnderecoDescr
    And TipoEnderecoExcluido is null;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoExcluido is null; 
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoExcluido is null
    Limit tbInicio, 1000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoExcluido is null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      TipoEnderecoIdent, 
      TipoEnderecoCod,
      TipoEnderecoDescr
    From tbtipoendereco
    Where TipoEnderecoExcluido is null  
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbtipofone`(
IN 
tbTipoFoneIdent Int(11), 
tbTipoFoneCod VarChar(10), 
tbTipoFoneDescr VarChar(100), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbTipoFoneIdent != '' Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneIdent = tbTipoFoneIdent
    And TipoFoneExcluido is null;
  ElseIf
    tbTipoFoneCod != '' Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneCod = tbTipoFoneCod
    And TipoFoneExcluido is null;
  ElseIf
    tbTipoFoneDescr != '' Then    
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneDescr = tbTipoFoneDescr
    And TipoFoneExcluido is null;   
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneExcluido is null;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneExcluido is null 
    Limit 0, tbQtde;
   ElseIf  
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    TipoFoneIdent,
    TipoFoneCod,
    TipoFoneDescr,
    TipoFoneExcluido
    From tbtipofone
    Where TipoFoneExcluido is null
    Limit tbInicio, tbQtde;     
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultatbunidmedida`(
IN 
tbUnidMedidaIdentif Int(11), 
tbUnidMedidaNome VarChar(100), 
tbUnidMedidaAbrev VarChar(10), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbUnidMedidaIdentif != '' Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaIdentif = tbUnidMedidaIdentif
    And UnidMedidaExcluido is null;
  ElseIf
    tbUnidMedidaNome != '' Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaNome = tbUnidMedidaNome
    And UnidMedidaExcluido is null;
  ElseIf
    tbUnidMedidaAbrev != '' Then    
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaAbrev = tbUnidMedidaAbrev
    And UnidMedidaExcluido is null; 
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaExcluido is null;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaExcluido is null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaExcluido is null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      UnidMedidaIdentif, 
      UnidMedidaNome,
      UnidMedidaAbrev,
      UnidMedidaPesavel,
      UnidMedidaFatorConvEstoque,
      UnidMedidaExcluido
    From tbunidmedida
    Where UnidMedidaExcluido is null
    Limit tbInicio, tbQtde;      
  End If;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDelete tbprodutoempresatrib`(
IN 
tbProdutoEmpresaTribIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoEmpresaTrib Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbProdutoEmpresaTribIdent = '')  && (tbProdutoEmpresaIdentFkProdutoEmpresaTrib = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutoempresatrib: Identificador ou Produto/Tributação não informado!' As Msg;
 ElseIf 
    ((tbProdutoEmpresaTribIdent != '') && (Not Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutoempresatrib: Produto/Tributação não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') && (Not Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutoempresatrib: Produto/Tributaçãp (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoEmpresaTribIdent != '') && (Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent))) Then 
    Update tbprodutoempresatrib
    Set ProdutoEmpresaTribExcluido = 1
    Where ProdutoEmpresaTribIdent =  tbProdutoEmpresaTribIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutoempresatrib: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') && (Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib))) Then 
    Update tbprodutoempresatrib
    Set ProdutoEmpresaTribExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoEmpresaTrib =  tbProdutoEmpresaIdentFkProdutoEmpresaTrib
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutoempresatrib: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbadicional`(
IN 
tbAdicionalIdent Int(11), 
tbAdicionalCod VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbAdicionalIdent != '') Then
    Set ChaveConsulta = tbAdicionalIdent;
 End If;
 
 If ((tbAdicionalIdent = '')  && (tbAdicionalCod != '')) Then
  Select AdicionalIdent Into ChaveConsulta
  From tbadicional
  Where AdicionalCod = tbAdicionalCod
  Limit 1;
 End If;  

 If ((tbAdicionalIdent = '')  && (tbAdicionalCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbadicional: Identificador ou Código do Adicional não informado!' As Msg;
 ElseIf 
    ((tbAdicionalIdent != '') && (Not Exists(Select AdicionalIdent From tbadicional Where AdicionalIdent = tbAdicionalIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbadicional: Adicional não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbAdicionalCod != '') && (Not Exists(Select AdicionalCod From tbadicional Where AdicionalCod = tbAdicionalCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbadicional: Adicional não localizado pelo Código' As Msg;
 ElseIf
    Exists(Select AdicionalIdentFkProdutoAdicional From tbprodutoadicional Where AdicionalIdentFkProdutoAdicional = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbadicional: Existe Produto/Adicional Cadastrado para este Adicional' As Msg;    
 ElseIf  
    ((tbAdicionalIdent != '') && (Exists(Select AdicionalIdent From tbadicional Where AdicionalIdent = tbAdicionalIdent))) Then 
    Update tbadicional
    Set AdicionalExcluido = 1
    Where AdicionalIdent =  tbAdicionalIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbadicional: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbAdicionalCod != '') && (Exists(Select AdicionalCod From tbadicional Where AdicionalCod = tbAdicionalCod))) Then 
    Update tbadicional
    Set AdicionalExcluido = 1
    Where AdicionalCod =  tbAdicionalCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbadicional: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbcep`(
IN 
tbCEPIdent Int(11), 
tbCEPCod Char(8),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbCEPIdent = '')  && (tbCEPCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbcep: Código ou CEP não informado!' As Msg;
 ElseIf 
    ((tbCEPIdent != '') && (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbcep: CEP não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbCEPCod != '') && (Not Exists(Select CEPCod From tbcep Where CEPCod = tbCEPCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbcep: Código CEP não localizada pelo Código' As Msg;
ElseIf
    (Select Count(CEPCod) From tbcep Where CEPCod = tbCEPCod) > 1 Then
    Select 1 as CodRetorno, 'MSG004/SpDeletetbcep: Existe mais de um CEP para o Código Informado' As Msg;    
 ElseIf  
    ((tbCEPIdent != '') && (Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdent))) Then 
    Update tbcep
    Set CEPExcluido = 1
    Where CEPIdent =  tbCEPIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbcep: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbCEPCod != '') && (Exists(Select tbCEPCod From tbcep Where CEPCod = tbCEPCod))) Then 
    Update tbcep
    Set CEPExcluido = 1
    Where CEPCod =  tbCEPCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbcep: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbcest`(
IN 
tbCESTIdent Int(11), 
tbCESTCod Char(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbCESTIdent != '') Then
    Set ChaveConsulta = tbCESTIdent;
 End If;
 
 If ((tbCESTIdent = '')  && (tbCESTCod = '')) Then
  Select CESTIdent Into ChaveConsulta
  From tbcest
  Where CESTIdent = tbCESTIdent
  Limit 1;
 End If;  

 If ((tbCESTIdent = '')  && (tbCESTCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbcest: Identificador ou Código ou CEST não informado!' As Msg;
 ElseIf 
    ((tbCESTIdent != '') && (Not Exists(Select CESTIdent From tbcest Where CESTIdent = tbCESTIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbcest: CEST não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbCESTCod != '') && (Not Exists(Select CESTCod From tbcest Where CESTCod = tbCESTCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbcest: CEST não localizada pelo Código' As Msg;
 ElseIf
    Exists(Select CESTIdentFkProdutoEmpresa From tbprodutoempresa Where CESTIdentFkProdutoEmpresa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbcest: Existe Produto/Empresa Cadastrado para este CEST' As Msg;    
 ElseIf  
    ((tbCESTIdent != '') && (Exists(Select CESTIdent From tbcest Where CESTIdent = tbCESTIdent))) Then 
    Update tbcest
    Set CESTExcluido = 1
    Where CESTIdent =  tbCESTIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbcest: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbCESTCod != '') && (Exists(Select CESTCod From tbcest Where CESTCod = tbCESTCod))) Then 
    Update tbcest
    Set CESTExcluido = 1
    Where CESTCod =  tbCESTCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbcest: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbcfop`(
IN 
tbCFOPIdent Int(11), 
tbCFOPCod SmallInt(4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbCFOPIdent != '') Then
    Set ChaveConsulta = tbCFOPIdent;
 End If;
 
 If ((tbCFOPIdent = '')  && (tbCFOPCod != '')) Then
  Select CFOPIdent Into ChaveConsulta
  From tbcfop
  Where CFOPCod = tbCFOPCod
  Limit 1;
 End If;  

 If ((tbCFOPCod = '')  && (tbCFOPCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbcfop: Identificador ou Código do CFOP não informado!' As Msg;
 ElseIf 
    ((tbCFOPIdent != '') && (Not Exists(Select CFOPIdent From tbcfop Where CFOPIdent = tbCFOPIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbcfop: CFOP não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbCFOPCod != '') && (Not Exists(Select CFOPCod From tbcfop Where CFOPCod = tbCFOPCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbcfop: CFOP não localizado pelo Código' As Msg;
 ElseIf
    Exists(Select CFOPIdentFkProdutoEmpresa From tbprodutoempresa Where CFOPIdentFkProdutoEmpresa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbcfop: Existe Produto/Empresa Cadastrado para este CFOP' As Msg;  
 ElseIf  
    ((tbCFOPIdent != '') && (Exists(Select CFOPIdent From tbcfop Where CFOPIdent = tbCFOPIdent))) Then 
    Update tbcfop
    Set CFOPExcluido = 1
    Where CFOPIdent =  tbCFOPIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbcfop: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbCFOPCod != '') && (Exists(Select CFOPCod From tbcfop Where CFOPCod = tbCFOPCod))) Then 
    Update tbcfop
    Set CFOPExcluido = 1
    Where CFOPCod =  tbCFOPCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbcfop: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbcidade`(
IN 
tbCidadeIdent Int(11),
tbCidadeCod VarChar(10), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbCidadeIdent = '')  && (tbCidadeCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbcidade: Identificador ou Código da Cidade não informado!' As Msg;
 ElseIf 
    ((tbCidadeIdent != '') && (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbcidade: Cidade não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbCidadeCod != '') && (Not Exists(Select CidadeCod From tbcidade Where CidadeCod = tbCidadeCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbcidade: Cidade não localizada pelo Código' As Msg;
 ElseIf  
    ((tbCidadeIdent != '') && (Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdent))) Then 
    Update tbcidade
    Set CidadeExcluido = 1
    Where CidadeIdent =  tbCidadeIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbcidade: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbCidadeCod != '') && (Exists(Select CidadeCod From tbcidade Where CidadeCod = tbCidadeCod))) Then 
    Update tbcidade
    Set CidadeExcluido = 1
    Where CidadeNome =  tbCidadeNome
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbcidade: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbempresa`(
IN 
tbEmpresaIdent Int(11), 
tbEmpresaCod VarChar(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbEmpresaIdent = '')  && (tbEmpresaCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbempresa: Identificador ou Código da Empresa não informado!' As Msg;
 ElseIf 
    ((Select Count(EmpresaIdent) From tbempresa) <= 1) Then
    Select 1 as CodRetorno, 'MSG002/SpDeletetbempresa: Existe apenas uma empresa na base de dados não sendo possível exclui-la!' As Msg;
 ElseIf 
    ((tbEmpresaIdent != '') && (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdent))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbempresa: Empresa não localizada pelo Identificador!' As Msg;
 ElseIf
    ((tbEmpresaCod != '') && (Not Exists(Select EmpresaCod From tbempresa Where EmpresaCod = tbEmpresaCod))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbempresa:  Empresa não localizada pelo Código!' As Msg;
 ElseIf  
    ((tbEmpresaIdent != '') && (Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdent))) Then 
    Update tbempresa
    Set EmpresaExcluido = 1
    Where EmpresaIdent =  tbEmpresaIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbempresa: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbEmpresaCod != '') && (Exists(Select EmpresaCod From tbempresa Where EmpresaCod = tbEmpresaCod))) Then 
    Update tbempresa
    Set EmpresaExcluido = 1
    Where EmpresaCod =  tbEmpresaCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbempresa: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbempresaemail`(
IN 
tbEmpresaEmailIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbEmpresaEmailIdent = '')  Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbempresaemail: Identificador do Email da Empresa não informado!' As Msg;
 ElseIf
    ((tbEmpresaEmailIdent != '') && (Not Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaEmailIdent = tbEmpresaEmailIdent))) Then
    Select 1 as CodRetorno, 'MSG002/SpDeletetbempresaemail: Identificador do Email da Empresa não localizado!' As Msg;    
 ElseIf  
    ((tbEmpresaEmailIdent != '') && (Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaEmailIdent = tbEmpresaEmailIdent))) Then 
    Update tbempresaemail
    Set EmpresaEmailExcluido = 1
    Where EmpresaEmailIdent =  tbEmpresaEmailIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0003/SpDeletetbempresaemail: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbempresafone`(
IN 
tbEmpresaFoneIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbEmpresaFoneIdent = '')  Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbempresafone: Identificador do Fone da Empresa não informado!' As Msg;
 ElseIf
    ((tbEmpresaFoneIdent != '') && (Not Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaFoneIdent = tbEmpresaFoneIdent))) Then
    Select 1 as CodRetorno, 'MSG002/SpDeletetbempresafone: Identificador do Fone da Empresa não localizado!' As Msg;    
 ElseIf  
    ((tbEmpresaFoneIdent != '') && (Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaFoneIdent = tbEmpresaFoneIdent))) Then 
    Update tbempresafone
    Set EmpresaFoneExcluido = 1
    Where EmpresaFoneIdent =  tbEmpresaFoneIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0003/SpDeletetbempresafone: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbempresalocal`(
IN 
tbEmpresaLocalIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbEmpresaLocalIdent = '') Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbempresalocal: Identificador do Local da Empresa não informado!' As Msg;
 ElseIf 
    ((tbEmpresaLocalIdent != '') && (Not Exists(Select EmpresaLocalIdent From tbempresalocal Where EmpresaLocalIdent = tbEmpresaLocalIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbempresalocal: Local da Empresa não localizado pelo Identificador!' As Msg;
 ElseIf  
    ((tbEmpresaLocalIdent != '') && (Exists(Select EmpresaLocalIdent From tbempresalocal Where EmpresaLocalIdent = tbEmpresaLocalIdent))) Then 
    Update tbempresalocal
    Set EmpresaLocalExcluido = 1
    Where EmpresaLocalIdent =  tbEmpresaLocalIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0003/SpDeletetbempresalocal: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbempresalogo`(
IN 
tbEmpresaLogoIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbEmpresaLogoIdent = '')  Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbempresalogo: Identificador do Logo da Empresa não informado!' As Msg;
 ElseIf
    ((tbEmpresaLogoIdent != '') && (Not Exists(Select EmpresaLogoIdent From tbempresalogo Where EmpresaLogoIdent = tbEmpresaLogoIdent))) Then
    Select 1 as CodRetorno, 'MSG002/SpDeletetbempresalogo: Identificador do Logo da Empresa não localizado!' As Msg;    
 ElseIf  
    ((tbEmpresaLogoIdent != '') && (Exists(Select EmpresaLogoIdent From tbempresalogo Where EmpresaLogoIdent = tbEmpresaLogoIdent))) Then 
    Update tbempresalogo
    Set EmpresaLogoExcluido = 1
    Where EmpresaLogoIdent =  tbEmpresaLogoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0003/SpDeletetbempresalogo: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbestado`(
IN 
tbEstadoIdent Int(11), 
tbEstadoNome VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbEstadoIdent = '')  && (tbEstadoNome = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbestado: Código ou Nome do Estado não informado!' As Msg;
 ElseIf 
    ((tbEstadoIdent != '') && (Not Exists(Select EstadoIdent From tbestado Where EstadoIdent = tbEstadoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbestado: Estado não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbEstadoNome != '') && (Not Exists(Select EstadoIdent From tbestado Where EstadoNome = tbEstadoNome))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbestado: Estado não localizado pelo Nome' As Msg;
 ElseIf  
    ((tbEstadoIdent != '') && (tbEstadoNome = '') && (Exists(Select EstadoIdent From tbestado Where EstadoIdent = tbEstadoIdent))) Then 
    Update tbestado
    Set EstadoExcluido = 1
    Where EstadoIdent =  tbEstadoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbestado: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbEstadoNome != '') && (tbEstadoIdent = '') && (Exists(Select EstadoIdent From tbestado Where EstadoNome = tbEstadoNome))) Then 
    Update tbestado
    Set EstadoExcluido = 1
    Where EstadoNome =  tbEstadoNome
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbestado: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbestadocivil`(
IN 
tbEstadoCivilIdent Int(11), 
tbEstadoCivilSigla VarChar(7), 
tbEstadoCivilDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbEstadoCivilIdent != '') Then
    Set ChaveConsulta = tbEstadoCivilIdent;
 ElseIf
    ((tbEstadoCivilIdent = '')  && (tbEstadoCivilSigla != '')) Then
    Select EstadoCivilIdent Into ChaveConsulta
    From tbestadocivil
    Where EstadoCivilSigla = tbEstadoCivilSigla
    Limit 1;
 ElseIf
    ((tbEstadoCivilIdent = '')  && (tbEstadoCivilDescr != '')) Then
    Select EstadoCivilIdent Into ChaveConsulta
    From tbestadocivil
    Where EstadoCivilDescr = tbEstadoCivilDescr
    Limit 1;  
 End If;
 
 If ((tbEstadoCivilIdent = '')  && (tbEstadoCivilSigla = '') && (tbEstadoCivilDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbestadocivil: Identificador, Código ou Descrição do Estado Civil não informado!' As Msg;
 ElseIf 
    ((tbEstadoCivilIdent != '') && (Not Exists(Select EstadoCivilIdent From tbestadocivil Where EstadoCivilIdent = tbEstadoCivilIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbestadocivil: Estado Civil não localizado pelo Identificador' As Msg;
 ElseIf 
    ((tbEstadoCivilSigla != '') && (Not Exists(Select EstadoCivilSigla From tbestadocivil Where EstadoCivilSigla = tbEstadoCivilSigla))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbestadocivil: Estado Civil não localizada pelo Código' As Msg;
 ElseIf 
    ((tbEstadoCivilDescr != '') && (Not Exists(Select EstadoCivilDescr From tbestadocivil Where EstadoCivilDescr = tbEstadoCivilDescr))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbestadocivil: Estado Civil não localizado pela Descrição' As Msg;
  ElseIf 
    Exists(Select EstadoCivilIdentFkPessoa From tbpessoa Where EstadoCivilIdentFkPessoa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbestadocivil: Existe Pessoa cadastrada para este Estado Civil' As Msg;        
 ElseIf  
    ((tbEstadoCivilIdent != '') && (Exists(Select EstadoCivilIdent From tbestadocivil Where EstadoCivilIdent = tbEstadoCivilIdent))) Then 
    Update tbestadocivil
    Set EstadoCivilExcluido = 1
    Where EstadoCivilIdent =  tbEstadoCivilIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbestadocivil: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbEstadoCivilSigla != '') && (Exists(Select EstadoCivilSigla From tbestadocivil Where EstadoCivilSigla = tbEstadoCivilSigla))) Then 
    Update tbestadocivil
    Set EstadoCivilExcluido = 1
    Where EstadoCivilSigla =  tbEstadoCivilSigla
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbestadocivil: Exclusão realizada com sucesso!' As Msg;    
 ElseIf
    ((tbEstadoCivilDescr != '') && (Exists(Select EstadoCivilDescr From tbestadocivil Where EstadoCivilDescr = tbEstadoCivilDescr))) Then 
    Update tbestadocivil
    Set EstadoCivilExcluido = 1
    Where EstadoCivilDescr =  tbEstadoCivilDescr
    Limit 1;    
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbestadocivil: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbgrade`(
IN 
tbGradeIdent Int(11), 
tbGradeCod VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbGradeIdent != '') Then
    Set ChaveConsulta = tbGradeIdent;
 End If;
 
 If ((tbGradeIdent = '')  && (tbGradeCod != '')) Then
  Select CFOPIdent Into ChaveConsulta
  From tbgrade
  Where GradeCod = tbGradeCod
  Limit 1;
 End If;  

 If ((tbGradeIdent = '')  && (tbGradeCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbgrade: Identificador ou Código da Grade não informado!' As Msg;
 ElseIf 
    ((tbGradeIdent != '') && (Not Exists(Select GradeIdent From tbgrade Where GradeIdent = tbGradeIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbgrade: Grade não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbGradeCod != '') && (Not Exists(Select GradeCod From tbgrade Where GradeCod = tbGradeCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbgrade: Grade não localizada pelo Código' As Msg;
 ElseIf
    Exists(Select GradeIdentFkProdutoGrade From tbprodutograde Where GradeIdentFkProdutoGrade = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbgrade: Existe Produto/Grade Cadastrado para esta Grade' As Msg; 
 ElseIf  
    ((tbGradeIdent != '') && (Exists(Select GradeIdent From tbgrade Where GradeIdent = tbGradeIdent))) Then 
    Update tbgrade
    Set GradeExcluido = 1
    Where GradeIdent =  tbGradeIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbgrade: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbGradeCod != '') && (Exists(Select GradeCod From tbgrade Where GradeCod = tbGradeCod))) Then 
    Update tbgrade
    Set GradeExcluido = 1
    Where GradeCod =  tbGradeCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbgrade: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbindicinscrestad`(
IN 
tbIndicInscEstadIdent Int(11), 
tbIndicInscEstadCod VarChar(3), 
tbIndicInscEstadDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbIndicInscEstadIdent != '') Then
    Set ChaveConsulta = tbIndicInscEstadIdent;
 ElseIf
    ((tbIndicInscEstadIdent = '')  && (tbIndicInscEstadCod != '')) Then
    Select IndicInscEstadIdent Into ChaveConsulta
    From tbindicinscrestad
    Where IndicInscEstadCod = tbIndicInscEstadCod
    Limit 1;
 ElseIf
    ((tbIndicInscEstadIdent = '')  && (tbIndicInscEstadDescr != '')) Then
    Select IndicInscEstadIdent Into ChaveConsulta
    From tbindicinscrestad
    Where IndicInscEstadDescr = tbIndicInscEstadDescr
    Limit 1;  
 End If;
 


 If ((tbIndicInscEstadIdent = '')  && (tbIndicInscEstadCod = '') && (tbIndicInscEstadDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbindicinscrestad: Identificador, Código ou Descrição do Indicador de IE não informado!' As Msg;
 ElseIf 
    ((tbIndicInscEstadIdent != '') && (Not Exists(Select IndicInscEstadIdent From tbindicinscrestad Where IndicInscEstadIdent = tbIndicInscEstadIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbindicinscrestad: Indicador de IE não localizado pelo Identificador' As Msg;
 ElseIf 
    ((tbIndicInscEstadCod != '') && (Not Exists(Select IndicInscEstadCod From tbindicinscrestad Where IndicInscEstadCod = tbIndicInscEstadCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbindicinscrestad: Código do Indicador de IE não localizado pelo Código' As Msg;
 ElseIf 
    ((tbIndicInscEstadDescr != '') && (Not Exists(Select IndicInscEstadDescr From tbindicinscrestad Where IndicInscEstadDescr = tbIndicInscEstadDescr))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbindicinscrestad: Descrição do Indicador de IE não localizado pela Descrição' As Msg;
ElseIf 
    Exists(Select IndicInscEstadIdentFkPessoa From tbpessoa Where IndicInscEstadIdentFkPessoa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbtipocontato: Existe Pessoa cadastrada para este Indicador de IE' As Msg;        
 ElseIf  
    ((tbIndicInscEstadIdent != '') && (Exists(Select IndicInscEstadIdent From tbindicinscrestad Where IndicInscEstadIdent = tbIndicInscEstadIdent))) Then 
    Update tbindicinscrestad
    Set IndicInscEstadExcluido = 1
    Where IndicInscEstadIdent =  tbIndicInscEstadIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbindicinscrestad: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbIndicInscEstadCod != '') && (Exists(Select IndicInscEstadCod From tbtipocontato Where IndicInscEstadCod = tbIndicInscEstadCod))) Then 
    Update tbindicinscrestad
    Set IndicInscEstadExcluido = 1
    Where IndicInscEstadCod =  tbIndicInscEstadCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbindicinscrestad: Exclusão realizada com sucesso!' As Msg;    
 ElseIf
    ((tbIndicInscEstadDescr != '') && (Exists(Select IndicInscEstadDescr From tbindicinscrestad Where IndicInscEstadDescr = tbIndicInscEstadDescr))) Then 
    Update tbindicinscrestad
    Set IndicInscEstadExcluido = 1
    Where IndicInscEstadDescr =  tbIndicInscEstadDescr
    Limit 1;    
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbindicinscrestad: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbncm`(
IN 
tbNCMIdent Int(11), 
tbNCMCod VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbNCMIdent != '') Then
    Set ChaveConsulta = tbNCMIdent;
 End If;
 
 If ((tbNCMIdent = '')  && (tbNCMCod != '')) Then
  Select NCMIdent Into ChaveConsulta
  From tbncm
  Where NCMCod = tbNCMCod
  Limit 1;
 End If;  

 If ((tbNCMIdent = '')  && (tbNCMCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbncm: Identificador ou Código da NCM não informado!' As Msg;
 ElseIf 
    ((tbNCMIdent != '') && (Not Exists(Select NCMIdent From tbncm Where NCMIdent = tbNCMIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbncm: NCM não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbNCMCod != '') && (Not Exists(Select NCMCod From tbncm Where NCMCod = tbNCMCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbncm: NCM não localizado pelo Código' As Msg;
 ElseIf
    Exists(Select NCMIdentFkCEST From tbcest Where NCMIdentFkCEST = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbncm: Existe CEST Cadastrado para esta NCM' As Msg;    
 ElseIf
    Exists(Select NCMIdentFkProdutoEmpresa From tbprodutoempresa Where NCMIdentFkProdutoEmpresa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbncm: Existe Produto/Empresa Cadastrado para esta NCM' As Msg;    
 ElseIf  
    ((tbNCMIdent != '') && (Exists(Select NCMIdent From tbncm Where NCMIdent = tbNCMIdent))) Then 
    Update tbncm
    Set NCMExcluido = 1
    Where NCMIdent =  tbNCMIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbncm: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbNCMCod != '') && (Exists(Select NCMCod From tbncm Where NCMCod = tbNCMCod))) Then 
    Update tbncm
    Set NCMExcluido = 1
    Where NCMCod =  tbNCMCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbncm: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbocupacao`(
IN 
tbOcupacaoIdent Int(11), 
tbOcupacaoCod VarChar(7), 
tbOcupacaoTitulo VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbOcupacaoIdent != '') Then
    Set ChaveConsulta = tbOcupacaoIdent;
 ElseIf
    ((tbOcupacaoIdent = '')  && (tbOcupacaoCod != '')) Then
    Select OcupacaoIdent Into ChaveConsulta
    From tbocupacao
    Where OcupacaoCod = tbOcupacaoCod
    Limit 1;
 ElseIf
    ((tbOcupacaoIdent = '')  && (tbOcupacaoTitulo != '')) Then
    Select OcupacaoIdent Into ChaveConsulta
    From tbocupacao
    Where OcupacaoTitulo = tbOcupacaoTitulo
    Limit 1;  
 End If;

 If ((tbOcupacaoIdent = '')  && (tbOcupacaoCod = '') && (tbOcupacaoTitulo = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbocupacao: Identificador, Código ou Descrição da Ocupação não informado!' As Msg;
 ElseIf 
    ((tbOcupacaoIdent != '') && (Not Exists(Select OcupacaoIdent From tbocupacao Where OcupacaoIdent = tbOcupacaoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbocupacao: Ocupação não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbOcupacaoCod != '') && (Not Exists(Select OcupacaoCod From tbocupacao Where OcupacaoCod = tbOcupacaoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbocupacao: Ocupação não localizada pelo Código' As Msg;
 ElseIf 
    ((tbOcupacaoTitulo != '') && (Not Exists(Select OcupacaoTitulo From tbocupacao Where OcupacaoTitulo = tbOcupacaoTitulo))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbocupacao: Ocupação não localizada pela Descrição' As Msg;
  ElseIf 
    Exists(Select OcupacaoIdentFkPessoa From tbpessoa Where OcupacaoIdentFkPessoa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbtipocontato: Existe Pessoa cadastrada para esta Ocupação' As Msg;        
 ElseIf  
    ((tbOcupacaoIdent != '') && (Exists(Select OcupacaoIdent From tbocupacao Where OcupacaoIdent = tbOcupacaoIdent))) Then 
    Update tbocupacao
    Set OcupacaoExcluido = 1
    Where OcupacaoIdent =  tbOcupacaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbocupacao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbOcupacaoCod != '') && (Exists(Select OcupacaoCod From tbocupacao Where OcupacaoCod = tbOcupacaoCod))) Then 
    Update tbocupacao
    Set OcupacaoExcluido = 1
    Where OcupacaoCod =  tbOcupacaoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbocupacao: Exclusão realizada com sucesso!' As Msg;    
 ElseIf
    ((tbOcupacaoTitulo != '') && (Exists(Select OcupacaoTitulo From tbocupacao Where OcupacaoTitulo = tbOcupacaoTitulo))) Then 
    Update tbocupacao
    Set OcupacaoExcluido = 1
    Where OcupacaoTitulo =  tbOcupacaoTitulo
    Limit 1;    
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbocupacao: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpais`(
IN 
tbPaisIdent Int(11), 
tbPaisNome VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPaisIdent = '')  && (tbPaisNome = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpais: Código ou Nome do Pais não informado!' As Msg;
 ElseIf 
    ((tbPaisIdent != '') && (Not Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpais: Pais não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbPaisNome != '') && (Not Exists(Select PaisIdent From tbpais Where PaisNome = tbPaisNome))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpais: Pais não localizado pelo Nome' As Msg;
 ElseIf  
    ((tbPaisIdent != '') && (tbPaisNome != '') && (Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdent))) Then 
    Update tbpais
    Set PaisExcluido = 1
    Where PaisIdent =  tbPaisIdent
    Limit 1;
    Select 0 As CodigoRetorno, 'MSG0004/SpDeletetbpais: Exclusão realizada com sucesso!' As Msg;
ElseIf   
    ((tbPaisIdent != '') && (tbPaisNome = '') && (Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdent))) Then 
    Update tbpais
    Set PaisExcluido = 1
    Where PaisIdent =  tbPaisIdent
    Limit 1;
    Select 0 As CodigoRetorno, 'MSG0005/SpDeletetbpais: Exclusão realizada com sucesso!' As Msg;  
 ElseIf
    ((tbPaisNome != '') && (tbPaisIdent = '') && (Exists(Select PaisIdent From tbpais Where PaisNome = tbPaisNome))) Then 
    Update tbpais
    Set PaisExcluido = 1
    Where PaisNome =  tbPaisNome
    Limit 1;
    Select 0 As CodigoRetorno, 'MSG0006/SpDeletetbpais: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoa`(
IN 
tbPessoaIdent Int(11), 
tbPessoaCod Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbPessoaIdent != '') Then
    Set ChaveConsulta = tbPessoaIdent;
 ElseIf
    ((tbPessoaIdent = '')  && (tbPessoaCod != '')) Then
    Select PessoaIdent Into ChaveConsulta
    From tbpessoa
    Where PessoaCod = tbPessoaCod
    Limit 1;
End If;

 If ((tbPessoaIdent = '')  && (tbPessoaCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoa: Identificador ou Código da Pessoa não informado!' As Msg;
 ElseIf 
    ((tbPessoaIdent != '') && (Not Exists(Select PessoaIdent From tbpessoa Where PessoaIdent = tbPessoaIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoa: Pessoa não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaCod != '') && (Not Exists(Select PessoaCod From tbpessoa Where PessoaCod = tbPessoaCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoa: Pessoa não localizada pelo Código' As Msg;
 ElseIf  
    ((tbPessoaIdent != '') && (Exists(Select PessoaIdent From tbpessoa Where PessoaIdent = tbPessoaIdent))) Then 
    Update tbpessoa
    Set PessoaExcluido = 1
    Where PessoaIdent =  tbPessoaIdent
    Limit 1;
    Update tbpessoaempresa
    Set PessoaEmpresaExcluido = 1
    Where PessoaIdentFkPessoaEmpresa =  tbPessoaIdent;
    Update tbpessoalocal
    Set PessoaLocalExcluido = 1
    Where PessoaIdentFkPessoaLocal =  tbPessoaIdent;  
    Update tbpessoafone
    Set PessoaFoneExcluido = 1
    Where PessoaIdentFkPessoaFone =  tbPessoaIdent;    
    Update tbpessoaemail
    Set PessoaEmailExcluido = 1
    Where PessoaIdentFkPessoaEmail =  tbPessoaIdent;     
    Update tbpessoacontato
    Set PessoaContatoExcluido = 1
    Where PessoaIdentFkPessoaContato =  tbPessoaIdent;    
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbpessoa: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaCod != '') &&
    (Exists(Select tbPessoaCod From tbpessoaempresa Where tbPessoaCod = tbPessoaCod))) Then 
    Update tbpessoa
    Set PessoaExcluido = 1
    Where PessoaCod =  tbPessoaCod
    Limit 1;
    Update tbpessoaempresa
    Set PessoaEmpresaExcluido = 1
    Where PessoaIdentFkPessoaEmpresa =  ChaveConsulta;
    Update tbpessoalocal
    Set PessoaLocalExcluido = 1
    Where PessoaIdentFkPessoaLocal =  ChaveConsulta;  
    Update tbpessoafone
    Set PessoaFoneExcluido = 1
    Where PessoaIdentFkPessoaFone =  ChaveConsulta;    
    Update tbpessoaemail
    Set PessoaEmailExcluido = 1
    Where PessoaIdentFkPessoaEmail =  ChaveConsulta;     
    Update tbpessoacontato
    Set PessoaContatoExcluido = 1
    Where PessoaIdentFkPessoaContato =  ChaveConsulta;     
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoaempresa: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoacontato`(
IN 
tbPessoaContatoIdent Int(11), 
tbPessoaIdentFkPessoaContato Int(11), 
tbPessoaContatoNome VarChar(200), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPessoaContatoIdent = '')  && (tbPessoaIdentFkPessoaContato = '') && (tbPessoaContatoNome = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoacontato: Identificador, Pessoa ou Nome para Pessoa/Contato não informado!' As Msg;
 ElseIf 
    ((tbPessoaContatoIdent != '') && (Not Exists(Select PessoaContatoIdent From tbpessoacontato Where PessoaContatoIdent = tbPessoaContatoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoacontato: Pessoa/Contato não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaIdentFkPessoaContato != '') && (Not Exists(Select PessoaIdentFkPessoaContato From tbpessoacontato Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoacontato: Pessoa/Contato não localizada pelo Identificador da Pessoa' As Msg;
 ElseIf 
    ((tbPessoaContatoNome != '') && (Not Exists(Select PessoaContatoNome From tbpessoacontato Where PessoaContatoNome = tbPessoaContatoNome))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbpessoacontato: Pessoa/Contato não localizado pela Nome' As Msg;
 ElseIf  
    ((tbPessoaContatoIdent != '') && (Exists(Select PessoaContatoIdent From tbpessoacontato Where PessoaContatoIdent = tbPessoaContatoIdent))) Then 
    Update tbpessoacontato
    Set PessoaContatoExcluido = 1
    Where PessoaContatoIdent =  tbPessoaContatoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoacontato: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaIdentFkPessoaContato != '') && (Exists(Select PessoaIdentFkPessoaContato From tbpessoacontato Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato))) Then 
    Update tbpessoacontato
    Set PessoaContatoExcluido = 1
    Where PessoaIdentFkPessoaContato =  tbPessoaIdentFkPessoaContato
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbpessoacontato: Exclusão realizada com sucesso!' As Msg;    
 ElseIf
    ((tbPessoaContatoNome != '') && (Exists(Select PessoaContatoNome From tbpessoacontato Where PessoaContatoNome = tbPessoaContatoNome))) Then 
    Update tbpessoacontato
    Set PessoaContatoExcluido = 1
    Where PessoaContatoNome =  tbPessoaContatoNome
    Limit 1;    
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbpessoacontato: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoaemail`(
IN 
tbPessoaEmailIdent Int(11), 
tbPessoaIdentFkPessoaEmail Int(11), 
tbTipoEmailIdentFkPessoaEmail Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPessoaEmailIdent = '')  && (tbPessoaIdentFkPessoaEmail = '') && (tbTipoEmailIdentFkPessoaEmail = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoaemail: Identificador, Pessoa e Tipo Email para Pessoa/Email não informado!' As Msg;
 ElseIf 
    ((tbPessoaEmailIdent != '') && (Not Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaEmailIdent = tbPessoaEmailIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoaemail: Pessoa/Email não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaIdentFkPessoaEmail != '') && (tbTipoEmailIdentFkPessoaEmail != '') &&
    (Not Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoaemail: Pessoa/Email não localizada pela Pessoa/Tipo Email' As Msg;
 ElseIf  
    ((tbPessoaEmailIdent != '') && (Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaEmailIdent = tbPessoaEmailIdent))) Then 
    Update tbpessoaemail
    Set PessoaEmailExcluido = 1
    Where PessoaEmailIdent =  tbPessoaEmailIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbpessoaemail: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaIdentFkPessoaEmail != '') && (tbTipoEmailIdentFkPessoaEmail != '') &&
    (Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail))) Then 
    Update tbpessoaemail
    Set PessoaEmailExcluido = 1
    Where PessoaIdentFkPessoaEmail =  tbPessoaIdentFkPessoaEmail
    And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoaemail: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoaempresa`(
IN 
tbPessoaEmpresaIdent Int(11), 
tbPessoaIdentFkPessoaEmpresa Int(11), 
tbEmpresaIdentFkPessoaEmpresa Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPessoaEmpresaIdent = '')  && (tbPessoaIdentFkPessoaEmpresa = '') && (tbEmpresaIdentFkPessoaEmpresa = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoaempresa: Identificador, Pessoa e Empresa para Pessoa/Empresa não informado!' As Msg;
 ElseIf 
    ((tbPessoaEmpresaIdent != '') && (Not Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaEmpresaIdent = tbPessoaEmpresaIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoaempresa: Pessoa/Empresa não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaIdentFkPessoaEmpresa != '') && (tbEmpresaIdentFkPessoaEmpresa != '') &&
    (Not Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoaempresa: Pessoa/Empresa não localizada pela Pessoa/Empresa' As Msg;
 ElseIf  
    ((tbPessoaEmpresaIdent != '') && (Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaEmpresaIdent = tbPessoaEmpresaIdent))) Then 
    Update tbpessoaempresa
    Set PessoaEmpresaExcluido = 1
    Where PessoaEmpresaIdent =  tbPessoaEmpresaIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbpessoaempresa: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaIdentFkPessoaEmpresa != '') && (tbEmpresaIdentFkPessoaEmpresa != '') &&
    (Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa))) Then 
    Update tbpessoaempresa
    Set PessoaEmpresaExcluido = 1
    Where PessoaIdentFkPessoaEmpresa =  tbPessoaIdentFkPessoaEmpresa
    And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoaempresa: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoafone`(
IN 
tbPessoaFoneIdent Int(11), 
tbPessoaIdentFkPessoaFone Int(11), 
tbTipoFoneIdentFkPessoaFone Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPessoaFoneIdent = '')  && (tbPessoaIdentFkPessoaFone = '') && (tbTipoFoneIdentFkPessoaFone = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoafone: Identificador, Pessoa e Tipo Fone para Pessoa/Fone não informado!' As Msg;
 ElseIf 
    ((tbPessoaFoneIdent != '') && (Not Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaFoneIdent = tbPessoaFoneIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoafone: Pessoa/Fone não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaIdentFkPessoaFone != '') && (tbTipoFoneIdentFkPessoaFone != '') &&
    (Not Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoafone: Pessoa/Fone não localizada pela Pessoa/Tipo Fone' As Msg;
 ElseIf  
    ((tbPessoaFoneIdent != '') && (Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaFoneIdent = tbPessoaFoneIdent))) Then 
    Update tbpessoafone
    Set PessoaFoneExcluido = 1
    Where PessoaFoneIdent =  tbPessoaFoneIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbpessoafone: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaIdentFkPessoaFone != '') && (tbTipoFoneIdentFkPessoaFone != '') &&
    (Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone))) Then 
    Update tbpessoafone
    Set PessoaFoneExcluido = 1
    Where PessoaIdentFkPessoaFone =  tbPessoaIdentFkPessoaFone
    And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoafone: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbpessoalocal`(
IN 
tbPessoaLocalIdent Int(11), 
tbPessoaIdentFkPessoaLocal Int(11), 
tbTipoEnderecoIdentFkPessoaLocal Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbPessoaLocalIdent = '')  && (tbPessoaIdentFkPessoaLocal = '') && (tbTipoEnderecoIdentFkPessoaLocal = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbpessoalocal: Identificador, Pessoa e Tipo Local para Pessoa/Local não informado!' As Msg;
 ElseIf 
    ((tbPessoaLocalIdent != '') && (Not Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaLocalIdent = tbPessoaLocalIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbpessoalocal: Pessoa/Local não localizada pelo Identificador' As Msg;
 ElseIf 
    ((tbPessoaIdentFkPessoaLocal != '') && (tbTipoEnderecoIdentFkPessoaLocal != '') &&
    (Not Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbpessoalocal: Pessoa/Local não localizada pela Pessoa/Tipo Local' As Msg;
 ElseIf  
    ((tbPessoaLocalIdent != '') && (Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaLocalIdent = tbPessoaLocalIdent))) Then 
    Update tbpessoalocal
    Set PessoaLocalExcluido = 1
    Where PessoaLocalIdent =  tbPessoaLocalIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbpessoalocal: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbPessoaIdentFkPessoaLocal != '') && (tbTipoEnderecoIdentFkPessoaLocal != '') &&
    (Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal))) Then 
    Update tbpessoalocal
    Set PessoaLocalExcluido = 1
    Where PessoaIdentFkPessoaLocal =  tbPessoaIdentFkPessoaLocal
    And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbpessoalocal: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbproduto`(
IN 
tbProdutoIdent Int(11), 
tbProdutoCod VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbProdutoIdent != '') Then
    Set ChaveConsulta = tbProdutoIdent;
 End If;
 
 If ((tbProdutoIdent = '')  && (tbProdutoCod != '')) Then
  Select ProdutoIdent Into ChaveConsulta
  From tbproduto
  Where ProdutoCod = tbProdutoCod
  Limit 1;
 End If;  

 If ((tbProdutoIdent = '')  && (tbProdutoCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbproduto: Identificador ou Código do Produto não informado!' As Msg;
 ElseIf 
    ((tbProdutoIdent != '') && (Not Exists(Select ProdutoIdent From tbproduto Where ProdutoIdent = tbProdutoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbproduto: Produto não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoCod != '') && (Not Exists(Select ProdutoCod From tbproduto Where ProdutoCod = tbProdutoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbproduto: Produto não localizada pelo Código' As Msg;
 ElseIf
    Exists(Select ProdutoIdentFkProdutoEmpresa From tbprodutoempresa Where ProdutoIdentFkProdutoEmpresa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbproduto: Existe Produto/Empresa Cadastrado para este Produto' As Msg; 
 ElseIf
    Exists(Select ProdutoIdentFkProdutoFoto From tbprodutofoto Where ProdutoIdentFkProdutoFoto = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbproduto: Existe Produto/Foto Cadastrado para este Produto' As Msg;     
 ElseIf  
    ((tbProdutoIdent != '') && (Exists(Select ProdutoIdent From tbproduto Where ProdutoIdent = tbProdutoIdent))) Then 
    Update tbproduto
    Set ProdutExcluido = 1
    Where ProdutoIdent =  tbProdutoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbproduto: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoCod != '') && (Exists(Select ProdutoCod From tbproduto Where ProdutoCod = tbProdutoCod))) Then 
    Update tbproduto
    Set ProdutExcluido = 1
    Where ProdutoCod =  tbProdutoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbproduto: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutoadicional`(
IN 
tbProdutoAdicionalIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoAdicional Int(11), 
tbAdicionalIdentFkProdutoAdicional Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbProdutoAdicionalIdent = '')  && (tbProdutoEmpresaIdentFkProdutoAdicional = '') && (tbAdicionalIdentFkProdutoAdicional = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutoadicional: Identificador ou Produto/Adicional não informado!' As Msg;
 ElseIf 
    ((tbProdutoAdicionalIdent != '') && (Not Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoAdicionalIdent = tbProdutoAdicionalIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutoadicional: Produto/Adicional não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoAdicional != '') &&  (tbAdicionalIdentFkProdutoAdicional != '') &&
    (Not Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutoadicional: Produto/Adicional (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoAdicionalIdent != '') && (Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoAdicionalIdent = tbProdutoAdicionalIdent))) Then 
    Update tbprodutoadicional
    Set ProdutoAdicionalExcluido = 1
    Where ProdutoAdicionalIdent =  tbProdutoAdicionalIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutoadicional: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoAdicional != '') && (tbAdicionalIdentFkProdutoAdicional != '') &&
    (Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional))) Then 
    Update tbprodutoadicional
    Set ProdutoAdicionalExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoAdicional =  tbProdutoEmpresaIdentFkProdutoAdicional
    And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutoadicional: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutocomposicao`(
IN 
tbProdutoComposicaoIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoPrinc Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoSecund Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbProdutoComposicaoIdent = '')  && (tbProdutoEmpresaIdentFkProdutoComposicaoPrinc = '') && (tbProdutoEmpresaIdentFkProdutoComposicaoSecund = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutocomposicao: Identificador ou Produto/Composição não informado!' As Msg;
 ElseIf 
    ((tbProdutoComposicaoIdent != '') && (Not Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoComposicaoIdent = tbProdutoComposicaoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutocomposicao: Produto/Composição não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') &&  (tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
    (Not Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutocomposicao: Produto/Composição (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoComposicaoIdent != '') && (Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoComposicaoIdent = tbProdutoComposicaoIdent))) Then 
    Update tbprodutocomposicao
    Set ProdutoComposicaoExcluido = 1
    Where ProdutoComposicaoIdent =  tbProdutoComposicaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutocomposicao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') && (tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
    (Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund))) Then 
    Update tbprodutocomposicao
    Set ProdutoComposicaoExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc =  tbProdutoEmpresaIdentFkProdutoComposicaoPrinc
    And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutocomposicao: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutoempresa`(
IN 
tbProdutoEmpresaIdent Int(11), 
tbEmpresaIdentFkProdutoEmpresa Int(11),
tbProdutoIdentFkProdutoEmpresa Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbProdutoEmpresaIdent != '') Then
    Set ChaveConsulta = tbProdutoEmpresaIdent;
 End If;
 
 If ((tbProdutoEmpresaIdent = '')  && (tbEmpresaIdentFkProdutoEmpresa != '') && (tbProdutoIdentFkProdutoEmpresa != '')) Then
  Select ProdutoEmpresaIdent Into ChaveConsulta
  From tbprodutoempresa
  Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa
  And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa
  Limit 1;
 End If;  

 If ((tbProdutoEmpresaIdent = '')  && (tbEmpresaIdentFkProdutoEmpresa = '') && (tbProdutoIdentFkProdutoEmpresa = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutoempresa: Identificador ou Produto/Empresa não informado!' As Msg;
 ElseIf 
    ((tbProdutoEmpresaIdent != '') && (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutoempresa: Produto/Empresa não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbEmpresaIdentFkProdutoEmpresa != '') &&  (tbProdutoIdentFkProdutoEmpresa != '') &&
    (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutoempresa: Produto/Empresa (Chave Composta) não localizado' As Msg;
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoSecao From tbprodutosecao Where ProdutoEmpresaIdentFkProdutoSecao = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbprodutoempresa: Existe Produto/Seção Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoFornecedor From tbprodutofornecedor Where ProdutoEmpresaIdentFkProdutoFornecedor = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbprodutoempresa: Existe Produto/Fornecedor Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoPrecoMargem From tbprodutoprecomargem Where ProdutoEmpresaIdentFkProdutoPrecoMargem = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG006/SpDeletetbprodutoempresa: Existe Produto/PrecoMargem Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoGrade From tbprodutograde Where ProdutoEmpresaIdentFkProdutoGrade = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG007/SpDeletetbprodutoempresa: Existe Produto/Grade Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoAdicional From tbprodutoadicional Where ProdutoEmpresaIdentFkProdutoAdicional = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG008/SpDeletetbprodutoempresa: Existe Produto/Adicional Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoComposicaoPrinc From tbprodutocomposicao Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG009/SpDeletetbprodutoempresa: Existe Produto/Composição Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf
    Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG010/SpDeletetbprodutoempresa: Existe Produto/Tributação Cadastrado para este Produto/Empresa' As Msg; 
 ElseIf  
    ((tbProdutoEmpresaIdent != '') && (Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdent))) Then 
    Update tbprodutoempresa
    Set ProdutoEmpresaExcluido = 1
    Where ProdutoEmpresaIdent =  tbProdutoEmpresaIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0011/SpDeletetbprodutoempresa: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbEmpresaIdentFkProdutoEmpresa != '') && (tbProdutoIdentFkProdutoEmpresa != '') &&
    (Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa))) Then 
    Update tbprodutoempresa
    Set ProdutoEmpresaExcluido = 1
    Where EmpresaIdentFkProdutoEmpresa =  tbEmpresaIdentFkProdutoEmpresa
    And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0012/SpDeletetbprodutoempresa: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutoempresatrib`(
IN 
tbProdutoEmpresaTribIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoEmpresaTrib Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbProdutoEmpresaTribIdent = '')  && (tbProdutoEmpresaIdentFkProdutoEmpresaTrib = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutoempresatrib: Identificador ou Produto/Tributação não informado!' As Msg;
 ElseIf 
    ((tbProdutoEmpresaTribIdent != '') && (Not Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutoempresatrib: Produto/Tributação não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') && (Not Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutoempresatrib: Produto/Tributaçãp (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoEmpresaTribIdent != '') && (Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent))) Then 
    Update tbprodutoempresatrib
    Set ProdutoEmpresaTribExcluido = 1
    Where ProdutoEmpresaTribIdent =  tbProdutoEmpresaTribIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutoempresatrib: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') && (Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib))) Then 
    Update tbprodutoempresatrib
    Set ProdutoEmpresaTribExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoEmpresaTrib =  tbProdutoEmpresaIdentFkProdutoEmpresaTrib
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutoempresatrib: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutofornecedor`(
IN 
tbProdutoFornecedorIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoFornecedor Int(11), 
tbPessoaIdentFkProdutoFornecedor Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbProdutoFornecedorIdent != '') Then
    Set ChaveConsulta = tbProdutoFornecedorIdent;
 End If;
 
 If ((tbProdutoFornecedorIdent = '')  && (tbProdutoEmpresaIdentFkProdutoFornecedor != '') && (tbPessoaIdentFkProdutoFornecedor != '')) Then
  Select ProdutoFornecedorIdent Into ChaveConsulta
  From tbprodutofornecedor
  Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor
  And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor
  Limit 1;
 End If;  

 If ((tbProdutoFornecedorIdent = '')  && (tbProdutoEmpresaIdentFkProdutoFornecedor = '') && (tbPessoaIdentFkProdutoFornecedor = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutofornecedor: Identificador ou Produto/Fornecedor não informado!' As Msg;
 ElseIf 
    ((tbProdutoFornecedorIdent != '') && (Not Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoFornecedorIdent = tbProdutoFornecedorIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutofornecedor: Produto/Fornecedor não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') &&  (tbPessoaIdentFkProdutoFornecedor != '') &&
    (Not Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutofornecedor: Produto/Fornecedor (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoFornecedorIdent != '') && (Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoFornecedorIdent = tbProdutoFornecedorIdent))) Then 
    Update tbprodutofornecedor
    Set ProdutoFornecedorExcluido = 1
    Where ProdutoFornecedorIdent =  tbProdutoFornecedorIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutofornecedor: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') && (tbPessoaIdentFkProdutoFornecedor != '') &&
    (Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor))) Then 
    Update tbprodutofornecedor
    Set ProdutoFornecedorExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoFornecedor =  tbProdutoEmpresaIdentFkProdutoFornecedor
    And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutofornecedor: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutofoto`(
IN 
tbProdutoFotoIdent Int(11), 
tbProdutoIdentFkProdutoFoto Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbProdutoFotoIdent = '')  && (tbProdutoIdentFkProdutoFoto = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutofoto: Identificador ou Produto/Foto não informado!' As Msg;
 ElseIf 
    ((tbProdutoFotoIdent != '') && (Not Exists(Select ProdutoFotoIdent From tbprodutofoto Where ProdutoFotoIdent = tbProdutoFotoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutofoto: Produto/Foto não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoIdentFkProdutoFoto != '') && (Not Exists(Select ProdutoIdentFkProdutoFoto From tbprodutofoto Where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutofoto: Produto/Foto não localizado para o produto' As Msg;
 ElseIf  
    ((tbProdutoFotoIdent != '') && (Exists(Select ProdutoFotoIdent From tbprodutofoto Where ProdutoFotoIdent = tbProdutoFotoIdent))) Then 
    Update tbprodutofoto
    Set ProdutoFotoExcluido = 1
    Where ProdutoFotoIdent =  tbProdutoFotoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutofoto: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoIdentFkProdutoFoto != '') && 
    (Exists(Select ProdutoIdentFkProdutoFoto From tbprodutofoto Where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto))) Then 
    Update tbprodutofoto
    Set ProdutoFotoExcluido = 1
    Where ProdutoIdentFkProdutoFoto =  tbProdutoIdentFkProdutoFoto
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutofoto: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutograde`(
IN 
tbProdutoGradeIdent Int(11), 
tbGradeIdentFkProdutoGrade Int(11), 
tbProdutoEmpresaIdentFkProdutoGrade Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbProdutoGradeIdent != '') Then
    Set ChaveConsulta = tbProdutoGradeIdent;
 End If;
 
 If ((tbProdutoGradeIdent = '')  && (tbGradeIdentFkProdutoGrade != '') && (tbProdutoEmpresaIdentFkProdutoGrade != '')) Then
  Select ProdutoGradeIdent Into ChaveConsulta
  From tbprodutograde
  Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade
  And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade
  Limit 1;
 End If;  
 
 If ((tbProdutoGradeIdent = '')  && (tbGradeIdentFkProdutoGrade = '') && (tbProdutoEmpresaIdentFkProdutoGrade = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutograde: Identificador ou Produto/Grade não informado!' As Msg;
 ElseIf 
    ((tbProdutoGradeIdent != '') && (Not Exists(Select ProdutoGradeIdent From tbprodutograde Where ProdutoGradeIdent = tbProdutoGradeIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutograde: Produto/Grade não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbGradeIdentFkProdutoGrade != '') &&  (tbProdutoEmpresaIdentFkProdutoGrade != '') &&
    (Not Exists(Select ProdutoGradeIdent From tbprodutograde Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutograde: Produto/Grade (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoGradeIdent != '') && (Exists(Select ProdutoGradeIdent From tbprodutograde Where ProdutoGradeIdent = tbProdutoGradeIdent))) Then 
    Update tbprodutograde
    Set ProdutoGradeExcluido = 1
    Where ProdutoGradeIdent =  tbProdutoGradeIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutograde: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbGradeIdentFkProdutoGrade != '') && (tbProdutoEmpresaIdentFkProdutoGrade != '') &&
    (Exists(Select ProdutoGradeIdent From tbprodutograde Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade))) Then 
    Update tbprodutograde
    Set ProdutoGradeExcluido = 1
    Where GradeIdentFkProdutoGrade =  tbGradeIdentFkProdutoGrade
    And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutograde: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutoprecomargem`(
IN 
tbProdutoPrecoMargemIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbProdutoPrecoMargemIdent = '')  Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutoprecomargem: Identificador do Produto/PrecoMargem não informado!' As Msg;
 ElseIf 
    ((tbProdutoPrecoMargemIdent != '') && (Not Exists(Select ProdutoPrecoMargemIdent From tbprodutoprecomargem Where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutoprecomargem: Produto/PrecoMargem não localizada pelo Identificador' As Msg;
 ElseIf  
    ((tbProdutoPrecoMargemIdent != '') && (Exists(Select ProdutoPrecoMargemIdent From tbprodutoprecomargem Where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent))) Then 
    Update tbprodutoprecomargem
    Set ProdutoPrecoMargemExcluido = 1
    Where ProdutoPrecoMargemIdent =  tbProdutoPrecoMargemIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0003/SpDeletetbprodutoprecomargem: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbprodutosecao`(
IN 
tbProdutoSecaoIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoSecao Int(11), 
tbSecaoIdentFkProdutoSecao Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbProdutoSecaoIdent != '') Then
    Set ChaveConsulta = tbProdutoSecaoIdent;
 End If;
 
 If ((tbProdutoSecaoIdent = '')  && (tbProdutoEmpresaIdentFkProdutoSecao != '') && (tbSecaoIdentFkProdutoSecao != '')) Then
  Select ProdutoSecaoIdent Into ChaveConsulta
  From tbprodutosecao
  Where ProdutoEmpresaIdentFkProdutoSecao = tbProdutoEmpresaIdentFkProdutoSecao
  And SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao
  Limit 1;
 End If;  

 If ((tbProdutoSecaoIdent = '')  && (tbProdutoEmpresaIdentFkProdutoSecao = '') && (tbSecaoIdentFkProdutoSecao = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbprodutosecao: Identificador ou Produto/Seção não informado!' As Msg;
 ElseIf 
    ((tbProdutoSecaoIdent != '') && (Not Exists(Select ProdutoSecaoIdent From tbprodutosecao Where ProdutoSecaoIdent = tbProdutoSecaoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbprodutosecao: Produto/Seção não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoSecao != '') &&  (tbSecaoIdentFkProdutoSecao != '') &&
    (Not Exists(Select ProdutoSecaoIdent From tbprodutosecao Where ProdutoEmpresaIdentFkProdutoSecao = tbProdutoEmpresaIdentFkProdutoSecao And SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbprodutosecao: Produto/Seção (Chave Composta) não localizado' As Msg;
 ElseIf  
    ((tbProdutoSecaoIdent != '') && (Exists(Select ProdutoSecaoIdent From tbprodutosecao Where ProdutoSecaoIdent = tbProdutoSecaoIdent))) Then 
    Update tbprodutosecao
    Set ProdutoSecaoExcluido = 1
    Where ProdutoSecaoIdent =  tbProdutoSecaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0004/SpDeletetbprodutosecao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbProdutoEmpresaIdentFkProdutoSecao != '') && (tbSecaoIdentFkProdutoSecao != '') &&
    (Exists(Select ProdutoSecaoIdent From tbprodutosecao Where ProdutoEmpresaIdentFkProdutoSecao = tbProdutoEmpresaIdentFkProdutoSecao And SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao))) Then 
    Update tbprodutosecao
    Set ProdutoSecaoExcluido = 1
    Where ProdutoEmpresaIdentFkProdutoSecao =  tbProdutoEmpresaIdentFkProdutoSecao
    And SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao 
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbprodutosecao: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbregiao`(
IN 
tbRegiaoIdent Int(11), 
tbRegiaoCod VarChar(10), 
tbRegiaoDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbRegiaoIdent = '')  && (tbRegiaoCod = '') && (tbRegiaoDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbregiao: Identificador, Código ou Descrição da Região não informado!' As Msg;
 ElseIf 
    ((tbRegiaoIdent != '') && (Not Exists(Select RegiaoIdent From tbregiao Where RegiaoIdent = tbRegiaoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbregiao: Identificador da Região não localizado' As Msg;
 ElseIf
    ((tbRegiaoCod != '') && (Not Exists(Select RegiaoCod From tbregiao Where RegiaoCod = tbRegiaoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbregiao: Código da Região não localizado' As Msg;
 ElseIf
    ((tbRegiaoDescr != '') && (Not Exists(Select RegiaoDescr From tbregiao Where RegiaoDescr = tbRegiaoDescr))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbregiao: Descrição da Região não localizada' As Msg;
 ElseIf  
    ((tbRegiaoIdent != '') && (Exists(Select RegiaoIdent From tbregiao Where RegiaoIdent = tbRegiaoIdent))) Then 
    Update tbregiao
    Set RegiaoExcluido = 1
    Where RegiaoIdent =  tbRegiaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbregiao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbRegiaoCod != '') && (Exists(Select RegiaoCod From tbregiao Where RegiaoCod = tbRegiaoCod))) Then 
    Update tbregiao
    Set RegiaoExcluido = 1
    Where RegiaoCod =  tbRegiaoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbregiao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbRegiaoDescr != '') && (Exists(Select RegiaoDescr From tbregiao Where RegiaoDescr = tbRegiaoDescr))) Then 
    Update tbregiao
    Set RegiaoExcluido = 1
    Where RegiaoDescr =  tbRegiaoDescr
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbregiao: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbregiaocomposicao`(
IN 
tbRegiaoComposicaoIdent Int(11), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If (tbRegiaoComposicaoIdent = '')  Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbregiaocomposicao: Identificador da Regiao Composição não informado!' As Msg;
 ElseIf 
    ((tbRegiaoComposicaoIdent != '') && (Exists(Select RegiaoComposicaoIdent From tbregiaocomposicao Where RegiaoComposicaoIdent = tbRegiaoComposicaoIdent))) Then 
    Update tbregiaocomposicao
    Set RegiaoComposicaoExcluido = 1
    Where RegiaoComposicaoIdent =  tbRegiaoComposicaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0002/SpDeletetbcep: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbsecao`(
IN 
tbSecaoIdent Int(11), 
tbSecaoCod VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbSecaoIdent != '') Then
    Set ChaveConsulta = tbSecaoIdent;
 End If;
 
 If ((tbSecaoIdent = '')  && (tbSecaoCod != '')) Then
  Select SecaoIdent Into ChaveConsulta
  From tbsecao
  Where SecaoCod = tbSecaoCod
  Limit 1;
 End If;  

 If ((tbSecaoIdent = '')  && (tbSecaoCod = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbsecao: Identificador ou Código da Seção não informado!' As Msg;
 ElseIf 
    ((tbSecaoIdent != '') && (Not Exists(Select SecaoIdent From tbsecao Where SecaoIdent = tbSecaoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbsecao: Seção não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbSecaoCod != '') && (Not Exists(Select SecaoCod From tbsecao Where SecaoCod = tbSecaoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbsecao: Seção não localizada pelo Código' As Msg;
 ElseIf
    Exists(Select SecaoIdentFkAdicional From tbadicional Where SecaoIdentFkAdicional = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbsecao: Existe Adicional Cadastrado para esta Seção' As Msg; 
 ElseIf
    Exists(Select SecaoIdentFkProdutoSecao From tbprodutosecao Where SecaoIdentFkProdutoSecao = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbsecao: Existe Produto/Seção Cadastrado para esta Seção' As Msg;     
 ElseIf  
    ((tbSecaoIdent != '') && (Exists(Select SecaoIdent From tbsecao Where SecaoIdent = tbSecaoIdent))) Then 
    Update tbsecao
    Set SecaoExcluido = 1
    Where SecaoIdent =  tbSecaoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbsecao: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbSecaoCod != '') && (Exists(Select SecaoCod From tbsecao Where SecaoCod = tbSecaoCod))) Then 
    Update tbsecao
    Set SecaoExcluido = 1
    Where SecaoCod =  tbSecaoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbsecao: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbtipocontato`(
IN 
tbTipoContatoIdent Int(11), 
tbTipoContatoCod VarChar(20), 
tbTipoContatoDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbTipoContatoIdent = '')  && (tbTipoContatoCod = '') && (tbTipoContatoDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbtipocontato: Identificador, Código ou Descrição do Tipo de Contato não informado!' As Msg;
 ElseIf 
    ((tbTipoContatoIdent != '') && (Not Exists(Select TipoContatoIdent From tbtipocontato Where TipoContatoIdent = tbTipoContatoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbtipocontato: Tipo de Contato não localizado pelo Identificador' As Msg;
 ElseIf 
    ((tbTipoContatoCod != '') && (Not Exists(Select TipoContatoCod From tbtipocontato Where TipoContatoCod = tbTipoContatoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbtipocontato: Código do Contato não localizado pelo Identificador' As Msg;
 ElseIf 
    ((tbTipoContatoDescr != '') && (Not Exists(Select TipoContatoDescr From tbtipocontato Where TipoContatoDescr = tbTipoContatoDescr))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbtipocontato: Descrição do Contato não localizado pelo Identificador' As Msg;
 ElseIf  
    ((tbTipoContatoIdent != '') && (Exists(Select TipoContatoIdent From tbtipocontato Where TipoContatoIdent = tbTipoContatoIdent))) Then 
    Update tbtipocontato
    Set TipoContatoExcluido = 1
    Where TipoContatoIdent =  tbTipoContatoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbtipocontato: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbTipoContatoCod != '') && (Exists(Select TipoContatoCod From tbtipocontato Where TipoContatoCod = tbTipoContatoCod))) Then 
    Update tbtipocontato
    Set TipoContatoExcluido = 1
    Where TipoContatoCod =  tbTipoContatoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbprodutograde: Exclusão realizada com sucesso!' As Msg;    
 ElseIf
    ((tbTipoContatoDescr != '') && (Exists(Select TipoContatoDescr From tbtipocontato Where TipoContatoDescr = tbTipoContatoDescr))) Then 
    Update tbtipocontato
    Set TipoContatoExcluido = 1
    Where TipoContatoDescr =  tbTipoContatoDescr
    Limit 1;    
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbprodutograde: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbtipoemail`(
IN 
tbTipoEmailIdent Int(11), 
tbTipoEmailCod VarChar(10), 
tbTipoEmailDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbTipoEmailIdent = '') && (tbTipoEmailCod = '') && (tbTipoEmailDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbtipoemail: Identificador ou Código ou Descrição do Tipo de Email não informado!' As Msg;
 ElseIf 
    ((tbTipoEmailIdent != '') && (Not Exists(Select TipoEmailIdent From tbtipoemail Where TipoEmailIdent = tbTipoEmailIdent and TipoEmailExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbtipoemail: Identificador do Tipo do Email não localizado!' As Msg;
 ElseIf 
    ((tbTipoEmailCod != '') && (Not Exists(Select TipoEmailCod From tbtipoemail Where TipoEmailCod = tbTipoEmailCod and TipoEmailExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbtipoemail: Código do Tipo do Email não localizado!' As Msg;
 ElseIf 
    ((tbTipoEmailDescr != '') && (Not Exists(Select TipoEmailDescr From tbtipoemail Where TipoEmailDescr = tbTipoEmailDescr and TipoEmailExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbtipoemail: Descrição do Tipo do Email não localizado!' As Msg;  
 ElseIf 
    ((tbTipoEmailIdent != '') && (Exists(Select TipoEmailIdent From tbtipoemail, tbempresaemail Where TipoEmailIdent = tbTipoEmailIdent and TipoEmailIdentFkEmpresaEmail = TipoEmailIdent 
     and TipoEmailExcluido is null and EmpresaEmailExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbtipoemail: Existe Email Cadastro para este Identificador do tipo de Email!' As Msg;     
 ElseIf 
    ((tbTipoEmailCod != '') && (Exists(Select TipoEmailCod From tbtipoemail, tbempresaemail Where TipoEmailCod = tbTipoEmailCod and TipoEmailIdentFkEmpresaEmail = TipoEmailIdent 
     and TipoEmailExcluido is null and EmpresaEmailExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG006/SpDeletetbtipoemail: Existe Email Cadastro para este Codigo do tipo de Email!' As Msg;     
 ElseIf 
    ((tbTipoEmailDescr != '') && (Exists(Select TipoEmailDescr From tbtipoemail, tbempresaemail Where TipoEmailDescr = tbTipoEmailDescr and TipoEmailIdentFkEmpresaEmail = TipoEmailIdent 
     and TipoEmailExcluido is null and EmpresaEmailExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG007/SpDeletetbtipoemail: Existe Email Cadastro para esta Descrição do tipo de Email!' As Msg;      
 ElseIf  
    ((tbTipoEmailIdent != '') && (Exists(Select TipoEmailIdent From tbtipoemail Where TipoEmailIdent = tbTipoEmailIdent))) Then 
    Update tbtipoemail
    Set TipoEmailExcluido = 1
    Where TipoEmailIdent =  tbTipoEmailIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbtipoemail: Exclusão realizada com sucesso!' As Msg;
 ElseIf  
    ((tbTipoEmailCod != '') && (Exists(Select TipoEmailCod From tbtipoemail Where TipoEmailCod = tbTipoEmailCod))) Then 
    Update tbtipoemail
    Set TipoEmailExcluido = 1
    Where TipoEmailCod =  tbTipoEmailCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0009/SpDeletetbtipoemail: Exclusão realizada com sucesso!' As Msg;    
 ElseIf  
    ((tbTipoEmailDescr != '') && (Exists(Select TipoEmailDescr From tbtipoemail Where TipoEmailDescr = tbTipoEmailDescr))) Then 
    Update tbtipoemail
    Set TipoEmailExcluido = 1
    Where TipoEmailDescr =  tbTipoEmailDescr
    Limit 1;
    Select 0 As CodRetorno, 'MSG0010/SpDeletetbtipoemail: Exclusão realizada com sucesso!' As Msg;      
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbtipoendereco`(
IN 
tbTipoEnderecoIdent Int(11), 
tbTipoEnderecoCod VarChar(10), 
tbTipoEnderecoDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbTipoEnderecoIdent = '')  && (tbTipoEnderecoCod = '') && (tbTipoEnderecoDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbtipoendereco: Identificação, Código ou Descrição do Tipo de Endereço não informado!' As Msg;
 ElseIf 
    ((tbTipoEnderecoIdent != '') && (Not Exists(Select TipoEnderecoIdent From tbTipoEndereco Where TipoEnderecoIdent = tbTipoEnderecoIdent))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbtipoendereco: Tipo de Endereço não localizado pelo Identificador' As Msg;
 ElseIf
    ((tbTipoEnderecoCod != '') && (Not Exists(Select TipoEnderecoCod From tbTipoEndereco Where TipoEnderecoCod = tbTipoEnderecoCod))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbtipoendereco: Código do Tipo de Endereço não localizado pelo Código' As Msg;
 ElseIf
    ((tbTipoEnderecoDescr != '') && (Not Exists(Select TipoEnderecoDescr From tbTipoEndereco Where TipoEnderecoDescr = tbTipoEnderecoDescr))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbtipoendereco: Descrição do Tipo de Endereço não localizado pela Descrição' As Msg;
 ElseIf  
    ((tbTipoEnderecoIdent != '') && (Exists(Select TipoEnderecoIdent From tbTipoEndereco Where TipoEnderecoIdent = tbTipoEnderecoIdent))) Then 
    Update tbTipoEndereco
    Set TipoEnderecoExcluido = 1
    Where TipoEnderecoIdent =  tbTipoEnderecoIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0005/SpDeletetbtipoendereco: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbTipoEnderecoCod != '') && (Exists(Select TipoEnderecoCod From tbTipoEndereco Where TipoEnderecoCod = tbTipoEnderecoCod))) Then 
    Update tbTipoEndereco
    Set TipoEnderecoExcluido = 1
    Where TipoEnderecoCod =  tbTipoEnderecoCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0006/SpDeletetbcidade: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbTipoEnderecoDescr != '') && (Exists(Select TipoEnderecoDescr From tbTipoEndereco Where TipoEnderecoDescr = tbTipoEnderecoDescr))) Then 
    Update tbTipoEndereco
    Set TipoEnderecoExcluido = 1
    Where TipoEnderecoDescr =  tbTipoEnderecoDescr
    Limit 1;
    Select 0 As CodRetorno, 'MSG0007/SpDeletetbcidade: Exclusão realizada com sucesso!' As Msg;    
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbtipofone`(
IN 
tbTipoFoneIdent Int(11), 
tbTipoFoneCod VarChar(10), 
tbTipoFoneDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 If ((tbTipoFoneIdent = '') && (tbTipoFoneCod = '') && (tbTipoFoneDescr = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbtipofone: Identificador ou Código ou Descrição do Tipo de Fone não informado!' As Msg;
 ElseIf 
    ((tbTipoFoneIdent != '') && (Not Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneIdent = tbTipoFoneIdent and TipoFoneExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbtipofone: Identificador do Tipo do Fone não localizado!' As Msg;
 ElseIf 
    ((tbTipoFoneCod != '') && (Not Exists(Select TipoFoneCod From tbtipofone Where TipoFoneCod = tbTipoFoneCod and TipoFoneExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbtipofone: Código do Tipo do Fone não localizado!' As Msg;
 ElseIf 
    ((tbTipoFoneDescr != '') && (Not Exists(Select TipoFoneDescr From tbtipofone Where TipoFoneDescr = tbTipoFoneDescr and TipoFoneExcluido is null))) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbtipofone: Descrição do Tipo do Fone não localizado!' As Msg;  
 ElseIf 
    ((tbTipoFoneIdent != '') && (Exists(Select TipoFoneIdent From tbtipofone, tbempresafone Where TipoFoneIdent = tbTipoFoneIdent and TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
     and TipoFoneExcluido is null and EmpresaFoneExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbtipofone: Existe Fone Cadastrado para este Identificador do tipo de Fone!' As Msg;  
 ElseIf 
    ((tbTipoFoneCod != '') && (Exists(Select TipoFoneCod From tbtipofone, tbempresafone Where TipoFoneCod = tbTipoFoneCod and TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
     and TipoFoneExcluido is null and EmpresaFoneExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG006/SpDeletetbtipofone: Existe Fone Cadastrado para este Codigo do tipo de Fone!' As Msg;     
 ElseIf 
    ((tbTipoFoneDescr != '') && (Exists(Select TipoFoneDescr From tbtipofone, tbempresafone Where TipoFoneDescr = tbTipoFoneDescr and TipoFoneIdentFkEmpresaFone = TipoFoneIdent 
     and TipoFoneExcluido is null and EmpresaFoneExcluido is null limit 1))) Then 
    Select 1 as CodRetorno, 'MSG007/SpDeletetbtipofone: Existe Fone Cadastrado para esta Descrição do tipo de Fone!' As Msg;   
 ElseIf  
    ((tbTipoFoneIdent != '') && (Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneIdent = tbTipoFoneIdent))) Then 
    Update tbtipofone
    Set TipoFoneExcluido = 1
    Where TipoFoneIdent =  tbTipoFoneIdent
    Limit 1;
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbtipofone: Exclusão realizada com sucesso!' As Msg;
 ElseIf  
    ((tbTipoFoneCod != '') && (Exists(Select TipoFoneCod From tbtipofone Where TipoFoneCod = tbTipoFoneCod))) Then 
    Update tbtipofone
    Set TipoFoneExcluido = 1
    Where TipoFoneCod =  tbTipoFoneCod
    Limit 1;
    Select 0 As CodRetorno, 'MSG0009/SpDeletetbtipofone: Exclusão realizada com sucesso!' As Msg;    
 ElseIf  
    ((tbTipoFoneDescr != '') && (Exists(Select TipoFoneDescr From tbtipofone Where TipoFoneDescr = tbTipoFoneDescr))) Then 
    Update tbtipofone
    Set TipoFoneExcluido = 1
    Where TipoFoneDescr =  tbTipoFoneDescr
    Limit 1;
    Select 0 As CodRetorno, 'MSG0010/SpDeletetbtipofone: Exclusão realizada com sucesso!' As Msg;      
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpDeletetbunidmedida`(
IN 
tbUnidMedidaIdentif Int(11), 
tbUnidMedidaNome VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
 Declare ChaveConsulta Int(11);
 
 If (tbUnidMedidaIdentif != '') Then
    Set ChaveConsulta = tbUnidMedidaIdentif;
 End If;
 
 If ((tbUnidMedidaIdentif = '')  && (tbUnidMedidaNome != '')) Then
  Select UnidMedidaIdentif Into ChaveConsulta
  From tbunidmedida
  Where UnidMedidaNome = tbUnidMedidaNome
  Limit 1;
 End If;  

 If ((tbUnidMedidaIdentif = '')  && (tbUnidMedidaNome = '')) Then
    Select 1 as CodRetorno, 'MSG001/SpDeletetbunidmedida: Identificador ou Nome da Unidade de Medida não informado!' As Msg;
 ElseIf 
    ((tbUnidMedidaIdentif != '') && (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentif))) Then 
    Select 1 as CodRetorno, 'MSG002/SpDeletetbunidmedida: Unidade de Medida não localizada pelo Identificador' As Msg;
 ElseIf
    ((tbUnidMedidaNome != '') && (Not Exists(Select UnidMedidaNome From tbunidmedida Where UnidMedidaNome = tbUnidMedidaNome))) Then 
    Select 1 as CodRetorno, 'MSG003/SpDeletetbunidmedida: Unidade de Medida não localizada pelo Nome' As Msg;
 ElseIf
    Exists(Select UnidMedidaIdentifFkProdutoEmpresa From tbprodutoempresa Where UnidMedidaIdentifFkProdutoEmpresa = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG004/SpDeletetbunidmedida: Existe Produto/Empresa Cadastrado para esta Unidade de Medida' As Msg;    
 ElseIf
    Exists(Select UnidMedidaIdentifFkProdutoFornecedor From tbprodutofornecedor Where UnidMedidaIdentifFkProdutoFornecedor = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG005/SpDeletetbunidmedida: Existe Produto/Fornecedor Cadastrado para esta Unidade de Medida' As Msg;    
 ElseIf
    Exists(Select UnidMedidaIdentifFkProdutoComposicao From tbprodutocomposicao Where UnidMedidaIdentifFkProdutoComposicao = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG006/SpDeletetbunidmedida: Existe Produto/Composição Cadastrado para esta Unidade de Medida' As Msg;    
 ElseIf
    Exists(Select UnidMedidaIdentifFkAdicional From tbadicional Where UnidMedidaIdentifFkAdicional = ChaveConsulta) Then 
    Select 1 as CodRetorno, 'MSG007/SpDeletetbunidmedida: Existe Adicional Cadastrado para esta Unidade de Medida' As Msg;    
 ElseIf  
    ((tbUnidMedidaIdentif != '') && (Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentif))) Then 
    Update tbunidmedida
    Set UnidMedidaExcluido = 1
    Where UnidMedidaIdentif =  tbUnidMedidaIdentif
    Limit 1;
    Select 0 As CodRetorno, 'MSG0008/SpDeletetbunidmedida: Exclusão realizada com sucesso!' As Msg;
 ElseIf
    ((tbUnidMedidaNome != '') && (Exists(Select UnidMedidaNome From tbunidmedida Where UnidMedidaNome = tbUnidMedidaNome))) Then 
    Update tbunidmedida
    Set UnidMedidaExcluido = 1
    Where UnidMedidaNome =  tbUnidMedidaNome
    Limit 1;
    Select 0 As CodRetorno, 'MSG0009/SpDeletetbunidmedida: Exclusão realizada com sucesso!' As Msg;
 End If;   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbadicional`(
IN
tbEmpresaIdentFkAdicional Int(11),
tbAdicionalCod VarChar(50),
tbAdicionalDescr VarChar(200),
tbSecaoIdentFkAdicional Int(11),
tbUnidMedidaIdentifFkAdicional Int(11),
tbAdicionalFoto LongBlob,
OUT
CodRetorno Int(11), tbAdicionalIdent Int(11))
BEGIN
   If (tbEmpresaIdentFkAdicional = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbadicional: Não foi informado a Empresa para o Adicional!' As Msg;
   Elseif
      (tbAdicionalCod = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbadicional: Não foi informado o Código para o Adicional!' As Msg; 
   Elseif
      (tbAdicionalDescr = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbadicional: Não foi informado a Descrição para o Adicional!' As Msg;   
   Elseif
      (tbSecaoIdentFkAdicional = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbadicional: Não foi informado a Seção para o Adicional!' As Msg;         
   Elseif
      (tbUnidMedidaIdentifFkAdicional = '') Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbadicional: Não foi informado a Unidade de Medida para o Adicional!' As Msg;            
   ElseIf 
      Not Exists (Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkAdicional) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbadicional: Empresa informada para o Adicional não existe na base de dados!' As Msg;
   ElseIf 
      Not Exists (Select SecaoIdent From tbsecao Where SecaoIdent = tbSecaoIdentFkAdicional) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbadicional: Seção informada para o Adicional não existe na base de dados!' As Msg;
    ElseIf 
      Not Exists (Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkAdicional) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbadicional: Unidade de Medida informada para o Adicional não existe na base de dados!' As Msg;
    ElseIf 
      Exists (Select AdicionalCod From tbadicional Where AdicionalCod = tbAdicionalCod And EmpresaIdentFkAdicional = tbEmpresaIdentFkAdicional) Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbadicional: Código/Empresa informado para o Adicional existe na base de dados!' As Msg;
    ElseIf 
      Exists (Select tbAdicionalDescr From tbadicional Where AdicionalDescr = tbAdicionalDescr And EmpresaIdentFkAdicional = tbEmpresaIdentFkAdicional) Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbadicional: Descrição/Empresa informada para o Adicional existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbadicional(EmpresaIdentFkAdicional, AdicionalCod, AdicionalDescr, SecaoIdentFkAdicional, UnidMedidaIdentifFkAdicional, AdicionalFoto)
      Values (tbEmpresaIdentFkAdicional, tbAdicionalCod, tbAdicionalDescr, tbSecaoIdentFkAdicional, tbUnidMedidaIdentifFkAdicional, tbAdicionalFoto);
      Select 0 As CodRetorno, Last_Insert_Id() as tbAdicionalIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcategpgtoreceb`(
IN
tbCategPgtoRecebDescr VarChar(200),
tbCategPgtoRecebFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If (tbCategPgtoRecebDescr = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcategpgtoreceb: Não foi informada a Descrição para o Código de Pagamento ou Recebimento!' As Msg;
   Elseif
      (tbCategPgtoRecebFlagAtivo = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcategpgtoreceb: Não foi informado o Status de Ativo para o Código do Pagamento ou Recebimento!' As Msg; 
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcategpgtoreceb(CategPgtoRecebDescr, CategPgtoRecebFlagAtivo)
      Values (tbCategPgtoRecebDescr, tbCategPgtoRecebFlagAtivo);
      Select 0 As CodRetorno, 'MSG003/SpInserttbcategpgtoreceb: Categoria de Pagamento ou Recebimento incluída com sucesso!' As Msg;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcep`(
IN
tbCEPCod Char(8),
tbCEPEndereco VarChar(300),
tbCEPBairro VarChar(100),
tbCEPCompl Varchar(200),
tbCidadeIdentFkCEP Int(11),
OUT
CodRetorno Int(11), tbCEPIdent Int(11))
BEGIN
   If (tbCEPCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcep: Não foi informado o Código do CEP!' As Msg;
   Elseif
      (tbCEPEndereco = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcep: Não foi informado o Endereço para o CEP!' As Msg; 
   Elseif
      (tbCidadeIdentFkCEP = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbcep: Não foi informado a Cidade para o CEP!' As Msg;       
   ElseIf 
      Not Exists (Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdentFkCEP) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbcep: Cidade informada para o CEP não existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcep(CEPCod, CEPEndereco, CEPBairro, CEPCompl, CidadeIdentFkCEP)
      Values (tbCEPCod, tbCEPEndereco, tbCEPBairro, tbCEPCompl, tbCidadeIdentFkCEP);
      Select 0 As CodRetorno, Last_Insert_Id() as tbCEPIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcest`(
IN
tbCESTCod Int(11),
tbNCMIdentFkCEST Int(11),
tbCESTSeguimento VarChar(200),
tbCESTItem VarChar(20),
tbCESTDescr VarChar(1000),
tbCESTAnexo VarChar(200),
OUT
CodRetorno Int(11), tbCESTIdent Int(11))
BEGIN
   If (tbCESTCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcest: Não foi informado o Código para o CEST!' As Msg;
   ElseIf   
      (tbNCMIdentFkCEST = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcest: Não foi informado a NCM para o CEST!' As Msg;  
   ElseIf   
      (tbCESTDescr = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcest: Não foi informada a Descrição para o CEST!' As Msg;  
   ElseIf   
      ((tbCESTCod != '') &&
      (Exists(Select CESTCod from tbcest Where CESTCod = tbCESTCod))) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcest: Código para o CEST existe na base de dados!' As Msg;  
   ElseIf   
      ((tbNCMIdentFkCEST != '') &&
      (Not Exists(Select NCMIdent from tbncm Where NCMIdent = tbNCMIdentFkCEST))) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcest: NCM informada para o CEST não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcest(CESTCod, NCMIdentFkCEST, CESTSeguimento, CESTItem, CESTDescr, CESTAnexo)
      Values (tbCESTCod, tbNCMIdentFkCEST, tbCESTSeguimento, tbCESTItem, tbCESTDescr, tbCESTAnexo);
      Select 0 As CodRetorno, Last_Insert_Id() as tbCESTIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcfop`(
IN
tbCFOPCod SmallInt(4),
tbCFOPDescr VarChar(300),
tbCFOPFlagEntSai Char(1),
tbCFOPFlagEstoque SmallInt(1),
tbCFOPFlagCalcIPI SmallInt(1),
tbCFOPEquivalente SmallInt(4),
OUT
CodRetorno Int(11), tbCFOPIdent Int(11))
BEGIN
   If tbCFOPFlagEntSai = '' Then
     Set tbCFOPFlagEntSai = 'E';
   End If;
   if tbCFOPFlagEstoque = '' Then
     Set tbCFOPFlagEstoque = 0;
   End If;
   if tbCFOPFlagCalcIPI = '' Then
     Set tbCFOPFlagCalcIPI = 0;
   End If;   

   If (tbCFOPCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcfop: Não foi informado o Código para o CFOP!' As Msg;
   Elseif
      (tbCFOPDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcfop: Não foi informado a Descrição para oO CFOP!' As Msg; 
   Elseif
      Exists(Select CFOPCod From tbcfop Where CFOPCod = tbCFOPCod) Then        
      Select 1 As CodRetorno, 'MSG003/SpInserttbcfop: Código informado para o CFOP existe na base de dados!' As Msg;       
   Elseif
      Exists(Select CFOPDescr From tbcfop Where CFOPDescr = tbCFOPDescr) Then        
      Select 1 As CodRetorno, 'MSG004/SpInserttbcfop: Descrição informada para o CFOP existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcfop(CFOPCod, CFOPDescr, CFOPFlagEntSai, CFOPFlagEstoque, CFOPFlagCalcIPI, CFOPEquivalente)
      Values (tbCFOPCod, tbCFOPDescr, tbCFOPFlagEntSai, tbCFOPFlagEstoque, tbCFOPFlagCalcIPI, tbCFOPEquivalente);
      Select 0 As CodRetorno, Last_Insert_Id() as tbCFOPIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcidade`(
IN
tbCidadeCod VarChar(10),
tbCidadeNome VarChar(100),
tbCidadeCodIBGE VarChar(20),
tbCidadeCapital SmallInt(1),
tbEstadoSiglaFkCidade VarChar(3),
OUT
CodRetorno Int(11), tbCidadeIdent Int(11))
BEGIN
   If (tbCidadeNome = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcidade: Não foi informado o nome do Cidade!' As Msg;
   Elseif
      (tbEstadoSiglaFkCidade = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbestado: Não foi informado o Estado ao qual pertence a Cidade!' As Msg; 
   ElseIf 
      Not Exists (Select EstadoIdent From tbestado Where EstadoSigla = tbEstadoSiglaFkCidade) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbestado: Estado Informado para a Cidade não existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcidade(CidadeCod, CidadeNome, CidadeCodIBGE, CidadeCapital, EstadoSiglaFkCidade)
      Values (tbCidadeCod, tbCidadeNome, tbCidadeCodIBGE, tbCidadeCapital, tbEstadoSiglaFkCidade);
      Select 0 As CodRetorno, Last_Insert_Id() as tbCidadeIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbclassifservico`(
IN
tbClassifServicoCod VarChar(20),
tbClassifServicoDescr VarChar(500),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   Declare tbClassifServicoFlagAtivo SmallInt(1);
   Set tbClassifServicoFlagAtivo = 1;
   
   If ((tbClassifServicoCod = '') or (tbPessoaIdentAprovFkCompraAlcadaGeral Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbclassifservico: Não foi Informado o Código da Classificação do Serviço!' As Msg;
   Elseif
      ((tbClassifServicoCod != '') &&
      (Exists(Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = tbClassifServicoCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbclassifservico: Código da Classificação do Serviço existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbclassifservico(ClassifServicoCod, ClassifServicoDescr, ClassifServicoFlagAtivo)
      Values (tbClassifServicoCod, tbClassifServicoDescr, 1);
      Select 0 As CodRetorno, 'MSG003/SpInserttbclassifservico: Classificação de Serviço incluído com sucesso!' As Msg;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcondicaopgtoreceb`(
IN
tbCategPgtoRecebIdentFkCondicaoPgtoReceb Int(11),
tbCondicaoPgtoRecebCod VarChar(20),
tbCondicaoPgtoRecebDescr VarChar(200),
tbCondicaoPgtoRecebFlagAtivo SmallInt(1),
tbCondicaoPgtoRecebFlagReceb SmallInt(1),
tbCondicaoPgtoRecebFlagPgto SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCondicaoPgtoRecebCod = '') or (tbCondicaoPgtoRecebCod Is Null)) Then
    Set tbCondicaoPgtoRecebCod = '';
   End If;
   If ((tbCondicaoPgtoRecebFlagAtivo = '') or (tbCondicaoPgtoRecebFlagAtivo Is Null)) Then
    Set tbCondicaoPgtoRecebFlagAtivo = 1;
   End If;
   If (((tbCondicaoPgtoRecebFlagReceb = '') or (tbCondicaoPgtoRecebFlagReceb Is Null)) And (tbCondicaoPgtoRecebFlagPgto != '')) Then
    Set tbCondicaoPgtoRecebFlagReceb = '';
   End If;   
   If (((tbCondicaoPgtoRecebFlagPgto = '') or (tbCondicaoPgtoRecebFlagPgto Is Null)) And (tbCondicaoPgtoRecebFlagReceb != '')) Then
    Set tbCondicaoPgtoRecebFlagPgto = '';
   End If;     
   If (tbCategPgtoRecebIdentFkCondicaoPgtoReceb = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcondicaopgtoreceb: Não foi informada a Categoria do Pagamento para a Condição de Pagamento!' As Msg;
   Elseif
      (tbCondicaoPgtoRecebDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcondicaopgtoreceb: Não foi informada a Descrição para a Condição de Pagamento!' As Msg; 
   Elseif
      (tbCategPgtoRecebIdentFkCondicaoPgtoReceb != '') &&
      (Not Exists(Select CategPgtoRecebIdent From tbcategpgtoreceb Where CategPgtoRecebIdent = tbCategPgtoRecebIdentFkCondicaoPgtoReceb)) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbcondicaopgtoreceb: Categoria de Pagamento não existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcondicaopgtoreceb(CategPgtoRecebIdentFkCondicaoPgtoReceb, CondicaoPgtoRecebCod, CondicaoPgtoRecebDescr, CondicaoPgtoRecebFlagAtivo,
                                      CondicaoPgtoRecebFlagReceb, CondicaoPgtoRecebFlagPgto)
      Values (tbCategPgtoRecebIdentFkCondicaoPgtoReceb, tbCondicaoPgtoRecebCod, tbCondicaoPgtoRecebDescr, tbCondicaoPgtoRecebFlagAtivo,
              tbCondicaoPgtoRecebFlagReceb, tbCondicaoPgtoRecebFlagPgto);
      Select 0 As CodRetorno, 'MSG004/SpInserttbcondicaopgtoreceb: Condição de Pagamento incluída com sucesso!' As Msg;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbcondicaopgtorecebparc`(
IN
tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc Int(11),
tbCondicaoPgtoRecebParcNrParcela Int(3),
tbCondicaoPgtoRecebParcTotParc Int(3),
tbCondicaoPgtoRecebParcDiasEntreParc Int(3),
tbCondicaoPgtoRecebParcDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If (tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcondicaopgtorecebparc: Não foi informada a condição do pagamento para a parcela!' As Msg;
   Elseif
      (tbCondicaoPgtoRecebParcNrParcela = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcondicaopgtorecebparc: Não foi informado o número da parcela!' As Msg; 
   Elseif
      (tbCondicaoPgtoRecebParcTotParc = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbcondicaopgtorecebparc: Não foi informado a quantidade total de parcela!' As Msg;       
   Elseif
      (tbCondicaoPgtoRecebParcDiasEntreParc = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbcondicaopgtorecebparc: Não foi informado a quantidade de dias entre a parcela!' As Msg;        
   Elseif
      (tbCondicaoPgtoRecebParcDescr = '') Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcondicaopgtorecebparc: Não foi informado a descrição da parcela!' As Msg;     
   Elseif
      (tbCondicaoPgtoRecebParcNrParcela >  tbCondicaoPgtoRecebParcTotParc) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbcondicaopgtorecebparc: Número da parcela não pode ser superior ao total de parcelas!' As Msg;     
   Elseif
      (tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc != '') &&
      (Not Exists(Select CondicaoPgtoRecebIdent From tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc)) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbcondicaopgtoreceb: Condição de pagamento não existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcondicaopgtorecebparc(CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc, CondicaoPgtoRecebParcNrParcela, CondicaoPgtoRecebParcTotParc,
                                          CondicaoPgtoRecebParcDiasEntreParc, CondicaoPgtoRecebParcDescr)
      Values (tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc, tbCondicaoPgtoRecebParcNrParcela, tbCondicaoPgtoRecebParcTotParc,
              tbCondicaoPgtoRecebParcDiasEntreParc, tbCondicaoPgtoRecebParcDescr);
      Select 0 As CodRetorno, 'MSG004/SpInserttbcondicaopgtoreceb: Parcela Condição de Pagamento incluída com sucesso!' As Msg;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbempresa`(
IN
tbEmpresaCod Char(11),
tbEmpresaMatriz SmallInt(1),
tbEmpresaFilialMatriz Int(11),
tbEmpresaRazaoSocial VarChar(100),
tbEmpresaNomeFantasia VarChar(100),
tbEmpresaCNPJ Varchar(20),
tbEmpresaInscrEstad VarChar(20),
tbEmpresaInscrMunic VarChar(20),
tbEmpresaCNAEFisc VarChar(20),
tbEmpresaEndereco  VarChar(300),
tbEmpresaEnderecoNr VarChar(10),
tbEmpresaEnderecoCompl VarChar(200),
tbCEPIdentFkEmpresa Int(11),
tbEmpresaNrFone VarChar(20),
tbEmpresaNrFax VarChar(20),
tbEmpresaRespons VarChar(100),
tbEmpresaEmail VarChar(50),
tbEmpresaSiteWeb VarChar(100),
OUT
CodRetorno Int(11), tbEmpresaIdent Int(11))
BEGIN
   If (tbEmpresaCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbempresa: Não foi informado o Código da Empresa!' As Msg;
   Elseif
      (tbEmpresaRazaoSocial = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbempresa: Não foi informado a Razão Social da Empresa!' As Msg; 
   Elseif
      (tbEmpresaEndereco = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbempresa: Não foi informado o Endereço da Empresa!' As Msg;       
   Elseif
      (tbCEPIdentFkEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbempresa: Não foi informado o CEP da Empresa!' As Msg;         
   ElseIf 
      Not Exists (Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkEmpresa) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcep: CEP informado para a Empresa não existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbempresa(EmpresaCod, EmpresaMatriz, EmpresaFilialMatriz, EmpresaRazaoSocial, EmpresaNomeFantasia,
      EmpresaCNPJ, EmpresaInscrEstad, EmpresaInscrMunic, EmpresaCNAEFisc, EmpresaEndereco, EmpresaEnderecoNr,
      EmpresaEnderecoCompl, CEPIdentFkEmpresa, EmpresaNrFone, EmpresaNrFax, EmpresaRespons, EmpresaEmail,
      EmpresaSiteWeb)
      Values (tbEmpresaCod, tbEmpresaMatriz, tbEmpresaFilialMatriz, tbEmpresaRazaoSocial, tbEmpresaNomeFantasia,
      fcformatacnpj(tbEmpresaCNPJ), tbEmpresaInscrEstad, tbEmpresaInscrMunic, tbEmpresaCNAEFisc, tbEmpresaEndereco, tbEmpresaEnderecoNr,
      tbEmpresaEnderecoCompl, tbCEPIdentFkEmpresa, tbEmpresaNrFone, tbEmpresaNrFax, tbEmpresaRespons, tbEmpresaEmail,
      tbEmpresaSiteWeb);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEmpresaIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbempresaemail`(
IN
tbEmpresaIdentFkEmpresaEmail Int(11),
tbTipoEmailIdentFkEmpresaEmail Int(11),
tbEmpresaEmailServSMTP VarChar(100),
tbEmpresaEmailPortSMTP VarChar(5),
tbEmpresaEmailSMPTConSeg SmallInt(1),
tbEmpresaEmailUsu VarChar(100),
tbEmpresaEmailUsuSenha VarBinary(255),
tbEmpresaEmailAssunto VarChar(200),
tbEmpresaEmailMensagem VarChar(1000),
OUT
CodRetorno Int(11), tbEmpresaEmailIdent Int(11))
BEGIN
   If ((tbEmpresaIdentFkEmpresaEmail = '') && (tbTipoEmailIdentFkEmpresaEmail = ''))Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbempresaemail: Não foi a Empresa e o Tipo de Email!' As Msg;
   ElseIf
      ((tbEmpresaIdentFkEmpresaEmail != '') &&
      (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkEmpresaEmail and EmpresaExcluido is null))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbempresaemail: Empresa não existe na base de dados!' As Msg;
   ElseIf  
      (tbTipoEmailIdentFkEmpresaEmail != '') &&  
      Not Exists(Select TipoEmailIdent From tbtipoemail Where TipoEmailIdent = tbTipoEmailIdentFkEmpresaEmail and TipoEmailExcluido is null) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbempresaemail: Tipo de Email não existe na base de dados' As Msg;
   ElseIf 
      Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaIdentFkEmpresaEmail = tbEmpresaIdentFkEmpresaEmail And TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail
             And EmpresaEmailExcluido is null) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbempresaemail: Empresa e Tipo de Email existe na base de dados' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then 
      Insert Into tbempresaemail(EmpresaIdentFkEmpresaEmail, TipoEmailIdentFkEmpresaEmail, EmpresaEmailServSMTP,
      EmpresaEmailPortSMTP, EmpresaEmailSMPTConSeg, EmpresaEmailUsu, EmpresaEmailUsuSenha, EmpresaEmailAssunto, EmpresaEmailMensagem)
      Values (tbEmpresaIdentFkEmpresaEmail, tbTipoEmailIdentFkEmpresaEmail, tbEmpresaEmailServSMTP,
      tbEmpresaEmailPortSMTP, tbEmpresaEmailSMPTConSeg, tbEmpresaEmailUsu, AES_ENCRYPT(tbEmpresaEmailUsuSenha, 'chavecriptografia'),
      tbEmpresaEmailAssunto, tbEmpresaEmailMensagem);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEmpresaEmailIdent;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbempresafone`(
IN
tbEmpresaIdentFkEmpresaFone Int(11),
tbTipoFoneIdentFkEmpresaFone Int(11),
tbEmpresaFoneDDI VarChar(10),
tbEmpresaFoneDDD Char(3),
tbEmpresaFoneNr VarChar(20),
OUT
CodRetorno Int(11), tbEmpresaFoneIdent Int(11))
BEGIN
   If (tbEmpresaIdentFkEmpresaFone = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbempresafone: Não foi informada a Empresa para o Fone' As Msg;
   Elseif
      (tbTipoFoneIdentFkEmpresaFone = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbempresafone: Não foi informado o Tipo do Fone para o Fone da Empresa!' As Msg; 
   Elseif
      (tbEmpresaFoneDDD = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbempresafone: Não foi informado o DDD para o Fone da Empresa!' As Msg;       
   Elseif
      (tbEmpresaFoneNr = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbempresafone: Não foi informado o Número para o Fone da Empresa!' As Msg;       
   Elseif
      ((tbEmpresaIdentFkEmpresaFone != '') && (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkEmpresaFone))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbempresafone: Empresa informada não existe na base de dados!' As Msg; 
   Elseif
      ((tbTipoFoneIdentFkEmpresaFone != '') && (Not Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneIdent = tbTipoFoneIdentFkEmpresaFone))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbempresafone: Tipo de Fone informado não existe na base de dados!' As Msg; 
   Elseif
      Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaIdentFkEmpresaFone = tbEmpresaIdentFkEmpresaFone and
       TipoFoneIdentFkEmpresaFone = tbTipoFoneIdentFkEmpresaFone) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbempresafone: Empresa e Tipo de Fone existe na base de dados!' As Msg;       
   Elseif
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbempresafone(EmpresaIdentFkEmpresaFone, TipoFoneIdentFkEmpresaFone, EmpresaFoneDDI, EmpresaFoneDDD, EmpresaFoneNr)
      Values (tbEmpresaIdentFkEmpresaFone, tbTipoFoneIdentFkEmpresaFone, tbEmpresaFoneDDI, tbEmpresaFoneDDD, tbEmpresaFoneNr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEmpresaFoneIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbempresalocal`(
IN
tbEmpresaIdentFkEmpresaLocal Int(11),
tbTipoEnderecoIdentFkEmpresaLocal Int(11),
tbEmpresaLocalEndereco VarChar(300),
tbEmpresaLocalEnderecoNr Varchar(10),
tbEmpresaLocalEnderecoCompl Varchar(200),
tbCEPIdentFkEmpresaLocal Int(11),
OUT
CodRetorno Int(11), tbEmpresaLocalIdent Int(11))
BEGIN
   If (tbEmpresaIdentFkEmpresaLocal = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbempresalocal: Não foi informado a Identificação da Empresa!' As Msg;
   Elseif
      (tbTipoEnderecoIdentFkEmpresaLocal = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbempresalocal: Não foi informado o Tipo de Endereço da Empresa!' As Msg; 
   Elseif
      (tbEmpresaLocalEndereco = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbempresalocal: Não foi informado o Endereço da Empresa!' As Msg;   
   Elseif
      (tbCEPIdentFkEmpresaLocal = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbempresalocal: Não foi informado o CEP da Empresa!' As Msg;        
   ElseIf 
      Not Exists (Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkEmpresaLocal) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbempresalocal: Empresa informada para o endereço não existe na base de dados!' As Msg;
   ElseIf 
      Not Exists (Select TipoEnderecoIdent From tbtipoendereco Where TipoEnderecoIdent = tbTipoEnderecoIdentFkEmpresaLocal) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbempresalocal: Tipo de Endereço informado não existe na base de dados!' As Msg;
   ElseIf 
      Not Exists (Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkEmpresaLocal) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbempresalocal: CEP informado não existe na base de dados!' As Msg;   
   ElseIf
      Exists(Select EmpresaLocalIdent From tbempresalocal Where EmpresaIdentFkEmpresaLocal = tbEmpresaIdentFkEmpresaLocal
      And TipoEnderecoIdentFkEmpresaLocal = tbTipoEnderecoIdentFkEmpresaLocal) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbempresalocal: Tipo de Endereço informadao esta cadastrado para a Empresa!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbempresalocal(EmpresaIdentFkEmpresaLocal, TipoEnderecoIdentFkEmpresaLocal, EmpresaLocalEndereco, EmpresaLocalEnderecoNr,
      EmpresaLocalEnderecoCompl, CEPIdentFkEmpresaLocal)
      Values (tbEmpresaIdentFkEmpresaLocal, tbTipoEnderecoIdentFkEmpresaLocal, tbEmpresaLocalEndereco, tbEmpresaLocalEnderecoNr,
      tbEmpresaLocalEnderecoCompl, tbCEPIdentFkEmpresaLocal);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEmpresaLocalIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbempresalogo`(
IN
tbEmpresaIdentFkEmpresaLogo Int(11),
tbEmpresaLogo Blob,
OUT
CodRetorno Int(11), tbEmpresaLogoIdent Int(11))
BEGIN
   If (tbEmpresaIdentFkEmpresaLogo = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbempresalogo: Não foi informado a Empresa do logotipo' As Msg;
   Elseif
      (tbEmpresaLogo = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbempresalogo: Não foi informada o Logotipo para a Empresa!' As Msg; 
   Elseif
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbempresalogo(EmpresaIdentFkEmpresaLogo, EmpresaLogo)
      Values (tbEmpresaIdentFkEmpresaLogo, tbEmpresaLogo);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEmpresaLogoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbestado`(
IN
tbEstadoNome VarChar(100),
tbEstadoSigla VarChar(3),
tbPaisIdentFkEstado Int(11),
OUT
CodRetorno Int(11), tbEstadoIdent Int(11))
BEGIN
   If (tbEstadoNome = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbestado: Não foi informado o nome do Estado!' As Msg;
   Elseif
      (tbPaisIdentFkEstado = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbestado: Não foi informado o Pais ao qual pertence o Estado!' As Msg; 
   ElseIf
      Exists(Select EstadoIdent From tbestado Where EstadoNome = tbEstadoNome and EstadoExcluido is null) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbestado: Estado existe na base de dados!' As Msg;
   ElseIf    
      Exists (Select EstadoIdent From tbestado Where EstadoNome = tbEstadoNome and EstadoExcluido is not null) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbestado: Estado existe na base de dados e foi excluido logicamente!' As Msg;
   ElseIf 
      Not Exists (Select PaisIdent From tbpais Where PaisIdent = tbPaisIdentFkEstado) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbestado: Pais Informado não existe na base de dados!' As Msg;
   Elseif   
      Not Exists (Select EstadoIdent From tbestado Where EstadoNome = tbEstadoNome ) Then
      Insert Into tbestado(EstadoNome, EstadoSigla, PaisIdentFkEstado)
      Values (tbEstadoNome, tbEstadoSigla, tbPaisIdentFkEstado);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEstadoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbestadocivil`(
IN
tbEstadoCivilSigla VarChar(20),
tbEstadoCivilDescr VarChar(100),
OUT
CodRetorno Int(11), tbEstadoCivilIdent Int(11))
BEGIN
   If (tbEstadoCivilSigla = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbestadocivil: Não foi informado o Código para o Estado Civil!' As Msg;
   ElseIf   
      (tbEstadoCivilDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbestadocivil: Não foi informado a Descrição para o Estado Civil!' As Msg;  
   ElseIf   
      ((tbEstadoCivilSigla != '') &&
      (Exists(Select EstadoCivilSigla from tbestadocivil Where EstadoCivilSigla = tbEstadoCivilSigla))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbestadocivil: Código para o Estado Civil existe na base de dados!' As Msg;  
   ElseIf   
      ((tbEstadoCivilDescr != '') &&
      (Exists(Select EstadoCivilDescr from tbestadocivil Where EstadoCivilDescr = tbEstadoCivilDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbestadocivil: Descrição informada para o Estado Civil existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbestadocivil(EstadoCivilSigla, EstadoCivilDescr)
      Values (tbEstadoCivilSigla, tbEstadoCivilDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbEstadoCivilIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbgrade`(
IN
tbGradeCod VarChar(20),
tbEmpresaIdentFkGrade Int(11),
tbGradeDescr VarChar(100),
OUT
CodRetorno Int(11), tbGradeIdent Int(11))
BEGIN

   If (tbGradeCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbgrade: Não foi informado o Código para a Grade!' As Msg;
   Elseif
      (tbEmpresaIdentFkGrade = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbgrade: Não foi informado a Empresa para a Grade' As Msg; 
   Elseif
      (tbGradeDescr = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbgrade: Não foi informado a Descrição para a Grade' As Msg;    
   Elseif
      Not Exists(Select EmpresaIdent From tbempresa where EmpresaIdent = tbEmpresaIdentFkGrade) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbgrade: Empresa informada para a Grade não existe na base de dados' As Msg;    
   Elseif
      Exists(Select GradeCod From tbgrade where GradeCod = tbGradeCod) Then      
      Select 1 As CodRetorno, 'MSG005/SpInserttbgrade: Código informada para a Grade existe na base de dados' As Msg;        
   Elseif
      Exists(Select GradeDescr From tbgrade where GradeDescr = tbGradeDescr) Then      
      Select 1 As CodRetorno, 'MSG006/SpInserttbgrade: Descrição informada para a Grade existe na base de dados' As Msg;        
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbgrade(tbGradeCod, tbEmpresaIdentFkGrade, tbGradeDescr)
      Values (GradeCod, EmpresaIdentFkGrade, GradeDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbGradeIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbindicinscrestad`(
IN
tbIndicInscEstadCod VarChar(3),
tbIndicInscEstadDescr VarChar(100),
OUT
CodRetorno Int(11), tbIndicInscEstadIdent Int(11))
BEGIN
   If (tbIndicInscEstadCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbindicinscrestad: Não foi informado o Código para o Indic. Inscr. Estadual!' As Msg;
   ElseIf   
      (tbIndicInscEstadDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbindicinscrestad: Não foi informado a Descrição para o Indic. Inscr. Estadual!' As Msg;  
   ElseIf   
      ((tbIndicInscEstadCod != '') &&
      (Exists(Select IndicInscEstadCod from tbindicinscrestad Where IndicInscEstadCod = tbIndicInscEstadCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbindicinscrestad: Código para o Indic. Inscr. Estadual existe na base de dados!' As Msg;  
   ElseIf   
      ((tbIndicInscEstadDescr != '') &&
      (Exists(Select IndicInscEstadDescr from tbindicinscrestad Where IndicInscEstadDescr = tbIndicInscEstadDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbindicinscrestad: Descrição informada para o Indic. Inscr. Estadual existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbindicinscrestad(IndicInscEstadCod, IndicInscEstadDescr)
      Values (tbIndicInscEstadCod, tbIndicInscEstadDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbIndicInscEstadIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbncm`(
IN
tbNCMCod VarChar(10),
tbNCMFlagAtivo SmallInt(1),
tbNCMEx VarChar(50),
tbNCMTab VarChar(50),
tbNCMDescr VarChar(200),
tbNCMAliqIPI Numeric(12,2),
tbNCMAliqII  Numeric(12,2),
tbNCMALiqMVADentroEstado Numeric(12,2),
tbNCMAliqMVAForaEstado  Numeric(12,2),
tbNCMValDtnic Date,
tbNCMValDtFim Date,
OUT
CodRetorno Int(11), tbNCMIdent Int(11))
BEGIN
   If tbNCMFlagAtivo = '' Then
     Set tbNCMFlagAtivo = 0;
   End If;
   if tbNCMValDtnic = '' Then
     Set tbNCMValDtnic = '2008-01-01';
   End If;

   If (tbNCMCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbncm: Não foi informado o Código para a NCM!' As Msg;
   Elseif
      (tbNCMDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbncm: Não foi informado a Descrição para a NCM!' As Msg; 
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbncm(NCMCod, NCMFlagAtivo, NCMEx, NCMTab, NCMDescr, NCMAliqIPI, NCMAliqII, NCMALiqMVADentroEstado, NCMAliqMVAForaEstado, 
                        NCMValDtnic, NCMValDtFim)
      Values (tbNCMCod, tbNCMFlagAtivo, tbNCMEx, tbNCMTab, tbNCMDescr, tbNCMAliqIPI, tbNCMAliqII, tbNCMALiqMVADentroEstado, tbNCMAliqMVAForaEstado, 
                        tbNCMValDtnic, tbNCMValDtFim);
      Select 0 As CodRetorno, Last_Insert_Id() as tbNCMIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbocupacao`(
IN
tbOcupacaoCod VarChar(7),
tbOcupacaoTitulo VarChar(200),
tbOcupacaoTipo VarChar(50),
OUT
CodRetorno Int(11), tbOcupacaoIdent Int(11))
BEGIN
   If (tbOcupacaoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbocupacao: Não foi informado o Código para a Ocupação Profissional!' As Msg;
   ElseIf   
      (tbOcupacaoTitulo = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbocupacao: Não foi informado o Título para a Ocupação Profissional!' As Msg;  
   ElseIf   
      ((tbOcupacaoCod != '') &&
      (Exists(Select OcupacaoCod from tbocupacao Where OcupacaoCod = tbOcupacaoCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbocupacao: Código para a Ocupação Profissional existe na base de dados!' As Msg;  
   ElseIf   
      ((tbOcupacaoTitulo != '') &&
      (Exists(Select OcupacaoTitulo from tbocupacao Where OcupacaoTitulo = tbOcupacaoTitulo))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbocupacao: Título informado para a Ocupação Profissional existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbocupacao(OcupacaoCod, OcupacaoTitulo, OcupacaoTipo)
      Values (tbOcupacaoCod, tbOcupacaoTitulo, tbOcupacaoTipo);
      Select 0 As CodRetorno, Last_Insert_Id() as tbOcupacaoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpais`(
IN
tbPaisNome VarChar(100),
tbPaisCodIBGE VarChar(20),
OUT
CodRetorno Int(11),
tbPaisIdent Int(11))
BEGIN
   If (tbPaisNome = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpais: Não foi informado o nome do Pais!' As Msg;
   ElseIf
      Exists(Select PaisIdent From tbpais Where PaisNome = tbPaisNome and PaisExcluido is null) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpais: Pais existe na base de dados!' As Msg;
   ElseIf    
      Exists (Select PaisIdent From tbpais Where PaisNome = tbPaisNome and PaisExcluido is not null) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpais: Pais existe na base de dados e foi excluido logicamente!' As Msg;
   ElseIf 
      Not Exists (Select PaisIdent From tbpais Where PaisNome = tbPaisNome ) Then
      Insert Into tbpais(PaisNome, PaisCodIBGE)
      Values (tbPaisNome, tbPaisCodIBGE);
      Select 0 As CodRetorno, Last_Insert_Id() as tbPaisIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoa`(
IN
tbPessoaCod VarChar(20),
tbPessoaTipo Char(1),
tbPessoaNomeRazaoSocial VarChar(200),
tbPessoaNomeFantasia VarChar(200),
tbPessoaNome Varchar(200),
tbPessoaSexo Char(1),
tbPessoaDtNascimento Date,
tbPessoaDtFundacao Date,
tbPaisIdentNacFkPessoa Int(11),
tbCidadeIdentNaturalFkPessoa Int(11),
tbEstadoCivilIdentFkPessoa Int(11),
tbPessoaNomePai VarChar(200),
tbPessoaNomeMae VarChar(200),
tbPessoaNomeConjuge VarChar(200),
tbPessoaNomeContato VarChar(200),
tbPessoaCNPJCPF VarChar(45),
tbPessoaInscrEstad VarChar(20),
tbIndicInscEstadIdentFkPessoa Int(11),
tbPessoaInscrMunic VarChar(20),
tbPessoaInscrSuframa VarChar(10),
tbPessoaIdentidade VarChar(20),
tbPessoaIdentidadeDtEmis Date,
tbPessoaIdentidadeOrgaoEmis VarChar(50),
tbEstadoIdentIdentidadeEmisFkPessoa Int(11),
tbOcupacaoIdentFkPessoa Int(11),
tbPessoaSenha VarBinary(255),
tbPessoaFoneDDI VarChar(10),
tbPessoaFoneDDD VarChar(3),
tbPessoaNrFone VarChar(20),
tbPessoaNrFax VarChar(20),
tbPessoaEmail VarChar(50),
tbPessoaSiteWeb VarChar(100),
tbPessoaFacebook VarChar(100),
tbPessoaInstagram VarChar(100),
tbPessoaLinkedin VarChar(100),
tbPessoaWhatSapp VarChar(100),
tbPessoaTwitter VarChar(100),
tbPessoaRespons VarChar(100),
tbPessoaEndereco VarChar(300),
tbPessoaEnderecoNr VarChar(10),
tbPessoaEnderecoCompl VarChar(200),
tbCEPIdentFkPessoa Int(11),
tbPessoaFoto LongBlob,
OUT
CodRetorno Int(11), Msg VarChar(300))
BEGIN
   If tbPessoaTipo = '' Then
      set tbPessoaTipo = 'F';
   End If;

insert into a(campo) values ('passei aqui 1');

   If (tbPessoaCod = '') Then
         insert into a(campo) values ('passei aqui 2'); 
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoa: Não foi informado o Código da Pessoa!' As Msg;
   ElseIf   
      ((tbPessoaCod != '') &&
      (Exists(Select PessoaCod from tbpessoa Where PessoaCod = tbPessoaCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoa: Pessoa existe na base de dados!' As Msg;        
   ElseIf   
      ((tbPaisIdentNacFkPessoa != '') &&
      (Not Exists(Select PaisIdent from tbpais Where PaisIdent = tbPaisIdentNacFkPessoa))) Then
            insert into a(campo) values ('passei aqui 4'); 
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoa: Pais informada para a Pessoa não existe na base de dados!' As Msg; 
   ElseIf   
      ((tbCidadeIdentNaturalFkPessoa != '') &&
      (Not Exists(Select CidadeIdent from tbcidade Where CidadeIdent = tbCidadeIdentNaturalFkPessoa))) Then
            insert into a(campo) values ('passei aqui 5'); 
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoa: Cidade informada para a Pessoa não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbEstadoCivilIdentFkPessoa != '') &&
      (Not Exists(Select EstadoCivilIdent from tbestadocivil Where EstadoCivilIdent = tbEstadoCivilIdentFkPessoa))) Then
            insert into a(campo) values ('passei aqui 6'); 
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoa: Estado Civil informado para a Pessoa não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbEstadoIdentIdentidadeEmisFkPessoa != '') &&
      (Not Exists(Select EstadoIdent from tbestado Where EstadoIdent = tbEstadoIdentIdentidadeEmisFkPessoa))) Then
            insert into a(campo) values ('passei aqui 7'); 
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoa: Estado informado para a Identidade da Pessoa não existe na base de dados!' As Msg;       
   ElseIf   
      ((tbOcupacaoIdentFkPessoa != '') &&
      (Not Exists(Select OcupacaoIdent from tbocupacao Where OcupacaoIdent = tbOcupacaoIdentFkPessoa))) Then
            insert into a(campo) values ('passei aqui 8'); 
      Select 1 As CodRetorno, 'MSG007/SpInserttbpessoa: Ocupação informada para a Pessoa não existe na base de dados!' As Msg;       
   ElseIf   
      ((tbCEPIdentFkPessoa != '') &&
      (Not Exists(Select CEPIdent from tbcep Where CEPIdent = tbCEPIdentFkPessoa))) Then
            insert into a(campo) values ('passei aqui 9'); 
      Select 1 As CodRetorno, 'MSG008/SpInserttbpessoa: CEP informado para a Pessoa não existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
            insert into a(campo) values ('passei aqui 10'); 
      Insert Into tbpessoa(PessoaCod, PessoaTipo, PessoaNomeRazaoSocial, PessoaNomeFantasia,PessoaNome, PessoaSexo, PessoaDtNascimento, 
                  PessoaDtFundacao, PaisIdentNacFkPessoa, CidadeIdentNaturalFkPessoa, EstadoCivilIdentFkPessoa, PessoaNomePai, 
                  PessoaNomeMae, PessoaNomeConjuge, PessoaNomeContato, PessoaCNPJCPF, PessoaInscrEstad, IndicInscEstadIdentFkPessoa, 
                  PessoaInscrMunic, PessoaInscrSuframa, PessoaIdentidade, PessoaIdentidadeDtEmis, PessoaIdentidadeOrgaoEmis, 
                  EstadoIdentIdentidadeEmisFkPessoa, OcupacaoIdentFkPessoa, PessoaSenha, PessoaFoneDDI, PessoaFoneDDD, PessoaNrFone, 
                  PessoaNrFax, PessoaEmail, PessoaSiteWeb, PessoaFacebook, PessoaInstagram, PessoaLinkedin, PessoaWhatSapp, 
                  PessoaTwitter, PessoaRespons, PessoaEndereco, PessoaEnderecoNr, PessoaEnderecoCompl, CEPIdentFkPessoa, PessoaFoto)
      Values (tbPessoaCod, tbPessoaTipo, tbPessoaNomeRazaoSocial, tbPessoaNomeFantasia, tbPessoaNome, tbPessoaSexo, tbPessoaDtNascimento, 
                  tbPessoaDtFundacao, tbPaisIdentNacFkPessoa, tbCidadeIdentNaturalFkPessoa, tbEstadoCivilIdentFkPessoa, tbPessoaNomePai, 
                  tbPessoaNomeMae, tbPessoaNomeConjuge, tbPessoaNomeContato, tbPessoaCNPJCPF, tbPessoaInscrEstad, tbIndicInscEstadIdentFkPessoa, 
                  tbPessoaInscrMunic, tbPessoaInscrSuframa, tbPessoaIdentidade, tbPessoaIdentidadeDtEmis, tbPessoaIdentidadeOrgaoEmis, 
                  tbEstadoIdentIdentidadeEmisFkPessoa, tbOcupacaoIdentFkPessoa, AES_ENCRYPT(tbPessoaSenha, 'senhacriptografada'), tbPessoaFoneDDI, tbPessoaFoneDDD, tbPessoaNrFone, 
                  tbPessoaNrFax, tbPessoaEmail, tbPessoaSiteWeb, tbPessoaFacebook, tbPessoaInstagram, tbPessoaLinkedin, tbPessoaWhatSapp, 
                  tbPessoaTwitter, tbPessoaRespons, tbPessoaEndereco, tbPessoaEnderecoNr, tbPessoaEnderecoCompl, tbCEPIdentFkPessoa, tbPessoaFoto);
      insert into a(campo) values ('passei aqui');            
      Select 0 As CodRetorno, Concat(Last_Insert_Id(), '_Inserido com Sucesso!') as Msg;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoacontato`(
IN
tbPessoaIdentFkPessoaContato Int(11),
tbTipoContatoIdentFkPessoaContato Int(11),
tbPessoaContatoNome VarChar(200),
tbPessoaFoneIdentFkPessoaContato Int(11),
OUT
CodRetorno Int(11), tbPessoaContatoIdent Int(11))
BEGIN
   If (tbPessoaIdentFkPessoaContato = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoacontato: Não foi informado o Código da Pessoa para a Pessoa/Contato!' As Msg;
   ElseIf   
      (tbTipoContatoIdentFkPessoaContato = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoacontato: Não foi informado o Tipo de Contato para a Pessoa/Contato!' As Msg;  
   ElseIf   
      (tbPessoaContatoNome = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoacontato: Não foi informado o Nome do Contato para a Pessoa/Contato!' As Msg;       
   ElseIf   
      ((tbPessoaIdentFkPessoaContato != '') && (tbTipoContatoIdentFkPessoaContato != '') &&
      (Exists(Select PessoaContatoIdent from tbpessoacontato Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato And 
                     TipoContatoIdentFkPessoaContato = tbTipoContatoIdentFkPessoaContato))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoacontato: Pessoa e Tipo de Contato para a Pessoa/Contato existe na base de dados!' As Msg;  
   ElseIf   
      ((tbPessoaIdentFkPessoaContato != '') &&
      (Not Exists(Select PessoaIdent from tbpessoa Where PessoaIdent = tbPessoaIdentFkPessoaContato))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoacontato: Pessoa informada para a Pessoa/Contato não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbTipoContatoIdentFkPessoaContato != '') &&
      (Not Exists(Select TipoContatoIdent from tbtipocontato Where TipoContatoIdent = tbTipoContatoIdentFkPessoaContato))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoacontato: Tipo de Contato informado para a Pessoa/Contato não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbpessoacontato(PessoaIdentFkPessoaContato, TipoContatoIdentFkPessoaContato, PessoaContatoNome, PessoaFoneIdentFkPessoaContato)
      Values (tbPessoaIdentFkPessoaContato, tbTipoContatoIdentFkPessoaContato, tbPessoaContatoNome, tbPessoaFoneIdentFkPessoaContato);
      Select 0 As CodRetorno, Last_Insert_Id() as tbPessoaContatoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoaemail`(
IN
tbPessoaIdentFkPessoaEmail Int(11),
tbTipoEmailIdentFkPessoaEmail Int(11),
tbPessoaEnderEmail VarChar(200),
OUT
CodRetorno Int(11), tbPessoaEmailIdent Int(11))
BEGIN
   If (tbPessoaIdentFkPessoaEmail = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoaemail: Não foi informado o Código da Pessoa para a Pessoa/Email!' As Msg;
   ElseIf   
      (tbTipoEmailIdentFkPessoaEmail = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoaemail: Não foi informado o Tipo de Email para a Pessoa/Email!' As Msg;  
   ElseIf   
      (tbPessoaEnderEmail = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoaemail: Não foi informado o Endereço de Email para a Pessoa/Email!' As Msg;      
       
   ElseIf   
      ((tbPessoaIdentFkPessoaEmail != '') && (tbTipoEmailIdentFkPessoaEmail != '') &&
      (Exists(Select PessoaEmailIdent from tbpessoaemail Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail And 
                     TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoaemail: Pessoa e Tipo de Email para a Pessoa/Email existe na base de dados!' As Msg;  
   ElseIf   
      ((tbPessoaIdentFkPessoaEmail != '') &&
      (Not Exists(Select PessoaIdent from tbpessoa Where PessoaIdent = tbPessoaIdentFkPessoaEmail))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoaemail: Pessoa informada para a Pessoa/Email não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbTipoEmailIdentFkPessoaEmail != '') &&
      (Not Exists(Select TipoEmailIdent from tbtipoemail Where TipoEmailIdent = tbTipoEmailIdentFkPessoaEmail))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoaemail: Tipo de Email informado para a Pessoa/Email não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbpessoaemail(PessoaIdentFkPessoaEmail, TipoEmailIdentFkPessoaEmail, PessoaEnderEmail)
      Values (tbPessoaIdentFkPessoaEmail, tbTipoEmailIdentFkPessoaEmail, tbPessoaEnderEmail);
      Select 0 As CodRetorno, Last_Insert_Id() as tbPessoaEmailIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoaempresa`(
IN
tbPessoaIdentFkPessoaEmpresa Int(11),
tbEmpresaIdentFkPessoaEmpresa Int(11),
tbPessoaEmpresaFlagAtivo SmallInt(1),
tbPessoaEmpresaFlagCliente SmallInt(1),
tbPessoaEmpresaFlagFornec SmallInt(1),
tbPessoaEmpresaFlagFunc SmallInt(1),
tbPessoaEmpresaFlagTransp SmallInt(1),
tbPessoaEmpresaFlagUsu SmallInt(1),
tbPerfilAcesSistIdentFkPessoaEmpresa Int(11),
OUT
CodRetorno Int(11), tbPessoaEmpresaIdent Int(11))
BEGIN
   If tbPessoaEmpresaFlagAtivo = '' Then
      set tbPessoaEmpresaFlagAtivo = 1;
   End If;
   If tbPessoaEmpresaFlagCliente = '' Then
      set tbPessoaEmpresaFlagCliente = 1;
   End If;
   If tbPessoaEmpresaFlagFornec = '' Then
      set tbPessoaEmpresaFlagFornec = 0;
   End If;            
   If tbPessoaEmpresaFlagFunc = '' Then
      set tbPessoaEmpresaFlagFunc = 0;
   End If;  
   If tbPessoaEmpresaFlagTransp = '' Then
      set tbPessoaEmpresaFlagTransp = 0;
   End If;  
   If tbPessoaEmpresaFlagUsu = '' Then
      set tbPessoaEmpresaFlagUsu = 0;
   End If;     

   If (tbPessoaIdentFkPessoaEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoaempresa: Não foi informado o Código da Pessoa para a Pessoa/Empresa!' As Msg;
   ElseIf   
      (tbEmpresaIdentFkPessoaEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoaempresa: Não foi informado a Empresa para a Pessoa/Empresa!' As Msg; 
   ElseIf   
      ((tbPessoaIdentFkPessoaEmpresa != '') && (tbEmpresaIdentFkPessoaEmpresa != '') &&
      (Exists(Select PessoaEmpresaIdent from tbpessoaempresa Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa And 
                     EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoaempresa: Pessoa e Empresa para a Pessoa/Empresa existe na base de dados!' As Msg;  
   ElseIf   
      ((tbPessoaIdentFkPessoaEmpresa != '') &&
      (Not Exists(Select PessoaIdent from tbpessoa Where PessoaIdent = tbPessoaIdentFkPessoaEmpresa))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoaempresa: Pessoa informada para a Pessoa/Empresa não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbEmpresaIdentFkPessoaEmpresa != '') &&
      (Not Exists(Select EmpresaIdent from tbempresa Where EmpresaIdent = tbEmpresaIdentFkPessoaEmpresa))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoaempresa: Empresa informada para a Pessoa/Empresa não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbpessoaempresa(PessoaIdentFkPessoaEmpresa, EmpresaIdentFkPessoaEmpresa, PessoaEmpresaFlagAtivo, PessoaEmpresaFlagCliente,
                                  PessoaEmpresaFlagFornec, PessoaEmpresaFlagFunc, PessoaEmpresaFlagTransp, PessoaEmpresaFlagUsu, PerfilAcesSistIdentFkPessoaEmpresa)
      Values (tbPessoaIdentFkPessoaEmpresa, tbEmpresaIdentFkPessoaEmpresa, tbPessoaEmpresaFlagAtivo, tbPessoaEmpresaFlagCliente,
                                  tbPessoaEmpresaFlagFornec, tbPessoaEmpresaFlagFunc, tbPessoaEmpresaFlagTransp, tbPessoaEmpresaFlagUsu, tbPerfilAcesSistIdentFkPessoaEmpresa);
      Select 0 As CodRetorno, Last_Insert_Id() as tbPessoaEmpresaIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoafone`(
IN
tbPessoaIdentFkPessoaFone Int(11),
tbTipoFoneIdentFkPessoaFone Int(11),
tbPessoaFoneDDI VarChar(10),
tbPessoaFoneDDD Char(3),
tbPessoaFoneNr VarChar(20),
OUT
CodRetorno Int(11), tbPessoaFoneIdent Int(11))
BEGIN
   If (tbPessoaIdentFkPessoaFone = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoafone: Não foi informado o Código da Pessoa para a Pessoa/Fone!' As Msg;
   ElseIf   
      (tbTipoFoneIdentFkPessoaFone = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoafone: Não foi informado o Tipo de Fone para a Pessoa/Fone!' As Msg;  
   ElseIf   
      (tbPessoaFoneNr = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoafone: Não foi informado o Número do Fone para a Pessoa/Fone!' As Msg;
   ElseIf   
      ((tbPessoaIdentFkPessoaFone != '') && (tbTipoFoneIdentFkPessoaFone != '') &&
      (Exists(Select PessoaFoneIdent from tbpessoafone Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone And 
                     TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoafone: Pessoa e Tipo de Fone para a Pessoa/Fone existe na base de dados!' As Msg;  
   ElseIf   
      ((tbPessoaIdentFkPessoaFone != '') &&
      (Not Exists(Select PessoaIdent from tbpessoa Where PessoaIdent = tbPessoaIdentFkPessoaFone))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoafone: Pessoa informada para a Pessoa/Fone não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbTipoFoneIdentFkPessoaFone != '') &&
      (Not Exists(Select TipoFoneIdent from tbtipofone Where TipoFoneIdent = tbTipoFoneIdentFkPessoaFone))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoafone: Tipo de Fone informado para a Pessoa/Fone não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbpessoafone(PessoaIdentFkPessoaFone, TipoFoneIdentFkPessoaFone, PessoaFoneNrDDI, PessoaFoneNrDDD, PessoaFoneNr)
      Values (tbPessoaIdentFkPessoaFone, tbTipoFoneIdentFkPessoaFone, tbPessoaFoneDDI, tbPessoaFoneDDD, tbPessoaFoneNr);
      Select 0 As CodRetorno, Concat(Last_Insert_Id(), '_Inserido com Sucesso!') as Msg;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbpessoalocal`(
IN
tbPessoaIdentFkPessoaLocal Int(11),
tbTipoEnderecoIdentFkPessoaLocal Int(11),
tbPessoaLocalEndereco VarChar(300),
tbPessoaLocalEnderecoNr VarChar(10),
tbPessoaLocalEnderecoCompl VarChar(200),
tbCEPIdentFkPessoaLocal Int(11),
OUT
CodRetorno Int(11), tbPessoaLocalIdent Int(11))
BEGIN
   If (tbPessoaIdentFkPessoaLocal = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbpessoalocal: Não foi informado o Código da Pessoa para a Pessoa/Local!' As Msg;
   ElseIf   
      (tbTipoEnderecoIdentFkPessoaLocal = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbpessoalocal: Não foi informado o Tipo de Local para a Pessoa/Local!' As Msg;  
   ElseIf   
      (tbPessoaLocalEndereco = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoalocal: Não foi informado o Endereço para a Pessoa/Local!' As Msg;
   ElseIf   
      (tbCEPIdentFkPessoaLocal = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbpessoalocal: Não foi informado o CEP para a Pessoa/Local!' As Msg;      
   ElseIf   
      ((tbPessoaIdentFkPessoaLocal != '') && (tbTipoEnderecoIdentFkPessoaLocal != '') &&
      (Exists(Select PessoaLocalIdent from tbpessoalocal Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal And 
                     TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbpessoalocal: Pessoa e Tipo Local para a Pessoa/Local existe na base de dados!' As Msg;  
   ElseIf   
      ((tbPessoaIdentFkPessoaLocal != '') &&
      (Not Exists(Select PessoaIdent from tbpessoa Where PessoaIdent = tbPessoaIdentFkPessoaLocal))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbpessoalocal: Pessoa informada para a Pessoa/Local não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbTipoEnderecoIdentFkPessoaLocal != '') &&
      (Not Exists(Select TipoEnderecoIdent from tbtipoendereco Where TipoEnderecoIdent = tbTipoEnderecoIdentFkPessoaLocal))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoalocal: Tipo de Endereço informado para a Pessoa/Local não existe na base de dados!' As Msg;  
   ElseIf   
      ((tbCEPIdentFkPessoaLocal != '') &&
      (Not Exists(Select CEPIdent from tbcep Where CEPIdent = tbCEPIdentFkPessoaLocal))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbpessoalocal: CEP informado para a Pessoa/Local não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbpessoalocal(PessoaIdentFkPessoaLocal, TipoEnderecoIdentFkPessoaLocal, PessoaLocalEndereco, PessoaLocalEnderecoNr, 
                                PessoaLocalEnderecoCompl, CEPIdentFkPessoaLocal)
      Values (tbPessoaIdentFkPessoaLocal, tbTipoEnderecoIdentFkPessoaLocal, tbPessoaLocalEndereco, tbPessoaLocalEnderecoNr, 
                                tbPessoaLocalEnderecoCompl, tbCEPIdentFkPessoaLocal);
      Select 0 As CodRetorno, Last_Insert_Id() as tbPessoaLocalIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbproduto`(
IN
tbProdutoCod BigInt(20),
tbProdutoCodInterno VarChar(20),
tbProdutoStatus Smallint(1),
tbProdutoFlagServico Smallint(1),
tbProdutoDescr VarChar(200),
OUT
CodRetorno Int(11), tbProdutoIdent Int(11))
BEGIN

   If tbProdutoStatus = '' Then
      Set tbProdutoStatus = 0;
   End If;
   If tbProdutoFlagServico = '' Then
      Set tbProdutoFlagServico = 0;
   End If;

   If (tbProdutoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbproduto: Não foi informado o Codigo do Produto!' As Msg;
   Elseif
      (tbProdutoDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbproduto: Não foi informado a Descrição do Produto!' As Msg; 
   Elseif
      ((tbProdutoCod != ''   ) &&
      (Exists(Select ProdutoCod From tbproduto Where ProdutoCod = tbProdutoCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbproduto: Código do Produto existe na base de dados!' As Msg;
   Elseif
      ((tbProdutoDescr != ''   ) &&
      (Exists(Select ProdutoDescr From tbproduto Where ProdutoDescr = tbProdutoDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbregiao: Descrição do Produto existe na base de dados!' As Msg;      
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbproduto(ProdutoCod, ProdutoCodInterno, ProdutoStatus, ProdutoFlagServico, ProdutoDescr)
      Values (tbProdutoCod, tbProdutoCodInterno, tbProdutoStatus, tbProdutoFlagServico, tbProdutoDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutoadicional`(
IN
tbProdutoEmpresaIdentFkProdutoAdicional Int(11),
tbAdicionalIdentFkProdutoAdicional Int(11),
tbProdutoAdicionalVlrMargem Numeric(12,4),
tbProdutoAdicionalVlrPreco Numeric(12,4),
OUT
CodRetorno Int(11), tbProdutoAdicionalIdent Int(11))
BEGIN
   If (tbProdutoEmpresaIdentFkProdutoAdicional = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutoadicional: Não foi informado o Produto/Empresa para o Produto/Adicional!' As Msg;
   ElseIf
      (tbAdicionalIdentFkProdutoAdicional = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutoadicional: Não foi informado o Adicional para o Produto/Adicional!' As Msg;      
   ElseIf
      (tbProdutoAdicionalVlrMargem = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutoadicional: Não foi informado a Margem para o Produto/Adicional!' As Msg;   
   ElseIf
      (tbProdutoAdicionalVlrPreco = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutoadicional: Não foi informado o Preço para o Produto/Adicional!' As Msg;   
   ElseIf
      ((tbProdutoEmpresaIdentFkProdutoAdicional != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoAdicional))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutoadicional: Produto/Empresa para o Produto/Adicional não existe na base de dados!' As Msg;   
   ElseIf
      ((tbAdicionalIdentFkProdutoAdicional != '') &&
      (Not Exists(Select AdicionalIdent From tbadicional Where AdicionalIdent = tbAdicionalIdentFkProdutoAdicional))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbprodutoadicional: Adicional para o Produto/Adicional não existe na base de dados!' As Msg;   
   ElseIf
      ((tbAdicionalIdentFkProdutoAdicional != '') && (tbAdicionalIdentFkProdutoAdicional != '') &&
      (Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional 
                                                                         And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbprodutoadicional: Produto/Empresa/Adicional para o Produto/Adicional existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutoadicional(ProdutoEmpresaIdentFkProdutoAdicional, AdicionalIdentFkProdutoAdicional, ProdutoAdicionalVlrMargem, ProdutoAdicionalVlrPreco)
      Values (tbProdutoEmpresaIdentFkProdutoAdicional, tbAdicionalIdentFkProdutoAdicional, tbProdutoAdicionalVlrMargem, tbProdutoAdicionalVlrPreco);
      Select 0 As CodRetorno, cast(Last_Insert_Id() as char) as tbProdutoAdicionalIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutocomposicao`(
IN
tbProdutoEmpresaIdentFkProdutoComposicaoPrinc Int(11),
tbProdutoEmpresaIdentFkProdutoComposicaoSecund Int(11),
tbProdutoComposicaoQtde Float,
tbUnidMedidaIdentifFkProdutoComposicao Int(11),
OUT
CodRetorno Int(11), tbProdutoComposicaoIdent Int(11))
BEGIN
   If (tbProdutoEmpresaIdentFkProdutoComposicaoPrinc = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutocomposicao: Não foi informado o Produto/Empresa para o Produto/Composição Principal!' As Msg;
   ElseIf
      (tbProdutoEmpresaIdentFkProdutoComposicaoSecund = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutocomposicao: Não foi informado o Produto/Empresa para o Produto/Composição Secundário!' As Msg;  
   ElseIf
      (tbProdutoComposicaoQtde = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutocomposicao: Não foi informado a Quantidade para o Produto/Composição!' As Msg;  
   ElseIf
      (tbUnidMedidaIdentifFkProdutoComposicao = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutocomposicao: Não foi informado a Unidade de Medida para o Produto/Composição!' As Msg;  
   ElseIf
      ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutocomposicao: Produto/Empresa para o Produto/Composição Principal não existe na base de dados!' As Msg;   
   ElseIf
      ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoComposicaoSecund))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbprodutocomposicao: Produto/Empresa para o Produto/Composição Secundário não existe na base de dados!' As Msg;   
   ElseIf
      ((tbUnidMedidaIdentifFkProdutoComposicao != '') &&
      (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoComposicao))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbprodutocomposicao: Unidade de Medida para o Produto/Composição não existe na base de dados!' As Msg;   
   ElseIf
      ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') && (tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
      (Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc 
                                                                         And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund))) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbprodutocomposicao: Produto/Empresa/Composição para o Produto/Composição Princ. e Secund. existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutocomposicao(ProdutoEmpresaIdentFkProdutoComposicaoPrinc, ProdutoEmpresaIdentFkProdutoComposicaoSecund,
                                      ProdutoComposicaoQtde, UnidMedidaIdentifFkProdutoComposicao)
      Values (tbProdutoEmpresaIdentFkProdutoComposicaoPrinc, tbProdutoEmpresaIdentFkProdutoComposicaoSecund,
                                      tbProdutoComposicaoQtde, tbUnidMedidaIdentifFkProdutoComposicao);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoComposicaoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutoempresa`(
IN
tbEmpresaIdentFkProdutoEmpresa Int(11),
tbProdutoIdentFkProdutoEmpresa Int(11),
tbProdutoEmpresaFlagEstoque SmallInt(1),
tbProdutoEmpresaFlagComposicao SmallInt(1),
tbProdutoEmpresaFlagVenda SmallInt(1),
tbProdutoEmpresaFlagTbPreco SmallInt(1),
tbProdutoEmpresaFlagSerial SmallInt(1),
tbProdutoEmpresaFlagSerialEstoque SmallInt(1),
tbProdutoEmpresaFlagLote SmallInt(1),
tbProdutoEmpresaFlagGrade SmallInt(1),
tbProdutoEmpresaFlagAdic SmallInt(1),
tbProdutoEmpresaFlagProducao SmallInt(1),
tbProdutoEmpresaFlagBalanca SmallInt(1),
tbProdutoEmpresaFlagImprimeValid SmallInt(1),
tbProdutoEmpresaFlagImprimeEmbal SmallInt(1),
tbProdutoEmpresaFlagQtde SmallInt(1),
tbProdutoEmpresaPrecoCusto Numeric(12,4),
tbProdutoEmpresaPrecoOutros Numeric(12,4),
tbProdutoEmpresaCustoMedio Numeric(12,4),
tbProdutoEmpresaCustoReal Numeric(12,4),
tbProdutoEmpresaCustoFinal Numeric(12,4),
tbProdutoEmpresaObs VarChar(100),
tbProdutoEmpresaCSOSN SmallInt(3),
tbCFOPIdentFkProdutoEmpresa Int(11),
tbNCMIdentFkProdutoEmpresa Int(11),
tbUnidMedidaIdentifFkProdutoEmpresa Int(11),
tbProdutoEmpresaValidadeDias Int(5),
tbCESTIdentFkProdutoEmpresa Int(11),
tbProdutoEmpresaFlagProdIngr SmallInt(1),
tbProdutoEmpresaGTIN13 Numeric(13,0),
tbProdutoEmpresaFlagMontagem SmallInt(1),
OUT
CodRetorno Int(11), tbProdutoEmpresaIdent Int(11))
BEGIN
   if tbProdutoEmpresaFlagEstoque = '' Then
     Set tbProdutoEmpresaFlagEstoque = 0;
   End If;
   If tbProdutoEmpresaFlagComposicao = '' Then
     Set tbProdutoEmpresaFlagComposicao = 0;
   End If;
   If tbProdutoEmpresaFlagVenda = '' Then
     Set tbProdutoEmpresaFlagVenda = 0;
   End If;   
   If tbProdutoEmpresaFlagTbPreco = '' Then
     Set tbProdutoEmpresaFlagTbPreco = 0;
   End If;    
   If tbProdutoEmpresaFlagSerial = '' Then
     Set tbProdutoEmpresaFlagSerial = 0;
   End If;   
   If tbProdutoEmpresaFlagSerialEstoque = '' Then
     Set tbProdutoEmpresaFlagSerialEstoque = 0;
   End If;   
   If tbProdutoEmpresaFlagLote = '' Then
     Set tbProdutoEmpresaFlagLote = 0;
   End If;    
   If tbProdutoEmpresaFlagGrade = '' Then
     Set tbProdutoEmpresaFlagGrade = 0;
   End If;    
   If tbProdutoEmpresaFlagAdic = '' Then
     Set tbProdutoEmpresaFlagAdic = 0;
   End If;     
   If tbProdutoEmpresaFlagProducao = '' Then
     Set tbProdutoEmpresaFlagProducao = 0;
   End If;       
   If tbProdutoEmpresaFlagBalanca = '' Then
     Set tbProdutoEmpresaFlagBalanca = 0;
   End If;     
   If tbProdutoEmpresaFlagImprimeValid = '' Then
     Set tbProdutoEmpresaFlagImprimeValid = 0;
   End If;     
   If tbProdutoEmpresaFlagImprimeEmbal = '' Then
     Set tbProdutoEmpresaFlagImprimeEmbal = 0;
   End If;        
   If tbProdutoEmpresaFlagQtde = '' Then
     Set tbProdutoEmpresaFlagQtde = 0;
   End If; 
   If tbProdutoEmpresaFlagProdIngr = '' Then
     Set tbProdutoEmpresaFlagProdIngr = 0;
   End If; 

   If (tbEmpresaIdentFkProdutoEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutoempresa: Não foi informado o Código da Empresa para o Produto/Empresa!' As Msg;
   Elseif
      (tbProdutoIdentFkProdutoEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutoempresa: Não foi informado o Código do Produto para o Produto/Empresa!' As Msg; 
   Elseif
      (tbUnidMedidaIdentifFkProdutoEmpresa = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutoempresa: Não foi informado a Unidade de Medida do Produto para o Produto/Empresa!' As Msg;      
   ElseIf 
      Exists (Select ProdutoEmpresaIdent From tbprodutoempresa Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutoempresa: Código/Empresa informado para o Produto/Empresa existe na base de dados!' As Msg;
   ElseIf 
      Not Exists (Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkProdutoEmpresa) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutoempresa: Empresa informada para o Produto/Empresa não existe na base de dados!' As Msg;
   ElseIf 
      Not Exists (Select ProdutoIdent From tbproduto Where ProdutoIdent = tbProdutoIdentFkProdutoEmpresa) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbprodutoempresa: Produto informado para o Produto/Empresa não existe na base de dados!' As Msg;
   ElseIf 
      ((tbCFOPIdentFkProdutoEmpresa != '') && (Not Exists (Select CFOPIdent From tbcfop Where CFOPIdent = tbCFOPIdentFkProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbprodutoempresa: CFOP informado para o Produto/Empresa não existe na base de dados!' As Msg;
   ElseIf 
      ((tbNCMIdentFkProdutoEmpresa != '') && (Not Exists (Select NCMIdent From tbncm Where NCMIdent = tbNCMIdentFkProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbprodutoempresa: NCM informada para o Produto/Empresa não existe na base de dados!' As Msg;
   ElseIf 
      ((tbUnidMedidaIdentifFkProdutoEmpresa != '') && (Not Exists (Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbprodutoempresa: Unidade de Medida informada para o Produto/Empresa não existe na base de dados!' As Msg;      
   ElseIf 
      ((tbCESTIdentFkProdutoEmpresa != '') && (Not Exists (Select CESTIdent From tbcest Where CESTIdent = tbCESTIdentFkProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbprodutoempresa: Cest informada para o Produto/Empresa não existe na base de dados!' As Msg;      
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutoempresa( EmpresaIdentFkProdutoEmpresa, ProdutoIdentFkProdutoEmpresa, ProdutoEmpresaFlagEstoque, 
                                    ProdutoEmpresaFlagComposicao, ProdutoEmpresaFlagVenda, ProdutoEmpresaFlagTbPreco, ProdutoEmpresaFlagSerial, 
                                    ProdutoEmpresaFlagSerialEstoque, ProdutoEmpresaFlagLote, ProdutoEmpresaFlagGrade, ProdutoEmpresaFlagAdic, 
                                    ProdutoEmpresaFlagProducao, ProdutoEmpresaFlagBalanca, ProdutoEmpresaFlagImprimeValid, ProdutoEmpresaFlagImprimeEmbal, 
                                    ProdutoEmpresaFlagQtde, ProdutoEmpresaPrecoCusto, ProdutoEmpresaPrecoOutros, ProdutoEmpresaCustoMedio, 
                                    ProdutoEmpresaCustoReal, ProdutoEmpresaCustoFinal, ProdutoEmpresaObs, ProdutoEmpresaCSOSN, CFOPIdentFkProdutoEmpresa,
                                    NCMIdentFkProdutoEmpresa, UnidMedidaIdentifFkProdutoEmpresa, ProdutoEmpresaValidadeDias, CESTIdentFkProdutoEmpresa, 
                                    ProdutoEmpresaFlagProdIngr, ProdutoEmpresaGTIN13,ProdutoEmpresaFlagMontagem)
      Values ( tbEmpresaIdentFkProdutoEmpresa, tbProdutoIdentFkProdutoEmpresa, tbProdutoEmpresaFlagEstoque, 
                                    tbProdutoEmpresaFlagComposicao, tbProdutoEmpresaFlagVenda, tbProdutoEmpresaFlagTbPreco, tbProdutoEmpresaFlagSerial, 
                                    tbProdutoEmpresaFlagSerialEstoque, tbProdutoEmpresaFlagLote, tbProdutoEmpresaFlagGrade, tbProdutoEmpresaFlagAdic, 
                                    tbProdutoEmpresaFlagProducao, tbProdutoEmpresaFlagBalanca, tbProdutoEmpresaFlagImprimeValid, tbProdutoEmpresaFlagImprimeEmbal, 
                                    tbProdutoEmpresaFlagQtde, tbProdutoEmpresaPrecoCusto, tbProdutoEmpresaPrecoOutros, tbProdutoEmpresaCustoMedio, 
                                    tbProdutoEmpresaCustoReal, tbProdutoEmpresaCustoFinal, tbProdutoEmpresaObs, tbProdutoEmpresaCSOSN, tbCFOPIdentFkProdutoEmpresa,
                                    tbNCMIdentFkProdutoEmpresa, tbUnidMedidaIdentifFkProdutoEmpresa, tbProdutoEmpresaValidadeDias, tbCESTIdentFkProdutoEmpresa, 
                                    tbProdutoEmpresaFlagProdIngr, tbProdutoEmpresaGTIN13,tbProdutoEmpresaFlagMontagem );
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoEmpresaIdent;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutoempresatrib`(
IN
tbProdutoEmpresaIdentFkProdutoEmpresaTrib Int(11),
tbProdutoEmpresaTribCSTPISEnt VarChar(4),
tbProdutoEmpresaTribCSTPISSaida VarChar(4),
tbProdutoEmpresaTribAliqPIS Numeric(12,4),
tbProdutoEmpresaTribCSTCOFINSEnt VarChar(4),
tbProdutoEmpresaTribCSTCOFINSSaida VarChar(4),
tbProdutoEmpresaTribAliqCOFINS Numeric(12,4),
tbProdutoEmpresaTribAliqINSSRet Numeric(12,4),
tbProdutoEmpresaTribAliqINSSEmpresa Numeric(12,4),
tbProdutoEmpresaTribAliqIRRF Numeric(12,4),
tbProdutoEmpresaTribAliqCSLL Numeric(12,4),
tbProdutoEmpresaTribAliqISS Numeric(12,4),
OUT
CodRetorno Int(11), tbProdutoEmpresaTribIdent Int(11))
BEGIN
   If (tbProdutoEmpresaIdentFkProdutoEmpresaTrib = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutoempresatrib: Não foi informado o Produto/Empresa para o Produto/Tributação!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutocomposicao(ProdutoEmpresaIdentFkProdutoEmpresaTrib, ProdutoEmpresaTribCSTPISEnt, ProdutoEmpresaTribCSTPISSaida, 
                                      ProdutoEmpresaTribAliqPIS, ProdutoEmpresaTribCSTCOFINSEnt, ProdutoEmpresaTribCSTCOFINSSaida,
                                      ProdutoEmpresaTribAliqCOFINS, ProdutoEmpresaTribAliqINSSRet, ProdutoEmpresaTribAliqINSSEmpresa,
                                      ProdutoEmpresaTribAliqIRRF, ProdutoEmpresaTribAliqCSLL, ProdutoEmpresaTribAliqISS)
      Values (tbProdutoEmpresaIdentFkProdutoEmpresaTrib, tbProdutoEmpresaTribCSTPISEnt, tbProdutoEmpresaTribCSTPISSaida, 
                                      tbProdutoEmpresaTribAliqPIS, tbProdutoEmpresaTribCSTCOFINSEnt, tbProdutoEmpresaTribCSTCOFINSSaida,
                                      tbProdutoEmpresaTribAliqCOFINS, tbProdutoEmpresaTribAliqINSSRet, tbProdutoEmpresaTribAliqINSSEmpresa,
                                      tbProdutoEmpresaTribAliqIRRF, tbProdutoEmpresaTribAliqCSLL, tbProdutoEmpresaTribAliqISS);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoEmpresaTribIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutofornecedor`(
IN
tbProdutoEmpresaIdentFkProdutoFornecedor Int(11),
tbPessoaIdentFkProdutoFornecedor Int(11),
tbProdutoFornecedorDescr VarChar(200),
tbUnidMedidaIdentifFkProdutoFornecedor Int(11),
OUT
CodRetorno Int(11), tbProdutoFornecedorIdent Int(11))
BEGIN
   If (tbProdutoEmpresaIdentFkProdutoFornecedor = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutofornecedor: Não foi informada o Produto/Empresa para o Produto/Fornecedor!' As Msg;
   Elseif
      (tbPessoaIdentFkProdutoFornecedor = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutofornecedor: Não foi informado a Pessoa para o Produto/Fornecedor!' As Msg; 
   Elseif
      (tbProdutoFornecedorDescr = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutofornecedor: Não foi informado a Descrição para o Produto/Fornecedor!' As Msg;       
   Elseif
      (tbUnidMedidaIdentifFkProdutoFornecedor = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutofornecedor: Não foi informado a Unidade de Medida para o Produto/Fornecedor!' As Msg;      
   Elseif
      ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoFornecedor))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutofornecedor: Produto/Empresa Informado para o Produto/Fornecedor não existe na base de dados!' As Msg;
   Elseif
      ((tbPessoaIdentFkProdutoFornecedor != '') &&
      (Not Exists(Select PessoaIdent From tbpessoa Where PessoaIdent = tbPessoaIdentFkProdutoFornecedor))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbprodutofornecedor: Pessoa Informada para o Produto/Fornecedor não existe na base de dados!' As Msg;
   Elseif
      ((tbUnidMedidaIdentifFkProdutoFornecedor != '') &&
      (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoFornecedor))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbprodutofornecedor: Unidade de Medida Informada para o Produto/Fornecedor não existe na base de dados!' As Msg;
   Elseif
      ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') && (tbPessoaIdentFkProdutoFornecedor != '') &&
      (Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor))) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbprodutofornecedor: Fornecedor informado para o Produto/Forneccedor existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutofornecedor(ProdutoEmpresaIdentFkProdutoFornecedor, PessoaIdentFkProdutoFornecedor, ProdutoFornecedorDescr, UnidMedidaIdentifFkProdutoFornecedor)
      Values (tbProdutoEmpresaIdentFkProdutoFornecedor, tbPessoaIdentFkProdutoFornecedor, tbProdutoFornecedorDescr, tbUnidMedidaIdentifFkProdutoFornecedor);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoFornecedorIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutofoto`(
IN
tbProdutoIdentFkProdutoFoto Int(11),
tbProdutoFotoImagem LongBlob,
tbProdutoFotoIcon LongBlob,
OUT
CodRetorno Int(11), tbProdutoFotoIdent Int(11))
BEGIN
   If (tbProdutoIdentFkProdutoFoto = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutofoto: Não foi informado o Produto para o Produto/Foto!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutofoto(ProdutoIdentFkProdutoFoto, ProdutoFotoImagem, ProdutoFotoIcon)
      Values (tbProdutoIdentFkProdutoFoto, tbProdutoFotoImagem, tbProdutoFotoIcon);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoFotoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutograde`(
IN
tbGradeIdentFkProdutoGrade Int(11),
tbProdutoEmpresaIdentFkProdutoGrade Int(11),
tbProdutoGradeSeq Int(11),
tbProdutoGradeSigla VarChar(3),
tbProdutoGradeDescr VarChar(100),
OUT
CodRetorno Int(11), tbProdutoGradeIdent Int(11))
BEGIN
   If (tbGradeIdentFkProdutoGrade = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutograde: Não foi informado a Grade para o Produto/Grade!' As Msg;
   Elseif
      (tbProdutoEmpresaIdentFkProdutoGrade = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutograde: Não foi informado a Produto/Empresa para o Produto/Grade!' As Msg; 
   Elseif
      (tbProdutoGradeSeq = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutograde: Não foi informado a Sequencia para o Produto/Grade!' As Msg;       
   Elseif
      (tbProdutoGradeSigla = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutograde: Não foi informado a Sigla para o Produto/Grade!' As Msg;    
   Elseif
      (tbProdutoGradeDescr = '') Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutograde: Não foi informado a Descrição para o Produto/Grade!' As Msg;       
   Elseif
      ((tbGradeIdentFkProdutoGrade != '') && (tbProdutoEmpresaIdentFkProdutoGrade != '') && (tbProdutoGradeSeq != '') &&
      (Exists(Select ProdutoGradeIdent From tbprodutograde Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade
                                                                 And ProdutoGradeSeq = tbProdutoGradeSeq))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbprodutograde: Produto Empresa/Grade/Sequencia informada para o Produto/Grade existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutograde(GradeIdentFkProdutoGrade, ProdutoEmpresaIdentFkProdutoGrade, ProdutoGradeSeq, ProdutoGradeSigla, ProdutoGradeDescr)
      Values (tbGradeIdentFkProdutoGrade, tbProdutoEmpresaIdentFkProdutoGrade, tbProdutoGradeSeq, tbProdutoGradeSigla, tbProdutoGradeDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoGradeIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutoprecomargem`(
IN
tbProdutoEmpresaIdentFkProdutoPrecoMargem Int(11),
tbProdutoPrecoMargemSeq Int(11),
tbProdutoPrecoMargemVlrPreco Numeric(12,4),
tbProdutoPrecoMargemVlrMargem Numeric(12,4),
OUT
CodRetorno Int(11), tbProdutoPrecoMargemIdent Int(11))
BEGIN
   If (tbProdutoEmpresaIdentFkProdutoPrecoMargem = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutoprecomargem: Não foi informado o Produto/Empresa para o Produto/Preço Margem!' As Msg;
   Elseif
      (tbProdutoPrecoMargemSeq = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutoprecomargem: Não foi informado a Sequencia para o Produto/Preço Margem!' As Msg; 
   Elseif
      (tbProdutoPrecoMargemVlrPreco = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutoprecomargem: Não foi informado o Preço para o Produto/Preço Margem!' As Msg;       
   Elseif
      (tbProdutoPrecoMargemVlrMargem = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbprodutoprecomargem: Não foi informado a Margem para o Produto/Preço Margem!' As Msg;    
   Elseif
      ((tbProdutoEmpresaIdentFkProdutoPrecoMargem != '') && (tbProdutoPrecoMargemSeq != '') &&
      (Exists(Select ProdutoPrecoMargemIdent From tbprodutoprecomargem Where ProdutoEmpresaIdentFkProdutoPrecoMargem = tbProdutoEmpresaIdentFkProdutoPrecoMargem And ProdutoPrecoMargemSeq = tbProdutoPrecoMargemSeq))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbprodutoprecomargem: Produto/Empresa/Sequencia informada para o Produto/Preço Margem existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutoprecomargem(ProdutoEmpresaIdentFkProdutoPrecoMargem, ProdutoPrecoMargemSeq, ProdutoPrecoMargemVlrPreco, ProdutoPrecoMargemVlrMargem)
      Values (tbProdutoEmpresaIdentFkProdutoPrecoMargem, tbProdutoPrecoMargemSeq, tbProdutoPrecoMargemVlrPreco, tbProdutoPrecoMargemVlrMargem);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoPrecoMargemIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbprodutosecao`(
IN
tbSecaoIdentFkProdutoSecao Int(11),
tbProdutoEmpresaIdentFkProdutoSecao Int(11),
OUT
CodRetorno Int(11), tbProdutoSecaoIdent Int(11))
BEGIN
   If (tbSecaoIdentFkProdutoSecao = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbprodutosecao: Não foi informada a Seção para o Produto/Seção!' As Msg;
   Elseif
      (tbProdutoEmpresaIdentFkProdutoSecao = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbprodutosecao: Não foi informado o Código do Produto/Empresa para o Produto/Seção!' As Msg; 
   Elseif
      ((tbSecaoIdentFkProdutoSecao != '') &&
      (Not Exists(Select SecaoIdent From tbsecao Where SecaoIdent = tbSecaoIdentFkProdutoSecao))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbprodutosecao: Seção Informada para o Produto/Seção não existe na base de dados!' As Msg;
   Elseif
      ((tbProdutoEmpresaIdentFkProdutoSecao != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoSecao))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbregiao: Produto/Empresa informado para o Produto/Seção não existe na base de dados!' As Msg;  
   Elseif
      ((tbSecaoIdentFkProdutoSecao != '') && (tbProdutoEmpresaIdentFkProdutoSecao != '') &&
      (Exists(Select ProdutoSecaoIdent From tbprodutosecao Where SecaoIdentFkProdutoSecao = tbSecaoIdentFkProdutoSecao And ProdutoEmpresaIdentFkProdutoSecao = tbProdutoEmpresaIdentFkProdutoSecao))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbregiao: Produto/Seção existe na base de dados!' As Msg;        
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbprodutosecao(SecaoIdentFkProdutoSecao, ProdutoEmpresaIdentFkProdutoSecao)
      Values (tbSecaoIdentFkProdutoSecao, tbProdutoEmpresaIdentFkProdutoSecao);
      Select 0 As CodRetorno, Last_Insert_Id() as tbProdutoSecaoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbregiao`(
IN
tbRegiaoCod VarChar(10),
tbRegiaoDescr VarChar(200),
OUT
CodRetorno Int(11), tbRegiaoIdent Int(11))
BEGIN
   If (tbRegiaoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbregiao: Não foi informado o Codigo da Região!' As Msg;
   Elseif
      (tbRegiaoDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbregiao: Não foi informado a Descrição da Região!' As Msg; 
   Elseif
      ((tbRegiaoCod != ''   ) &&
      (Exists(Select RegiaoCod From tbregiao Where RegiaoCod = tbRegiaoCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbregiao: Código da Região existe na base de dados!' As Msg;
   Elseif
      ((tbRegiaoDescr != ''   ) &&
      (Exists(Select RegiaoDescr From tbregiao Where RegiaoDescr = tbRegiaoDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbregiao: Descrição da Região existe na base de dados!' As Msg;      
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbregiao(RegiaoCod, RegiaoDescr)
      Values (tbRegiaoCod, tbRegiaoDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbRegiaoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbregiaocomposicao`(
IN
tbRegiaoIdentFkRegiaoComposicao Int(11),
tbCidadeIdentFkRegiaoComposicao Int(11),
OUT
CodRetorno Int(11), tbRegiaoComposicaoIdent Int(11))
BEGIN
   If (tbRegiaoIdentFkRegiaoComposicao = '')  Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbregiaocomposicao: Não foi informado o Código da Região para a Região Composição!' As Msg;
   Elseif
     (tbCidadeIdentFkRegiaoComposicao = '')  Then
      Select 1 As CodRetorno, 'MSG002/tbCidadeIdentFkRegiaoComposicao: Não foi informado o Código da Cidade para a Região Composição!' As Msg;
   Elseif
      ((tbRegiaoIdentFkRegiaoComposicao != '') && (Not Exists(Select RegiaoIdent From tbregiao Where RegiaoIdent = tbRegiaoIdentFkRegiaoComposicao))) Then
      Select 1 As CodRetorno, 'MSG003/tbCidadeIdentFkRegiaoComposicao: Não foi localizado o Código da Região para a Região Composição!' As Msg;
   ElseIf
      ((tbCidadeIdentFkRegiaoComposicao != '') && (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdentFkRegiaoComposicao))) Then  
      Select 1 As CodRetorno, 'MSG004/tbCidadeIdentFkRegiaoComposicao: Não foi localizado o Código da Cidade para a Região Composição!' As Msg;
   ElseIf   
      (Exists (Select RegiaoComposicaoIdent From tbregiaocomposicao 
      Where  RegiaoIdentFkRegiaoComposicao = tbRegiaoIdentFkRegiaoComposicao
      And CidadeIdentFkRegiaoComposicao = tbCidadeIdentFkRegiaoComposicao
      And RegiaoComposicaoExcluido is null)) Then
      Select 1 As CodRetorno, 'MSG005/tbCidadeIdentFkRegiaoComposicao: Composicão Região/Cidade existe na base de dados!' As Msg;
   Elseif   
      (Not Exists (Select RegiaoComposicaoIdent From tbregiaocomposicao 
      Where  RegiaoIdentFkRegiaoComposicao = tbRegiaoIdentFkRegiaoComposicao
      And CidadeIdentFkRegiaoComposicao = tbCidadeIdentFkRegiaoComposicao
      And RegiaoComposicaoExcluido is null)) Then
      Insert Into tbregiaocomposicao(RegiaoIdentFkRegiaoComposicao, CidadeIdentFkRegiaoComposicao)
      Values (tbRegiaoIdentFkRegiaoComposicao, tbCidadeIdentFkRegiaoComposicao);
      Select 0 As CodRetorno, Last_Insert_Id() as tbRegiaoComposicaoIdent;
   End If;      
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbsecao`(
IN
tbSecaoCod VarChar(20),
tbEmpresaIdentFkSecao Int(11),
tbSecaoClassif VarChar(20),
tbSecaoNome  VarChar(200),
tbSecaoCompl VarChar(100),
tbSecaoDescMax Numeric(12,4),
tbSecaoMargemLucro Numeric(9,2),
tbSecaoDescMaxUsu Numeric(9,2),
tbSecaoFoto LongBlob,
OUT
CodRetorno Int(11), tbSecaoIdent Int(11))
BEGIN
   If (tbSecaoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbsecao: Não foi informado o Código para a Seção!' As Msg;
   Elseif
      (tbEmpresaIdentFkSecao = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbsecao: Não foi informado a Empresa para a Seção' As Msg; 
   Elseif
      (tbSecaoNome = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbsecao: Não foi informado o Nome para a Seção' As Msg;    
   Elseif
      Not Exists(Select EmpresaIdent From tbempresa where EmpresaIdent = tbEmpresaIdentFkSecao) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbsecao: Empresa informada para a Seção não existe na base de dados' As Msg; 
   Elseif
      Exists(Select SecaoCod From tbsecao where SecaoCod = tbSecaoCod) Then      
      Select 1 As CodRetorno, 'MSG005/SpInserttbsecao: Código informada para a Seção existe na base de dados' As Msg;
   Elseif
      Exists(Select SecaoNome From tbsecao where SecaoNome = tbSecaoNome) Then      
      Select 1 As CodRetorno, 'MSG006/SpInserttbsecao: Nome informado para a Seção existe na base de dados' As Msg;      
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbsecao(SecaoCod, EmpresaIdentFkSecao, SecaoClassif, SecaoNome, SecaoCompl, SecaoDescMax, 
                          SecaoMargemLucro, SecaoDescMaxUsu, SecaoFoto)
      Values (tbSecaoCod, tbEmpresaIdentFkSecao, tbSecaoClassif, tbSecaoNome, tbSecaoCompl, tbSecaoDescMax, 
                          tbSecaoMargemLucro, tbSecaoDescMaxUsu, tbSecaoFoto);
      Select 0 As CodRetorno, Last_Insert_Id() as tbSecaoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbtipocontato`(
IN
tbTipoContatoCod VarChar(20),
tbTipoContatoDescr VarChar(100),
OUT
CodRetorno Int(11), tbTipoContatoIdent Int(11))
BEGIN
   If (tbTipoContatoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbtipocontato: Não foi informado o Código para o Tipo de Contato!' As Msg;
   ElseIf   
      (tbTipoContatoDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbtipocontato: Não foi informado a Descrição para o Tipo de Contato!' As Msg;  
   ElseIf   
      ((tbTipoContatoCod != '') &&
      (Exists(Select TipoContatoCod from tbtipocontato Where TipoContatoCod = tbTipoContatoCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbtipocontato: Código para o Tipo de Contato existe na base de dados!' As Msg;  
   ElseIf   
      ((tbTipoContatoDescr != '') &&
      (Exists(Select TipoContatoDescr from tbtipocontato Where TipoContatoDescr = tbTipoContatoDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbtipocontato: Descrição informada para o Tipo de Contato existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbtipocontato(TipoContatoCod, TipoContatoDescr)
      Values (tbTipoContatoCod, tbTipoContatoDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbTipoContatoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbtipoemail`(
IN
tbTipoEmailCod VarChar(10),
tbTipoEmailDescr VarChar(100),
OUT
CodRetorno Int(11), tbTipoEmailIdent Int(11))
BEGIN
   If (tbTipoEmailCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbtipoemail: Não foi informado o Código do Tipo de Email!' As Msg;
   Elseif
      (tbTipoEmailDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbtipoemail: Não foi informada a Desecrição do Tipo de Email!' As Msg; 
   Elseif
      ((tbTipoEmailCod != '')  && (Exists(Select TipoEmailCod From tbtipoemail Where TipoEmailCod = tbTipoEmailCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbtipoemail: Código do Tipo de Email existe na base de dados!' As Msg;   
   Elseif
      ((tbTipoEmailDescr != '')  && (Exists(Select TipoEmailDescr From tbtipoemail Where TipoEmailDescr = tbTipoEmailDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbtipoemail: Descrição do Tipo de Email existe na base de dados!' As Msg;   
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbtipoemail(TipoEmailCod, TipoEmailDescr)
      Values (tbTipoEmailCod, tbTipoEmailDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbTipoEmailIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbtipoendereco`(
IN
tbTipoEnderecoCod VarChar(10),
tbTipoEnderecoDescr VarChar(100),
OUT
CodRetorno Int(11), tbCidadeIdent Int(11))
BEGIN
   If (tbTipoEnderecoCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbTipoEndereco: Não foi informado o Código do Tipo de Endereço!' As Msg;
   Elseif
      (tbTipoEnderecoDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbTipoEndereco: Não foi informado a Descrição do Tipo de Endereço!' As Msg; 
   ElseIf 
      Exists (Select TipoEnderecoCod From tbtipoendereco Where TipoEnderecoCod = tbTipoEnderecoCod) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbTipoEndereco: Código Informado para o Tipo de Endereço existe na base de dados!' As Msg;
   ElseIf 
      Exists (Select TipoEnderecoDescr From tbtipoendereco Where TipoEnderecoDescr = tbTipoEnderecoDescr) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbTipoEndereco: Descrição Informada para o Tipo de Endereço existe na base de dados!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbtipoendereco(TipoEnderecoCod, TipoEnderecoDescr)
      Values (tbTipoEnderecoCod, tbTipoEnderecoDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbTipoEnderecoIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbtipofone`(
IN
tbTipoFoneCod VarChar(10),
tbTipoFoneDescr VarChar(100),
OUT
CodRetorno Int(11), tbTipoFoneIdent Int(11))
BEGIN
   If (tbTipoFoneCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbtipofone: Não foi informado o Código para o Tipo de Fone' As Msg;
   Elseif
      (tbTipoFoneDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbtipofone: Não foi informada a Descrição para o Tipo de Fone!' As Msg; 
   Elseif
      ((tbTipoFoneCod != '') && (Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneCod = tbTipoFoneCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbtipofone: Código Informado para o Tipo de Fone existe na base de dados!' As Msg; 
   Elseif
      ((tbTipoFoneDescr != '') && (Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneDescr = tbTipoFoneDescr))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbtipofone: Descrição Informada para o Tipo de Fone existe na base de dados!' As Msg;       
   Elseif
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbtipofone(TipoFoneCod, TipoFoneDescr)
      Values (tbTipoFoneCod, tbTipoFoneDescr);
      Select 0 As CodRetorno, Last_Insert_Id() as tbTipoFoneIdent;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInserttbunidmedida`(
IN
tbUnidMedidaNome VarChar(100),
tbUnidMedidaAbrev VarChar(10),
tbUnidMedidaPesavel SmallInt(1),
tbUnidMedidaFatorConvEstoque Numeric(12,4),
OUT
CodRetorno Int(11), tbUnidMedidaIdentif Int(11))
BEGIN
   If tbUnidMedidaPesavel = '' Then 
     Set tbUnidMedidaPesavel = 0;
   End If;
   If (tbUnidMedidaNome = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbunidmedida: Não foi informado o Nome da Unidade de Medida!' As Msg;
   Elseif
      (tbUnidMedidaAbrev = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbunidmedida: Não foi informada a Abreviatura da Unidade de Medida!' As Msg; 
   Elseif
      Exists(Select UnidMedidaNome From tbunidmedida Where UnidMedidaNome = tbUnidMedidaNome) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbunidmedida: Nome da Unidade de Medida existe na base de dados!' As Msg;       
   Elseif
      Exists(Select UnidMedidaAbrev From tbunidmedida Where UnidMedidaAbrev = tbUnidMedidaAbrev) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbunidmedida: Abreviatura da Unidade de Medida existe na base de dados!' As Msg;        
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbunidmedida(UnidMedidaNome, UnidMedidaAbrev, UnidMedidaPesavel, UnidMedidaFatorConvEstoque)
      Values (tbUnidMedidaNome, tbUnidMedidaAbrev, tbUnidMedidaPesavel, tbUnidMedidaFatorConvEstoque);
      Select 0 As CodRetorno, Last_Insert_Id() as tbUnidMedidaIdentif;
   End If;      

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbadicional`(
IN 
tbAdicionalIdent Int(11), 
tbEmpresaIdentFkAdicional Int(11),
tbAdicionalCod VarChar(50),
tbAdicionalDescr VarChar(200),
tbSecaoIdentFkAdicional Int(11),
tbUnidMedidaIdentifFkAdicional Int(11),
tbAdicionalFoto LongBlob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbAdicionalIdent = '') && (tbEmpresaIdentFkAdicional = '') && (tbAdicionalCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbadicional: Identificador ou Empresa/Codigo Adicional não informado!' As Msg;  
  ElseIf ((tbAdicionalIdent != '') && 
     (Not Exists(Select AdicionalIdent From tbadicional Where AdicionalIdent = tbAdicionalIdent And AdicionalExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbadicional: Adicional não localizado pelo Identificador!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkAdicional != '') && (tbAdicionalCod != '') &&
     (Not Exists(Select AdicionalIdent From tbadicional Where EmpresaIdentFkAdicional = tbEmpresaIdentFkAdicional And AdicionalCod = tbAdicionalCod And UnidMedidaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbadicional: Adicional não localizado pela Empresa/Código do Adicional!' As Msg;     
  ElseIf
     ((tbSecaoIdentFkAdicional != '') &&
     (Not Exists(Select SecaoIdent From tbsecao Where SecaoIdent = SecaoIdentFkAdicional And SecaoExcluido Is Null))) Then      
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbadicional: Seção para o Adicional não existe na base!' As Msg;   
  ElseIf
     ((tbUnidMedidaIdentifFkAdicional != '') &&
     (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkAdicional And UnidMedidaExcluido Is Null))) Then      
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbadicional: Unidade de Medida para o Adicional não existe na base!' As Msg;        
  ElseIf
     ((tbAdicionalIdent != '') &&
     (Exists(Select AdicionalIdent From tbadicional where AdicionalIdent = tbAdicionalIdent And AdicionalExcluido Is Null))) Then
  Update tbadicional
  Set AdicionalDescr = Case
                       When tbAdicionalDescr != '' Then tbAdicionalDescr
                       Else AdicionalDescr
                       End,
      SecaoIdentFkAdicional = Case
                              When tbSecaoIdentFkAdicional != '' Then  tbSecaoIdentFkAdicional
                              Else SecaoIdentFkAdicional
                              End,
      UnidMedidaIdentifFkAdicional = Case
                                     When tbUnidMedidaIdentifFkAdicional != '' Then  tbUnidMedidaIdentifFkAdicional
                                     Else UnidMedidaIdentifFkAdicional
                                     End,                              
       tbAdicionalFoto = Case
                         When tbAdicionalFoto != '' Then  tbAdicionalFoto
                         Else AdicionalFoto
                         End
  Where AdicionalIdent = tbAdicionalIdent;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbadicional: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkAdicional != '') && (tbAdicionalCod != '') &&
     (Exists(Select AdicionalIdent From tbadicional where EmpresaIdentFkAdicional = tbEmpresaIdentFkAdicional And AdicionalCod = tbAdicionalCod And AdicionalExcluido Is Null))) Then
  Update tbadicional
  Set AdicionalDescr = Case
                       When tbAdicionalDescr != '' Then tbAdicionalDescr
                       Else AdicionalDescr
                       End,
      SecaoIdentFkAdicional = Case
                              When tbSecaoIdentFkAdicional != '' Then  tbSecaoIdentFkAdicional
                              Else SecaoIdentFkAdicional
                              End,
      UnidMedidaIdentifFkAdicional = Case
                                     When tbUnidMedidaIdentifFkAdicional != '' Then  tbUnidMedidaIdentifFkAdicional
                                     Else UnidMedidaIdentifFkAdicional
                                     End,                              
       tbAdicionalFoto = Case
                         When tbAdicionalFoto != '' Then  tbAdicionalFoto
                         Else AdicionalFoto
                         End
  Where EmpresaIdentFkAdicional = tbEmpresaIdentFkAdicional
  And AdicionalCod = tbAdicionalCod;
  Select 0 As CodRetorno, 'MSG007/SpUpdatetbadicional: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcategpgtoreceb`(
IN 
tbCategPgtoRecebIdent Int(11), 
tbCategPgtoRecebFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCategPgtoRecebIdent = '') or (tbCategPgtoRecebIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcategpgtoreceb: Identificador Categoria Recebimento/Pagamento não informado!' As Msg;
  ElseIf ((tbCategPgtoRecebIdent != '') &&
     (Not Exists(Select CategPgtoRecebIdent From tbcategpgtoreceb 
                 Where CategPgtoRecebIdent = tbCategPgtoRecebIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcategpgtoreceb: Categoria Recebimento/Pagamento não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CategPgtoRecebIdent From tbcategpgtoreceb 
                 Where CategPgtoRecebIdent = tbCategPgtoRecebIdent))  Then
  Update tbcategpgtoreceb
  Set CategPgtoRecebFlagAtivo = Case
                                When tbCategPgtoRecebFlagAtivo != '' Then tbCategPgtoRecebFlagAtivo
                                Else CategPgtoRecebFlagAtivo
                                End
  Where CategPgtoRecebIdent = tbCategPgtoRecebIdent;          
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcategpgtoreceb: Atualização realizada com sucesso!' As Msg;
  End If;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcep`(
IN 
tbCEPIdent Int(11), 
tbCEPCod Char(8), 
tbCEPEndereco VarChar(300), 
tbCEPBairro VarChar(100),
tbCEPCompl VarChar(200), 
tbCidadeIdentFkCEP Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCEPIdent = '') && (tbCEPCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcep: Identificador ou Código do CEP não informado!' As Msg;
  ElseIf ((tbCEPIdent != '') &&
     (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdent And CEPExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcep: CEP não localizado pelo Identificador!' As Msg;
  ElseIf
     ((tbCEPCod != '') &&
     (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdentFkCEP and CidadeExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcep: Cidade do CEP não localizado!' As Msg;     
  ElseIf (Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdent And CEPExcluido is null))  Then
  Update tbcep
  Set CEPCod = Case
               When tbCEPCod != '' Then tbCEPCod
               Else CEPCod
               End,
      CEPEndereco = Case
                    When tbCEPEndereco != '' Then  tbCEPEndereco
                    Else CEPEndereco
                    End,
      CEPBairro = Case
                  When tbCEPBairro != '' Then tbCEPBairro
                  Else CEPBairro
                  End,
      CidadeIdentFkCEP = Case
                         When tbCidadeIdentFkCEP != '' Then tbCidadeIdentFkCEP
                         Else CidadeIdentFkCEP                
                         End,
      CEPCompl = Case
                 When tbCEPCompl != '' Then tbCEPCompl
                 Else CEPCompl
                 End
  Where CEPIdent = tbCEPIdent;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcep: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcest`(
IN 
tbCESTIdent Int(11), 
tbCESTCod VarChar(20), 
tbNCMIdentFkCEST Int(11),
tbCESTSeguimento VarChar(200),
tbCESTItem VarChar(20), 
tbCESTDescr VarChar(1000),
tbCESTAnexo VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCESTIdent = '') && (tbCESTCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcest: Identificador ou Código do CEST não informado!' As Msg;
  ElseIf (Not Exists(Select CESTIdent From tbcest Where CESTIdent = tbCESTIdent And CESTExcluido Is Null)) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcest: CEST não localizado pelo Identificador!' As Msg;
  ElseIf
     (Not Exists(Select CESTCod From tbcest Where CESTCod = tbCESTCod and CESTExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcest: CEST não localizado pelo Código!' As Msg;     
  ElseIf
     ((NCMIdentFkCEST != '') &&
     (Not Exists(Select NCMIdent From tbncm Where NCMIdent = tbNCMIdentFkCEST And NCMExcluido Is Null))) Then      
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcest: NCM alterada para o CEST não existe na base de dados!' As Msg;      
  ElseIf
     ((tbCESTIdent != '') &&
     (Exists(Select tbCESTIdent From tbcest where tbCESTIdent = tbCESTIdent And CESTExcluido Is Null))) Then
  Update tbcest
  Set NCMIdentFkCEST = Case
                       When tbNCMIdentFkCEST != '' Then tbNCMIdentFkCEST
                       Else NCMIdentFkCEST
                       End,
      CESTSeguimento = Case
                       When tbCESTSeguimento != '' Then  tbCESTSeguimento
                       Else CESTSeguimento
                       End,
      CESTItem = Case
                 When tbCESTItem != '' Then tbCESTItem
                 Else CESTItem
                 End,
      CESTDescr = Case
                  When tbCESTDescr != '' Then tbCESTDescr
                  Else CESTDescr                
                  End,
      CESTAnexo = Case
                  When tbCESTAnexo != '' Then tbCESTAnexo
                  Else CESTAnexo
                  End
  Where CESTIdent = tbCESTIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbcest: Atualização realizada com sucesso!' As Msg;
  ElseIf 
     ((tbCESTCod != '') &&
     (Exists(Select CESTCod From tbcest where CESTCod = tbCESTCod And CESTExcluido Is Null))) Then
  Update tbcest
  Set NCMIdentFkCEST = Case
                       When tbNCMIdentFkCEST != '' Then tbNCMIdentFkCEST
                       Else NCMIdentFkCEST
                       End,
      CESTSeguimento = Case
                       When tbCESTSeguimento != '' Then  tbCESTSeguimento
                       Else CESTSeguimento
                       End,
      CESTItem = Case
                 When tbCESTItem != '' Then tbCESTItem
                 Else CESTItem
                 End,
      CESTDescr = Case
                  When tbCESTDescr != '' Then tbCESTDescr
                  Else CESTDescr                
                  End,
      CESTAnexo = Case
                  When tbCESTAnexo != '' Then tbCESTAnexo
                  Else CESTAnexo
                  End
  Where CESTCod = tbCESTCod;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbcest: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcfop`(
IN 
tbCFOPIdent Int(11), 
tbCFOPCod SmallInt(4),
tbCFOPDescr VarChar(300),
tbCFOPFlagEntSai Char(1),
tbCFOPFlagEstoque SmallInt(1),
tbCFOPFlagCalcIPI SmallInt(1),
tbCFOPEquivalente SmallInt(4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCFOPIdent = '') && (tbCFOPCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcfop: Identificador ou Código do CFOP não informado!' As Msg;  
  ElseIf ((tbCFOPIdent != '') && 
     (Not Exists(Select CFOPIdent From tbcfop Where CFOPIdent = tbCFOPIdent And CFOPExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcfop: CFOP não localizado pelo Identificador!' As Msg;
  ElseIf ((tbCFOPCod != '') && 
     (Not Exists(Select CFOPCod From tbcfop Where CFOPCod = tbCFOPCod And CFOPExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcfop: CFOP não localizado pelo Código!' As Msg;     
  ElseIf
     ((tbCFOPIdent != '') &&
     (Exists(Select CFOPIdent From tbcfop where CFOPIdent = tbCFOPIdent And CFOPExcluido Is Null))) Then
  Update tbcfop
  Set CFOPDescr = Case
                  When tbCFOPDescr != '' Then tbCFOPDescr
                  Else CFOPDescr
                  End,
      CFOPFlagEntSai = Case
                       When tbCFOPFlagEntSai != '' Then  tbCFOPFlagEntSai
                       Else CFOPFlagEntSai
                       End,
      CFOPFlagEstoque = Case
                        When tbCFOPFlagEstoque != '' Then  tbCFOPFlagEstoque
                        Else CFOPFlagEstoque
                        End,                              
      CFOPFlagCalcIPI = Case
                        When tbCFOPFlagCalcIPI != '' Then  tbCFOPFlagCalcIPI
                        Else CFOPFlagCalcIPI
                        End,
      CFOPEquivalente = Case
                   When tbCFOPEquivalente != '' Then  tbCFOPEquivalente
                   Else CFOPEquivalente
                   End
  Where CFOPIdent = tbCFOPIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbcfop: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbCFOPCod != '') &&
     (Exists(Select CFOPCod From tbcfop where CFOPCod = tbCFOPCod And CFOPExcluido Is Null))) Then
  Update tbcfop
  Set CFOPDescr = Case
                  When tbCFOPDescr != '' Then tbCFOPDescr
                  Else CFOPDescr
                  End,
      CFOPFlagEntSai = Case
                       When tbCFOPFlagEntSai != '' Then  tbCFOPFlagEntSai
                       Else CFOPFlagEntSai
                       End,
      CFOPFlagEstoque = Case
                        When tbCFOPFlagEstoque != '' Then  tbCFOPFlagEstoque
                        Else CFOPFlagEstoque
                        End,                              
      CFOPFlagCalcIPI = Case
                        When tbCFOPFlagCalcIPI != '' Then  tbCFOPFlagCalcIPI
                        Else CFOPFlagCalcIPI
                        End,
      CFOPEquivalente = Case
                   When tbCFOPEquivalente != '' Then  tbCFOPEquivalente
                   Else CFOPEquivalente
                   End
  Where CFOPCod = tbCFOPCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbcfop: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcidade`(
IN 
tbCidadeIdent Int(11), 
tbCidadeCod VarChar(10), 
tbCidadeNome VarChar(100), 
tbCidadeCodIBGE VarChar(20),
tbCidadeCapital SmallInt(1), tbEstadoSiglaFkCidade VarChar(3), 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCidadeIdent = '') && (tbCidadeCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcidade: Identificador ou Código da Cidade não informado!' As Msg; 
  ElseIf
    ((tbCidadeIdent != '') &&
    (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdent And CidadeExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcidade: Identificador da Cidade não localizada!' As Msg;
  ElseIf
     ((tbCidadeCod != '') &&
    (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdent And CidadeExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcidade: Código da Cidade não localizada!' As Msg;
  ElseIf
     (Not Exists(Select EstadoIdent From tbestado Where EstadoSigla = tbEstadoSiglaFkCidade and EstadoExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcidade: Estado não localizado!' As Msg;
  ElseIf 
     ((tbCidadeIdent != '') && 
     (Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdent And CidadeExcluido is null)))  Then
     Update tbcidade
     Set CidadeNome = Case
                      When tbCidadeNome != '' Then  tbCidadeNome
                      Else CidadeNome
                      End,
         CidadeCodIBGE = Case
                         When tbCidadeCodIBGE != '' Then tbCidadeCodIBGE
                         Else CidadeCodIBGE
                         End,
         CidadeCapital = Case
                         When tbCidadeCapital != '' Then tbCidadeCapital
                         Else CidadeCapital                
                         End,
         EstadoSiglaFkCidade = Case
                               When tbEstadoSiglaFkCidade != '' Then tbEstadoSiglaFkCidade
                               Else EstadoSiglaFkCidade
                               End
     Where CidadeIdent = tbCidadeIdent;
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbcidade: Atualização realizada com sucesso!' As Msg;
  ElseIf 
     ((tbCidadeCod != '') && 
     (Exists(Select CidadeCod From tbcidade Where CidadeCod = tbCidadeCod And CidadeExcluido is null)))  Then
     Update tbcidade
     Set CidadeNome = Case
                      When tbCidadeNome != '' Then  tbCidadeNome
                      Else CidadeNome
                      End,
         CidadeCodIBGE = Case
                         When tbCidadeCodIBGE != '' Then tbCidadeCodIBGE
                         Else CidadeCodIBGE
                         End,
         CidadeCapital = Case
                         When tbCidadeCapital != '' Then tbCidadeCapital
                         Else CidadeCapital                
                         End,
         EstadoSiglaFkCidade = Case
                               When tbEstadoSiglaFkCidade != '' Then tbEstadoSiglaFkCidade
                               Else EstadoSiglaFkCidade
                               End
     Where CidadeCod = tbCidadeCod;
     Select 0 As CodRetorno, 'MSG006/SpUpdatetbcidade: Atualização realizada com sucesso!' As Msg;  
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcondicaopgtoreceb`(
IN 
tbCondicaoPgtoRecebIdent Int(11), 
tbCondicaoPgtoRecebFlagAtivo SmallInt(1),
tbCondicaoPgtoRecebFlagReceb SmallInt(1),
tbCondicaoPgtoRecebFlagPgto SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCondicaoPgtoRecebIdent = '') or (tbCondicaoPgtoRecebIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcondicaopgtoreceb: Identificador Condição de Recebimento/Pagamento não informado!' As Msg;
  ElseIf ((tbCondicaoPgtoRecebIdent != '') &&
     (Not Exists(Select CondicaoPgtoRecebIdent From tbcondicaopgtoreceb 
                 Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcategpgtoreceb: Condição Recebimento/Pagamento não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CondicaoPgtoRecebIdent From tbcondicaopgtoreceb 
                 Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdent))  Then
  Update tbcondicaopgtoreceb
  Set CondicaoPgtoRecebFlagAtivo = Case
                                   When tbCondicaoPgtoRecebFlagAtivo != '' Then tbCondicaoPgtoRecebFlagAtivo
                                   Else CondicaoPgtoRecebFlagAtivo
                                   End,
      CondicaoPgtoRecebFlagReceb = Case
                                   When tbCondicaoPgtoRecebFlagReceb != '' Then tbCondicaoPgtoRecebFlagReceb
                                   Else CondicaoPgtoRecebFlagReceb
                                   End,       
      CondicaoPgtoRecebFlagPgto = Case
                                  When tbCondicaoPgtoRecebFlagPgto != '' Then tbCondicaoPgtoRecebFlagPgto
                                  Else CondicaoPgtoRecebFlagPgto
                                  End                                                                         
  Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdent;          
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcategpgtoreceb: Atualização realizada com sucesso!' As Msg;
  End If;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbcondicaopgtorecebparc`(
IN 
tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc Int(11), 
tbCondicaoPgtoRecebParcNrParcela Int(3),
tbCondicaoPgtoRecebParcDiasEntreParc Int(3),
tbCondicaoPgtoRecebParcDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = '') or (tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcondicaopgtorecebparc: Identificador da Parcela da Condição de Recebimento/Pagamento não informado!' As Msg;
  ElseIf ((tbCondicaoPgtoRecebParcNrParcela = '') or (tbCondicaoPgtoRecebParcNrParcela Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcondicaopgtorecebparc: Número da Parcela da Condição de Recebimento/Pagamento não informado!' As Msg;
  ElseIf ((tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc != '') && (tbCondicaoPgtoRecebParcNrParcela != '') &&
     (Not Exists(Select CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc From tbcondicaopgtorecebparc 
                 Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc
                 And CondicaoPgtoRecebParcNrParcela = tbCondicaoPgtoRecebParcNrParcela))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcondicaopgtorecebparc: Parcela da Condição Recebimento/Pagamento não localizada pelo Identificador/Nr. Parcela!' As Msg;     
  ElseIf (Exists(Select CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc From tbcondicaopgtorecebparc 
                 Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc
                 And CondicaoPgtoRecebParcNrParcela = tbCondicaoPgtoRecebParcNrParcela))  Then
  Update tbcondicaopgtorecebparc
  Set CondicaoPgtoRecebParcDiasEntreParc = Case
                                           When tbCondicaoPgtoRecebParcDiasEntreParc != '' Then tbCondicaoPgtoRecebParcDiasEntreParc
                                           Else CondicaoPgtoRecebParcDiasEntreParc
                                           End,
      CondicaoPgtoRecebParcDescr = Case
                                   When tbCondicaoPgtoRecebParcDescr != '' Then tbCondicaoPgtoRecebParcDescr
                                   Else CondicaoPgtoRecebParcDescr
                                   End
  Where CondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc = tbCondicaoPgtoRecebIdentFkCondicaoPgtoRecebParc
  And CondicaoPgtoRecebParcNrParcela = tbCondicaoPgtoRecebParcNrParcela;          
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcondicaopgtorecebparc: Atualização realizada com sucesso!' As Msg;
  End If;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbempresa`(
IN 
tbEmpresaIdent Int(11),
tbEmpresaCod VarChar(11), 
tbEmpresaMatriz SmallInt(1), 
tbEmpresaFilialMatriz Int(100),
tbEmpresaRazaoSocial VarChar(100), 
tbEmpresaNomeFantasia VarChar(100), 
tbEmpresaCNPJ VarChar(20),
tbEmpresaInscrEstad VarChar(20),
tbEmpresaInscrMunic  VarChar(20),
tbEmpresaCNAEFisc VarChar(20),
tbEmpresaEndereco VarChar(300),
tbEmpresaEnderecoNr VarChar(10),
tbEmpresaEnderecoCompl VarChar(200),
tbCEPIdentFkEmpresa Int(11),
tbEmpresaNrFone VarChar(20),
tbEmpresaNrFax VarChar(20),
tbEmpresaRespons VarChar(100),
tbEmpresaEmail VarChar(50),
tbEmpresaSiteWeb VarChar(100),
tbEmpresaInativa SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbEmpresaIdent = '') && (tbEmpresaCod = '')) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbempresa: Identificador ou Código da Empresa não informado!' As Msg;      
  ElseIf 
     ((tbEmpresaIdent != '') &&
     (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdent And EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbempresa: Empresa não localizada!' As Msg;
  ElseIf 
     ((tbEmpresaCod != '') &&
     (Not Exists(Select EmpresaCod From tbempresa Where EmpresaCod = tbEmpresaCod And EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbempresa: Empresa não localizada!' As Msg;
  ElseIf
     (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkEmpresa and CEPExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbempresa: CEP não localizado!' As Msg; 
  ElseIf 
     ((tbEmpresaIdent != '') &&
     (Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdent And EmpresaExcluido is null))) Then
  Update tbempresa
  Set EmpresaMatriz = Case
                      When tbEmpresaMatriz != '' Then tbEmpresaMatriz
                      Else EmpresaMatriz
                      End,
      EmpresaFilialMatriz = Case
                            When tbEmpresaFilialMatriz != '' Then  tbEmpresaFilialMatriz
                            Else EmpresaFilialMatriz
                            End,
      EmpresaRazaoSocial = Case
                           When tbEmpresaRazaoSocial != '' Then tbEmpresaRazaoSocial
                           Else EmpresaRazaoSocial
                           End,
      EmpresaNomeFantasia = Case
                            When tbEmpresaNomeFantasia != '' Then tbEmpresaNomeFantasia
                            Else EmpresaNomeFantasia                
                            End,
      EmpresaCNPJ = Case
                    When tbEmpresaCNPJ != '' Then fcformatacnpj(tbEmpresaCNPJ)
                    Else EmpresaCNPJ
                    End,
      EmpresaInscrEstad = Case
                          When tbEmpresaInscrEstad != '' Then tbEmpresaInscrEstad
                          Else EmpresaInscrEstad
                          End,                    
      EmpresaInscrMunic = Case
                          When tbEmpresaInscrMunic != '' Then tbEmpresaInscrMunic
                          Else EmpresaInscrMunic
                          End,                      
      EmpresaCNAEFisc = Case
                        When tbEmpresaCNAEFisc != '' Then tbEmpresaCNAEFisc
                        Else EmpresaCNAEFisc
                        End,
      EmpresaEndereco = Case
                        When tbEmpresaEndereco != '' Then tbEmpresaEndereco
                        Else EmpresaEndereco
                        End,
      EmpresaEnderecoNr = Case
                          When tbEmpresaEnderecoNr != '' Then tbEmpresaEnderecoNr
                          Else EmpresaEnderecoNr
                          End,                        
      EmpresaEnderecoCompl = Case
                             When tbEmpresaEnderecoCompl != '' Then tbEmpresaEnderecoCompl
                             Else EmpresaEnderecoCompl
                             End,
      CEPIdentFkEmpresa = Case
                          When tbCEPIdentFkEmpresa != '' Then tbCEPIdentFkEmpresa
                          Else CEPIdentFkEmpresa
                          End,                          
      EmpresaNrFone = Case
                      When tbEmpresaNrFone != '' Then tbEmpresaNrFone
                      Else EmpresaNrFone
                      End,                        
      EmpresaNrFax = Case
                     When tbEmpresaNrFax != '' Then tbEmpresaNrFax
                     Else EmpresaNrFax
                     End,                                                                        
      EmpresaRespons = Case
                       When tbEmpresaRespons != '' Then tbEmpresaRespons
                       Else EmpresaRespons
                       End,                             
      EmpresaEmail = Case
                     When tbEmpresaEmail != '' Then tbEmpresaEmail
                     Else EmpresaEmail
                     End,    
      EmpresaSiteWeb = Case
                       When tbEmpresaSiteWeb != '' Then tbEmpresaSiteWeb
                       Else EmpresaSiteWeb
                       End, 
      EmpresaInativa = Case
                       When tbEmpresaInativa != '' Then tbEmpresaInativa
                       Else EmpresaInativa
                       End
  Where EmpresaIdent = tbEmpresaIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbempresa: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEmpresaCod != '') &&
     (Exists(Select EmpresaCod From tbempresa Where EmpresaCod = tbEmpresaCod And EmpresaExcluido is null))) Then  
  Update tbempresa
  Set EmpresaMatriz = Case
                      When tbEmpresaMatriz != '' Then tbEmpresaMatriz
                      Else EmpresaMatriz
                      End,
      EmpresaFilialMatriz = Case
                            When tbEmpresaFilialMatriz != '' Then  tbEmpresaFilialMatriz
                            Else EmpresaFilialMatriz
                            End,
      EmpresaRazaoSocial = Case
                           When tbEmpresaRazaoSocial != '' Then tbEmpresaRazaoSocial
                           Else EmpresaRazaoSocial
                           End,
      EmpresaNomeFantasia = Case
                            When tbEmpresaNomeFantasia != '' Then tbEmpresaNomeFantasia
                            Else EmpresaNomeFantasia                
                            End,
      EmpresaCNPJ = Case
                    When tbEmpresaCNPJ != '' Then fcformatacnpj(tbEmpresaCNPJ)
                    Else EmpresaCNPJ
                    End,
      EmpresaInscrEstad = Case
                          When tbEmpresaInscrEstad != '' Then tbEmpresaInscrEstad
                          Else EmpresaInscrEstad
                          End,                    
      EmpresaInscrMunic = Case
                          When tbEmpresaInscrMunic != '' Then tbEmpresaInscrMunic
                          Else EmpresaInscrMunic
                          End,                      
      EmpresaCNAEFisc = Case
                        When tbEmpresaCNAEFisc != '' Then tbEmpresaCNAEFisc
                        Else EmpresaCNAEFisc
                        End,
      EmpresaEndereco = Case
                        When tbEmpresaEndereco != '' Then tbEmpresaEndereco
                        Else EmpresaEndereco
                        End,
      EmpresaEnderecoNr = Case
                          When tbEmpresaEnderecoNr != '' Then tbEmpresaEnderecoNr
                          Else EmpresaEnderecoNr
                          End,                        
      EmpresaEnderecoCompl = Case
                             When tbEmpresaEnderecoCompl != '' Then tbEmpresaEnderecoCompl
                             Else EmpresaEnderecoCompl
                             End,
      CEPIdentFkEmpresa = Case
                          When tbCEPIdentFkEmpresa != '' Then tbCEPIdentFkEmpresa
                          Else CEPIdentFkEmpresa
                          End,                          
      EmpresaNrFone = Case
                      When tbEmpresaNrFone != '' Then tbEmpresaNrFone
                      Else EmpresaNrFone
                      End,                        
      EmpresaNrFax = Case
                     When tbEmpresaNrFax != '' Then tbEmpresaNrFax
                     Else EmpresaNrFax
                     End,                                                                        
      EmpresaRespons = Case
                       When tbEmpresaRespons != '' Then tbEmpresaRespons
                       Else EmpresaRespons
                       End,                             
      EmpresaEmail = Case
                     When tbEmpresaEmail != '' Then tbEmpresaEmail
                     Else EmpresaEmail
                     End,    
      EmpresaSiteWeb = Case
                       When tbEmpresaSiteWeb != '' Then tbEmpresaSiteWeb
                       Else EmpresaSiteWeb
                       End, 
      EmpresaInativa = Case
                       When tbEmpresaInativa != '' Then tbEmpresaInativa
                       Else EmpresaInativa
                       End
  Where EmpresaCod = tbEmpresaCod;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbempresa: Atualização realizada com sucesso!' As Msg;     
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbempresaemail`(
IN 
tbEmpresaEmailIdent Int(11), 
tbEmpresaIdentFkEmpresaEmail Int(11),
tbTipoEmailIdentFkEmpresaEmail Int(11),
tbEmpresaEmailServSMTP VarChar(100),
tbEmpresaEmailPortSMTP VarChar(5),
tbEmpresaEmailSMPTConSeg SmallInt(1),
tbEmpresaEmailUsu VarChar(100),
tbEmpresaEmailUsuSenha VarChar(100),
tbEmpresaEmailAssunto VarChar(200),
tbEmpresaEmailMensagem VarChar(1000),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbEmpresaEmailIdent = '')  && (tbEmpresaIdentFkEmpresaEmail = '') && (tbTipoEmailIdentFkEmpresaEmail = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbempresaemail: Identificador do Email ou Emprea/Tipo Email da Empresa não informado!' As Msg;
  ElseIf 
     ((tbEmpresaEmailIdent != '') &&     
     (Not Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaEmailIdent = tbEmpresaEmailIdent And EmpresaEmailExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbempresaemail: Identificador do Email da Empresa não existe na base de dados!' As Msg;
  ElseIf 
     ((tbEmpresaIdentFkEmpresaEmail != '') && (tbTipoEmailIdentFkEmpresaEmail != '') &&    
     (Not Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaIdentFkEmpresaEmail = tbEmpresaIdentFkEmpresaEmail And TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail And EmpresaEmailExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbempresaemail: Empresa/Tipo de Email do Email da Empresa não existe na base de dados!' As Msg;     
  ElseIf
     ((tbEmpresaEmailIdent != '') &&      
     (Exists(Select EmpresaEmailIdent From tbempresaemail Where EmpresaEmailIdent = tbEmpresaEmailIdent And EmpresaEmailExcluido is null))) Then
     Update tbempresaemail
     Set EmpresaEmailServSMTP = Case
                                When tbEmpresaEmailServSMTP != '' Then tbEmpresaEmailServSMTP
                                Else EmpresaEmailServSMTP
                                End,                                       
         EmpresaEmailPortSMTP = Case
                                When tbEmpresaEmailPortSMTP != '' Then tbEmpresaEmailPortSMTP
                                Else EmpresaEmailPortSMTP
                                End,                                 
         EmpresaEmailSMPTConSeg = Case
                                  When tbEmpresaEmailSMPTConSeg != '' Then tbEmpresaEmailSMPTConSeg
                                  Else EmpresaEmailSMPTConSeg
                                  End,                                 
         EmpresaEmailUsu = Case
                           When tbEmpresaEmailUsu != '' Then tbEmpresaEmailUsu
                           Else EmpresaEmailUsu
                           End,                                                                 
         EmpresaEmailUsuSenha = Case
                                When tbEmpresaEmailUsuSenha != '' Then AES_ENCRYPT(tbEmpresaEmailUsuSenha, 'chavecriptografia') 
                                Else EmpresaEmailUsuSenha
                                End, 
         EmpresaEmailAssunto = Case
                               When tbEmpresaEmailAssunto != '' Then tbEmpresaEmailAssunto
                               Else EmpresaEmailAssunto
                               End,                                 
         EmpresaEmailMensagem = Case
                                When tbEmpresaEmailMensagem != '' Then tbEmpresaEmailMensagem
                                Else EmpresaEmailMensagem
                                End                                    
     Where EmpresaEmailIdent = tbEmpresaEmailIdent;
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbempresaemail: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkEmpresaEmail != '') && (tbTipoEmailIdentFkEmpresaEmail !='') &&
     (Exists(Select EmpresaEmailIdent From tbempresaemail Where TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail And TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail And EmpresaEmailExcluido is null))) Then
     Update tbempresaemail
     Set EmpresaEmailServSMTP = Case
                                When tbEmpresaEmailServSMTP != '' Then tbEmpresaEmailServSMTP
                                Else EmpresaEmailServSMTP
                                End,                                       
         EmpresaEmailPortSMTP = Case
                                When tbEmpresaEmailPortSMTP != '' Then tbEmpresaEmailPortSMTP
                                Else EmpresaEmailPortSMTP
                                End,                                 
         EmpresaEmailSMPTConSeg = Case
                                  When tbEmpresaEmailSMPTConSeg != '' Then tbEmpresaEmailSMPTConSeg
                                  Else EmpresaEmailSMPTConSeg
                                  End,                                 
         EmpresaEmailUsu = Case
                           When tbEmpresaEmailUsu != '' Then tbEmpresaEmailUsu
                           Else EmpresaEmailUsu
                           End,                                                                 
         EmpresaEmailUsuSenha = Case
                                When tbEmpresaEmailUsuSenha != '' Then AES_ENCRYPT(tbEmpresaEmailUsuSenha, 'chavecriptografia') 
                                Else EmpresaEmailUsuSenha
                                End, 
         EmpresaEmailAssunto = Case
                               When tbEmpresaEmailAssunto != '' Then tbEmpresaEmailAssunto
                               Else EmpresaEmailAssunto
                               End,                                 
         EmpresaEmailMensagem = Case
                                When tbEmpresaEmailMensagem != '' Then tbEmpresaEmailMensagem
                                Else EmpresaEmailMensagem
                                End                                    
     Where EmpresaIdentFkEmpresaEmail = tbEmpresaIdentFkEmpresaEmail
     And TipoEmailIdentFkEmpresaEmail = tbTipoEmailIdentFkEmpresaEmail;
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbempresaemail: Atualização realizada com sucesso!' As Msg;     
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbempresafone`(
IN 
tbEmpresaFoneIdent Int(11), 
tbEmpresaIdentFkEmpresaFone Int(11), 
tbTipoFoneIdentFkEmpresaFone Int(11),
tbEmpresaFoneDDI VarChar(10),
tbEmpresaFoneDDD Char(3),
tbEmpresaFoneNr VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbEmpresaFoneIdent = '') && (tbEmpresaIdentFkEmpresaFone = '') && (tbTipoFoneIdentFkEmpresaFone = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbempresafone: Identificador ou Empresa/Tipo Fone não informado!' As Msg;
  ElseIf 
     ((tbEmpresaFoneIdent != '') &&     
     (Not Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaFoneIdent = tbEmpresaFoneIdent And EmpresaFoneExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbempresafone: Identificador do Fone da Empresa não existe na base de dados!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkEmpresaFone != '') && (tbTipoFoneIdentFkEmpresaFone != '') &&
     (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdentFkEmpresaFone = tbEmpresaIdentFkEmpresaFone And TipoFoneIdentFkEmpresaFone = tbTipoFoneIdentFkEmpresaFone And EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbempresafone: Empresa/Tipo Fone não existe na base de dados!' As Msg;    
  ElseIf
     ((tbEmpresaFoneIdent != '') &&      
     (Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaFoneIdent = tbEmpresaFoneIdent And EmpresaFoneExcluido is null))) Then
     Update tbempresafone
     Set EmpresaFoneDDI = Case
                          When tbEmpresaFoneDDI != '' Then tbEmpresaFoneDDI
                          Else EmpresaFoneDDI
                          End,                                                                          
     EmpresaFoneDDD = Case
                      When tbEmpresaFoneDDD != '' Then tbEmpresaFoneDDD
                      Else EmpresaFoneDDD
                      End,                                                                                                
     EmpresaFoneNr = Case
                      When tbEmpresaFoneNr != '' Then tbEmpresaFoneNr
                      Else EmpresaFoneNr
                      End
     Where EmpresaFoneIdent = tbEmpresaFoneIdent;     
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbtipofone: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkEmpresaFone != '') && (tbTipoFoneIdentFkEmpresaFone != '') &&     
     (Exists(Select EmpresaFoneIdent From tbempresafone Where EmpresaIdentFkEmpresaFone = tbEmpresaIdentFkEmpresaFone And TipoFoneIdentFkEmpresaFone = tbTipoFoneIdentFkEmpresaFone  And EmpresaFoneExcluido is null))) Then
     Update tbempresafone
     Set EmpresaFoneDDI = Case
                          When tbEmpresaFoneDDI != '' Then tbEmpresaFoneDDI
                          Else EmpresaFoneDDI
                          End,                                                                          
     EmpresaFoneDDD = Case
                      When tbEmpresaFoneDDD != '' Then tbEmpresaFoneDDD
                      Else EmpresaFoneDDD
                      End,                                                                                                
     EmpresaFoneNr = Case
                      When tbEmpresaFoneNr != '' Then tbEmpresaFoneNr
                      Else EmpresaFoneNr
                      End
     Where EmpresaIdentFkEmpresaFone = tbEmpresaIdentFkEmpresaFone
     And TipoFoneIdentFkEmpresaFone = tbTipoFoneIdentFkEmpresaFone;     
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbtipofone: Atualização realizada com sucesso!' As Msg;     
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbempresalocal`(
IN 
tbEmpresaLocalIdent Int(11), 
tbEmpresaLocalEndereco VarChar(300),
tbEmpresaLocalEnderecoNr VarChar(10),
tbEmpresaLocalEnderecoCompl VarChar(200),
tbCEPIdentFkEmpresaLocal Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbEmpresaLocalIdent = '') Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbempresalocal: Identificador do Local da Empresa não informado!' As Msg;
  ElseIf     
     (Not Exists(Select EmpresaLocalIdent From tbempresalocal Where EmpresaLocalIdent = tbEmpresaLocalIdent And EmpresaLocalExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbempresalocal: Local da Empresa não existe na base de dados!' As Msg;
  ElseIf
     (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkEmpresaLocal and CEPExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbempresalocal: CEP informado para o Local da Empresa não localizado!' As Msg;     
  ElseIf 
  (Exists(Select EmpresaLocalIdent From tbempresalocal Where EmpresaLocalIdent = tbEmpresaLocalIdent And EmpresaLocalExcluido is null)) Then
  Update tbempresalocal
  Set EmpresaLocalEndereco = Case
                             When tbEmpresaLocalEndereco != '' Then tbEmpresaLocalEndereco
                             Else EmpresaLocalEndereco
                             End,
      EmpresaLocalEnderecoNr = Case
                               When tbEmpresaLocalEnderecoNr != '' Then  tbEmpresaLocalEnderecoNr
                               Else EmpresaLocalEnderecoNr
                               End,
      EmpresaLocalEnderecoCompl = Case
                                  When tbEmpresaLocalEnderecoCompl != '' Then tbEmpresaLocalEnderecoCompl
                                  Else EmpresaLocalEnderecoCompl
                                  End,
      CEPIdentFkEmpresaLocal = Case
                         When tbCEPIdentFkEmpresaLocal != '' Then tbCEPIdentFkEmpresaLocal
                         Else CEPIdentFkEmpresaLocal                
                         End
  Where EmpresaLocalIdent = tbEmpresaLocalIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbempresalocal: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbempresalogo`(
IN 
tbEmpresaLogoIdent Int(11), 
tbEmpresaIdentFkEmpresaLogo Int(11),
tbEmpresaLogo Blob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbEmpresaLogoIdent = '')  Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbempresalogo: Identificador do Logo da Empresa não informado!' As Msg;
  ElseIf 
     ((tbEmpresaLogoIdent != '') &&     
     (Not Exists(Select EmpresaLogoIdent From tbempresalogo Where EmpresaLogoIdent = tbEmpresaLogoIdent And EmpresaLogoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbempresalogo: Identificador do Logo da Empresa não existe na base de dados!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkEmpresaLogo != '') &&
     (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkEmpresaLogo and EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbempresalogo: Empresa para o Logo não localizada!' As Msg;    
  ElseIf
     ((tbEmpresaLogoIdent != '') &&      
     (Exists(Select EmpresaLogoIdent From tbempresalogo Where EmpresaLogoIdent = tbEmpresaLogoIdent And EmpresaLogoExcluido is null))) Then
     Update tbempresalogo
     Set EmpresaIdentFkEmpresaLogo = Case
                                     When tbEmpresaIdentFkEmpresaLogo != '' Then tbEmpresaIdentFkEmpresaLogo
                                     Else EmpresaIdentFkEmpresaLogo
                                     End,
         EmpresaLogo = Case
                       When tbEmpresaLogo != '' Then tbEmpresaLogo
                       Else EmpresaLogo
                       End
     Where EmpresaLogoIdent = tbEmpresaLogoIdent;
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbempresalogo: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbestado`(
IN 
tbEstadoIdent Int(11), 
tbEstadoNome VarChar(100), 
tbEstadoSigla VarChar(3), 
tbPaisIdentFkEstado Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbEstadoIdent = '') Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbestado: Identificador do Estado não informado!' As Msg; 
  ElseIf (Not Exists(Select EstadoIdent From tbestado Where EstadoIdent = tbEstadoIdent And EstadoExcluido is null)) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbestado: Estado não localizado!' As Msg;
  ElseIf ((tbPaisIdentFkEstado != '') &&
     (Not Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdentFkEstado and PaisExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbestado: Pais não localizado!' As Msg;
  ElseIf (Exists(Select EstadoIdent From tbestado Where EstadoIdent = tbEstadoIdent And EstadoExcluido is null))  Then
  Update tbestado
  Set EstadoNome = Case
                   When tbEstadoNome != '' Then tbEstadoNome
                   Else EstadoNome
                   End,
      EstadoSigla = Case
                    When tbEstadoSigla != '' Then  tbEstadoSigla
                    Else EstadoSigla
                    End,
      PaisIdentFkEstado = Case
                          When tbPaisIdentFkEstado != '' Then tbPaisIdentFkEstado
                          Else PaisIdentFkEstado
                          End
  Where EstadoIdent = tbEstadoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbestado: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbestadocivil`(
IN 
tbEstadoCivilIdent Int(11), 
tbEstadoCivilSigla VarChar(20), 
tbEstadoCivilDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbEstadoCivilIdent = '') && (tbEstadoCivilSigla = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbestadocivil: Identificador ou Sigla do Estado Civil não informado!' As Msg;  
  ElseIf ((tbEstadoCivilIdent != '') && 
     (Not Exists(Select EstadoCivilIdent From tbestadocivil Where EstadoCivilIdent = tbEstadoCivilIdent And EstadoCivilExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbestadocivil: Estado Civil não localizado pelo Identificador!' As Msg;
  ElseIf ((tbEstadoCivilSigla != '') &&
     (Not Exists(Select EstadoCivilSigla From tbestadocivil Where EstadoCivilSigla = tbEstadoCivilSigla And EstadoCivilExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbestadocivil: Estado Civil não localizado pela Sigla!' As Msg;
  ElseIf
     ((tbEstadoCivilIdent != '') &&
     (Exists(Select EstadoCivilIdent From tbestadocivil where EstadoCivilIdent = tbEstadoCivilIdent And EstadoCivilExcluido Is Null))) Then
  Update tbestadocivil
  Set EstadoCivilDescr = Case
                         When tbEstadoCivilDescr != '' Then tbEstadoCivilDescr
                         Else EstadoCivilDescr
                         End                                                                 
  Where EstadoCivilIdent = tbEstadoCivilIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbestadocivil: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEstadoCivilSigla != '') &&
     (Exists(Select EstadoCivilSigla From tbestadocivil where EstadoCivilSigla = tbEstadoCivilSigla And EstadoCivilExcluido Is Null))) Then
  Update tbestadocivil
  Set EstadoCivilDescr = Case
                         When tbEstadoCivilDescr != '' Then tbEstadoCivilDescr
                         Else EstadoCivilDescr
                         End                                                                 
  Where EstadoCivilSigla = tbEstadoCivilSigla;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbestadocivil: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbgrade`(
IN 
tbGradeIdent Int(11), 
tbGradeCod VarChar(20),
tbEmpresaIdentFkGrade Int(11), 
tbGradeDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbGradeIdent = '') && (tbGradeCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbgrade: Identificador ou Código da Grade não informado!' As Msg;  
  ElseIf ((tbGradeIdent != '') && 
     (Not Exists(Select GradeIdent From tbgrade Where GradeIdent = tbGradeIdent And GradeExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbgrade: Grade não localizada pelo Identificador!' As Msg;
  ElseIf ((tbGradeCod != '') && 
     (Not Exists(Select GradeCod From tbgrade Where GradeCod = tbGradeCod And GradeExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbgrade: Grade não localizado pelo Código!' As Msg;
  ElseIf ((tbEmpresaIdentFkGrade != '') && 
     (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkGrade And EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbgrade: Empresa para a Grade não existe na base de dados!' As Msg;
  ElseIf
     ((tbGradeIdent != '') &&
     (Exists(Select GradeIdent From tbgrade where GradeIdent = tbGradeIdent And GradeExcluido Is Null))) Then
  Update tbgrade
  Set EmpresaIdentFkGrade = Case
                            When tbEmpresaIdentFkGrade != '' Then tbEmpresaIdentFkGrade
                            Else EmpresaIdentFkGrade
                            End,
      GradeDescr = Case
                       When tbGradeDescr != '' Then  tbGradeDescr
                       Else GradeDescr
                       End
  Where GradeIdent = tbGradeIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbgrade: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbGradeCod != '') &&
     (Exists(Select GradeCod From tbgrade where GradeCod = tbGradeCod And GradeExcluido Is Null))) Then
  Update tbgrade
  Set EmpresaIdentFkGrade = Case
                            When tbEmpresaIdentFkGrade != '' Then tbEmpresaIdentFkGrade
                            Else EmpresaIdentFkGrade
                            End,
      GradeDescr = Case
                       When tbGradeDescr != '' Then  tbGradeDescr
                       Else GradeDescr
                       End
  Where GradeIdent = tbGradeIdent;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbgrade: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbindicinscrestad`(
IN 
tbIndicInscEstadIdent Int(11), 
tbIndicInscEstadCod VarChar(3), 
tbIndicInscEstadDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbIndicInscEstadIdent = '') && (tbIndicInscEstadCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbindicinscrestad: Identificador ou Código do Tipo de Inscr. Estadual não informado!' As Msg;  
  ElseIf ((tbIndicInscEstadIdent != '') && 
     (Not Exists(Select IndicInscEstadIdent From tbindicinscrestad Where IndicInscEstadIdent = tbIndicInscEstadIdent And IndicInscEstadExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbindicinscrestad: Tipo de Inscr. Estadual não localizada pelo Identificador!' As Msg;
  ElseIf ((tbIndicInscEstadCod != '') &&
     (Not Exists(Select IndicInscEstadCod From tbindicinscrestad Where IndicInscEstadCod = tbIndicInscEstadCod And IndicInscEstadExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbindicinscrestad: Tipo de Inscr. Estadual não localizada pelo Código!' As Msg;
  ElseIf
     ((tbIndicInscEstadIdent != '') &&
     (Exists(Select IndicInscEstadIdent From tbindicinscrestad where IndicInscEstadIdent = tbIndicInscEstadIdent And IndicInscEstadExcluido Is Null))) Then
  Update tbindicinscrestad
  Set IndicInscEstadDescr = Case
                          When tbIndicInscEstadDescr != '' Then tbIndicInscEstadDescr
                          Else IndicInscEstadDescr
                          End                                             
  Where IndicInscEstadIdent = tbIndicInscEstadIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbindicinscrestad: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbIndicInscEstadCod != '') &&
     (Exists(Select IndicInscEstadCod From tbindicinscrestad where IndicInscEstadCod = tbIndicInscEstadCod And IndicInscEstadExcluido Is Null))) Then
  Update tbindicinscrestad
  Set IndicInscEstadDescr = Case
                          When tbIndicInscEstadDescr != '' Then tbIndicInscEstadDescr
                          Else IndicInscEstadDescr
                          End                                             
  Where IndicInscEstadCod = tbIndicInscEstadCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbindicinscrestad: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbncm`(
IN 
tbNCMIdent Int(11), 
tbNCMCod VarChar(10),
tbNCMFlagAtivo SmallInt(1),
tbNCMEx VarChar(50),
tbNCMTab VarChar(50),
tbNCMDescr VarChar(200),
tbNCMAliqIPI Numeric(12,2),
tbNCMAliqII Numeric(12,2),
tbNCMALiqMVADentroEstado Numeric(12,2),
tbNCMAliqMVAForaEstado Numeric(12,2),
tbNCMValDtnic Date,
tbNCMValDtFim Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbNCMIdent = '') && (tbNCMCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbncm: Identificador ou Código da NCM não informado!' As Msg;  
  ElseIf ((tbNCMIdent != '') && 
     (Not Exists(Select NCMIdent From tbncm Where NCMIdent = tbNCMIdent And NCMExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbncm: NCM não localizada pelo Identificador!' As Msg;
  ElseIf
     ((tbNCMCod != '') && 
     (Not Exists(Select NCMCod From tbncm Where NCMCod = tbNCMCod And NCMExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbncm: NCM não localizada pelo Código!' As Msg;     
  ElseIf
     ((tbNCMIdent != '') &&
     (Exists(Select NCMIdent From tbncm where NCMIdent = tbNCMIdent And NCMExcluido Is Null))) Then
  Update tbncm
  Set NCMFlagAtivo = Case
                     When tbNCMFlagAtivo != '' Then tbNCMFlagAtivo
                     Else NCMFlagAtivo
                     End,
      NCMEx = Case
              When tbNCMEx != '' Then  tbNCMEx
              Else NCMEx
              End,
      NCMTab = Case
               When tbNCMTab != '' Then  tbNCMTab
               Else NCMTab
               End,                              
      NCMDescr = Case
                 When tbNCMDescr != '' Then  tbNCMDescr
                 Else NCMDescr
                 End,
      NCMAliqIPI = Case
                   When tbNCMAliqIPI != '' Then  tbNCMAliqIPI
                   Else NCMAliqIPI
                   End,                 
      NCMAliqII = Case
                  When tbNCMAliqII != '' Then  tbNCMAliqII
                  Else NCMAliqII
                  End,                                  
      NCMALiqMVADentroEstado = Case
                               When tbNCMALiqMVADentroEstado != '' Then  tbNCMALiqMVADentroEstado
                               Else NCMALiqMVADentroEstado
                               End,                                                   
      NCMAliqMVAForaEstado = Case
                             When tbNCMAliqMVAForaEstado != '' Then  tbNCMAliqMVAForaEstado
                             Else NCMAliqMVAForaEstado
                             End,                                                                    
      NCMValDtnic = Case
                    When tbNCMValDtnic != '' Then  tbNCMValDtnic
                    Else NCMValDtnic
                    End,                                                                    
      NCMValDtFim = Case
                    When tbNCMValDtFim != '' Then  tbNCMValDtFim
                    Else NCMValDtFim
                    End
  Where NCMIdent = tbNCMIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbncm: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbNCMCod != '') &&
     (Exists(Select NCMCod From tbncm where NCMCod = tbNCMCod And NCMExcluido Is Null))) Then
  Update tbncm
  Set NCMFlagAtivo = Case
                     When tbNCMFlagAtivo != '' Then tbNCMFlagAtivo
                     Else NCMFlagAtivo
                     End,
      NCMEx = Case
              When tbNCMEx != '' Then  tbNCMEx
              Else NCMEx
              End,
      NCMTab = Case
               When tbNCMTab != '' Then  tbNCMTab
               Else NCMTab
               End,                              
      NCMDescr = Case
                 When tbNCMDescr != '' Then  tbNCMDescr
                 Else NCMDescr
                 End,
      NCMAliqIPI = Case
                   When tbNCMAliqIPI != '' Then  tbNCMAliqIPI
                   Else NCMAliqIPI
                   End,                 
      NCMAliqII = Case
                  When tbNCMAliqII != '' Then  tbNCMAliqII
                  Else NCMAliqII
                  End,                                  
      NCMALiqMVADentroEstado = Case
                               When tbNCMALiqMVADentroEstado != '' Then  tbNCMALiqMVADentroEstado
                               Else NCMALiqMVADentroEstado
                               End,                                                   
      NCMAliqMVAForaEstado = Case
                             When tbNCMAliqMVAForaEstado != '' Then  tbNCMAliqMVAForaEstado
                             Else NCMAliqMVAForaEstado
                             End,                                                                    
      NCMValDtnic = Case
                    When tbNCMValDtnic != '' Then  tbNCMValDtnic
                    Else NCMValDtnic
                    End,                                                                    
      NCMValDtFim = Case
                    When tbNCMValDtFim != '' Then  tbNCMValDtFim
                    Else NCMValDtFim
                    End
  Where NCMCod = tbNCMCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbncm: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbocupacao`(
IN 
tbOcupacaoIdent Int(11), 
tbOcupacaoCod VarChar(7), 
tbOcupacaoTitulo VarChar(200),
tbOcupacaoTipo VarChar(50),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbOcupacaoIdent = '') && (tbOcupacaoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbocupacao: Identificador ou Código da Ocupação não informado!' As Msg;  
  ElseIf ((tbOcupacaoIdent != '') && 
     (Not Exists(Select OcupacaoIdent From tbocupacao Where OcupacaoIdent = tbOcupacaoIdent And OcupacaoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbocupacao: Ocupação não localizada pelo Identificador!' As Msg;
  ElseIf ((tbOcupacaoCod != '') &&
     (Not Exists(Select OcupacaoCod From tbocupacao Where OcupacaoCod = tbOcupacaoCod And OcupacaoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbocupacao: Ocupa não localizada pelo Código!' As Msg;
  ElseIf
     ((tbOcupacaoIdent != '') &&
     (Exists(Select OcupacaoIdent From tbocupacao where OcupacaoIdent = tbOcupacaoIdent And OcupacaoExcluido Is Null))) Then
  Update tbocupacao
  Set OcupacaoTitulo = Case
                       When tbOcupacaoTitulo != '' Then tbOcupacaoTitulo
                       Else OcupacaoTitulo
                       End,
      tbOcupacaoTipo = Case
                       When tbOcupacaoTipo != '' Then tbOcupacaoTipo
                       Else bOcupacaoTipo
                       End                                                                    
  Where OcupacaoIdent = tbOcupacaoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbocupacao: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbOcupacaoCod != '') &&
     (Exists(Select OcupacaoCod From tbocupacao where OcupacaoCod = tbOcupacaoCod And OcupacaoExcluido Is Null))) Then
  Update tbocupacao
  Set OcupacaoTitulo = Case
                       When tbOcupacaoTitulo != '' Then tbOcupacaoTitulo
                       Else OcupacaoTitulo
                       End,
      tbOcupacaoTipo = Case
                       When tbOcupacaoTipo != '' Then tbOcupacaoTipo
                       Else bOcupacaoTipo
                       End                                                                    
  Where OcupacaoCod = tbOcupacaoCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbocupacao: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpais`(
IN 
tbPaisIdent Int(11), 
tbPaisNome VarChar(100), 
tbPaisCodIBGE VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If (tbPaisIdent = '') Then
    Select 1 As CodRetorno, 'MSG001/SpUpdatetbpais: Identificador do Pais não informado!' As Msg;  
  ElseIf (Not Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdent And PaisExcluido is null)) Then
    Select 1 As CodRetorno, 'MSG002/SpUpdatetbpais: Pais não localizado!' As Msg;
  ElseIf ((Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdent And PaisExcluido is null)) &&
         (Not Exists(Select PaisIdent From tbpais Where PaisNome = tbPaisNome))) Then
  Update tbpais
  Set PaisNome = Case
                 When tbPaisNome != '' Then tbPaisNome
                 Else PaisNome
                 End,
      PaisCodIBGE = Case
                    When tbPaisCodIBGE != '' Then  tbPaisCodIBGE
                    Else PaisCodIBGE
                    End
  Where PaisIdent = tbPaisIdent;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbpais: Atualização realizada com sucesso!' As Msg;
  End If;
  End ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoa`(
IN 
tbPessoaIdent Int(11), 
tbPessoaCod VarChar(20),
tbPessoaTipo Char(1),
tbPessoaNomeRazaoSocial VarChar(200),
tbPessoaNomeFantasia VarChar(200),
tbPessoaSexo Char(1),
tbPessoaDtNascimento Date,
tbPessoaDtFundacao Date,
tbPaisIdentNacFkPessoa Int(11), 
tbCidadeIdentNaturalFkPessoa Int(11),
tbEstadoCivilIdentFkPessoa Int(11),
tbPessoaNomePai VarChar(200),
tbPessoaNomeMae VarChar(200),
tbPessoaNomeConjuge VarChar(200),
tbPessoaNomeContato VarChar(200),
tbPessoaCNPJCPF VarChar(45),
tbPessoaInscrEstad VarChar(20),
tbIndicInscEstadIdentFkPessoa Int(11), 
tbPessoaInscrMunic VarChar(20),
tbPessoaInscrSuframa VarChar(10),
tbPessoaIdentidade VarChar(20),
tbPessoaIdentidadeDtEmis Date,
tbPessoaIdentidadeOrgaoEmis VarChar(50),
tbEstadoIdentIdentidadeEmisFkPessoa Int(11), 
tbOcupacaoIdentFkPessoa Int(11), 
tbPessoaSenha VarBinary(255),
tbPessoaFoneDDI VarChar(10),
tbPessoaFoneDDD VarChar(3),
tbPessoaNrFone VarChar(20),
tbPessoaNrFax  VarChar(20),
tbPessoaEmail VarChar(50),
tbPessoaSiteWeb VarChar(100),
tbPessoaFacebook VarChar(100),
tbPessoaInstagram VarChar(100),
tbPessoaLinkedin VarChar(100),
tbPessoaWhatSapp VarChar(100),
tbPessoaTwitter VarChar(100),
tbPessoaRespons VarChar(100),
tbPessoaEndereco VarChar(300),
tbPessoaEnderecoNr VarChar(10),
tbPessoaEnderecoCompl VarChar(200),
tbCEPIdentFkPessoa Int(11), 
tbPessoaFoto LongBlob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaIdent = '') && (tbPessoaCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoa: Identificador ou Código da Pessoa não informado!' As Msg;  
  ElseIf ((tbPessoaIdent != '') && 
     (Not Exists(Select PessoaIdent From tbpessoa Where PessoaIdent = tbPessoaIdent And PessoaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoa: Pessoa não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaCod != '') &&
     (Not Exists(Select PessoaCod From tbpessoa Where PessoaCod = tbPessoaCod And PessoaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoa: Pessoa não localizada pelo Código!' As Msg;
  ElseIf ((tbPaisIdentNacFkPessoa != '') &&
     (Not Exists(Select PaisIdent From tbpais Where PaisIdent = tbPaisIdentNacFkPessoa And PaisExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbpessoa: Pais Nacionalidade da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbCidadeIdentNaturalFkPessoa != '') &&
     (Not Exists(Select CidadeIdent From tbcidade Where CidadeIdent = tbCidadeIdentNaturalFkPessoa And CidadeExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbpessoa: Cidade Naturalidade da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbEstadoCivilIdentFkPessoa != '') &&
     (Not Exists(Select EstadoCivilIdent From tbestadocivil Where EstadoCivilIdent = tbEstadoCivilIdentFkPessoa And EstadoCivilExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG006/SpUpdatetbpessoa: Estado Civil da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbIndicInscEstadIdentFkPessoa != '') &&
     (Not Exists(Select IndicInscEstadIdent From tbindicinscestad Where IndicInscEstadIdent = tbIndicInscEstadIdentFkPessoa And IndicInscEstadExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG007/SpUpdatetbpessoa: Indic. Inscr. Estadual da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbEstadoIdentIdentidadeEmisFkPessoa != '') &&
     (Not Exists(Select EstadoIdent From tbestado Where EstadoIdent = tbEstadoIdentIdentidadeEmisFkPessoa And EstadoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG008/SpUpdatetbpessoa: Estado Emissor Identidade da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbOcupacaoIdentFkPessoa != '') &&
     (Not Exists(Select OcupacaoIdent From tbocupacao Where OcupacaoIdent = tbOcupacaoIdentFkPessoa And OcupacaoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG009/SpUpdatetbpessoa: Ocupação da Pessoa não existe na base de dados!' As Msg;     
  ElseIf ((tbCEPIdentFkPessoa != '') &&
     (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkPessoa And CEPExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG010/SpUpdatetbpessoa: CEP Informado para o Endereço da Pessoa não existe na base de dados!' As Msg;     
  ElseIf
     ((tbPessoaIdent != '') &&
     (Exists(Select PessoaIdent From tbpessoa where PessoaIdent = tbPessoaIdent And PessoaExcluido Is Null))) Then
  Update tbpessoa
  Set PessoaTipo = Case
                   When tbPessoaTipo != '' Then tbPessoaTipo
                   Else PessoaTipo
                   End,
      PessoaNomeRazaoSocial = Case
                              When tbPessoaNomeRazaoSocial != '' Then tbPessoaNomeRazaoSocial
                              Else PessoaNomeRazaoSocial
                              End,
      PessoaNomeFantasia = Case
                                When tbPessoaNomeFantasia != '' Then tbPessoaNomeFantasia
                                Else PessoaNomeFantasia
                                End,
      PessoaSexo = Case
                   When tbPessoaSexo != '' Then tbPessoaSexo
                   Else PessoaSexo
                   End,
      PessoaDtNascimento = Case
                           When tbPessoaDtNascimento != '' Then tbPessoaDtNascimento
                           Else PessoaDtNascimento
                           End,                              
      PessoaDtFundacao = Case
                         When tbPessoaDtFundacao != '' Then tbPessoaDtFundacao
                         Else PessoaDtFundacao
                         End,                                                              
      PaisIdentNacFkPessoa = Case
                             When tbPaisIdentNacFkPessoa != '' Then tbPaisIdentNacFkPessoa
                             Else PaisIdentNacFkPessoa
                             End,
      CidadeIdentNaturalFkPessoa = Case
                                   When tbCidadeIdentNaturalFkPessoa != '' Then tbCidadeIdentNaturalFkPessoa
                                   Else CidadeIdentNaturalFkPessoa
                                   End,
      EstadoCivilIdentFkPessoa = Case
                                 When tbEstadoCivilIdentFkPessoa != '' Then tbEstadoCivilIdentFkPessoa
                                 Else EstadoCivilIdentFkPessoa
                                 End,                             
      PessoaNomePai = Case
                      When tbPessoaNomePai != '' Then tbPessoaNomePai
                      Else PessoaNomePai
                      End,                             
      PessoaNomeMae = Case
                      When tbPessoaNomeMae != '' Then tbPessoaNomeMae
                      Else PessoaNomeMae
                      End,                             
      PessoaNomeConjuge = Case
                          When tbPessoaNomeConjuge != '' Then tbPessoaNomeConjuge
                          Else PessoaNomeConjuge
                          End,
      PessoaNomeContato = Case
                          When tbPessoaNomeContato != '' Then tbPessoaNomeContato
                          Else PessoaNomeContato
                          End,
      PessoaCNPJCPF = Case
                      When tbPessoaCNPJCPF != '' Then tbPessoaCNPJCPF
                      Else PessoaCNPJCPF
                      End,
      PessoaInscrEstad = Case
                         When tbPessoaInscrEstad != '' Then tbPessoaInscrEstad
                         Else PessoaInscrEstad
                         End,                          
      IndicInscEstadIdentFkPessoa = Case
                                    When tbIndicInscEstadIdentFkPessoa != '' Then tbIndicInscEstadIdentFkPessoa
                                    Else IndicInscEstadIdentFkPessoa
                                    End,                          
      PessoaInscrMunic = Case
                         When tbPessoaInscrMunic != '' Then tbPessoaInscrMunic
                         Else PessoaInscrMunic
                         End,                          
      PessoaInscrSuframa = Case
                           When tbPessoaInscrSuframa != '' Then tbPessoaInscrSuframa
                           Else PessoaInscrSuframa
                           End,                                    
      PessoaIdentidade = Case
                         When tbPessoaIdentidade != '' Then tbPessoaIdentidade
                         Else PessoaIdentidade
                         End,                                     
      PessoaIdentidadeDtEmis = Case
                               When tbPessoaIdentidadeDtEmis != '' Then tbPessoaIdentidadeDtEmis
                               Else PessoaIdentidadeDtEmis
                               End,                                                                         
      PessoaIdentidadeOrgaoEmis = Case
                                  When tbPessoaIdentidadeOrgaoEmis != '' Then tbPessoaIdentidadeOrgaoEmis
                                  Else PessoaIdentidadeOrgaoEmis
                                  End,                                                              
      EstadoIdentIdentidadeEmisFkPessoa = Case
                                          When tbEstadoIdentIdentidadeEmisFkPessoa != '' Then tbEstadoIdentIdentidadeEmisFkPessoa
                                          Else EstadoIdentIdentidadeEmisFkPessoa
                                          End,
      OcupacaoIdentFkPessoa = Case
                              When tbOcupacaoIdentFkPessoa != '' Then tbOcupacaoIdentFkPessoa
                              Else OcupacaoIdentFkPessoa
                              End,
      PessoaSenha = Case
                    When tbPessoaSenha != '' Then AES_ENCRYPT(tbPessoaSenha, 'senhacriptografada')
                    Else PessoaSenha
                    End,
      PessoaFoneDDI = Case
                      When tbPessoaFoneDDI != '' Then tbPessoaFoneDDI
                      Else PessoaFoneDDI
                      End,                              
      PessoaFoneDDD = Case
                      When tbPessoaFoneDDD != '' Then tbPessoaFoneDDD
                      Else PessoaFoneDDD
                      End,                              
      PessoaNrFone = Case
                      When tbPessoaNrFone != '' Then tbPessoaNrFone
                      Else PessoaFoneDDD
                      End,              
      PessoaNrFax = Case
                    When tbPessoaNrFax != '' Then tbPessoaNrFax
                    Else PessoaNrFax
                    End,                                    
      PessoaEmail = Case
                      When tbPessoaEmail != '' Then tbPessoaEmail
                      Else PessoaNrFax
                      End,                      
      PessoaSiteWeb = Case
                      When tbPessoaSiteWeb != '' Then tbPessoaSiteWeb
                      Else PessoaSiteWeb
                      End,                                                                             
      PessoaFacebook = Case
                       When tbPessoaFacebook != '' Then tbPessoaFacebook
                       Else PessoaFacebook
                       End,   
      PessoaInstagram = Case
                        When tbPessoaInstagram != '' Then tbPessoaInstagram
                        Else PessoaInstagram
                        End,                      
      PessoaLinkedin = Case
                       When tbPessoaLinkedin != '' Then tbPessoaLinkedin
                       Else PessoaLinkedin
                       End,                        
      PessoaTwitter = Case
                      When tbPessoaTwitter != '' Then tbPessoaTwitter
                      Else PessoaTwitter
                      End,                          
      PessoaRespons = Case
                      When tbPessoaRespons != '' Then tbPessoaRespons
                      Else PessoaRespons
                      End,                      
      PessoaEndereco = Case
                       When tbPessoaEndereco != '' Then tbPessoaEndereco
                       Else PessoaEndereco
                       End,                       
      PessoaEnderecoNr = Case
                         When tbPessoaEnderecoNr != '' Then tbPessoaEnderecoNr
                         Else PessoaEnderecoNr
                         End,                      
      PessoaEnderecoCompl = Case
                            When tbPessoaEnderecoCompl != '' Then tbPessoaEnderecoCompl
                            Else PessoaEnderecoCompl
                            End,  
      CEPIdentFkPessoa = Case
                         When tbCEPIdentFkPessoa != '' Then tbCEPIdentFkPessoa
                         Else CEPIdentFkPessoa
                         End,
      PessoaFoto = Case
                   When tbPessoaFoto != '' Then tbPessoaFoto
                   Else PessoaFoto
                   End
  Where PessoaIdent = tbPessoaIdent;
  Select 0 As CodRetorno, 'MSG011/SpUpdatetbpessoa: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaCod != '') &&
     (Exists(Select PessoaCod From tbpessoa where PessoaCod = tbPessoaCod And PessoaExcluido Is Null))) Then
  Update tbpessoa
  Set PessoaTipo = Case
                   When tbPessoaTipo != '' Then tbPessoaTipo
                   Else PessoaTipo
                   End,
      PessoaNomeRazaoSocial = Case
                              When tbPessoaNomeRazaoSocial != '' Then tbPessoaNomeRazaoSocial
                              Else PessoaNomeRazaoSocial
                              End,
      PessoaNomeFantasia = Case
                                When tbPessoaNomeFantasia != '' Then tbPessoaNomeFantasia
                                Else PessoaNomeFantasia
                                End,
      PessoaSexo = Case
                   When tbPessoaSexo != '' Then tbPessoaSexo
                   Else PessoaSexo
                   End,
      PessoaDtNascimento = Case
                           When tbPessoaDtNascimento != '' Then tbPessoaDtNascimento
                           Else PessoaDtNascimento
                           End,                              
      PessoaDtFundacao = Case
                         When tbPessoaDtFundacao != '' Then tbPessoaDtFundacao
                         Else PessoaDtFundacao
                         End,                                                              
      PaisIdentNacFkPessoa = Case
                             When tbPaisIdentNacFkPessoa != '' Then tbPaisIdentNacFkPessoa
                             Else PaisIdentNacFkPessoa
                             End,
      CidadeIdentNaturalFkPessoa = Case
                                   When tbCidadeIdentNaturalFkPessoa != '' Then tbCidadeIdentNaturalFkPessoa
                                   Else CidadeIdentNaturalFkPessoa
                                   End,
      EstadoCivilIdentFkPessoa = Case
                                 When tbEstadoCivilIdentFkPessoa != '' Then tbEstadoCivilIdentFkPessoa
                                 Else EstadoCivilIdentFkPessoa
                                 End,                             
      PessoaNomePai = Case
                      When tbPessoaNomePai != '' Then tbPessoaNomePai
                      Else PessoaNomePai
                      End,                             
      PessoaNomeMae = Case
                      When tbPessoaNomeMae != '' Then tbPessoaNomeMae
                      Else PessoaNomeMae
                      End,                             
      PessoaNomeConjuge = Case
                          When tbPessoaNomeConjuge != '' Then tbPessoaNomeConjuge
                          Else PessoaNomeConjuge
                          End,
      PessoaNomeContato = Case
                          When tbPessoaNomeContato != '' Then tbPessoaNomeContato
                          Else PessoaNomeContato
                          End,
      PessoaCNPJCPF = Case
                      When tbPessoaCNPJCPF != '' Then tbPessoaCNPJCPF
                      Else PessoaCNPJCPF
                      End,
      PessoaInscrEstad = Case
                         When tbPessoaInscrEstad != '' Then tbPessoaInscrEstad
                         Else PessoaInscrEstad
                         End,                          
      IndicInscEstadIdentFkPessoa = Case
                                    When tbIndicInscEstadIdentFkPessoa != '' Then tbIndicInscEstadIdentFkPessoa
                                    Else IndicInscEstadIdentFkPessoa
                                    End,                          
      PessoaInscrMunic = Case
                         When tbPessoaInscrMunic != '' Then tbPessoaInscrMunic
                         Else PessoaInscrMunic
                         End,                          
      PessoaInscrSuframa = Case
                           When tbPessoaInscrSuframa != '' Then tbPessoaInscrSuframa
                           Else PessoaInscrSuframa
                           End,                                    
      PessoaIdentidade = Case
                         When tbPessoaIdentidade != '' Then tbPessoaIdentidade
                         Else PessoaIdentidade
                         End,                                     
      PessoaIdentidadeDtEmis = Case
                               When tbPessoaIdentidadeDtEmis != '' Then tbPessoaIdentidadeDtEmis
                               Else PessoaIdentidadeDtEmis
                               End,                                                                         
      PessoaIdentidadeOrgaoEmis = Case
                                  When tbPessoaIdentidadeOrgaoEmis != '' Then tbPessoaIdentidadeOrgaoEmis
                                  Else PessoaIdentidadeOrgaoEmis
                                  End,                                                              
      EstadoIdentIdentidadeEmisFkPessoa = Case
                                          When tbEstadoIdentIdentidadeEmisFkPessoa != '' Then tbEstadoIdentIdentidadeEmisFkPessoa
                                          Else EstadoIdentIdentidadeEmisFkPessoa
                                          End,
      OcupacaoIdentFkPessoa = Case
                              When tbOcupacaoIdentFkPessoa != '' Then tbOcupacaoIdentFkPessoa
                              Else OcupacaoIdentFkPessoa
                              End,
      PessoaSenha = Case
                    When tbPessoaSenha != '' Then AES_ENCRYPT(tbPessoaSenha, 'senhacriptografada')
                    Else PessoaSenha
                    End,
      PessoaFoneDDI = Case
                      When tbPessoaFoneDDI != '' Then tbPessoaFoneDDI
                      Else PessoaFoneDDI
                      End,                              
      PessoaFoneDDD = Case
                      When tbPessoaFoneDDD != '' Then tbPessoaFoneDDD
                      Else PessoaFoneDDD
                      End,                              
      PessoaNrFone = Case
                      When tbPessoaNrFone != '' Then tbPessoaNrFone
                      Else PessoaFoneDDD
                      End,              
      PessoaNrFax = Case
                    When tbPessoaNrFax != '' Then tbPessoaNrFax
                    Else PessoaNrFax
                    End,                                    
      PessoaEmail = Case
                      When tbPessoaEmail != '' Then tbPessoaEmail
                      Else PessoaNrFax
                      End,                      
      PessoaSiteWeb = Case
                      When tbPessoaSiteWeb != '' Then tbPessoaSiteWeb
                      Else PessoaSiteWeb
                      End,                                                                             
      PessoaFacebook = Case
                       When tbPessoaFacebook != '' Then tbPessoaFacebook
                       Else PessoaFacebook
                       End,   
      PessoaInstagram = Case
                        When tbPessoaInstagram != '' Then tbPessoaInstagram
                        Else PessoaInstagram
                        End,                      
      PessoaLinkedin = Case
                       When tbPessoaLinkedin != '' Then tbPessoaLinkedin
                       Else PessoaLinkedin
                       End,                        
      PessoaTwitter = Case
                      When tbPessoaTwitter != '' Then tbPessoaTwitter
                      Else PessoaTwitter
                      End,                          
      PessoaRespons = Case
                      When tbPessoaRespons != '' Then tbPessoaRespons
                      Else PessoaRespons
                      End,                      
      PessoaEndereco = Case
                       When tbPessoaEndereco != '' Then tbPessoaEndereco
                       Else PessoaEndereco
                       End,                       
      PessoaEnderecoNr = Case
                         When tbPessoaEnderecoNr != '' Then tbPessoaEnderecoNr
                         Else PessoaEnderecoNr
                         End,                      
      PessoaEnderecoCompl = Case
                            When tbPessoaEnderecoCompl != '' Then tbPessoaEnderecoCompl
                            Else PessoaEnderecoCompl
                            End,  
      CEPIdentFkPessoa = Case
                         When tbCEPIdentFkPessoa != '' Then tbCEPIdentFkPessoa
                         Else CEPIdentFkPessoa
                         End,
      PessoaFoto = Case
                   When tbPessoaFoto != '' Then tbPessoaFoto
                   Else PessoaFoto
                   End
  Where PessoaCod = tbPessoaCod;
  Select 0 As CodRetorno, 'MSG012/SpUpdatetbpessoa: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoacontato`(
IN 
tbPessoaContatoIdent Int(11), 
tbPessoaIdentFkPessoaContato Int(11), 
tbTipoContatoIdentFkPessoaContato Int(11),
tbPessoaContatoNome VarChar(200),
tbPessoaFoneIdentFkPessoaContato Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaContatoIdent = '') && (tbPessoaIdentFkPessoaContato = '') && tbTipoContatoIdentFkPessoaContato = '') Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoacontato: Identificador ou Pessoa/Tipo Contato não informado!' As Msg;  
  ElseIf ((tbEstadoCivilIdent != '') && 
     (Not Exists(Select PessoaContatoIdent From tbpessoacontato Where PessoaContatoIdent = tbPessoaContatoIdent And PessoaContatoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoacontato: Pessoa/Contato não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkPessoaContato != '') && (tbTipoContatoIdentFkPessoaContato != '') &&
     (Not Exists(Select PessoaContatoIdent From tbpessoacontato Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato And TipoContatoIdentFkPessoaContato = tbTipoContatoIdentFkPessoaContato And PessoaContatoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoacontato: Pessoa/Contato não localizada pela Pessoa/Tipo de Contato!' As Msg;
  ElseIf
     ((tbPessoaContatoIdent != '') &&
     (Exists(Select PessoaContatoIdent From tbpessoacontato where PessoaContatoIdent = tbPessoaContatoIdent And PessoaContatoExcluido Is Null))) Then
  Update tbpessoacontato
  Set PessoaContatoNome = Case
                          When tbPessoaContatoNome != '' Then tbPessoaContatoNome
                          Else PessoaContatoNome
                          End,
      PessoaFoneIdentFkPessoaContato = Case
                                       When tbPessoaFoneIdentFkPessoaContato != '' Then tbPessoaFoneIdentFkPessoaContato
                                       Else PessoaFoneIdentFkPessoaContato
                                       End                                                                                            
  Where tbPessoaContatoIdent = tbPessoaContatoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbpessoacontato: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaIdentFkPessoaContato != '') && (tbTipoContatoIdentFkPessoaContato != '') &&
     (Exists(Select PessoaContatoIdent From tbpessoacontato where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato And TipoContatoIdentFkPessoaContato = tbTipoContatoIdentFkPessoaContato And PessoaContatoExcluido Is Null))) Then
  Update tbpessoacontato
  Set PessoaContatoNome = Case
                          When tbPessoaContatoNome != '' Then tbPessoaContatoNome
                          Else PessoaContatoNome
                          End,
      PessoaFoneIdentFkPessoaContato = Case
                                       When tbPessoaFoneIdentFkPessoaContato != '' Then tbPessoaFoneIdentFkPessoaContato
                                       Else PessoaFoneIdentFkPessoaContato
                                       End                                                                                            
  Where PessoaIdentFkPessoaContato = tbPessoaIdentFkPessoaContato
  And TipoContatoIdentFkPessoaContato = tbTipoContatoIdentFkPessoaContato;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbpessoacontato: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoaemail`(
IN 
tbPessoaEmailIdent Int(11), 
tbPessoaIdentFkPessoaEmail Int(11), 
tbTipoEmailIdentFkPessoaEmail Int(11),
tbPessoaEnderEmail VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaEmailIdent = '') && (tbPessoaIdentFkPessoaEmail = '') && tbTipoEmailIdentFkPessoaEmail = '') Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoaemail: Identificador ou Pessoa/Tipo Email não informado!' As Msg;  
  ElseIf ((tbPessoaEmailIdent != '') && 
     (Not Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaEmailIdent = tbPessoaEmailIdent And PessoaEmailExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoaemail: Pessoa/Email não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkPessoaEmail != '') && (tbTipoEmailIdentFkPessoaEmail != '') &&
     (Not Exists(Select PessoaEmailIdent From tbpessoaemail Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail And PessoaEmailExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoaemail: Pessoa/Email não localizado pela Pessoa/Tipo de Email!' As Msg;
  ElseIf
     ((tbPessoaEmailIdent != '') &&
     (Exists(Select PessoaEmailIdent From tbpessoaemail where PessoaEmailIdent = tbPessoaEmailIdent And PessoaEmailExcluido Is Null))) Then
  Update tbpessoaemail
  Set tbPessoaEnderEmail = Case
                           When tbPessoaEnderEmail != '' Then tbPessoaEnderEmail
                           Else PessoaEnderEmail
                           End
  Where PessoaEmailIdent = tbPessoaEmailIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbpessoaemail: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaIdentFkPessoaEmail != '') && (tbTipoEmailIdentFkPessoaEmail != '') &&
     (Exists(Select PessoaEmailIdent From tbpessoaemail where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail And PessoaEmailExcluido Is Null))) Then
  Update tbpessoaemail
  Set tbPessoaEnderEmail = Case
                           When tbPessoaEnderEmail != '' Then tbPessoaEnderEmail
                           Else PessoaEnderEmail
                           End
  Where PessoaIdentFkPessoaEmail = tbPessoaIdentFkPessoaEmail
  And TipoEmailIdentFkPessoaEmail = tbTipoEmailIdentFkPessoaEmail;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbpessoaemail: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoaempresa`(
IN 
tbPessoaEmpresaIdent Int(11), 
tbPessoaIdentFkPessoaEmpresa Int(11), 
tbEmpresaIdentFkPessoaEmpresa Int(11),
tbPessoaEmpresaFlagAtivo SmallInt(1),
tbPessoaEmpresaFlagCliente SmallInt(1),
tbPessoaEmpresaFlagFornec SmallInt(1),
tbPessoaEmpresaFlagFunc SmallInt(1),
tbPessoaEmpresaFlagTransp SmallInt(1),
tbPessoaEmpresaFlagUsu SmallInt(1),
tbPerfilAcesSistIdentFkPessoaEmpresa Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaEmpresaIdent = '') && (tbPessoaIdentFkPessoaEmpresa = '') && (tbEmpresaIdentFkPessoaEmpresa != '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoaempresa: Identificador ou Pessoa/Empresa não informado!' As Msg;  
  ElseIf ((tbPessoaEmpresaIdent != '') && 
     (Not Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaEmpresaIdent = tbPessoaEmpresaIdent And PessoaEmpresaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoaempresa: Pessoa/Empresa não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkPessoaEmpresa != '') && (tbEmpresaIdentFkPessoaEmpresa != '') &&
     (Not Exists(Select PessoaEmpresaIdent From tbpessoaempresa Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa And PessoaEmpresaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoaempresa: Pessoa/Empresa não localizado pela Pessoa/Empresa!' As Msg;
  ElseIf
     ((tbPessoaEmpresaIdent != '') &&
     (Exists(Select PessoaEmpresaIdent From tbpessoaempresa where PessoaEmpresaIdent = tbPessoaEmpresaIdent And PessoaEmpresaExcluido Is Null))) Then
  Update tbpessoaempresa
  Set PessoaEmpresaFlagAtivo = Case
                               When tbPessoaEmpresaFlagAtivo != '' Then tbPessoaEmpresaFlagAtivo
                               Else PessoaEmpresaFlagAtivo
                               End,
      PessoaEmpresaFlagCliente = Case
                                 When tbPessoaEmpresaFlagCliente != '' Then tbPessoaEmpresaFlagCliente
                                 Else PessoaEmpresaFlagCliente
                                 End,
      PessoaEmpresaFlagFornec = Case
                                When tbPessoaEmpresaFlagFornec != '' Then tbPessoaEmpresaFlagFornec
                                Else PessoaEmpresaFlagFornec
                                End,
      PessoaEmpresaFlagFunc = Case
                              When tbPessoaEmpresaFlagFunc != '' Then tbPessoaEmpresaFlagFunc
                              Else PessoaEmpresaFlagFunc
                              End,
      PessoaEmpresaFlagTransp = Case
                                When tbPessoaEmpresaFlagTransp != '' Then tbPessoaEmpresaFlagTransp
                                Else PessoaEmpresaFlagTransp
                                End,                              
      PessoaEmpresaFlagUsu = Case
                             When tbPessoaEmpresaFlagUsu != '' Then tbPessoaEmpresaFlagUsu
                             Else PessoaEmpresaFlagUsu
                             End,                                                              
      PerfilAcesSistIdentFkPessoaEmpresa = Case
                             When tbPerfilAcesSistIdentFkPessoaEmpresa != '' Then tbPerfilAcesSistIdentFkPessoaEmpresa
                             Else PerfilAcesSistIdentFkPessoaEmpresa
                             End                                                                                           
  Where PessoaEmpresaIdent = tbPessoaEmpresaIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbpessoaempresa: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaIdentFkPessoaEmpresa != '') && (tbEmpresaIdentFkPessoaEmpresa != '') &&
     (Exists(Select PessoaEmpresaIdent From tbpessoaempresa where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa And PessoaEmpresaExcluido Is Null))) Then
  Update tbpessoaempresa
  Set PessoaEmpresaFlagAtivo = Case
                               When tbPessoaEmpresaFlagAtivo != '' Then tbPessoaEmpresaFlagAtivo
                               Else PessoaEmpresaFlagAtivo
                               End,
      PessoaEmpresaFlagCliente = Case
                                 When tbPessoaEmpresaFlagCliente != '' Then tbPessoaEmpresaFlagCliente
                                 Else PessoaEmpresaFlagCliente
                                 End,
      PessoaEmpresaFlagFornec = Case
                                When tbPessoaEmpresaFlagFornec != '' Then tbPessoaEmpresaFlagFornec
                                Else PessoaEmpresaFlagFornec
                                End,
      PessoaEmpresaFlagFunc = Case
                              When tbPessoaEmpresaFlagFunc != '' Then tbPessoaEmpresaFlagFunc
                              Else PessoaEmpresaFlagFunc
                              End,
      PessoaEmpresaFlagTransp = Case
                                When tbPessoaEmpresaFlagTransp != '' Then tbPessoaEmpresaFlagTransp
                                Else PessoaEmpresaFlagTransp
                                End,                              
      PessoaEmpresaFlagUsu = Case
                             When tbPessoaEmpresaFlagUsu != '' Then tbPessoaEmpresaFlagUsu
                             Else PessoaEmpresaFlagUsu
                             End,                                                              
      PerfilAcesSistIdentFkPessoaEmpresa = Case
                             When tbPerfilAcesSistIdentFkPessoaEmpresa != '' Then tbPerfilAcesSistIdentFkPessoaEmpresa
                             Else PerfilAcesSistIdentFkPessoaEmpresa
                             End                                                                                           
  Where PessoaIdentFkPessoaEmpresa = tbPessoaIdentFkPessoaEmpresa
  And EmpresaIdentFkPessoaEmpresa = tbEmpresaIdentFkPessoaEmpresa;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbpessoaempresa: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoafone`(
IN 
tbPessoaFoneIdent Int(11), 
tbPessoaIdentFkPessoaFone Int(11), 
tbTipoFoneIdentFkPessoaFone Int(11),
tbPessoaFoneDDI VarChar(10),
tbPessoaFoneDDD Char(3),
tbPessoaFoneNr VarChar(20),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaFoneIdent = '') && (tbPessoaIdentFkPessoaFone = '') && tbTipoFoneIdentFkPessoaFone = '') Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoafone: Identificador ou Pessoa/Tipo Fone não informado!' As Msg;  
  ElseIf ((tbPessoaFoneIdent != '') && 
     (Not Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaFoneIdent = tbPessoaFoneIdent And PessoaFoneExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoafone: Pessoa/Fone não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkPessoaFone != '') && (tbTipoFoneIdentFkPessoaFone != '') &&
     (Not Exists(Select PessoaFoneIdent From tbpessoafone Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone And PessoaFoneExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoafone: Pessoa/Fone não localizado pela Pessoa/Tipo de Fone!' As Msg;
  ElseIf
     ((tbPessoaFoneIdent != '') &&
     (Exists(Select PessoaFoneIdent From tbpessoafone where PessoaFoneIdent = tbPessoaFoneIdent And PessoaFoneExcluido Is Null))) Then
  Update tbpessoafone
  Set PessoaFoneDDI = Case
                      When tbPessoaFoneDDI != '' Then tbPessoaFoneDDI
                      Else PessoaFoneDDI
                      End,
      PessoaFoneDDD = Case
                      When tbPessoaFoneDDD != '' Then tbPessoaFoneDDD
                      Else PessoaFoneDDD
                      End,
      PessoaFoneNr = Case
                     When tbPessoaFoneNr != '' Then tbPessoaFoneNr
                     Else PessoaFoneNr
                     End                           
  Where PessoaFoneIdent = tbPessoaFoneIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbpessoafone: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaIdentFkPessoaFone != '') && (tbTipoFoneIdentFkPessoaFone != '') &&
     (Exists(Select PessoaFoneIdent From tbpessoafone where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone And PessoaFoneExcluido Is Null))) Then
  Update tbpessoafone
  Set PessoaFoneDDI = Case
                      When tbPessoaFoneDDI != '' Then tbPessoaFoneDDI
                      Else PessoaFoneDDI
                      End,
      PessoaFoneDDD = Case
                      When tbPessoaFoneDDD != '' Then tbPessoaFoneDDD
                      Else PessoaFoneDDD
                      End,
      PessoaFoneNr = Case
                     When tbPessoaFoneNr != '' Then tbPessoaFoneNr
                     Else PessoaFoneNr
                     End                           
  Where PessoaIdentFkPessoaFone = tbPessoaIdentFkPessoaFone
  And TipoFoneIdentFkPessoaFone = tbTipoFoneIdentFkPessoaFone;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbpessoafone: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbpessoalocal`(
IN 
tbPessoaLocalIdent Int(11), 
tbPessoaIdentFkPessoaLocal Int(11), 
tbTipoEnderecoIdentFkPessoaLocal Int(11),
tbPessoaLocalEndereco VarChar(300),
tbPessoaLocalEnderecoNr VarChar(10),
tbPessoaLocalEnderecoCompl VarChar(200),
tbCEPIdentFkPessoaLocal Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbPessoaLocalIdent = '') && (tbPessoaIdentFkPessoaLocal = '') && (tbTipoEnderecoIdentFkPessoaLocal != '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbpessoalocal: Identificador ou Pessoa/Tipo Local não informado!' As Msg;  
  ElseIf ((tbPessoaLocalIdent != '') && 
     (Not Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaLocalIdent = tbPessoaLocalIdent And PessoaLocalExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbpessoalocal: Pessoa/Local não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkPessoaLocal != '') && (tbTipoEnderecoIdentFkPessoaLocal != '') &&
     (Not Exists(Select PessoaLocalIdent From tbpessoalocal Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal And PessoaLocalExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbpessoalocal: Pessoa/Local não localizado pela Pessoa/Tipo Local!' As Msg;
  ElseIf ((tbCEPIdentFkPessoaLocal != '') &&
     (Not Exists(Select CEPIdent From tbcep Where CEPIdent = tbCEPIdentFkPessoaLocal And CEPExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbpessoalocal: CEP informado para Pessoa/Local não existe na base de dados!' As Msg;
  ElseIf
     ((tbPessoaLocalIdent != '') &&
     (Exists(Select PessoaLocalIdent From tbpessoalocal where PessoaLocalIdent = tbPessoaLocalIdent And PessoaLocalExcluido Is Null))) Then
  Update tbpessoalocal
  Set PessoaLocalEndereco = Case
                            When tbPessoaLocalEndereco != '' Then tbPessoaLocalEndereco
                            Else PessoaLocalEndereco
                            End,
      PessoaLocalEnderecoNr = Case
                              When tbPessoaLocalEnderecoNr != '' Then tbPessoaLocalEnderecoNr
                              Else PessoaLocalEnderecoNr
                              End,
      PessoaLocalEnderecoCompl = Case
                                 When tbPessoaLocalEnderecoCompl != '' Then tbPessoaLocalEnderecoCompl
                                 Else PessoaLocalEnderecoCompl
                                 End,
      CEPIdentFkPessoaLocal = Case
                              When tbCEPIdentFkPessoaLocal != '' Then tbCEPIdentFkPessoaLocal
                              Else CEPIdentFkPessoaLocal
                              End
  Where PessoaLocalIdent = tbPessoaLocalIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbpessoalocal: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbPessoaIdentFkPessoaLocal != '') && (tbTipoEnderecoIdentFkPessoaLocal != '') &&
     (Exists(Select PessoaLocalIdent From tbpessoalocal where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal And PessoaLocalExcluido Is Null))) Then
  Update tbpessoalocal
  Set PessoaLocalEndereco = Case
                            When tbPessoaLocalEndereco != '' Then tbPessoaLocalEndereco
                            Else PessoaLocalEndereco
                            End,
      PessoaLocalEnderecoNr = Case
                              When tbPessoaLocalEnderecoNr != '' Then tbPessoaLocalEnderecoNr
                              Else PessoaLocalEnderecoNr
                              End,
      PessoaLocalEnderecoCompl = Case
                                 When tbPessoaLocalEnderecoCompl != '' Then tbPessoaLocalEnderecoCompl
                                 Else PessoaLocalEnderecoCompl
                                 End,
      CEPIdentFkPessoaLocal = Case
                              When tbCEPIdentFkPessoaLocal != '' Then tbCEPIdentFkPessoaLocal
                              Else CEPIdentFkPessoaLocal
                              End
  Where PessoaIdentFkPessoaLocal = tbPessoaIdentFkPessoaLocal
  And TipoEnderecoIdentFkPessoaLocal = tbTipoEnderecoIdentFkPessoaLocal;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbpessoalocal: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbproduto`(
IN 
tbProdutoIdent Int(11), 
tbProdutoCod BigInt(20), 
tbProdutoCodInterno VarChar(20),
tbProdutoStatus SmallInt(1),
tbProdutoFlagServico SmallInt(1),
tbProdutoDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoIdent = '') && (tbProdutoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbproduto: Identificador ou Código do Produto não informado!' As Msg;  
  ElseIf ((tbProdutoIdent != '') && 
     (Not Exists(Select ProdutoIdent From tbproduto Where ProdutoIdent = tbProdutoIdent And ProdutExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbproduto: Produto não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoCod != '') &&
     (Not Exists(Select ProdutoCod From tbproduto Where ProdutoCod = tbProdutoCod And ProdutExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbproduto: Produto não localizado pelo Código!' As Msg;
  ElseIf
     ((tbProdutoIdent != '') &&
     (Exists(Select ProdutoIdent From tbproduto where ProdutoIdent = tbProdutoIdent And ProdutExcluido Is Null))) Then
  Update tbproduto
  Set ProdutoCodInterno = Case
                          When tbProdutoCodInterno != '' Then tbProdutoCodInterno
                          Else ProdutoCodInterno
                          End,
      ProdutoStatus = Case
                      When tbProdutoStatus != '' Then  tbProdutoStatus
                      Else ProdutoStatus
                      End,
      ProdutoFlagServico = Case
                           When tbProdutoFlagServico != '' Then  tbProdutoFlagServico
                           Else ProdutoFlagServico
                           End,                                     
      ProdutoDescr = Case
                     When tbProdutoDescr != '' Then  tbProdutoDescr
                     Else ProdutoDescr
                     End                                                        
  Where ProdutoIdent = tbProdutoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbproduto: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoCod != '') &&
     (Exists(Select ProdutoCod From tbproduto where ProdutoCod = tbProdutoCod And ProdutExcluido Is Null))) Then
  Update tbproduto
  Set ProdutoCodInterno = Case
                          When tbProdutoCodInterno != '' Then tbProdutoCodInterno
                          Else ProdutoCodInterno
                          End,
      ProdutoStatus = Case
                      When tbProdutoStatus != '' Then  tbProdutoStatus
                      Else ProdutoStatus
                      End,
      ProdutoFlagServico = Case
                           When tbProdutoFlagServico != '' Then  tbProdutoFlagServico
                           Else ProdutoFlagServico
                           End,                                     
      ProdutoDescr = Case
                     When tbProdutoDescr != '' Then  tbProdutoDescr
                     Else ProdutoDescr
                     End                                                        
  Where ProdutoCod = tbProdutoCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbproduto: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutoadicional`(
IN 
tbProdutoAdicionalIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoAdicional Int(11), 
tbAdicionalIdentFkProdutoAdicional Int(11), 
tbProdutoAdicionalVlrMargem Numeric(12,4),
tbProdutoAdicionalVlrPreco Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoAdicionalIdent = '') && (tbProdutoEmpresaIdentFkProdutoAdicional = '') && (tbAdicionalIdentFkProdutoAdicional = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutoadicional: Identificador ou Identificador da Empresa/Produto/Adicional para o Produto/Adicional não informado!' As Msg;  
  ElseIf ((tbProdutoAdicionalIdent != '') && 
     (Not Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoAdicionalIdent = tbProdutoAdicionalIdent And ProdutoAdicionalExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutoadicional: Produto/Adicional não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoAdicional != '') && (tbAdicionalIdentFkProdutoAdicional != '') &&
     (Not Exists(Select ProdutoAdicionalIdent From tbprodutoadicional Where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional And ProdutoAdicionalExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutoadicional: Produto/Adicional Principal não localizado pelo Produto/Empresa/Adicional!' As Msg;
  ElseIf
     ((tbProdutoAdicionalIdent != '') &&
     (Exists(Select ProdutoAdicionalIdent From tbprodutoadicional where ProdutoAdicionalIdent = tbProdutoAdicionalIdent And ProdutoAdicionalExcluido Is Null))) Then
  Update tbprodutoadicional
  Set ProdutoAdicionalVlrMargem = Case
                                  When tbProdutoAdicionalVlrMargem != '' Then tbProdutoAdicionalVlrMargem
                                  Else ProdutoAdicionalVlrMargem
                                  End,
      ProdutoAdicionalVlrMargem = Case
                                  When tbProdutoAdicionalVlrMargem != '' Then  tbProdutoAdicionalVlrMargem
                                  Else ProdutoAdicionalVlrMargem
                                  End
  Where ProdutoAdicionalIdent = tbProdutoAdicionalIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbprodutoadicional: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdentFkProdutoAdicional != '') && (tbAdicionalIdentFkProdutoAdicional != '') &&
     (Exists(Select ProdutoAdicionalIdent From tbprodutoadicional where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional And ProdutoAdicionalExcluido Is Null))) Then
  Update tbprodutoadicional
  Set ProdutoAdicionalVlrMargem = Case
                                  When tbProdutoAdicionalVlrMargem != '' Then tbProdutoAdicionalVlrMargem
                                  Else ProdutoAdicionalVlrMargem
                                  End,
      ProdutoAdicionalVlrMargem = Case
                                  When tbProdutoAdicionalVlrMargem != '' Then  tbProdutoAdicionalVlrMargem
                                  Else ProdutoAdicionalVlrMargem
                                  End
  Where ProdutoEmpresaIdentFkProdutoAdicional = tbProdutoEmpresaIdentFkProdutoAdicional
  And AdicionalIdentFkProdutoAdicional = tbAdicionalIdentFkProdutoAdicional;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutoadicional: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutocomposicao`(
IN 
tbProdutoComposicaoIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoPrinc Int(11), 
tbProdutoEmpresaIdentFkProdutoComposicaoSecund Int(11), 
tbProdutoComposicaoQtde Float,
tbUnidMedidaIdentifFkProdutoComposicao Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoComposicaoIdent = '') && (tbProdutoEmpresaIdentFkProdutoComposicaoPrinc = '') && (tbProdutoEmpresaIdentFkProdutoComposicaoSecund = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutocomposicao: Identificador ou Identificador do Produto Principal/Secundário para o Produto/Composição não informado!' As Msg;  
  ElseIf ((tbProdutoComposicaoIdent != '') && 
     (Not Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao Where ProdutoComposicaoIdent = tbProdutoComposicaoIdent And ProdutoComposicaoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutocomposicao: Produto/Composição não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc And ProdutoEmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutocomposicao: Produto/Composição Principal não localizado pelo Produto/Empresa!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkProdutoComposicaoSecund And ProdutoEmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbprodutocomposicao: Produto/Composição Secundário não localizado pelo Produto/Empresa!' As Msg;     
  ElseIf ((tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
     (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoComposicao And UnidMedidaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbprodutocomposicao: Unidade de Medida não localizada para o Produto/Composição!' As Msg;     
  ElseIf
     ((tbProdutoComposicaoIdent != '') &&
     (Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao where ProdutoComposicaoIdent = tbProdutoComposicaoIdent And ProdutoComposicaoExcluido Is Null))) Then
  Update tbprodutocomposicao
  Set ProdutoComposicaoQtde = Case
                                    When tbProdutoComposicaoQtde != '' Then tbProdutoComposicaoQtde
                                    Else ProdutoComposicaoQtde
                                    End,
      UnidMedidaIdentifFkProdutoComposicao = Case
                                      When tbUnidMedidaIdentifFkProdutoComposicao != '' Then  tbUnidMedidaIdentifFkProdutoComposicao
                                      Else UnidMedidaIdentifFkProdutoComposicao
                                      End
  Where ProdutoComposicaoIdent = tbProdutoComposicaoIdent;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbprodutocomposicao: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdentFkProdutoComposicaoPrinc != '') && (tbProdutoEmpresaIdentFkProdutoComposicaoSecund != '') &&
     (Exists(Select ProdutoComposicaoIdent From tbprodutocomposicao where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund And ProdutoComposicaoExcluido Is Null))) Then
  Update tbprodutocomposicao
  Set ProdutoComposicaoQtde = Case
                                    When tbProdutoComposicaoQtde != '' Then tbProdutoComposicaoQtde
                                    Else ProdutoComposicaoQtde
                                    End,
      UnidMedidaIdentifFkProdutoComposicao = Case
                                      When tbUnidMedidaIdentifFkProdutoComposicao != '' Then  tbUnidMedidaIdentifFkProdutoComposicao
                                      Else UnidMedidaIdentifFkProdutoComposicao
                                      End
  Where ProdutoEmpresaIdentFkProdutoComposicaoPrinc = tbProdutoEmpresaIdentFkProdutoComposicaoPrinc
  And ProdutoEmpresaIdentFkProdutoComposicaoSecund = tbProdutoEmpresaIdentFkProdutoComposicaoSecund;
  Select 0 As CodRetorno, 'MSG007/SpUpdatetbprodutocomposicao: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutoempresa`(
IN 
tbProdutoEmpresaIdent Int(11), 
tbEmpresaIdentFkProdutoEmpresa Int(11), 
tbProdutoIdentFkProdutoEmpresa Int(11),
tbProdutoEmpresaFlagEstoque SmallInt(1),
tbProdutoEmpresaFlagComposicao SmallInt(1),
tbProdutoEmpresaFlagVenda SmallInt(1),
tbProdutoEmpresaFlagTbPreco SmallInt(1),
tbProdutoEmpresaFlagSerial SmallInt(1),
tbProdutoEmpresaFlagSerialEstoque SmallInt(1),
tbProdutoEmpresaFlagLote SmallInt(1),
tbProdutoEmpresaFlagGrade SmallInt(1),
tbProdutoEmpresaFlagAdic SmallInt(1),
tbProdutoEmpresaFlagProducao SmallInt(1),
tbProdutoEmpresaFlagBalanca  SmallInt(1),
tbProdutoEmpresaFlagImprimeValid SmallInt(1),
tbProdutoEmpresaFlagImprimeEmbal SmallInt(1),
tbProdutoEmpresaFlagQtde SmallInt(1),
tbProdutoEmpresaPrecoCusto Numeric(12,4),
tbProdutoEmpresaPrecoOutros Numeric(12,4),
tbProdutoEmpresaCustoMedio Numeric(12,4),
tbProdutoEmpresaCustoReal Numeric(12,4),
tbProdutoEmpresaCustoFinal Numeric(12,4),
tbProdutoEmpresaObs VarChar(100),
tbProdutoEmpresaCSOSN SmallInt(3),
tbCFOPIdentFkProdutoEmpresa Int(11),
tbNCMIdentFkProdutoEmpresa Int(11),
tbUnidMedidaIdentifFkProdutoEmpresa Int(11),
tbProdutoEmpresaValidadeDias Int(5),
tbCESTIdentFkProdutoEmpresa Int(11),
tbProdutoEmpresaFlagProdIngr SmallInt(1),
tbProdutoEmpresaGTIN13 Numeric(13,0),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoEmpresaIdent = '') && (tbEmpresaIdentFkProdutoEmpresa = '') && (tbProdutoIdentFkProdutoEmpresa = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutoempresa: Identificador ou Identificador do Produto/Empresa para o Produto/Empresa não informado!' As Msg;  
  ElseIf ((tbProdutoEmpresaIdent != '') && 
     (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdent And ProdutoEmpresaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutoempresa: Produto/Empresa não localizado pelo Identificador!' As Msg;
  ElseIf ((tbEmpresaIdentFkProdutoEmpresa != '') && (tbProdutoIdentFkProdutoEmpresa != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From tbprodutoempresa Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa And ProdutoEmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutoempresa: Produto/Empresa não localizado pelo Produto/Empresa!' As Msg;
  ElseIf ((tbCFOPIdentFkProdutoEmpresa != '') && 
     (Not Exists(Select CFOPIdent From tbcfop Where CFOPIdent = tbCFOPIdentFkProdutoEmpresa And CFOPExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbprodutoempresa: CFOP para o Produto/Empresa não existe na base de dados!' As Msg;
  ElseIf ((tbNCMIdentFkProdutoEmpresa != '') && 
     (Not Exists(Select NCMIdent From tbncm Where NCMIdent = tbNCMIdentFkProdutoEmpresa And NCMExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbprodutoempresa: NCM para o Produto/Empresa não existe na base de dados!' As Msg;
  ElseIf ((tbUnidMedidaIdentifFkProdutoEmpresa != '') && 
     (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoEmpresa And UnidMedidaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG006/SpUpdatetbprodutoempresa: Unidade de Medida para o Produto/Empresa não existe na base de dados!' As Msg;
  ElseIf ((tbCESTIdentFkProdutoEmpresa != '') && 
     (Not Exists(Select CESTIdent From tbcest Where CESTIdent = tbCESTIdentFkProdutoEmpresa And CESTExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG007/SpUpdatetbprodutoempresa: CEST para o Produto/Empresa não existe na base de dados!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdent != '') &&
     (Exists(Select ProdutoEmpresaIdent From tbprodutoempresa where ProdutoEmpresaIdent = tbProdutoEmpresaIdent And ProdutoEmpresaExcluido Is Null))) Then
  Update tbprodutoempresa
  Set ProdutoEmpresaFlagEstoque = Case
                                  When tbProdutoEmpresaFlagEstoque != '' Then tbProdutoEmpresaFlagEstoque
                                  Else ProdutoEmpresaFlagEstoque
                                  End,
      ProdutoEmpresaFlagComposicao = Case
                                     When tbProdutoEmpresaFlagComposicao != '' Then  tbProdutoEmpresaFlagComposicao
                                     Else ProdutoEmpresaFlagComposicao
                                     End,
      ProdutoEmpresaFlagVenda = Case
                                When tbProdutoEmpresaFlagVenda != '' Then  tbProdutoEmpresaFlagVenda
                                Else ProdutoEmpresaFlagVenda
                                End,                                     
      ProdutoEmpresaFlagTbPreco = Case
                                  When tbProdutoEmpresaFlagTbPreco != '' Then  tbProdutoEmpresaFlagTbPreco
                                  Else ProdutoEmpresaFlagTbPreco
                                  End,                                     
      ProdutoEmpresaFlagSerial = Case
                                 When tbProdutoEmpresaFlagSerial != '' Then  tbProdutoEmpresaFlagSerial
                                 Else ProdutoEmpresaFlagSerial
                                 End,                                     
      ProdutoEmpresaFlagSerialEstoque = Case
                                        When tbProdutoEmpresaFlagSerialEstoque != '' Then  tbProdutoEmpresaFlagSerialEstoque
                                        Else ProdutoEmpresaFlagSerialEstoque
                                        End,                                                                             
      ProdutoEmpresaFlagLote = Case
                               When tbProdutoEmpresaFlagLote != '' Then  tbProdutoEmpresaFlagLote
                               Else ProdutoEmpresaFlagLote
                               End,                                                                                                                  
      ProdutoEmpresaFlagGrade = Case
                                When tbProdutoEmpresaFlagGrade != '' Then  tbProdutoEmpresaFlagGrade
                                Else ProdutoEmpresaFlagGrade
                                End,                                                                                                                  
      ProdutoEmpresaFlagAdic = Case
                               When tbProdutoEmpresaFlagAdic != '' Then  tbProdutoEmpresaFlagAdic
                               Else ProdutoEmpresaFlagAdic
                               End,
      ProdutoEmpresaFlagProducao = Case
                                   When tbProdutoEmpresaFlagProducao != '' Then  tbProdutoEmpresaFlagProducao
                                   Else ProdutoEmpresaFlagProducao
                                   End,
      ProdutoEmpresaFlagBalanca = Case
                                  When tbProdutoEmpresaFlagBalanca != '' Then  tbProdutoEmpresaFlagBalanca
                                  Else ProdutoEmpresaFlagBalanca
                                  End,                               
      ProdutoEmpresaFlagImprimeValid = Case
                                       When tbProdutoEmpresaFlagImprimeValid != '' Then  tbProdutoEmpresaFlagImprimeValid
                                       Else ProdutoEmpresaFlagImprimeValid
                                       End,                               
      ProdutoEmpresaFlagImprimeEmbal = Case
                                       When tbProdutoEmpresaFlagImprimeEmbal != '' Then  tbProdutoEmpresaFlagImprimeEmbal
                                       Else ProdutoEmpresaFlagImprimeEmbal
                                       End,                                                                                                   
      ProdutoEmpresaFlagQtde = Case
                               When tbProdutoEmpresaFlagQtde != '' Then  tbProdutoEmpresaFlagQtde
                               Else ProdutoEmpresaFlagQtde
                               End,                               
      ProdutoEmpresaPrecoCusto = Case
                                 When tbProdutoEmpresaPrecoCusto != '' Then  tbProdutoEmpresaPrecoCusto
                                 Else ProdutoEmpresaPrecoCusto
                                 End,                                    
      ProdutoEmpresaPrecoOutros = Case
                                 When tbProdutoEmpresaPrecoOutros != '' Then  tbProdutoEmpresaPrecoOutros
                                 Else ProdutoEmpresaPrecoOutros
                                 End,                                                                   
      ProdutoEmpresaCustoMedio = Case
                                 When tbProdutoEmpresaCustoMedio != '' Then  tbProdutoEmpresaCustoMedio
                                 Else ProdutoEmpresaCustoMedio
                                 End,                                                         
      ProdutoEmpresaCustoReal = Case
                                When tbProdutoEmpresaCustoReal != '' Then  tbProdutoEmpresaCustoReal
                                Else ProdutoEmpresaCustoReal
                                End,                                                                                        
      ProdutoEmpresaCustoFinal = Case
                                 When tbProdutoEmpresaCustoFinal != '' Then  tbProdutoEmpresaCustoFinal
                                 Else ProdutoEmpresaCustoFinal
                                 End,                                                                      
      ProdutoEmpresaObs = Case
                          When tbProdutoEmpresaObs != '' Then  tbProdutoEmpresaObs
                          Else ProdutoEmpresaObs
                          End,                         
      ProdutoEmpresaCSOSN = Case
                            When tbProdutoEmpresaCSOSN != '' Then  tbProdutoEmpresaCSOSN
                            Else ProdutoEmpresaCSOSN
                            End,                                                   
      CFOPIdentFkProdutoEmpresa = Case
                                  When tbCFOPIdentFkProdutoEmpresa != '' Then  tbCFOPIdentFkProdutoEmpresa
                                  Else CFOPIdentFkProdutoEmpresa
                                  End,                                                   
      NCMIdentFkProdutoEmpresa = Case
                                 When tbNCMIdentFkProdutoEmpresa != '' Then  tbNCMIdentFkProdutoEmpresa
                                 Else NCMIdentFkProdutoEmpresa
                                 End,                                                   
      UnidMedidaIdentifFkProdutoEmpresa = Case
                                          When tbUnidMedidaIdentifFkProdutoEmpresa != '' Then  tbUnidMedidaIdentifFkProdutoEmpresa
                                          Else UnidMedidaIdentifFkProdutoEmpresa
                                          End,                                                   
      ProdutoEmpresaValidadeDias = Case
                                   When tbProdutoEmpresaValidadeDias != '' Then  tbProdutoEmpresaValidadeDias
                                   Else ProdutoEmpresaValidadeDias
                                   End,                                                                                    
      CESTIdentFkProdutoEmpresa = Case
                                  When tbCESTIdentFkProdutoEmpresa != '' Then  tbCESTIdentFkProdutoEmpresa
                                  Else CESTIdentFkProdutoEmpresa
                                  End,                                 
      ProdutoEmpresaGTIN13 = Case
                             When tbProdutoEmpresaGTIN13 != '' Then  tbProdutoEmpresaGTIN13
                             Else ProdutoEmpresaGTIN13
                             End,   
      ProdutoEmpresaFlagProdIngr = Case
                                   When tbProdutoEmpresaFlagProdIngr != '' Then  tbProdutoEmpresaFlagProdIngr
                                   Else ProdutoEmpresaFlagProdIngr
                                   End  
  Where ProdutoEmpresaIdent = tbProdutoEmpresaIdent;
  Select 0 As CodRetorno, 'MSG008/SpUpdatetbprodutoempresa: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbEmpresaIdentFkProdutoEmpresa != '') && (tbProdutoIdentFkProdutoEmpresa != '') &&
     (Exists(Select ProdutoEmpresaIdent From tbprodutoempresa where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa And ProdutoEmpresaExcluido Is Null))) Then
  Update tbprodutoempresa
  Set ProdutoEmpresaFlagEstoque = Case
                                  When tbProdutoEmpresaFlagEstoque != '' Then tbProdutoEmpresaFlagEstoque
                                  Else ProdutoEmpresaFlagEstoque
                                  End,
      ProdutoEmpresaFlagComposicao = Case
                                     When tbProdutoEmpresaFlagComposicao != '' Then  tbProdutoEmpresaFlagComposicao
                                     Else ProdutoEmpresaFlagComposicao
                                     End,
      ProdutoEmpresaFlagVenda = Case
                                When tbProdutoEmpresaFlagVenda != '' Then  tbProdutoEmpresaFlagVenda
                                Else ProdutoEmpresaFlagVenda
                                End,                                     
      ProdutoEmpresaFlagTbPreco = Case
                                  When tbProdutoEmpresaFlagTbPreco != '' Then  tbProdutoEmpresaFlagTbPreco
                                  Else ProdutoEmpresaFlagTbPreco
                                  End,                                     
      ProdutoEmpresaFlagSerial = Case
                                 When tbProdutoEmpresaFlagSerial != '' Then  tbProdutoEmpresaFlagSerial
                                 Else ProdutoEmpresaFlagSerial
                                 End,                                     
      ProdutoEmpresaFlagSerialEstoque = Case
                                        When tbProdutoEmpresaFlagSerialEstoque != '' Then  tbProdutoEmpresaFlagSerialEstoque
                                        Else ProdutoEmpresaFlagSerialEstoque
                                        End,                                                                             
      ProdutoEmpresaFlagLote = Case
                               When tbProdutoEmpresaFlagLote != '' Then  tbProdutoEmpresaFlagLote
                               Else ProdutoEmpresaFlagLote
                               End,                                                                                                                  
      ProdutoEmpresaFlagGrade = Case
                                When tbProdutoEmpresaFlagGrade != '' Then  tbProdutoEmpresaFlagGrade
                                Else ProdutoEmpresaFlagGrade
                                End,                                                                                                                  
      ProdutoEmpresaFlagAdic = Case
                               When tbProdutoEmpresaFlagAdic != '' Then  tbProdutoEmpresaFlagAdic
                               Else ProdutoEmpresaFlagAdic
                               End,
      ProdutoEmpresaFlagProducao = Case
                                   When tbProdutoEmpresaFlagProducao != '' Then  tbProdutoEmpresaFlagProducao
                                   Else ProdutoEmpresaFlagProducao
                                   End,
      ProdutoEmpresaFlagBalanca = Case
                                  When tbProdutoEmpresaFlagBalanca != '' Then  tbProdutoEmpresaFlagBalanca
                                  Else ProdutoEmpresaFlagBalanca
                                  End,                               
      ProdutoEmpresaFlagImprimeValid = Case
                                       When tbProdutoEmpresaFlagImprimeValid != '' Then  tbProdutoEmpresaFlagImprimeValid
                                       Else ProdutoEmpresaFlagImprimeValid
                                       End,                               
      ProdutoEmpresaFlagImprimeEmbal = Case
                                       When tbProdutoEmpresaFlagImprimeEmbal != '' Then  tbProdutoEmpresaFlagImprimeEmbal
                                       Else ProdutoEmpresaFlagImprimeEmbal
                                       End,                                                                                                   
      ProdutoEmpresaFlagQtde = Case
                               When tbProdutoEmpresaFlagQtde != '' Then  tbProdutoEmpresaFlagQtde
                               Else ProdutoEmpresaFlagQtde
                               End,                               
      ProdutoEmpresaPrecoCusto = Case
                                 When tbProdutoEmpresaPrecoCusto != '' Then  tbProdutoEmpresaPrecoCusto
                                 Else ProdutoEmpresaPrecoCusto
                                 End,                                    
      ProdutoEmpresaPrecoOutros = Case
                                 When tbProdutoEmpresaPrecoOutros != '' Then  tbProdutoEmpresaPrecoOutros
                                 Else ProdutoEmpresaPrecoOutros
                                 End,                                                                   
      ProdutoEmpresaCustoMedio = Case
                                 When tbProdutoEmpresaCustoMedio != '' Then  tbProdutoEmpresaCustoMedio
                                 Else ProdutoEmpresaCustoMedio
                                 End,                                                         
      ProdutoEmpresaCustoReal = Case
                                When tbProdutoEmpresaCustoReal != '' Then  tbProdutoEmpresaCustoReal
                                Else ProdutoEmpresaCustoReal
                                End,                                                                                        
      ProdutoEmpresaCustoFinal = Case
                                 When tbProdutoEmpresaCustoFinal != '' Then  tbProdutoEmpresaCustoFinal
                                 Else ProdutoEmpresaCustoFinal
                                 End,                                                                      
      ProdutoEmpresaObs = Case
                          When tbProdutoEmpresaObs != '' Then  tbProdutoEmpresaObs
                          Else ProdutoEmpresaObs
                          End,                         
      ProdutoEmpresaCSOSN = Case
                            When tbProdutoEmpresaCSOSN != '' Then  tbProdutoEmpresaCSOSN
                            Else ProdutoEmpresaCSOSN
                            End,                                                   
      CFOPIdentFkProdutoEmpresa = Case
                                  When tbCFOPIdentFkProdutoEmpresa != '' Then  tbCFOPIdentFkProdutoEmpresa
                                  Else CFOPIdentFkProdutoEmpresa
                                  End,                                                   
      NCMIdentFkProdutoEmpresa = Case
                                 When tbNCMIdentFkProdutoEmpresa != '' Then  tbNCMIdentFkProdutoEmpresa
                                 Else NCMIdentFkProdutoEmpresa
                                 End,                                                   
      UnidMedidaIdentifFkProdutoEmpresa = Case
                                          When tbUnidMedidaIdentifFkProdutoEmpresa != '' Then  tbUnidMedidaIdentifFkProdutoEmpresa
                                          Else UnidMedidaIdentifFkProdutoEmpresa
                                          End,                                                   
      ProdutoEmpresaValidadeDias = Case
                                   When tbProdutoEmpresaValidadeDias != '' Then  tbProdutoEmpresaValidadeDias
                                   Else ProdutoEmpresaValidadeDias
                                   End,                                                                                    
      CESTIdentFkProdutoEmpresa = Case
                                  When tbCESTIdentFkProdutoEmpresa != '' Then  tbCESTIdentFkProdutoEmpresa
                                  Else CESTIdentFkProdutoEmpresa
                                  End,                                 
      ProdutoEmpresaGTIN13 = Case
                             When tbProdutoEmpresaGTIN13 != '' Then  tbProdutoEmpresaGTIN13
                             Else ProdutoEmpresaGTIN13
                             End,
      ProdutoEmpresaFlagProdIngr = Case
                                   When tbProdutoEmpresaFlagProdIngr != '' Then  tbProdutoEmpresaFlagProdIngr
                                   Else ProdutoEmpresaFlagProdIngr
                                   End  
                                                                                              
  Where EmpresaIdentFkProdutoEmpresa = tbEmpresaIdentFkProdutoEmpresa
  And ProdutoIdentFkProdutoEmpresa = tbProdutoIdentFkProdutoEmpresa;
  Select 0 As CodRetorno, 'MSG009/SpUpdatetbprodutoempresa: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutoempresatrib`(
IN 
tbProdutoEmpresaTribIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoEmpresaTrib Int(11), 
tbProdutoEmpresaTribCSTPISEnt VarChar(4),
tbProdutoEmpresaTribCSTPISSaida VarChar(4),
tbProdutoEmpresaTribAliqPIS Numeric(12,4),
tbProdutoEmpresaTribCSTCOFINSEnt VarChar(4),
tbProdutoEmpresaTribCSTCOFINSSaida VarChar(4),
tbProdutoEmpresaTribAliqCOFINS Numeric(12,4),
tbProdutoEmpresaTribAliqINSSRet Numeric(12,4),
tbProdutoEmpresaTribAliqINSSEmpresa Numeric(12,4),
tbProdutoEmpresaTribAliqIRRF Numeric(12,4),
tbProdutoEmpresaTribAliqCSLL Numeric(12,4),
tbProdutoEmpresaTribAliqISS Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoEmpresaTribIdent = '') && (tbProdutoEmpresaIdentFkProdutoEmpresaTrib = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutoempresatrib: Identificador da Tributação ou do Produto/Empresa do Produto/Tributação não informado!' As Msg;  
  ElseIf ((tbProdutoEmpresaTribIdent != '') && 
     (Not Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent And ProdutoEmpresaTribExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutoempresatrib: Produto/Tributação não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') && 
     (Not Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib And ProdutoEmpresaTribExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutoempresatrib: Produto/Tributação não localizado pelo Produto/Empresa!' As Msg;
  ElseIf
     ((tbProdutoEmpresaTribIdent != '') &&
     (Exists(Select ProdutoEmpresaTribIdent From tbprodutoempresatrib where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent And ProdutoEmpresaTribExcluido Is Null))) Then
  Update tbprodutoempresatrib
  Set ProdutoEmpresaTribCSTPISEnt = Case
                                    When tbProdutoEmpresaTribCSTPISEnt != '' Then tbProdutoEmpresaTribCSTPISEnt
                                    Else ProdutoEmpresaTribCSTPISEnt
                                    End,
      ProdutoEmpresaTribCSTPISSaida = Case
                                      When tbProdutoEmpresaTribCSTPISSaida != '' Then  tbProdutoEmpresaTribCSTPISSaida
                                      Else ProdutoEmpresaTribCSTPISSaida
                                      End,
      ProdutoEmpresaTribAliqPIS = Case
                                  When tbProdutoEmpresaTribAliqPIS != '' Then  tbProdutoEmpresaTribAliqPIS
                                  Else ProdutoEmpresaTribAliqPIS
                                  End,                     
      ProdutoEmpresaTribCSTCOFINSEnt = Case
                                       When tbProdutoEmpresaTribCSTCOFINSEnt != '' Then  tbProdutoEmpresaTribCSTCOFINSEnt
                                       Else ProdutoEmpresaTribCSTCOFINSEnt
                                       End,                      
      ProdutoEmpresaTribCSTCOFINSSaida = Case
                                         When tbProdutoEmpresaTribCSTCOFINSSaida != '' Then  tbProdutoEmpresaTribCSTCOFINSSaida
                                         Else ProdutoEmpresaTribCSTCOFINSSaida
                                         End,                                           
      ProdutoEmpresaTribAliqCOFINS = Case
                                     When tbProdutoEmpresaTribAliqCOFINS != '' Then  tbProdutoEmpresaTribAliqCOFINS
                                     Else ProdutoEmpresaTribAliqCOFINS
                                     End,             
      ProdutoEmpresaTribAliqINSSRet = Case
                                      When tbProdutoEmpresaTribAliqINSSRet != '' Then  tbProdutoEmpresaTribAliqINSSRet
                                      Else ProdutoEmpresaTribAliqINSSRet
                                      End,                       
      ProdutoEmpresaTribAliqINSSEmpresa = Case
                                          When tbProdutoEmpresaTribAliqINSSEmpresa != '' Then  tbProdutoEmpresaTribAliqINSSEmpresa
                                          Else ProdutoEmpresaTribAliqINSSEmpresa
                                          End,
      ProdutoEmpresaTribAliqIRRF = Case
                                   When tbProdutoEmpresaTribAliqIRRF != '' Then  tbProdutoEmpresaTribAliqIRRF
                                   Else ProdutoEmpresaTribAliqIRRF
                                   End,
      ProdutoEmpresaTribAliqCSLL = Case
                                     When tbProdutoEmpresaTribAliqCSLL != '' Then  tbProdutoEmpresaTribAliqCSLL
                                     Else ProdutoEmpresaTribAliqCSLL
                                     End,
      ProdutoEmpresaTribAliqISS = Case
                                  When tbProdutoEmpresaTribAliqISS != '' Then  tbProdutoEmpresaTribAliqISS
                                  Else ProdutoEmpresaTribAliqISS
                                  End
  Where ProdutoEmpresaTribIdent = tbProdutoEmpresaTribIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbprodutoempresatrib: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdentFkProdutoEmpresaTrib != '') &&
     (Exists(Select ProdutoEmpresaIdentFkProdutoEmpresaTrib From tbprodutoempresatrib where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib And ProdutoEmpresaTribExcluido Is Null))) Then
  Update tbprodutoempresatrib
  Set ProdutoEmpresaTribCSTPISEnt = Case
                                    When tbProdutoEmpresaTribCSTPISEnt != '' Then tbProdutoEmpresaTribCSTPISEnt
                                    Else ProdutoEmpresaTribCSTPISEnt
                                    End,
      ProdutoEmpresaTribCSTPISSaida = Case
                                      When tbProdutoEmpresaTribCSTPISSaida != '' Then  tbProdutoEmpresaTribCSTPISSaida
                                      Else ProdutoEmpresaTribCSTPISSaida
                                      End,
      ProdutoEmpresaTribAliqPIS = Case
                                  When tbProdutoEmpresaTribAliqPIS != '' Then  tbProdutoEmpresaTribAliqPIS
                                  Else ProdutoEmpresaTribAliqPIS
                                  End,                     
      ProdutoEmpresaTribCSTCOFINSEnt = Case
                                       When tbProdutoEmpresaTribCSTCOFINSEnt != '' Then  tbProdutoEmpresaTribCSTCOFINSEnt
                                       Else ProdutoEmpresaTribCSTCOFINSEnt
                                       End,                      
      ProdutoEmpresaTribCSTCOFINSSaida = Case
                                         When tbProdutoEmpresaTribCSTCOFINSSaida != '' Then  tbProdutoEmpresaTribCSTCOFINSSaida
                                         Else ProdutoEmpresaTribCSTCOFINSSaida
                                         End,                                           
      ProdutoEmpresaTribAliqCOFINS = Case
                                     When tbProdutoEmpresaTribAliqCOFINS != '' Then  tbProdutoEmpresaTribAliqCOFINS
                                     Else ProdutoEmpresaTribAliqCOFINS
                                     End,             
      ProdutoEmpresaTribAliqINSSRet = Case
                                      When tbProdutoEmpresaTribAliqINSSRet != '' Then  tbProdutoEmpresaTribAliqINSSRet
                                      Else ProdutoEmpresaTribAliqINSSRet
                                      End,                       
      ProdutoEmpresaTribAliqINSSEmpresa = Case
                                          When tbProdutoEmpresaTribAliqINSSEmpresa != '' Then  tbProdutoEmpresaTribAliqINSSEmpresa
                                          Else ProdutoEmpresaTribAliqINSSEmpresa
                                          End,
      ProdutoEmpresaTribAliqIRRF = Case
                                   When tbProdutoEmpresaTribAliqIRRF != '' Then  tbProdutoEmpresaTribAliqIRRF
                                   Else ProdutoEmpresaTribAliqIRRF
                                   End,
      ProdutoEmpresaTribAliqCSLL = Case
                                     When tbProdutoEmpresaTribAliqCSLL != '' Then  tbProdutoEmpresaTribAliqCSLL
                                     Else ProdutoEmpresaTribAliqCSLL
                                     End,
      ProdutoEmpresaTribAliqISS = Case
                                  When tbProdutoEmpresaTribAliqISS != '' Then  tbProdutoEmpresaTribAliqISS
                                  Else ProdutoEmpresaTribAliqISS
                                  End
  Where ProdutoEmpresaIdentFkProdutoEmpresaTrib = tbProdutoEmpresaIdentFkProdutoEmpresaTrib;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutoempresatrib: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutofornecedor`(
IN 
tbProdutoFornecedorIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoFornecedor Int(11), 
tbPessoaIdentFkProdutoFornecedor Int(11),
tbProdutoFornecedorDescr VarChar(200),
tbUnidMedidaIdentifFkProdutoFornecedor Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoFornecedorIdent = '') && (tbProdutoEmpresaIdentFkProdutoFornecedor = '') && (tbPessoaIdentFkProdutoFornecedor = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutofornecedor: Identificador ou Identificador do Produto/Fornecedor para o Produto/Fornecedor não informado!' As Msg;  
  ElseIf ((tbProdutoFornecedorIdent != '') && 
     (Not Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoFornecedorIdent = tbProdutoFornecedorIdent And ProdutoFornecedorExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutofornecedor: Produto/Fornecedor não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') && (tbPessoaIdentFkProdutoFornecedor != '') &&
     (Not Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor And ProdutoFornecedorExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutofornecedor: Produto/Fornecedor não localizado pelo Produto/Pessoa!' As Msg;
  ElseIf ((tbUnidMedidaIdentifFkProdutoFornecedor != '') && 
     (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkProdutoFornecedor And UnidMedidaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbprodutofornecedor: Unidade de Medida para o Produto/Fornecedor não existe na base de dados!' As Msg;
  ElseIf
     ((tbProdutoFornecedorIdent != '') &&
     (Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor where ProdutoFornecedorIdent = tbProdutoFornecedorIdent And ProdutoFornecedorExcluido Is Null))) Then
  Update tbprodutofornecedor
  Set ProdutoFornecedorDescr = Case
                               When tbProdutoFornecedorDescr != '' Then tbProdutoFornecedorDescr
                               Else ProdutoFornecedorDescr
                               End,
      UnidMedidaIdentifFkProdutoFornecedor = Case
                                             When tbUnidMedidaIdentifFkProdutoFornecedor != '' Then  tbUnidMedidaIdentifFkProdutoFornecedor
                                             Else UnidMedidaIdentifFkProdutoFornecedor
                                             End                      
  Where ProdutoFornecedorIdent = tbProdutoFornecedorIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutofornecedor: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdentFkProdutoFornecedor != '') && (tbPessoaIdentFkProdutoFornecedor != '') &&
     (Exists(Select ProdutoFornecedorIdent From tbprodutofornecedor where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor And ProdutoFornecedorExcluido Is Null))) Then
  Update tbprodutofornecedor
  Set ProdutoFornecedorDescr = Case
                               When tbProdutoFornecedorDescr != '' Then tbProdutoFornecedorDescr
                               Else ProdutoFornecedorDescr
                               End,
      UnidMedidaIdentifFkProdutoFornecedor = Case
                                             When tbUnidMedidaIdentifFkProdutoFornecedor != '' Then  tbUnidMedidaIdentifFkProdutoFornecedor
                                             Else UnidMedidaIdentifFkProdutoFornecedor
                                             End                      
  Where ProdutoEmpresaIdentFkProdutoFornecedor = tbProdutoEmpresaIdentFkProdutoFornecedor
  And PessoaIdentFkProdutoFornecedor = tbPessoaIdentFkProdutoFornecedor;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbprodutofornecedor: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutofoto`(
IN 
tbProdutoFotoIdent Int(11), 
tbProdutoIdentFkProdutoFoto Int(11), 
tbProdutoFotoImagem LongBlob, 
tbProdutoFotoIcon LongBlob, 
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoFotoIdent = '') && (tbProdutoIdentFkProdutoFoto = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutofoto: Identificador ou Identificador do Produto para o Produto/Foto não informado!' As Msg;  
  ElseIf ((tbProdutoFotoIdent != '') && 
     (Not Exists(Select ProdutoFotoIdent From tbprodutofoto Where ProdutoFotoIdent = tbProdutoFotoIdent And ProdutoFotoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutofoto: Produto/Foto não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoIdentFkProdutoFoto != '') &&
     (Not Exists(Select ProdutoIdentFkProdutoFoto From tbprodutofoto Where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto And ProdutoFotoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutofoto: Produto/Foto não localizado pelo Produto!' As Msg;
  ElseIf
     ((tbProdutoFotoIdent != '') &&
     (Exists(Select ProdutoFotoIdent From tbprodutofoto where ProdutoFotoIdent = tbProdutoFotoIdent And ProdutoFotoExcluido Is Null))) Then
  Update tbprodutofoto
  Set ProdutoFotoImagem = Case
                          When tbProdutoFotoImagem != '' Then tbProdutoFotoImagem
                          Else ProdutoFotoImagem
                          End,
      ProdutoFotoIcon = Case
                        When tbProdutoFotoIcon != '' Then  tbProdutoFotoIcon
                        Else ProdutoFotoIcon
                        End
  Where ProdutoFotoIdent = tbProdutoFotoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbprodutofoto: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoIdentFkProdutoFoto != '') &&
     (Exists(Select ProdutoIdentFkProdutoFoto From tbprodutofoto where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto And ProdutoFotoExcluido Is Null))) Then
  Update tbprodutofoto
  Set ProdutoFotoImagem = Case
                          When tbProdutoFotoImagem != '' Then tbProdutoFotoImagem
                          Else ProdutoFotoImagem
                          End,
      ProdutoFotoIcon = Case
                        When tbProdutoFotoIcon != '' Then  tbProdutoFotoIcon
                        Else ProdutoFotoIcon
                        End
  Where ProdutoIdentFkProdutoFoto = tbProdutoIdentFkProdutoFoto;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutofoto: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutograde`(
IN 
tbProdutoGradeIdent Int(11), 
tbGradeIdentFkProdutoGrade Int(11), 
tbProdutoEmpresaIdentFkProdutoGrade Int(11),
tbProdutoGradeSeq Int(11), 
tbProdutoGradeSigla VarChar(3),
tbProdutoGradeDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoGradeIdent = '') && (tbGradeIdentFkProdutoGrade = '') && (tbProdutoEmpresaIdentFkProdutoGrade = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutograde: Identificador ou Identificador da Grade/Produto para o Produto/Grade não informado!' As Msg;  
  ElseIf ((tbProdutoGradeIdent != '') && 
     (Not Exists(Select ProdutoGradeIdent From tbprodutograde Where ProdutoGradeIdent = tbProdutoGradeIdent And ProdutoGradeExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutograde: Produto/Grade não localizado pelo Identificador!' As Msg;
  ElseIf ((tbGradeIdentFkProdutoGrade != '') && (tbProdutoEmpresaIdentFkProdutoGrade != '') &&
     (Not Exists(Select ProdutoGradeIdent From tbprodutograde Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade And ProdutoGradeExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutograde: Produto/Grade não localizado pela Grade/Produto Empresa!' As Msg;
  ElseIf
     ((tbProdutoGradeIdent != '') &&
     (Exists(Select ProdutoGradeIdent From tbprodutograde where ProdutoGradeIdent = tbProdutoGradeIdent And ProdutoGradeExcluido Is Null))) Then
  Update tbprodutograde
  Set ProdutoGradeSeq = Case
                        When tbProdutoGradeSeq != '' Then tbProdutoGradeSeq
                        Else ProdutoGradeSeq
                        End,
      ProdutoGradeSigla = Case
                        When tbProdutoGradeSigla != '' Then  tbProdutoGradeSigla
                        Else ProdutoGradeSigla
                        End,
      ProdutoGradeDescr = Case
                        When tbProdutoGradeDescr != '' Then  tbProdutoGradeDescr
                        Else ProdutoGradeDescr
                        End                       
  Where ProdutoGradeIdent = tbProdutoGradeIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbprodutograde: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbGradeIdentFkProdutoGrade != '') && (tbProdutoEmpresaIdentFkProdutoGrade) &&
     (Exists(Select ProdutoGradeIdent From tbprodutograde where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade  And ProdutoGradeExcluido Is Null))) Then
  Update tbprodutograde
  Set ProdutoGradeSeq = Case
                        When tbProdutoGradeSeq != '' Then tbProdutoGradeSeq
                        Else ProdutoGradeSeq
                        End,
      ProdutoGradeSigla = Case
                        When tbProdutoGradeSigla != '' Then  tbProdutoGradeSigla
                        Else ProdutoGradeSigla
                        End,
      ProdutoGradeDescr = Case
                        When tbProdutoGradeDescr != '' Then  tbProdutoGradeDescr
                        Else ProdutoGradeDescr
                        End                       
  Where GradeIdentFkProdutoGrade = tbGradeIdentFkProdutoGrade
  And ProdutoEmpresaIdentFkProdutoGrade = tbProdutoEmpresaIdentFkProdutoGrade;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutograde: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbprodutoprecomargem`(
IN 
tbProdutoPrecoMargemIdent Int(11), 
tbProdutoEmpresaIdentFkProdutoPrecoMargem Int(11), 
tbProdutoPrecoMargemSeq Int(11),
tbProdutoPrecoMargemVlrPreco Numeric(12.4),
tbProdutoPrecoMargemVlrMargem Numeric(12.4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbProdutoPrecoMargemIdent = '') && (tbProdutoEmpresaIdentFkProdutoPrecoMargem = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbprodutoprecomargem: Identificador ou Identificador do Produto/Empresa para o Produto/Preço e Margem não informado!' As Msg;  
  ElseIf ((tbProdutoPrecoMargemIdent != '') && 
     (Not Exists(Select ProdutoPrecoMargemIdent From tbprodutoprecomargem Where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent And ProdutoPrecoMargemExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbprodutoprecomargem: Produto/Preço e Margem não localizado pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkProdutoPrecoMargem != '') &&
     (Not Exists(Select ProdutoEmpresaIdentFkProdutoPrecoMargem From tbprodutoprecomargem Where ProdutoEmpresaIdentFkProdutoPrecoMargem = tbProdutoEmpresaIdentFkProdutoPrecoMargem And ProdutoPrecoMargemExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbprodutoprecomargem: Produto/Preço e Margem não localizado pelo Produto/Empresa!' As Msg;
  ElseIf
     ((tbProdutoPrecoMargemIdent != '') &&
     (Exists(Select ProdutoPrecoMargemIdent From tbprodutoprecomargem where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent And ProdutoPrecoMargemExcluido Is Null))) Then
  Update tbprodutoprecomargem
  Set ProdutoPrecoMargemSeq = Case
                              When tbProdutoPrecoMargemSeq != '' Then tbProdutoPrecoMargemSeq
                              Else ProdutoPrecoMargemSeq
                              End,
      ProdutoPrecoMargemVlrPreco = Case
                                   When tbProdutoPrecoMargemVlrPreco != '' Then  tbProdutoPrecoMargemVlrPreco
                                   Else ProdutoPrecoMargemVlrPreco
                                   End,
      ProdutoPrecoMargemVlrMargem = Case
                                    When tbProdutoPrecoMargemVlrMargem != '' Then  tbProdutoPrecoMargemVlrMargem
                                    Else ProdutoPrecoMargemVlrMargem
                                    End                       
  Where ProdutoPrecoMargemIdent = tbProdutoPrecoMargemIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbprodutoprecomargem: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbProdutoEmpresaIdentFkProdutoPrecoMargem != '') &&
     (Exists(Select ProdutoEmpresaIdentFkProdutoPrecoMargem From tbprodutoprecomargem where ProdutoEmpresaIdentFkProdutoPrecoMargem = tbProdutoEmpresaIdentFkProdutoPrecoMargem And ProdutoPrecoMargemExcluido Is Null))) Then
  Update tbprodutoprecomargem
  Set ProdutoPrecoMargemSeq = Case
                              When tbProdutoPrecoMargemSeq != '' Then tbProdutoPrecoMargemSeq
                              Else ProdutoPrecoMargemSeq
                              End,
      ProdutoPrecoMargemVlrPreco = Case
                                   When tbProdutoPrecoMargemVlrPreco != '' Then  tbProdutoPrecoMargemVlrPreco
                                   Else ProdutoPrecoMargemVlrPreco
                                   End,
      ProdutoPrecoMargemVlrMargem = Case
                                    When tbProdutoPrecoMargemVlrMargem != '' Then  tbProdutoPrecoMargemVlrMargem
                                    Else ProdutoPrecoMargemVlrMargem
                                    End                       
  Where ProdutoEmpresaIdentFkProdutoPrecoMargem = tbProdutoEmpresaIdentFkProdutoPrecoMargem;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbprodutoprecomargem: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbregiao`(
IN 
tbRegiaoIdent Int(11), 
tbRegiaoCod VarChar(10), 
tbRegiaoDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  if ((tbRegiaoIdent = '') && (tbRegiaoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbregiao: Identificador, Código ou Descrição da Região não informado!' As Msg;  
  ElseIf 
     ((tbRegiaoIdent != '') && (Not Exists(Select RegiaoIdent From tbregiao Where RegiaoIdent = tbRegiaoIdent And RegiaoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbregiao: Identificador da Região não localizado!' As Msg;
  ElseIf
     ((tbRegiaoCod != '') && (Not Exists(Select RegiaoCod From tbregiao Where RegiaoCod = tbRegiaoCod And RegiaoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbregiao: Código da Região não localizado!' As Msg;  
  ElseIf
     ((tbRegiaoIdent = '') &&
     (Exists(Select RegiaoIdent From tbregiao Where RegiaoIdent = tbRegiaoIdent and RegiaoExcluido is null))) Then
     Update tbregiao
     Set RegiaoDescr = Case
                       When tbRegiaoDescr != '' Then  tbRegiaoDescr
                       Else RegiaoDescr
                       End
     Where RegiaoIdent = tbRegiaoIdent;
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbregiao: Atualização realizada com sucesso!' As Msg;
   ElseIf
     ((tbRegiaoCod = '') &&
     (Exists(Select RegiaoCod From tbregiao Where RegiaoCod = tbRegiaoCod and RegiaoExcluido is null))) Then
     Update tbregiao
     Set RegiaoDescr = Case
                       When tbRegiaoDescr != '' Then  tbRegiaoDescr
                       Else RegiaoDescr
                       End
     Where RegiaoCod = tbRegiaoCod;
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbregiao: Atualização realizada com sucesso!' As Msg;    
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbsecao`(
IN 
tbSecaoIdent Int(11), 
tbSecaoCod VarChar(20),
tbEmpresaIdentFkSecao Int(11), 
tbSecaoClassif VarChar(20),
tbSecaoNome VarChar(200),
tbSecaoCompl VarChar(100),
tbSecaoDescMax Numeric(12,4),
tbSecaoMargemLucro Numeric(9,2),
tbSecaoDescMaxUsu  Numeric(9,2),
tbSecaoFoto LongBlob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbSecaoIdent = '') && (tbSecaoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbsecao: Identificador ou Código da Seção não informado!' As Msg;  
  ElseIf ((tbSecaoIdent != '') && 
     (Not Exists(Select SecaoIdent From tbsecao Where SecaoIdent = tbSecaoIdent And SecaoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbsecao: Seção não localizada pelo Identificador!' As Msg;
  ElseIf ((tbSecaoCod != '') && 
     (Not Exists(Select SecaoCod From tbsecao Where SecaoCod = tbSecaoCod And SecaoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbsecao: Seção não localizado pelo Código!' As Msg;
  ElseIf ((tbEmpresaIdentFkSecao != '') && 
     (Not Exists(Select EmpresaIdent From tbempresa Where EmpresaIdent = tbEmpresaIdentFkSecao And EmpresaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbsecao: Empresa para a Seção não existe na base de dados!' As Msg;
  ElseIf
     ((tbSecaoIdent != '') &&
     (Exists(Select SecaoIdent From tbsecao where SecaoIdent = tbSecaoIdent And SecaoExcluido Is Null))) Then
  Update tbsecao
  Set EmpresaIdentFkSecao = Case
                            When tbEmpresaIdentFkSecao != '' Then tbEmpresaIdentFkSecao
                            Else EmpresaIdentFkSecao
                            End,
      SecaoClassif = Case
                     When tbSecaoClassif != '' Then  tbSecaoClassif
                     Else SecaoClassif
                     End,
      SecaoNome = Case
                     When tbSecaoNome != '' Then  tbSecaoNome
                     Else SecaoNome
                     End,                     
      SecaoCompl = Case
                     When tbSecaoCompl != '' Then  tbSecaoCompl
                     Else SecaoCompl
                     End,                      
      SecaoDescMax = Case
                     When tbSecaoDescMax != '' Then  tbSecaoDescMax
                     Else SecaoDescMax
                     End,                                           
      SecaoMargemLucro = Case
                         When tbSecaoMargemLucro != '' Then  tbSecaoMargemLucro
                         Else SecaoMargemLucro
                         End,             
      SecaoDescMaxUsu = Case
                        When tbSecaoDescMaxUsu != '' Then  tbSecaoDescMaxUsu
                        Else SecaoDescMaxUsu
                        End,                       
      SecaoFoto = Case
                  When tbSecaoFoto != '' Then  tbSecaoFoto
                  Else SecaoFoto
                  End
  Where SecaoIdent = tbSecaoIdent;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbgrade: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbSecaoCod != '') &&
     (Exists(Select SecaoCod From tbsecao where SecaoCod = tbSecaoCod And SecaoExcluido Is Null))) Then
  Update tbsecao
  Set EmpresaIdentFkSecao = Case
                            When tbEmpresaIdentFkSecao != '' Then tbEmpresaIdentFkSecao
                            Else EmpresaIdentFkSecao
                            End,
      SecaoClassif = Case
                     When tbSecaoClassif != '' Then  tbSecaoClassif
                     Else SecaoClassif
                     End,
      SecaoNome = Case
                     When tbSecaoNome != '' Then  tbSecaoNome
                     Else SecaoNome
                     End,                     
      SecaoCompl = Case
                     When tbSecaoCompl != '' Then  tbSecaoCompl
                     Else SecaoCompl
                     End,                      
      SecaoDescMax = Case
                     When tbSecaoDescMax != '' Then  tbSecaoDescMax
                     Else SecaoDescMax
                     End,                                           
      SecaoMargemLucro = Case
                         When tbSecaoMargemLucro != '' Then  tbSecaoMargemLucro
                         Else SecaoMargemLucro
                         End,             
      SecaoDescMaxUsu = Case
                        When tbSecaoDescMaxUsu != '' Then  tbSecaoDescMaxUsu
                        Else SecaoDescMaxUsu
                        End,                       
      SecaoFoto = Case
                  When tbSecaoFoto != '' Then  tbSecaoFoto
                  Else SecaoFoto
                  End
  Where SecaoCod = tbSecaoCod;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbgrade: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbtipocontato`(
IN 
tbTipoContatoIdent Int(11), 
tbTipoContatoCod VarChar(20), 
tbTipoContatoDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbTipoContatoIdent = '') && (tbTipoContatoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbtipocontato: Identificador ou Código do Tipo de Contato não informado!' As Msg;  
  ElseIf ((tbTipoContatoIdent != '') && 
     (Not Exists(Select TipoContatoIdent From tbtipocontato Where TipoContatoIdent = tbTipoContatoIdent And TipoContatoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbtipocontato: Tipo de Contato não localizado pelo Identificador!' As Msg;
  ElseIf ((tbTipoContatoCod != '') &&
     (Not Exists(Select TipoContatoCod From tbtipocontato Where TipoContatoCod = tbTipoContatoCod And TipoContatoExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbtipocontato: Tipo de Contato  não localizado pelo Código!' As Msg;
  ElseIf
     ((tbTipoContatoIdent != '') &&
     (Exists(Select TipoContatoIdent From tbtipocontato where TipoContatoIdent = tbTipoContatoIdent And TipoContatoExcluido Is Null))) Then
  Update tbtipocontato
  Set TipoContatoDescr = Case
                          When tbTipoContatoDescr != '' Then tbTipoContatoDescr
                          Else TipoContatoDescr
                          End                                             
  Where TipoContatoIdent = tbTipoContatoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbtipocontato: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbTipoContatoCod != '') &&
     (Exists(Select TipoContatoCod From tbtipocontato where TipoContatoCod = tbTipoContatoCod And TipoContatoExcluido Is Null))) Then
  Update tbtipocontato
  Set TipoContatoDescr = Case
                          When tbTipoContatoDescr != '' Then tbTipoContatoDescr
                          Else TipoContatoDescr
                          End                                             
  Where TipoContatoCod = tbTipoContatoCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbtipocontato: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbtipoemail`(
IN 
tbTipoEmailIdent Int(11), 
tbTipoEmailCod VarChar(10),
tbTipoEmailDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbTipoEmailIdent = '') && (tbTipoEmailCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbtipoemail: Identificador ou Código do Tipo de Email não informado!' As Msg;
  ElseIf 
     ((tbTipoEmailIdent != '') &&     
     (Not Exists(Select TipoEmailIdent From tbtipoemail Where TipoEmailIdent = tbTipoEmailIdent And TipoEmailExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbtipoemail: Identificador do Tipo de Email não existe na base de dados!' As Msg;
  ElseIf
     ((tbTipoEmailCod != '') &&
     (Not Exists(Select TipoEmailCod From tbtipoemail Where TipoEmailCod = tbTipoEmailCod and TipoEmailExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbtipoemail: Código do Tipo de Email não localizado!' As Msg;     
  ElseIf
     ((tbTipoEmailIdent != '') &&      
     (Exists(Select TipoEmailIdent From tbtipoemail Where TipoEmailIdent = tbTipoEmailIdent And TipoEmailExcluido is null))) Then
     Update tbtipoemail
     Set TipoEmailDescr = Case
                          When tbTipoEmailDescr != '' Then tbTipoEmailDescr
                          Else TipoEmailDescr
                          End
     Where TipoEmailIdent = tbTipoEmailIdent;
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbtipoemail: Atualização realizada com sucesso!' As Msg;
  ElseIf
     ((tbTipoEmailCod != '') &&      
     (Exists(Select TipoEmailCod From tbtipoemail Where TipoEmailCod = tbTipoEmailCod And TipoEmailExcluido is null))) Then
     Update tbtipoemail
     Set TipoEmailDescr = Case
                          When tbTipoEmailCod != '' Then tbTipoEmailCod
                          Else TipoEmailDescr
                          End
     Where TipoEmailCod = tbTipoEmailCod;
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbtipoemail: Atualização realizada com sucesso!' As Msg;     
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbtipoendereco`(
IN 
tbTipoEnderecoIdent Int(11), 
tbTipoEnderecoCod VarChar(10), 
tbTipoEnderecoDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbTipoEnderecoIdent = '') && (tbTipoEnderecoCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbtipoendereco: Identificador ou Codigo do Tipo de Endereço não informado!' As Msg;
  ElseIf 
     ((tbTipoEnderecoIdent != '') &&
     (Not Exists(Select TipoEnderecoIdent From tbtipoendereco Where TipoEnderecoIdent = tbTipoEnderecoIdent And TipoEnderecoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbtipoendereco: Tipo de Endereço não localizado!' As Msg;
  ElseIf
     ((tbTipoEnderecoCod != '') &&
     (Not Exists(Select TipoEnderecoCod From tbtipoendereco Where TipoEnderecoCod = tbTipoEnderecoCod And TipoEnderecoExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbtipoendereco: Código Tipo Endereço não localizado!' As Msg;  
  ElseIf 
     ((tbTipoEnderecoIdent != '') &&
     (Exists(Select TipoEnderecoIdent From tbtipoendereco Where TipoEnderecoIdent = tbTipoEnderecoIdent And TipoEnderecoExcluido is null)))  Then
  Update tbtipoendereco
  Set TipoEnderecoDescr = Case
                          When tbTipoEnderecoDescr != '' Then  tbTipoEnderecoDescr
                          Else TipoEnderecoDescr
                          End
  Where TipoEnderecoIdent = tbTipoEnderecoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbtipoendereco: Atualização realizada com sucesso!' As Msg;
  ElseIf 
     ((tbTipoEnderecoCod != '') &&
     (Exists(Select TipoEnderecoCod From tbtipoendereco Where TipoEnderecoCod = tbTipoEnderecoCod And TipoEnderecoExcluido is null)))  Then
  Update tbtipoendereco
  Set TipoEnderecoDescr = Case
                          When tbTipoEnderecoDescr != '' Then  tbTipoEnderecoDescr
                          Else TipoEnderecoDescr
                          End
  Where TipoEnderecoCod = tbTipoEnderecoCod;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbtipoendereco: Atualização realizada com sucesso!' As Msg;  
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbtipofone`(
IN 
tbTipoFoneIdent Int(11), 
tbTipoFoneCod VarChar(10),
tbTipoFoneDescr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbTipoFoneIdent = '')  && (tbTipoFoneCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbtipofone: Identificador ou Código do Tipo de Fone não informado!' As Msg;
  ElseIf 
     ((tbTipoFoneIdent != '') &&     
     (Not Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneIdent = tbTipoFoneIdent And TipoFoneExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbtipofone: Identificador do Tipo de Fone não existe na base de dados!' As Msg;
  ElseIf
     ((tbTipoFoneCod != '') &&
     (Not Exists(Select TipoFoneCod From tbtipofone Where TipoFoneCod = tbTipoFoneCod and TipoFoneExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbtipofone: Código do Tipo de Fone não existe na base de dados!' As Msg;    
  ElseIf
     ((tbTipoFoneIdent != '') &&      
     (Exists(Select TipoFoneIdent From tbtipofone Where TipoFoneIdent = tbTipoFoneIdent And TipoFoneExcluido is null))) Then
     Update tbtipofone
     Set TipoFoneDescr = Case
                         When tbTipoFoneDescr != '' Then tbTipoFoneDescr
                         Else TipoFoneDescr
                         End
     Where TipoFoneIdent = tbTipoFoneIdent;
     Select 0 As CodRetorno, 'MSG004/SpUpdatetbtipofone: Atualização realizada com sucesso!' As Msg;     
  ElseIf
     ((tbTipoFoneCod != '') &&      
     (Exists(Select TipoFoneCod From tbtipofone Where TipoFoneCod = tbTipoFoneCod And TipoFoneExcluido is null))) Then
     Update tbtipofone
     Set TipoFoneDescr = Case
                         When tbTipoFoneDescr != '' Then tbTipoFoneDescr
                         Else TipoFoneDescr
                         End
     Where TipoFoneCod = tbTipoFoneCod;     
     Select 0 As CodRetorno, 'MSG005/SpUpdatetbtipofone: Atualização realizada com sucesso!' As Msg;
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpUpdatetbunidmedida`(
IN 
tbUnidMedidaIdentif Int(11), 
tbUnidMedidaNome VarChar(100), 
tbUnidMedidaAbrev VarChar(10),
tbUnidMedidaPesavel SmallInt(1),
tbUnidMedidaFatorConvEstoque Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbUnidMedidaIdentif != '') && 
     (Not Exists(Select UnidMedidaIdentif From tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentif And UnidMedidaExcluido Is Null))) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbunidmedida: Unidade de Medida não localizado pelo Identificador!' As Msg;
  ElseIf
     ((tbUnidMedidaNome != '') &&
     (Not Exists(Select UnidMedidaNome From tbunidmedida Where UnidMedidaNome = tbUnidMedidaNome and UnidMedidaExcluido is null))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbunidmedida: Unidade de Medida não localizado pelo Nome!' As Msg;     
  ElseIf
     ((tbUnidMedidaAbrev != '') &&
     (Not Exists(Select UnidMedidaAbrev From tbunidmedida Where UnidMedidaAbrev = tbUnidMedidaAbrev And UnidMedidaExcluido Is Null))) Then      
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbunidmedida: Unidade de Medida não localizado pela Abreviatura!' As Msg;      
  ElseIf
     ((tbUnidMedidaIdentif != '') &&
     (Exists(Select UnidMedidaIdentif From tbunidmedida where UnidMedidaIdentif = tbUnidMedidaIdentif And UnidMedidaExcluido Is Null))) Then
  Update tbunidmedida
  Set UnidMedidaPesavel = Case
                          When tbUnidMedidaPesavel != '' Then tbUnidMedidaPesavel
                          Else UnidMedidaPesavel
                          End,
      UnidMedidaFatorConvEstoque = Case
                                   When tbUnidMedidaFatorConvEstoque != '' Then  tbUnidMedidaFatorConvEstoque
                                   Else UnidMedidaFatorConvEstoque
                                   End
  Where UnidMedidaIdentif = tbUnidMedidaIdentif;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbunidmedida: Atualização realizada com sucesso!' As Msg;
  ElseIf 
     ((tbUnidMedidaNome != '') &&
     (Exists(Select UnidMedidaNome From tbunidmedida where UnidMedidaNome = tbUnidMedidaNome And UnidMedidaExcluido Is Null))) Then
  Update tbunidmedida
  Set UnidMedidaPesavel = Case
                          When tbUnidMedidaPesavel != '' Then tbUnidMedidaPesavel
                          Else UnidMedidaPesavel
                          End,
      UnidMedidaFatorConvEstoque = Case
                                   When tbUnidMedidaFatorConvEstoque != '' Then  tbUnidMedidaFatorConvEstoque
                                   Else UnidMedidaFatorConvEstoque
                                   End
  Where UnidMedidaNome = tbUnidMedidaNome;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbunidmedida: Atualização realizada com sucesso!' As Msg;
  ElseIf 
     ((tbUnidMedidaAbrev != '') &&
     (Exists(Select UnidMedidaAbrev From tbunidmedida where UnidMedidaAbrev = tbUnidMedidaAbrev And UnidMedidaExcluido Is Null))) Then
  Update tbunidmedida
  Set UnidMedidaPesavel = Case
                          When tbUnidMedidaPesavel != '' Then tbUnidMedidaPesavel
                          Else UnidMedidaPesavel
                          End,
      UnidMedidaFatorConvEstoque = Case
                                   When tbUnidMedidaFatorConvEstoque != '' Then  tbUnidMedidaFatorConvEstoque
                                   Else UnidMedidaFatorConvEstoque
                                   End
  Where UnidMedidaAbrev = tbUnidMedidaAbrev;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbunidmedida: Atualização realizada com sucesso!' As Msg;  
  End If;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-24 15:06:07
