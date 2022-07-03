-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.26 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para evomodmat
CREATE DATABASE IF NOT EXISTS `evomodmat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `evomodmat`;

-- Copiando estrutura para procedure evomodmat.SpConsultatbclassifservico
DELIMITER //
CREATE PROCEDURE `SpConsultatbclassifservico`(
IN 
tbClassifServicoCod VarChar(20), 
tbClassifServicoDescr VarChar(500), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbClassifServicoCod != '' Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Where ClassifServicoCod = tbClassifServicoCod;
  ElseIf 
    tbClassifServicoDescr != '' Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Where ClassifServicoDescr = tbClassifServicoDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcompraalcadageral
DELIMITER //
CREATE PROCEDURE `SpConsultatbcompraalcadageral`(
IN 
tbCompraAlcadaGeralIdent Int(11), 
tbPessoaIdentAprovFkCompraAlcadaGeral Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraAlcadaGeralIdent != '' Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where CompraAlcadaGeralIdent = tbCompraAlcadaGeralIdent
    And PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent;
  ElseIf 
    tbPessoaIdentAprovFkCompraAlcadaGeral != '' Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraAlcadaGeral = tbPessoaIdentAprovFkCompraAlcadaGeral
    And PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraAlcadaGeralIdent,
        PessoaIdentAprovFkCompraAlcadaGeral,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
      CompraAlcadaGeralFlagSolic,
      CompraAlcadaGeralSolicVlrLimite,
      CompraAlcadaGeralFlagRequis,
      CompraAlcadaGeralRequisVlrLimite,
      CompraAlcadaGeralDtCanc
    From tbcompraalcadageral,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcompraalcadaprodutoempresa
DELIMITER //
CREATE PROCEDURE `SpConsultatbcompraalcadaprodutoempresa`(
IN 
tbCompraAlcadaProdutoEmpresaIdent Int(11), 
tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa Int(11), 
tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraAlcadaProdutoEmpresaIdent != '' Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where CompraAlcadaProdutoEmpresaIdent = CompraAlcadaProdutoEmpresaIdent
    And PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent;
  ElseIf 
    tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa != '' Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa
    And PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent;
  ElseIf 
    tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa != '' Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa
    And PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraAlcadaProdutoEmpresaIdent,
        PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
          PessoaCod As PessoaCodAprov,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
        ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
          ProdutoCod,
          ProdutoDescr,
      CompraAlcadaProdutoEmpresaFlagSolic,
      CompraAlcadaProdutoEmpresaSolicQtdeLimite,
      CompraAlcadaProdutoEmpresaSolicVlrLimite,
      CompraAlcadaProdutoEmpresaFlagRequis,
      CompraAlcadaProdutoEmpresaRequisQtdeLimite,
      CompraAlcadaProdutoEmpresaRequisVlrLimite,
      CompraAlcadaProdutoEmpresaDtCanc
    From tbcompraalcadaprodutoempresa,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto
    Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
    And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcompraordemcompra
DELIMITER //
CREATE PROCEDURE `SpConsultatbcompraordemcompra`(
IN 
tbCompraOrdemCompraIdent Int(11), 
tbPessoaIdentFornecFkCompraOrdemCompra Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraOrdemCompraIdent != '' Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdent
    And PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent;
  ElseIf 
    tbPessoaIdentFornecFkCompraOrdemCompra != '' Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where PessoaIdentFornecFkCompraOrdemCompra = tbPessoaIdentFornecFkCompraOrdemCompra
    And PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent; 
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraOrdemCompraIdent, 
      CompraOrdemCompraDtEmis,
        PessoaIdentFornecFkCompraOrdemCompra,
          PessoaCod As PessoaCodFornec,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornec,
      CompraOrdemCompraVlrTotal,
      CompraOrdemCompraPrazoEntrDias,
      CompraOrdemCompraDtEnt, 
        CondicaoPgtoRecebIdentFkCompraOrdemCompra,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraOrdemCompraFrete,
      CompraOrdemCompraFreteVlr,
      CompraOrdemCompraObs,
      CompraOrdemCompraDtCanc
    From tbcompraordemcompra,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where PessoaIdentFornecFkCompraOrdemCompra = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraOrdemCompra = CondicaoPgtoRecebIdent
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcompraordemcompraitem
DELIMITER //
CREATE PROCEDURE `SpConsultatbcompraordemcompraitem`(
IN 
tbCompraOrdemCompraIdentFkCompraOrdemCompraItem Int(11), 
tbCompraOrdemCompraItemSeq Int(3), 
tbCompraRequisItemIdentFkCompraOrdemCompraItem Int(11), 
tbProdutoEmpresaIdentFkCompraOrdemCompraItem Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbCompraOrdemCompraIdentFkCompraOrdemCompraItem != '')  && (tbCompraOrdemCompraItemSeq != '')) Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = tbCompraOrdemCompraIdentFkCompraOrdemCompraItem
    And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif;
  ElseIf 
    tbCompraRequisItemIdentFkCompraOrdemCompraItem != '' Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraRequisItemIdentFkCompraOrdemCompraItem = tbCompraRequisItemIdentFkCompraOrdemCompraItem
    And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif;
  ElseIf 
    tbProdutoEmpresaIdentFkCompraOrdemCompraItem != '' Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where ProdutoEmpresaIdentFkCompraOrdemCompraItem = tbProdutoEmpresaIdentFkCompraOrdemCompraItem
    And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
        CompraOrdemCompraIdentFkCompraOrdemCompraItem,
          PessoaIdentFornecFkCompraOrdemCompra,
            (Select PessoaCod From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaCodFornec,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
             Where PessoaIdent =  PessoaIdentFornecFkCompraOrdemCompra) As PessoaNomeRazaoSocialFornec,             
      CompraOrdemCompraItemSeq,
        CompraRequisItemIdentFkCompraOrdemCompraItem,
      CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
      CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
        ProdutoEmpresaIdentFkCompraOrdemCompraItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraOrdemCompraItemQtde,
        UnidMedidaIdentifFkCompraOrdemCompraItem,
      CompraOrdemCompraItemPreco,
      CompraOrdemCompraItemObs,
      CompraOrdemCompraItemDtCanc
    From tbcompraordemcompraitem,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida,
    tbcompraordemcompra
    Where CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq
    And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
    And CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
    And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcompraprior
DELIMITER //
CREATE PROCEDURE `SpConsultatbcompraprior`(
IN 
tbCompraPriorIdent Int(11), 
tbCompraPriorCod VarChar(20), 
tbCompraPriorDescr VarChar(200),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraPriorIdent != '' Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Where CompraPriorIdent = tbCompraPriorIdent;
  ElseIf 
    tbCompraPriorCod != '' Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Where CompraPriorCod = tbCompraPriorCod;
  ElseIf 
    tbCompraPriorDescr != '' Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Where CompraPriorDescr = tbCompraPriorDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraPriorIdent,
      CompraPriorCod,
      CompraPriorDescr,
      CompraPriorExcluido
    From tbcompraprior
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprarequisitem
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprarequisitem`(
IN 
tbCompraRequisItemIdent Int(11), 
tbCompraSolicitItemIdentFkCompraRequisItem Int(11), 
tbProdutoEmpresaIdentFkCompraRequisItem Int(11), 
tbPessoaIdentFornecSugerFkCompraRequisItem Int(11),  
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraRequisItemIdent != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraRequisItemIdent = tbCompraRequisItemIdent
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf 
    tbCompraSolicitItemIdentFkCompraRequisItem != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = tbCompraSolicitItemIdentFkCompraRequisItem
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf 
    tbProdutoEmpresaIdentFkCompraRequisItem != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where ProdutoEmpresaIdentFkCompraRequisItem = tbProdutoEmpresaIdentFkCompraRequisItem
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf 
    tbPessoaIdentFornecSugerFkCompraRequisItem != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where PessoaIdentFornecSugerFkCompraRequisItem = tbPessoaIdentFornecSugerFkCompraRequisItem
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprarequisitemaprov
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprarequisitemaprov`(
IN 
tbCompraRequisItemAprovIdent Int(11), 
tbCompraRequisItemIdentFkCompraRequisItemAprov Int(11), 
tbPessoaIdentAprovFkCompraRequisItemAprov Int(11), 
tbPessoaIdentFornecFkCompraRequisItemAprov  Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraRequisItemAprovIdent != '' Then
    Select 
      CompraRequisItemAprovIdent, 
        CompraRequisItemIdentFkCompraRequisItemAprov,
          ProdutoEmpresaIdentFkCompraRequisItem,
          ProdutoCod,
          ProdutoDescr,
        CompraRequisItemCotacaoIdentFkCompraRequisItemAprov,
        PessoaIdentAprovFkCompraRequisItemAprov,
          PessoaCod As PessoaCodAprovador,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprovador,
        PessoaIdentFornecFkCompraRequisItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa
           Where PessoaIdent = PessoaIdentFornecFkCompraRequisItemAprov) As PessoaCodFornec,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
           Where PessoaIdent = PessoaIdentFornecFkCompraRequisItemAprov) As PessoaNomeRazaoSocialFornec,
      CompraRequisItemAprovDtAprov, 
      CompraRequisItemAprovQtde,
      CompraRequisItemAprovPreco,
      CompraRequisItemAprovFrete,
      CompraRequisItemAprovFreteVlr,
          CondicaoPgtoRecebIdentFkCompraRequisItemAprov,
            CondicaoPgtoRecebCod,
            CondicaoPgtoRecebDescr,
      CompraRequisItemAprovDtCanc
    From tbcomprarequisitemaprov,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where CompraRequisItemAprovIdent = tbCompraRequisItemAprovIdent
    And CompraRequisItemIdentFkCompraRequisItemAprov = CompraRequisItemIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentAprovFkCompraRequisItemAprov = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraRequisItemAprov = CondicaoPgtoRecebIdent;
  ElseIf 
    tbCompraRequisItemIdentFkCompraRequisItemAprov != '' Then
    Select 
      CompraRequisItemAprovIdent, 
        CompraRequisItemIdentFkCompraRequisItemAprov,
          ProdutoEmpresaIdentFkCompraRequisItem,
          ProdutoCod,
          ProdutoDescr,
        CompraRequisItemCotacaoIdentFkCompraRequisItemAprov,
        PessoaIdentAprovFkCompraRequisItemAprov,
          PessoaCod As PessoaCodAprovador,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprovador,
        PessoaIdentFornecFkCompraRequisItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa
           Where PessoaIdent = PessoaIdentFornecFkCompraRequisItemAprov) As PessoaCodFornec,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa
           Where PessoaIdent = PessoaIdentFornecFkCompraRequisItemAprov) As PessoaNomeRazaoSocialFornec,
      CompraRequisItemAprovDtAprov, 
      CompraRequisItemAprovQtde,
      CompraRequisItemAprovPreco,
      CompraRequisItemAprovFrete,
      CompraRequisItemAprovFreteVlr,
          CondicaoPgtoRecebIdentFkCompraRequisItemAprov,
            CondicaoPgtoRecebCod,
            CondicaoPgtoRecebDescr,
      CompraRequisItemAprovDtCanc
    From tbcomprarequisitemaprov,
    tbcomprarequisitem,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where CompraRequisItemIdentFkCompraRequisItemAprov = tbCompraRequisItemIdentFkCompraRequisItemAprov
    And CompraRequisItemIdentFkCompraRequisItemAprov = CompraRequisItemIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentAprovFkCompraRequisItemAprov = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraRequisItemAprov = CondicaoPgtoRecebIdent;
  ElseIf 
    tbPessoaIdentAprovFkCompraRequisItemAprov != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where PessoaIdentAprovFkCompraRequisItemAprov = tbPessoaIdentAprovFkCompraRequisItemAprov
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf 
    tbPessoaIdentFornecFkCompraRequisItemAprov != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where PessoaIdentFornecFkCompraRequisItemAprov = tbPessoaIdentFornecFkCompraRequisItemAprov
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;    
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;  
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprarequisitemcotacao
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprarequisitemcotacao`(
IN 
tbCompraRequisItemCotacaoIdent Int(11), 
tbCompraRequisItemIdentFkCompraRequisItemCotacao Int(11), 
tbPessoaIdentFornecRequisFkCompraRequisItemCotacao Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraRequisItemCotacaoIdent != '' Then
    Select 
      CompraRequisItemCotacaoIdent, 
        CompraRequisItemIdentFkCompraRequisItemCotacao,
          ProdutoEmpresaIdentFkCompraRequisItem,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraRequisItem
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCod,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraRequisItem
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescr,             
        PessoaIdentFornecRequisFkCompraRequisItemCotacao,
          PessoaCod as PessoaCodFornecCotacao,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornecCotacao,
      CompraRequisItemCotacaoQtde,
      CompraRequisItemCotacaoDtCotacao, 
      CompraRequisItemCotacaoDtValid,
      CompraRequisItemCotacaoPreco,
        CondicaoPgtoRecebIdentFkCompraRequisItemCotacao,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraRequisItemCotacaoPrazoEntrDias,
      CompraRequisItemCotacaoFrete,        
      CompraRequisItemCotacaoObs,
      CompraRequisItemCotacaoDocto,
      CompraRequisItemCotacaoDtCanc
    From tbcomprarequisitemcotacao,
    tbcomprarequisitem,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where CompraRequisItemCotacaoIdent = tbCompraRequisItemCotacaoIdent
    And CompraRequisItemIdentFkCompraRequisItemCotacao = CompraRequisItemIdent
    And PessoaIdentFornecRequisFkCompraRequisItemCotacao = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraRequisItemCotacao = CondicaoPgtoRecebIdent;
  ElseIf 
    tbCompraRequisItemIdentFkCompraRequisItemCotacao != '' Then
    Select 
      CompraRequisItemCotacaoIdent, 
        CompraRequisItemIdentFkCompraRequisItemCotacao,
          ProdutoEmpresaIdentFkCompraRequisItem,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraRequisItem
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCod,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraRequisItem
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescr,             
        PessoaIdentFornecRequisFkCompraRequisItemCotacao,
          PessoaCod as PessoaCodFornecCotacao,
          PessoaNomeRazaoSocial As PessoaNomeRazaoSocialFornecCotacao,
      CompraRequisItemCotacaoQtde,
      CompraRequisItemCotacaoDtCotacao, 
      CompraRequisItemCotacaoDtValid,
      CompraRequisItemCotacaoPreco,
        CondicaoPgtoRecebIdentFkCompraRequisItemCotacao,
          CondicaoPgtoRecebCod,
          CondicaoPgtoRecebDescr,
      CompraRequisItemCotacaoPrazoEntrDias,
      CompraRequisItemCotacaoFrete,        
      CompraRequisItemCotacaoObs,
      CompraRequisItemCotacaoDocto,
      CompraRequisItemCotacaoDtCanc
    From tbcomprarequisitemcotacao,
    tbcomprarequisitem,
    evomodadm.tbpessoa,
    evomodadm.tbcondicaopgtoreceb
    Where CompraRequisItemIdentFkCompraRequisItemCotacao = tbCompraRequisItemIdentFkCompraRequisItemCotacao
    And CompraRequisItemIdentFkCompraRequisItemCotacao = CompraRequisItemIdent
    And PessoaIdentFornecRequisFkCompraRequisItemCotacao = PessoaIdent
    And CondicaoPgtoRecebIdentFkCompraRequisItemCotacao = CondicaoPgtoRecebIdent;
  ElseIf 
    tbPessoaIdentFornecRequisFkCompraRequisItemCotacao != '' Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where PessoaIdentFornecRequisFkCompraRequisItemCotacao = tbPessoaIdentFornecRequisFkCompraRequisItemCotacao
    And CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraRequisItemIdent, 
        CompraSolicitItemIdentFkCompraRequisItem,
          PessoaCod,
          PessoaNomeRazaoSocial,
        ProdutoEmpresaIdentFkCompraRequisItem, 
          ProdutoCod,
          ProdutoDescr,
      CompraRequisItemDtEmis,
      CompraRequisItemQtde,
      CompraRequisItemQtdeMin,        
        UnidMedidaIdentifFkCompraRequisItem,
          UnidMedidaAbrev,
          UnidMedidaNome,
        PessoaIdentFornecSugerFkCompraRequisItem,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,          
      CompraRequisItemPrecoSuger,
      CompraRequisItemPrecoSugerMax,
      CompraRequisItemDtEntrMax,
      CompraRequisItemFornecSugerJustif,
      CompraRequisItemDtCanc
    From tbcomprarequisitem,
         tbcomprasolicititem,
         tbcomprasolicit,
         evomodadm.tbpessoa,
         evomodadm.tbprodutoempresa,
         evomodadm.tbproduto,
         evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
    And CompraSolicitIdentFkCompraSolicitItem = CompraSolicitIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprasolicit
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprasolicit`(
IN 
tbCompraSolicitIdent Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraSolicitIdent != '' Then
    Select 
      CompraSolicitIdent, 
      CompraSolicitDtEmis,
      CompraSolicitFlag,
        CompraPriorIdentFkCompraSolicit,
          CompraPriorCod,
          CompraPriorDescr,
        PessoaIdentFkCompraSolicit,
          PessoaCod,
          PessoaNomeRazaoSocial,
      CompraSolicitObs,
      CompraSolicitVlrTotal,
      CompraSolicitDtCanc
    From tbcomprasolicit,
    tbcompraprior,
    evomodadm.tbpessoa
    Where CompraSolicitIdent = tbCompraSolicitIdent
    And CompraPriorIdent = CompraPriorIdentFkCompraSolicit
    And PessoaIdent = PessoaIdentFkCompraSolicit;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraSolicitIdent, 
      CompraSolicitDtEmis,
      CompraSolicitFlag,
        CompraPriorIdentFkCompraSolicit,
          CompraPriorCod,
          CompraPriorDescr,
        PessoaIdentFkCompraSolicit,
          PessoaCod,
          PessoaNomeRazaoSocial,
      CompraSolicitObs,
      CompraSolicitVlrTotal,
      CompraSolicitDtCanc
    From tbcomprasolicit,
    tbcompraprior,
    evomodadm.tbpessoa
    Where CompraPriorIdent = CompraPriorIdentFkCompraSolicit
    And PessoaIdent = PessoaIdentFkCompraSolicit;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraSolicitIdent, 
      CompraSolicitDtEmis,
      CompraSolicitFlag,
        CompraPriorIdentFkCompraSolicit,
          CompraPriorCod,
          CompraPriorDescr,
        PessoaIdentFkCompraSolicit,
          PessoaCod,
          PessoaNomeRazaoSocial,
      CompraSolicitObs,
      CompraSolicitVlrTotal,
      CompraSolicitDtCanc
    From tbcomprasolicit,
    tbcompraprior,
    evomodadm.tbpessoa
    Where CompraPriorIdent = CompraPriorIdentFkCompraSolicit
    And PessoaIdent = PessoaIdentFkCompraSolicit
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraSolicitIdent, 
      CompraSolicitDtEmis,
      CompraSolicitFlag,
        CompraPriorIdentFkCompraSolicit,
          CompraPriorCod,
          CompraPriorDescr,
        PessoaIdentFkCompraSolicit,
          PessoaCod,
          PessoaNomeRazaoSocial,
      CompraSolicitObs,
      CompraSolicitVlrTotal,
      CompraSolicitDtCanc
    From tbcomprasolicit,
    tbcompraprior,
    evomodadm.tbpessoa
    Where CompraPriorIdent = CompraPriorIdentFkCompraSolicit
    And PessoaIdent = PessoaIdentFkCompraSolicit
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraSolicitIdent, 
      CompraSolicitDtEmis,
      CompraSolicitFlag,
        CompraPriorIdentFkCompraSolicit,
          CompraPriorCod,
          CompraPriorDescr,
        PessoaIdentFkCompraSolicit,
          PessoaCod,
          PessoaNomeRazaoSocial,
      CompraSolicitObs,
      CompraSolicitVlrTotal,
      CompraSolicitDtCanc
    From tbcomprasolicit,
    tbcompraprior,
    evomodadm.tbpessoa
    Where CompraPriorIdent = CompraPriorIdentFkCompraSolicit
    And PessoaIdent = PessoaIdentFkCompraSolicit
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprasolicititem
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprasolicititem`(
IN 
tbCompraSolicitItemIdent Int(11), 
tbCompraSolicitIdentFkCompraSolicitItem Int(11), 
tbProdutoEmpresaIdentFkCompraSolicitItem Int(11), 
tbPessoaIdentFornecSugerFkCompraSolicitItem Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraSolicitItemIdent != '' Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitItemIdent = tbCompraSolicitItemIdent
    And CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif;
  ElseIf 
    tbCompraSolicitIdentFkCompraSolicitItem != '' Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitIdentFkCompraSolicitItem = tbCompraSolicitIdentFkCompraSolicitItem
    And CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif;
  ElseIf 
    tbProdutoEmpresaIdentFkCompraSolicitItem != '' Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where ProdutoEmpresaIdentFkCompraSolicitItem = tbProdutoEmpresaIdentFkCompraSolicitItem
    And CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif;
  ElseIf 
    tbProdutoEmpresaIdentFkCompraSolicitItem != '' Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where PessoaIdentFornecSugerFkCompraSolicitItem = tbPessoaIdentFornecSugerFkCompraSolicitItem
    And CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CompraSolicitItemIdent, 
        CompraSolicitIdentFkCompraSolicitItem,
          PessoaCod,
          PessoaNomeRazaoSocial
        ProdutoEmpresaIdentFkCompraSolicitItem,
          ProdutoCod,
          ProdutoDescr,
      CompraSolicitItemQtde,
      CompraSolicitItemQtdeMinima,
          UnidMedidaIdentifFkCompraSolicitItem,
            UnidMedidaAbrev,
            UnidMedidaNome,
      CompraSolicitItemDtEntrDes,
      CompraSolicitItemDtEntrMax,
          PessoaIdentFornecSugerFkCompraSolicitItem,
            (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoCodFornecSuger,
            (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItem) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemPrecoSuger,
      CompraSolicitItemPrecoSugerMax,
      CompraSolicitItemFornecSugerJustif,
      CompraSolicitItemDtCanc
    From tbcomprasolicititem,
    tbcomprasolicit,
    evomodadm.tbpessoa,
    evomodadm.tbprodutoempresa,
    evomodadm.tbproduto,
    evomodadm.tbunidmedida
    Where CompraSolicitIdent = CompraSolicitIdentFkCompraSolicitItem
    And ProdutoEmpresaIdentFkCompraSolicitItem = ProdutoEmpresaIdent
    And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
    And PessoaIdentFkCompraSolicit = PessoaIdent
    And UnidMedidaIdentifFkCompraSolicitItem = UnidMedidaIdentif
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprasolicititemaprov
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprasolicititemaprov`(
IN 
tbCompraSolicitItemIdentFkCompraSolicitItemAprov Int(11), 
tbPessoaIdentAprovFkCompraSolicitItemAprov Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCompraSolicitItemIdentFkCompraSolicitItemAprov != '' Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdentFkCompraSolicitItemAprov
    And PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent;
  ElseIf 
    tbPessoaIdentAprovFkCompraSolicitItemAprov != '' Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraSolicitItemAprov = tbPessoaIdentAprovFkCompraSolicitItemAprov
    And PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemAprov, 
        PessoaIdentAprovFkCompraSolicitItemAprov,
          PessoaCod, 
          PessoaNomeRazaoSocial,
      CompraSolicitItemAprovDtAprov,
      CompraSolicitItemAprovQtde,        
        PessoaIdentFornecSugerFkCompraSolicitItemAprov,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaCodFornecSuger,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFornecSugerFkCompraSolicitItemAprov) As PessoaNomeRazaoSocialFornecSuger,
      CompraSolicitItemAprovPrecoSuger,
      CompraSolicitItemAprovPrecoSugerMax,
      CompraSolicitItemAprovFornecSugerJustif,
      CompraSolicitItemAprovDtCanc
    From tbcomprasolicititemaprov,
         evomodadm.tbpessoa
    Where PessoaIdentAprovFkCompraSolicitItemAprov = PessoaIdent
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcomprasolicititemmaterremessa
DELIMITER //
CREATE PROCEDURE `SpConsultatbcomprasolicititemmaterremessa`(
IN 
tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa Int(11), 
tbCompraSolicitItemMaterRemessaSeq Int(3), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa != '') &&  (tbCompraSolicitItemMaterRemessaSeq != '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa
    And CompraSolicitItemMaterRemessaSeq = tbCompraSolicitItemMaterRemessaSeq
    And UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa;
  ElseIf 
    tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa != '' Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa
    And UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
        CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, 
      CompraSolicitItemMaterRemessaSeq,
          ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa,
            (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCodRemessa,
            (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa 
             Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
             And ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescrRemessa,           
      CompraSolicitItemMaterRemessaCod
      CompraSolicitItemMaterRemessaDescr,
      CompraSolicitItemMaterRemessaQtde,
          UnidMedidaIdentifFkCompraSolicitItemMaterRemessa,
      CompraSolicitItemMaterRemessaObs,
      CompraSolicitItemMaterRemessaDtCanc
    From tbcomprasolicititemmaterremessa,
    evomodadm.tbunidmedida
    Where UnidMedidaIdentif = UnidMedidaIdentifFkCompraSolicitItemMaterRemessa
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcrt
DELIMITER //
CREATE PROCEDURE `SpConsultatbcrt`(
IN 
tbCRTCod SmallInt(1),
tbCRTDescr VarChar(300),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCRTCod != '' Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt
    Where CRTCod = tbCRTCod;
  ElseIf 
    tbCRTDescr != '' Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt
    Where CRTDescr = tbCRTDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CRTCod,
      CRTDescr,
      CRTFlagAtivo
    From tbcrt
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbcst
DELIMITER //
CREATE PROCEDURE `SpConsultatbcst`(
IN 
tbCSTIdent Int(11),
tbCSTCod VarChar(3),
tbCSTDescr VarChar(300),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCSTIdent != '' Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Where CSTIdent = tbCSTIdent;
  ElseIf 
    tbCSTCod != '' Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Where CSTCod = tbCSTCod;
  ElseIf 
    tbCSTDescr != '' Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Where CSTDescr = tbCSTDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CSTIdent,
      CSTCod,
      CSTDescr,
      CSTTribIntegral,
      CSTFlagIPI,
      CSTFlagICMS,
      CSTFlagPIS,
      CSTFlagCOFINS,
      CSTFlagSimpNac,
      CSTFlagAtivo
    From tbcst
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbctapagar
DELIMITER //
CREATE PROCEDURE `SpConsultatbctapagar`(
IN 
tbCtaPagarIdent Int(11),
tbEmpresaIdentFkCtaPagar Int(11),
tbPessoaIdentFkCtaPagar Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCtaPagarIdent != '' Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Where CtaPagarIdent = tbCtaPagarIdent;
  ElseIf
   tbEmpresaIdentFkCtaPagar != '' Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Where EmpresaIdentFkCtaPagar = tbEmpresaIdentFkCtaPagar;
  ElseIf
   tbPessoaIdentFkCtaPagar != '' Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Where PessoaIdentFkCtaPagar = tbPessoaIdentFkCtaPagar;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    CtaPagarIdent,
      EmpresaIdentFkCtaPagar,
        (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaCod,
        (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkCtaPagar) As  EmpresaRazaoSocial,        
      PessoaIdentFkCtaPagar,
        (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaCod,
        (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkCtaPagar) As PessoaNomeRazaoSocial,        
    CtaPagarDtIncl,
    CtaPagarDtLiquidacao,
    CtaPagarDtCancel,
    CtaPagarDtRenegoc,
      NFEEntradaIdentFkCtaPagar,
    CtaPagarOrigemDocto,
      CondicaoPgtoRecebIdentFkCtaPagar,
        (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
        (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,        
    CtaPagarQtdeParc,
    CtaPagarVlrParc,
    CtaPagarVlrTot,
    CtaPagarMultaPerc,
    CtaPagarMultaVlrTot,
    CtaPagarJuroPerc,
    CtaPagarJuroVlrTot,
    CtaPagarDescPerc,
    CtaPagarDescVlrTot,
    CtaPagarPgtoVlrTot,
    CtaPagarFlagStatus,
    CtaPagarFlagStatusAprov,
    CtaPagarObs,
    CtaPagarFlagAtivo
    From tbctapagar
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbctapagaritem
DELIMITER //
CREATE PROCEDURE `SpConsultatbctapagaritem`(
IN 
tbCtaPagarIdentFkCtaPagarItem Int(11),
tbCtaPagarItemNrParc Int(5),
tbCtaPagarItemDtVcto Date,
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbCtaPagarIdentFkCtaPagarItem != '' Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem;
  ElseIf
   ((tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '')) Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
    And CtaPagarItemNrParc = tbCtaPagarItemNrParc;
  ElseIf
   tbCtaPagarItemDtVcto != '' Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Where CtaPagarItemDtVcto = tbCtaPagarItemDtVcto;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      CtaPagarIdentFkCtaPagarItem,
    CtaPagarItemNrParc,
    CtaPagarItemCodBarra,
    CtaPagarItemDtVcto,
    CtaPagarItemDtPgto,
    CtaPagarItemDtCancel,
    CtaPagarItemDtRenegoc,
    CtaPagarItemVlParc,
    CtaPagarItemMultaPerc,
    CtaPagarItemJuroPerc,
    CtaPagarItemDescPerc,
    CtaPagarItemDescVlrVcto,
    CtaPagarItemFlagStatus,
    CtaPagarItemObs,
    CtaPagarItemFlagAtivo
    From tbctapagaritem
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbdoctofiscal
DELIMITER //
CREATE PROCEDURE `SpConsultatbdoctofiscal`(
IN 
tbDoctoFiscalIdent Int(11),
tbDoctoFiscalCod VarChar(20), 
tbDoctoFiscalDescr VarChar(300),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbDoctoFiscalIdent != '' Then
    Select 
      DoctoFiscalIdent,
      DoctoFiscalCod,
      DoctoFiscalDescr,
      DoctoFiscalAtivo
    From tbdoctofiscal
    Where DoctoFiscalIdent = tbDoctoFiscalIdent;
  ElseIf 
    tbDoctoFiscalCod != '' Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Where DoctoFiscalCod = tbDoctoFiscalCod;
  ElseIf 
    tbDoctoFiscalDescr != '' Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Where DoctoFiscalDescr = tbDoctoFiscalDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      ClassifServicoCod,
      ClassifServicoDescr,
      ClassifServicoFlagAtivo
    From tbclassifservico
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbestoquemov
DELIMITER //
CREATE PROCEDURE `SpConsultatbestoquemov`(
IN 
tbProdutoEmpresaIdentFkEstoqueMov Int(11), 
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbProdutoEmpresaIdentFkEstoqueMov = null) or (tbProdutoEmpresaIdentFkEstoqueMov = '')) Then
      set tbProdutoEmpresaIdentFkEstoqueMov = 0;
  End If;  
  If ((tbInicio = null) or (tbInicio = '')) Then
      set tbInicio = 0;
  End If;      
  If ((tbQtde = null) or (tbQtde = '')) Then
      set tbQtde = 0;
  End If;  

  If tbProdutoEmpresaIdentFkEstoqueMov != 0 Then
    Select 
        em.ProdutoEmpresaIdentFkEstoqueMov,
          p.ProdutoCod,
          p.ProdutoDescr,
          emp.EmpresaCod,
          emp.EmpresaRazaoSocial,
        em.EstoqueTpMovCodFkEstoqueMov,
          etpm.EstoqueTpMovDescr,
          etpm.EstoqueTpMovEntSai,
          etpm.EstoqueTpMovEntSaiDet,
      em.ServerIdent, 
      em.EstoqueMovData,
      em.EstoqueMovQtde,
      em.EstoqueMovVlr,
      em.EstoqueMovDoctoOrigTp,
      em.EstoqueMovDoctoOrigNr
    From evomodmat.tbestoquemov em,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp,
         evomodmat.tbestoquetpmov etpm
    Where em.ProdutoEmpresaIdentFkEstoqueMov = tbProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoEmpresaIdent = em.ProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And em.EstoqueTpMovCodFkEstoqueMov = etpm.EstoqueTpMovCod;
  ElseIf
   ((tbInicio = 0) && (tbQtde = 0)) Then
    Select 
        em.ProdutoEmpresaIdentFkEstoqueMov,
          p.ProdutoCod,
          p.ProdutoDescr,
          emp.EmpresaCod,
          emp.EmpresaRazaoSocial,
        em.EstoqueTpMovCodFkEstoqueMov,
          etpm.EstoqueTpMovDescr,
          etpm.EstoqueTpMovEntSai,
          etpm.EstoqueTpMovEntSaiDet,
      em.ServerIdent, 
      em.EstoqueMovData,
      em.EstoqueMovQtde,
      em.EstoqueMovVlr,
      em.EstoqueMovDoctoOrigTp,
      em.EstoqueMovDoctoOrigNr
    From evomodmat.tbestoquemov em,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp,
         evomodmat.tbestoquetpmov etpm
    Where pe.ProdutoEmpresaIdent = em.ProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And em.EstoqueTpMovCodFkEstoqueMov = etpm.EstoqueTpMovCod;
  ElseIf
     ((tbInicio != 0) && (tbQtde = 0)) Then
    Select 
        em.ProdutoEmpresaIdentFkEstoqueMov,
          p.ProdutoCod,
          p.ProdutoDescr,
          emp.EmpresaCod,
          emp.EmpresaRazaoSocial,
        em.EstoqueTpMovCodFkEstoqueMov,
          etpm.EstoqueTpMovDescr,
          etpm.EstoqueTpMovEntSai,
          etpm.EstoqueTpMovEntSaiDet,
      em.ServerIdent, 
      em.EstoqueMovData,
      em.EstoqueMovQtde,
      em.EstoqueMovVlr,
      em.EstoqueMovDoctoOrigTp,
      em.EstoqueMovDoctoOrigNr
    From evomodmat.tbestoquemov em,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp,
         evomodmat.tbestoquetpmov etpm
    Where pe.ProdutoEmpresaIdent = em.ProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And em.EstoqueTpMovCodFkEstoqueMov = etpm.EstoqueTpMovCod
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = 0) && (tbQtde != 0)) Then
    Select 
        em.ProdutoEmpresaIdentFkEstoqueMov,
          p.ProdutoCod,
          p.ProdutoDescr,
          emp.EmpresaCod,
          emp.EmpresaRazaoSocial,
        em.EstoqueTpMovCodFkEstoqueMov,
          etpm.EstoqueTpMovDescr,
          etpm.EstoqueTpMovEntSai,
          etpm.EstoqueTpMovEntSaiDet,
      em.ServerIdent, 
      em.EstoqueMovData,
      em.EstoqueMovQtde,
      em.EstoqueMovVlr,
      em.EstoqueMovDoctoOrigTp,
      em.EstoqueMovDoctoOrigNr
    From evomodmat.tbestoquemov em,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp,
         evomodmat.tbestoquetpmov etpm
    Where pe.ProdutoEmpresaIdent = em.ProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And em.EstoqueTpMovCodFkEstoqueMov = etpm.EstoqueTpMovCod
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != 0) && (tbQtde != 0)) Then
    Select 
        em.ProdutoEmpresaIdentFkEstoqueMov,
          p.ProdutoCod,
          p.ProdutoDescr,
          emp.EmpresaCod,
          emp.EmpresaRazaoSocial,
        em.EstoqueTpMovCodFkEstoqueMov,
          etpm.EstoqueTpMovDescr,
          etpm.EstoqueTpMovEntSai,
          etpm.EstoqueTpMovEntSaiDet,
      em.ServerIdent, 
      em.EstoqueMovData,
      em.EstoqueMovQtde,
      em.EstoqueMovVlr,
      em.EstoqueMovDoctoOrigTp,
      em.EstoqueMovDoctoOrigNr
    From evomodmat.tbestoquemov em,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp,
         evomodmat.tbestoquetpmov etpm
    Where pe.ProdutoEmpresaIdent = em.ProdutoEmpresaIdentFkEstoqueMov
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And em.EstoqueTpMovCodFkEstoqueMov = etpm.EstoqueTpMovCod
    Limit tbInicio, tbQtde;      
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbestoquesaldo
DELIMITER //
CREATE PROCEDURE `SpConsultatbestoquesaldo`(
IN 
tbProdutoEmpresaIdentFkEstoqueSaldo Int(11), 
tbEmpresaIdent Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbProdutoEmpresaIdentFkEstoqueSaldo = null) or (tbProdutoEmpresaIdentFkEstoqueSaldo = '')) Then
      set tbProdutoEmpresaIdentFkEstoqueSaldo = 0;
  End If;  
  If ((tbEmpresaIdent = null) or (tbEmpresaIdent = '')) Then
      set tbEmpresaIdent = 0;
  End If;      
  If ((tbInicio = null) or (tbInicio = '')) Then
      set tbInicio = 0;
  End If;      
  If ((tbQtde = null) or (tbQtde = '')) Then
      set tbQtde = 0;
  End If;    
  If tbProdutoEmpresaIdentFkEstoqueSaldo != 0 Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where es.ProdutoEmpresaIdentFkEstoqueSaldo = tbProdutoEmpresaIdentFkEstoqueSaldo
    And pe.ProdutoEmpresaIdent = es.ProdutoEmpresaIdentFkEstoqueSaldo
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent;
  ElseIf
    tbEmpresaIdent != 0 Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where pe.EmpresaIdentFkProdutoEmpresa = tbEmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = es.ProdutoEmpresaIdentFkEstoqueSaldo;
  ElseIf
   ((tbInicio = 0) && (tbQtde = 0)) Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = es.ProdutoEmpresaIdentFkEstoqueSaldo;
  ElseIf
     ((tbInicio != 0) && (tbQtde = 0)) Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = es.ProdutoEmpresaIdentFkEstoqueSaldo
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = 0) && (tbQtde != 0)) Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = es.ProdutoEmpresaIdentFkEstoqueSaldo
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != 0) && (tbQtde != 0)) Then
    Select 
        es.ProdutoEmpresaIdentFkEstoqueSaldo,
        p.ProdutoCod,
        p.ProdutoDescr,
        emp.EmpresaCod,
        emp.EmpresaRazaoSocial,
      es.EstoqueSaldoQtdeEnt,
      es.EstoqueSaldoQtdeSai,
      es.EstoqueSaldoEmpenho,
      es.EstoqueSaldoReserva,
      es.EstoqueSaldoAtual
    From evomodmat.tbestoquesaldo es,
         evomodadm.tbprodutoempresa pe,
         evomodadm.tbproduto p,
         evomodadm.tbempresa emp
    Where pe.ProdutoIdentFkProdutoEmpresa = p.ProdutoIdent
    And pe.EmpresaIdentFkProdutoEmpresa = emp.EmpresaIdent
    And pe.ProdutoIdentFkProdutoEmpresa = es.ProdutoEmpresaIdentFkEstoqueSaldo
    Limit tbInicio, tbQtde;      
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbestoquetpmov
DELIMITER //
CREATE PROCEDURE `SpConsultatbestoquetpmov`(
IN 
tbEstoqueTpMovCod VarChar(20), 
tbEstoqueTpMovEntSai Char(1),
tbEstoqueTpMovEntSaiDet VarChar(2),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If ((tbEstoqueTpMovCod = null) or (tbEstoqueTpMovCod = '')) Then
      set tbEstoqueTpMovCod = '';
  End If;  
  If ((tbEstoqueTpMovEntSai = null) or (tbEstoqueTpMovEntSai = '')) Then
      set tbEstoqueTpMovEntSai = '';
  End If;      
  If ((tbEstoqueTpMovEntSaiDet = null) or (tbEstoqueTpMovEntSaiDet = '')) Then
      set tbEstoqueTpMovEntSaiDet = '';
  End If;   
  If ((tbInicio = null) or (tbInicio = '')) Then
      set tbInicio = 0;
  End If;      
  If ((tbQtde = null) or (tbQtde = '')) Then
      set tbQtde = 0;
  End If;    
  
  If tbEstoqueTpMovCod != '' Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovCod = tbEstoqueTpMovCod
    And EstoqueTpMovExcluido Is Null;
  ElseIf
    tbEstoqueTpMovEntSai != '' Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovEntSai = tbEstoqueTpMovEntSai
    And EstoqueTpMovExcluido Is Null;
  ElseIf
    tbEstoqueTpMovEntSaiDet != '' Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovEntSaiDet = tbEstoqueTpMovEntSaiDet
    And EstoqueTpMovExcluido Is Null;    
  ElseIf
   ((tbInicio = 0) && (tbQtde = 0)) Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovExcluido Is Null;   
  ElseIf
     ((tbInicio != 0) && (tbQtde = 0)) Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovExcluido Is Null
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = 0) && (tbQtde != 0)) Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovExcluido Is Null
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != 0) && (tbQtde != 0)) Then
    Select 
      EstoqueTpMovCod,
      EstoqueTpMovDescr,
      EstoqueTpMovEntSai,
      EstoqueTpMovEntSaiDet,
      EstoqueTpMovFlagCusto,
      EstoqueTpMovFlagSaldo,
      EstoqueTpMovFlagAutom,
      EstoqueTpMovExcluido
    From tbestoquetpmov
    Where EstoqueTpMovExcluido Is Null
    Limit tbInicio, tbQtde;      
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbnaoconformentmat
DELIMITER //
CREATE PROCEDURE `SpConsultatbnaoconformentmat`(
IN 
tbNaoConformEntMatIdent Int(11),
tbTpNaoConformidadeCodFkNaoConformEntMat VarChar(20),
tbCompraOrdemCompraIdentFkNaoConformEntMat Int(11),
tbNFEEntradaIdentFkNaoConformEntMat Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbNaoConformEntMatIdent != '' Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Where NaoConformEntMatIdent = tbNaoConformEntMatIdent;
  ElseIf
   tbTpNaoConformidadeCodFkNaoConformEntMat != '' Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Where NaoConformidadeCodFkNaoConformEntMat = tbNaoConformidadeCodFkNaoConformEntMat;
  ElseIf
   tbCompraOrdemCompraIdentFkNaoConformEntMat != '' Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Where CompraOrdemCompraIdentFkNaoConformEntMat = tbCompraOrdemCompraIdentFkNaoConformEntMat;
  ElseIf
   tbNFEEntradaIdentFkNaoConformEntMat != '' Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Where NFEEntradaIdentFkNaoConformEntMat = tbNFEEntradaIdentFkNaoConformEntMat;    
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    NaoConformEntMatIdent,
      TpNaoConformidadeCodFkNaoConformEntMat,
        (Select TpNaoConformidadeDescr From tbtpnaoconformidade Where TpNaoConformidadeCod = TpNaoConformidadeCodFkNaoConformEntMat) As TpNaoConformidadeDescr,
    NaoConformEntMatDtOcor,
      CompraOrdemCompraIdentFkNaoConformEntMat,
      CompraOrdemCompraItemSeqFkNaoConformEntMat,
      NFEEntradaIdentFkNaoConformEntMat,
      NFEEntradaItemSeqFkNaoConformEntMat,
    NaoConformEntMatObs,
    NaoConformEntMatAcao,
    NaoConformEntMatFlagAtivo
    From tbnaoconformentmat
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbnfeentrada
DELIMITER //
CREATE PROCEDURE `SpConsultatbnfeentrada`(
IN 
tbNFEEntradaIdent Int(11),
tbEmpresaIdentFkNFEEntrada Int(11),
tbPessoaIdentFkNFEEntrada Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbNFEEntradaIdent != '' Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Where NFEEntradaIdent = tbNFEEntradaIdent;
  ElseIf 
    tbEmpresaIdentFkNFEEntrada != '' Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Where EmpresaIdentFkNFEEntrada = tbEmpresaIdentFkNFEEntrada;
  ElseIf 
    tbPessoaIdentFkNFEEntrada != '' Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Where PessoaIdentFkNFEEntrada = tbPessoaIdentFkNFEEntrada;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      NFEEntradaIdent,
        EmpresaIdentFkNFEEntrada,
          (Select EmpresaCod From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaCod,
          (Select EmpresaRazaoSocial From evomodadm.tbempresa Where EmpresaIdent = EmpresaIdentFkNFEEntrada) As EmpresaRazaoSocial,          
        PessoaIdentFkNFEEntrada,
          (Select PessoaCod From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaCod,
          (Select PessoaNomeRazaoSocial From evomodadm.tbpessoa Where PessoaIdent = PessoaIdentFkNFEEntrada) As PessoaNomeRazaoSocial,          
      NFEEntradaPessoaCNPJCPF,
      NFEEntradaPessoaInscrEstad,
        IndicInscEstadIdentFkNFEEntrada,
          (Select IndicInscEstadCod From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadCod,
          (Select IndicInscEstadDescr From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = IndicInscEstadIdentFkNFEEntrada) As IndicInscEstadDescr,          
      NFEEntradaPessoaInscrMunic,
      NFEEntradaPessoaInscrSuframa,
      NFEEntradaPessoaNomeRazaoSocial,
      NFEEntradaPessoaEndereco,
      NFEEntradaPessoaEnderecoNr,
      NFEEntradaPessoaEnderecoCompl,
      NFEEntradaPessoaFoneDDD,
      NFEEntradaPessoaNrFone,
        CEPIdentFkNFEEntrada,
          (Select CEPCod From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPCod,
          (Select CEPBairro From evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada) As CEPBairro,         
          (Select Concat(CidadeNome, '/', EstadoSiglaFkCidade) From evomodadm.tbcidade, evomodadm.tbcep Where CEPIdent = CEPIdentFkNFEEntrada
           And CidadeIdent = EstadoSiglaFkCidade) As "Cidade/UF",                    
        DoctoFiscalIdentFkNFEEntrada,
          (Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalCod,
          (Select DoctoFiscalDescr From tbdoctofiscal Where DoctoFiscalIdent = DoctoFiscalIdentFkNFEEntrada) As DoctoFiscalDescr,          
        CompraOrdemCompraIdentFkNFEEntrada,
      NFEEntradaNr,
      NFEEntradaSerie,
      NFEEntradaChaveEletr,
      NFEEntradaDtEmis,
      NFEEntradaDtEntrega,
        CFOPIdentFkNFEEntrada,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntrada) As CFOPDescr,          
        NFESaidaIdentFkNFEEntrada,
        NFEEntradaPrincFkNFEntrada,
      NFEEntradaProdutoServVlrTot,
      NFEEntradaDescontoVlrTot,
      NFEEntradaAcrescVlrTot,
      NFEEntradaOutrosVlrTot,
      NFEEntradaFreteVlrTot,
      NFEEntradaImpostoVlrTot,
      NFEEntradaSeguroVlrTot,
      NFEEntradaVlrTot,
      NFEEntradaIIVlrTotBase,
      NFEEntradaIIVlrTot,
        CSTIdentIPIFkNFEEntrada,
      NFEEntradaIPIVlrTotBase,
      NFEEntradaIPIVlrTot,
        CSTIdentICMSFkNFEEntrada,
      NFEEntradaICMSVlrTotBase,
      NFEEntradaICMSVlrTot,
        CSTIdentICMSSTFkNFEEntrada,
      NFEEntradaICMSSTVlrTotBase,
      NFEEntradaICMSSTVlrTot,
      NFEEntradaFCPVlrTotBase,
      NFEEntradaFCPVlrTot,
      NFEEntradaFCPSTVlrTotBase,
      NFEEntradaFCPSTVlrTot,
      NFEEntradaFCPSTRetVlrTotBase,
      NFEEntradaFCPSTRetVlrTot,
      NFEEntradaFCPDestVlrTotBase,
      NFEEntradaFCPDestVlrTot,
        CSTIdentPISFkNFEEntrada,
      NFEEntradaPISVlrTotBase,
      NFEEntradaPISVlrTot,
        CSTIdentCOFINSFkNFEEntrada,
      NFEEntradaCOFINSVlrTotBase,
      NFEEntradaCOFINSVlrTot,
      NFEEntradaISSVlrTotBase,
      NFEEntradaISSVlrTot,
      NFEEntradaISSFlagRetido,
      NFEEntradaPISRetVlrTotBase,
      NFEEntradaPISRetVlrTot,
      NFEEntradaCOFINSRetVlrTotBase,
      NFEEntradaCOFINSRetVlrTot,
      NFEEntradaCSLLVlrTotBase,
      NFEEntradaCSLLVlrTot,
      NFEEntradaIRRFVlrTotBase,
      NFEEntradaIRRFVlrTot,
      NFEEntradaIRRFFlagRetido,
      NFEEntradaINSSVlrTotBase,
      NFEEntradaINSSVlrTot,
      NFEEntradaINSSRetVlrTotBase,
      NFEEntradaINSSRetVlrTot,
      NFEEntradaVolumeTot,
      NFEEntradaPesTotBruto,
      NFEEntradaPesTotLiquido,
      NFEEntradaParcQtde,
      NFEEntradaParcVlrUnit,
      NFEEntradaFreteTp,
      NFEEntradaFlagAtivo
    From tbnfeentrada
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbnfeentradaitem
DELIMITER //
CREATE PROCEDURE `SpConsultatbnfeentradaitem`(
IN 
tbNFEEntradaIdentFkNFEEntradaItem Int(11),
tbNFEEntradaItemSeq Int(5),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbNFEEntradaIdentFkNFEEntradaItem != '' Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem
    Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem;
  ElseIf 
    ((tbNFEEntradaIdentFkNFEEntradaItem != '')  && (tbNFEEntradaItemSeq != '')) Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem
    Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem
    And NFEEntradaItemSeq = tbNFEEntradaItemSeq;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
        NFEEntradaIdentFkNFEEntradaItem,
      NFEEntradaItemSeq,
        ProdutoEmpresaIdentFkNFEEntradaItem,
          (Select ProdutoCod From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoCod,
          (Select ProdutoDescr From evomodadm.tbproduto, evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkNFEEntradaItem
           And ProdutoIdent = ProdutoIdentFkProdutoEmpresa) As ProdutoDescr,
      NFEEntradaItemProdutoFornecCod,
        ClassifServicoCodFkNFEEntradaItem,
          (Select ClassifServicoCod From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoCod,
          (Select ClassifServicoDescr From tbclassifservico Where ClassifServicoCod = ClassifServicoCodFkNFEEntradaItem) As ClassifServicoDescr,          
      NFEEntradaItemProdutoServicoFornecDescr,
        NCMIdentFkNFEEntradaItem,
          (Select NCMCod From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMCod,
          (Select NCMDescr From evomodadm.tbncm Where NCMIdent = NCMIdentFkNFEEntradaItem) As NCMDescr,          
        CFOPIdentFkNFEEntradaItem,
          (Select CFOPCod From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPCod,
          (Select CFOPDescr From evomodadm.tbcfop Where CFOPIdent = CFOPIdentFkNFEEntradaItem) As CFOPDescr,           
        OrigMercadoriaCodFkNFEEntradaItem,
          (Select OrigMercadoriaDescr From tborigmercadoria Where OrigMercadoriaCod = OrigMercadoriaCodFkNFEEntradaItem) As OrigMercadoriaDescr,
        CSTIdentFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentFkNFEEntradaItem) As CSTDescr,          
        UnidMedidaIdentifFkNFEEntradaItem,
          (Select UnidMedidaAbrev From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaAbrev,          
          (Select UnidMedidaNome From evomodadm.tbunidmedida Where UnidMedidaIdentif = UnidMedidaIdentifFkNFEEntradaItem) As UnidMedidaNome,          
      NFEEntradaItemUnidMedida,
      NFEEntradaItemQtde,
      NFEEntradaItemProdutoServVlrUnit,
      NFEEntradaItemDescontoVlr,
      NFEEntradaItemAcrescVlr,
      NFEEntradaItemOutrosVlr,
      NFEEntradaItemFreteVlr,
      NFEEntradaItemSeguroVlr,
      NFEEntradaItemProdutoServVlrTot,
      NFEEntradaItemIIVlrTotBase,
      NFEEntradaItemIIPerc,
      NFEEntradaItemIIVlrTot,
        CSTIdentIPIFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentIPIFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemIPIVlrTotBase,
      NFEEntradaItemIPIPerc,
      NFEEntradaItemIPIVlrTot,
        CSTIdentICMSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSFkNFEEntradaItem) As CSTDescr,         
      NFEEntradaItemICMSVlrTotBase,
      NFEEntradaItemICMSPerc,
      NFEEntradaItemICMSVlrTot,
        CSTIdentICMSSTFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentICMSSTFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemICMSSTVlrTotBase,
      NFEEntradaItemICMSSTPerc,
      NFEEntradaItemICMSSTVlrTot,
      NFEEntradaItemFCPVlrTotBase,
      NFEEntradaItemFCPPerc,
      NFEEntradaItemFCPVlrTot,
      NFEEntradaItemFCPSTVlrTotBase,
      NFEEntradaItemFCPSTPerc,
      NFEEntradaItemFCPSTVlrTot,
      NFEEntradaItemFCPSTRetVlrTotBase,
      NFEEntradaItemFCPSTRetPerc,
      NFEEntradaItemFCPSTRetVlrTot,
      NFEEntradaItemFCPDestVlrTotBase,
      NFEEntradaItemFCPDestPerc,
      NFEEntradaItemFCPDestVlrTot,
        CSTIdentPISFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentPISFkNFEEntradaItem) As CSTDescr,              
      NFEEntradaItemPISVlrTotBase,
      NFEEntradaItemPISPerc,
      NFEEntradaItemPISVlrTot,
        CSTIdentCOFINSFkNFEEntradaItem,
          (Select CSTCod From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTCod,
          (Select CSTDescr From tbcst Where CSTIdent = CSTIdentCOFINSFkNFEEntradaItem) As CSTDescr,          
      NFEEntradaItemCOFINSVlrTotBase,
      NFEEntradaItemCOFINSPerc,
      NFEEntradaItemCOFINSVlrTot,
      NFEEntradaItemISSVlrTotBase,
      NFEEntradaItemISSPerc,
      NFEEntradaItemISSVlrTot,
      NFEEntradaItemISSFlagRetido,
      NFEEntradaItemPISRetVlrTotBase,
      NFEEntradaItemPISRetPerc,
      NFEEntradaItemPISRetVlrTot,
      NFEEntradaItemCOFINSRetVlrTotBase,
      NFEEntradaItemCOFINSRetPerc,
      NFEEntradaItemCOFINSRetVlrTot,
      NFEEntradaItemCSLLVlrTotBase,
      NFEEntradaItemCSLLPerc,
      NFEEntradaItemCSLLVlrTot,
      NFEEntradaItemIRRFVlrTotBase,
      NFEEntradaItemIRRFPerc,
      NFEEntradaItemIRRFVlrTot,
      NFEEntradaItemIRRFFlagRetido,
      NFEEntradaItemINSSVlrTotBase,
      NFEEntradaItemINSSPerc,
      NFEEntradaItemINSSVlrTot,
      NFEEntradaItemINSSRetVlrTotBase,
      NFEEntradaItemINSSRetPerc,
      NFEEntradaItemINSSRetVlrTot,
      NFEEntradaItemPesBruto,
      NFEEntradaItemPesLiquido,
      NFEEntradaItemFlagAtivo
    From tbnfeentradaitem
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbnfeentradaxml
DELIMITER //
CREATE PROCEDURE `SpConsultatbnfeentradaxml`(
IN 
tbNFEEntradaIdentFkNFEEntradaXML Int(11),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbNFEEntradaIdentFkNFEEntradaXML != '' Then
    Select 
    NFEEntradaIdentFkNFEEntradaXML,
    NFEEntradaXMLConteudo,
    NFEEntradaXMLFlagAtivo
    From tbnfeentradaxml
    Where NFEEntradaIdentFkNFEEntradaXML = tbNFEEntradaIdentFkNFEEntradaXML;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    NFEEntradaIdentFkNFEEntradaXML,
    NFEEntradaXMLConteudo,
    NFEEntradaXMLFlagAtivo
    From tbnfeentradaxml;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    NFEEntradaIdentFkNFEEntradaXML,
    NFEEntradaXMLConteudo,
    NFEEntradaXMLFlagAtivo
    From tbnfeentradaxml
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    NFEEntradaIdentFkNFEEntradaXML,
    NFEEntradaXMLConteudo,
    NFEEntradaXMLFlagAtivo
    From tbnfeentradaxml
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    NFEEntradaIdentFkNFEEntradaXML,
    NFEEntradaXMLConteudo,
    NFEEntradaXMLFlagAtivo
    From tbnfeentradaxml
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatborigmercadoria
DELIMITER //
CREATE PROCEDURE `SpConsultatborigmercadoria`(
IN 
tbOrigMercadoriaCod SmallInt(1),
tbOrigMercadoriaDescr VarChar(300),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbOrigMercadoriaCod != '' Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria
    Where OrigMercadoriaCod = tbOrigMercadoriaCod;
  ElseIf 
    tbOrigMercadoriaDescr != '' Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria
    Where OrigMercadoriaDescr = tbOrigMercadoriaDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
      OrigMercadoriaCod,
      OrigMercadoriaDescr,
      OrigMercadoriaFlagAtivo
    From tborigmercadoria
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpConsultatbtpnaoconformidade
DELIMITER //
CREATE PROCEDURE `SpConsultatbtpnaoconformidade`(
IN 
tbTpNaoConformidadeCod Int(11),
tbTpNaoConformidadeDescr VarChar(300),
tbInicio Int(11), tbQtde Int(11))
BEGIN
  If tbTpNaoConformidadeCod != '' Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade
    Where TpNaoConformidadeCod = tbTpNaoConformidadeCod;
  ElseIf
   tbTpNaoConformidadeDescr != '' Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade
    Where TpNaoConformidadeDescr = tbTpNaoConformidadeDescr;
  ElseIf
   ((tbInicio = '') && (tbQtde = '')) Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade;
  ElseIf
     ((tbInicio != '') && (tbQtde = '')) Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade
    Limit tbInicio, 10000;
  ElseIf
     ((tbInicio = '') && (tbQtde != '')) Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade
    Limit 0, tbQtde;
  ElseIf
     ((tbInicio != '') && (tbQtde != '')) Then
    Select 
    TpNaoConformidadeCod,
    TpNaoConformidadeDescr,
    TpNaoConformidadeFlagAtivo
    From tbtpnaoconformidade
    Limit tbInicio, tbQtde;               
  End If;    
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbclassifservico
DELIMITER //
CREATE PROCEDURE `SpInserttbclassifservico`(
IN
tbClassifServicoCod VarChar(20),
tbClassifServicoDescr VarChar(500),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbClassifServicoCod = '') or (tbClassifServicoCod Is Null)) Then
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
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcompraalcadageral
DELIMITER //
CREATE PROCEDURE `SpInserttbcompraalcadageral`(
IN
tbPessoaIdentAprovFkCompraAlcadaGeral Int(11),
tbCompraAlcadaGeralFlagSolic SmallInt(1),
tbCompraAlcadaGeralSolicVlrLimite Numeric(12,4),
tbCompraAlcadaGeralFlagRequis SmallInt(1),
tbCompraAlcadaGeralRequisVlrLimite Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbPessoaIdentAprovFkCompraAlcadaGeral = '') or (tbPessoaIdentAprovFkCompraAlcadaGeral Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcompraalcadageral: Não foi o Usuário para a Alçada!' As Msg;
   Elseif
      ((tbPessoaIdentAprovFkCompraAlcadaGeral != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentAprovFkCompraAlcadaGeral))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcompraalcadageral: Pessoa da Alçada não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcompraalcadageral(PessoaIdentAprovFkCompraAlcadaGeral, CompraAlcadaGeralFlagSolic, CompraAlcadaGeralSolicVlrLimite,
                                      CompraAlcadaGeralFlagRequis, CompraAlcadaGeralRequisVlrLimite)
      Values (tbPessoaIdentAprovFkCompraAlcadaGeral, tbCompraAlcadaGeralFlagSolic, tbCompraAlcadaGeralSolicVlrLimite,
              tbCompraAlcadaGeralFlagRequis, tbCompraAlcadaGeralRequisVlrLimite);
      Select 0 As CodRetorno, 'MSG003/SpInserttbcompraalcadageral: Alçada incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcompraalcadaprodutoempresa
DELIMITER //
CREATE PROCEDURE `SpInserttbcompraalcadaprodutoempresa`(
IN
tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa Int(11),
tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa Int(11),
tbCompraAlcadaProdutoEmpresaFlagSolic SmallInt(1),
tbCompraAlcadaProdutoEmpresaSolicQtdeLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaSolicVlrLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaFlagRequis SmallInt(1),
tbCompraAlcadaProdutoEmpresaRequisQtdeLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaRequisVlrLimite Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa = '') or (tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcompraalcadaprodutoempresa: Não foi o Usuário para a Alçada!' As Msg;
   Elseif
      ((tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = '') or (tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcompraalcadaprodutoempresa: Não foi o Produto/Empresa para a Alçada!' As Msg;
   Elseif
      ((tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbcompraalcadaprodutoempresa: Pessoa da Alçada não existe na base de dados!' As Msg;
   Elseif
      ((tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbcompraalcadaprodutoempresa: Produto/Empresa da Alçada não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcompraalcadaprodutoempresa(PessoaIdentAprovFkCompraAlcadaProdutoEmpresa, ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
                                               CompraAlcadaProdutoEmpresaFlagSolic, CompraAlcadaProdutoEmpresaSolicQtdeLimite,
                                               CompraAlcadaProdutoEmpresaSolicVlrLimite, CompraAlcadaProdutoEmpresaFlagRequis,
                                               CompraAlcadaProdutoEmpresaRequisQtdeLimite, CompraAlcadaProdutoEmpresaRequisVlrLimite)
      Values (tbPessoaIdentAprovFkCompraAlcadaProdutoEmpresa, tbProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
              tbCompraAlcadaProdutoEmpresaFlagSolic, tbCompraAlcadaProdutoEmpresaSolicQtdeLimite,
              tbCompraAlcadaProdutoEmpresaSolicVlrLimite, tbCompraAlcadaProdutoEmpresaFlagRequis,
              tbCompraAlcadaProdutoEmpresaRequisQtdeLimite, tbCompraAlcadaProdutoEmpresaRequisVlrLimite);
      Select 0 As CodRetorno, 'MSG005/SpInserttbcompraalcadaprodutoempresa: Alçada incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcompraordemcompra
DELIMITER //
CREATE PROCEDURE `SpInserttbcompraordemcompra`(
IN
tbCompraOrdemCompraDtEmis Date,
tbPessoaIdentFornecFkCompraOrdemCompra Int(11),
tbCompraOrdemCompraVlrTotal Numeric(12,4),
tbCompraOrdemCompraPrazoEntrDias Int(3),
tbCompraOrdemCompraDtEnt Date,
tbCondicaoPgtoRecebIdentFkCompraOrdemCompra Int(11),
tbCompraOrdemCompraFrete Char(3),
tbCompraOrdemCompraFreteVlr Numeric(12,4),
tbCompraOrdemCompraObs VarChar(400),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCompraOrdemCompraDtEmis = '') or (tbCompraOrdemCompraDtEmis Is Null)) Then
     Set tbCompraOrdemCompraDtEmis = CURDATE();
   End If;
   
   If ((tbPessoaIdentFornecFkCompraOrdemCompra = '') or (tbPessoaIdentFornecFkCompraOrdemCompra Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcompraordemcompra: Não foi informado o fornecedor da ordem de compra!' As Msg;
   Elseif ((tbCondicaoPgtoRecebIdentFkCompraOrdemCompra = '') or (tbCondicaoPgtoRecebIdentFkCompraOrdemCompra Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcompraordemcompra: Não foi informado a condição de pagamento da ordem de compra!' As Msg; 
   Elseif ((tbCompraOrdemCompraVlrTotal = '') or (tbCompraOrdemCompraVlrTotal Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcompraordemcompra: Não foi informado o valor total da ordem de compra!' As Msg;    
   Elseif ((tbCompraOrdemCompraDtEnt = '') or (tbCompraOrdemCompraDtEnt Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcompraordemcompra: Não foi informado a data da entrega da ordem de compra!' As Msg;    
   Elseif
      ((tbPessoaIdentFornecFkCompraOrdemCompra != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecFkCompraOrdemCompra))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcompraordemcompra: Fornecedor não existe na base de dados!' As Msg;  
   Elseif
      ((tbCondicaoPgtoRecebIdentFkCompraOrdemCompra != '') &&
      (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCompraOrdemCompra))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbcomprarequisitemaprov: Condição de Pagamento não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcompraordemcompra(CompraOrdemCompraDtEmis, PessoaIdentFornecFkCompraOrdemCompra, CompraOrdemCompraVlrTotal, CompraOrdemCompraPrazoEntrDias,
                                      CompraOrdemCompraDtEnt, CondicaoPgtoRecebIdentFkCompraOrdemCompra, CompraOrdemCompraFrete,
                                      CompraOrdemCompraFreteVlr, CompraOrdemCompraObs)
      Values (tbCompraOrdemCompraDtEmis, tbPessoaIdentFornecFkCompraOrdemCompra, tbCompraOrdemCompraVlrTotal, tbCompraOrdemCompraPrazoEntrDias,
              tbCompraOrdemCompraDtEnt, tbCondicaoPgtoRecebIdentFkCompraOrdemCompra, tbCompraOrdemCompraFrete,
              tbCompraOrdemCompraFreteVlr, tbCompraOrdemCompraObs);
      Select 0 As CodRetorno, 'MSG007/SpInserttbcomprarequisitemaprov: Ordem de Compra incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcompraordemcompraitem
DELIMITER //
CREATE PROCEDURE `SpInserttbcompraordemcompraitem`(
IN
tbCompraOrdemCompraIdentFkCompraOrdemCompraItem Int(11),
tbCompraOrdemCompraItemSeq Int(5),
tbCompraRequisItemIdentFkCompraOrdemCompraItem Int(11),
tbCompraRequisItemAprovIdentFkCompraOrdemCompraItem Int(11),
tbCompraRequisItemCotacaoIdentFkCompraOrdemCompraItem Int(11),
tbProdutoEmpresaIdentFkCompraOrdemCompraItem Int(11),
tbCompraOrdemCompraItemQtde Numeric(12,4),
tbUnidMedidaIdentifFkCompraOrdemCompraItem Int(11),
tbCompraOrdemCompraItemPreco Numeric(12,4),
tbCompraOrdemCompraItemObs VarChar(400),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCompraOrdemCompraIdentFkCompraOrdemCompraItem = '') or (tbCompraOrdemCompraIdentFkCompraOrdemCompraItem Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcompraordemcompraitem: Não foi informado a identificação da ordem de compra para o item de compra!' As Msg;
   Elseif ((tbCompraOrdemCompraItemSeq = '') or (tbCompraOrdemCompraItemSeq Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcompraordemcompraitem: Não foi informado a sequencia do item da ordem de compra!' As Msg;      
   Elseif ((tbCompraRequisItemIdentFkCompraOrdemCompraItem = '') or (tbCompraRequisItemIdentFkCompraOrdemCompraItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcompraordemcompraitem: Não foi a identificação da requisição de compra para o item da ordem de compra' As Msg;      
   Elseif ((tbProdutoEmpresaIdentFkCompraOrdemCompraItem = '') or (tbProdutoEmpresaIdentFkCompraOrdemCompraItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcompraordemcompraitem: Não foi o produto/empresa para o item da ordem de compra' As Msg;      
   Elseif ((tbCompraOrdemCompraItemQtde = '') or (tbCompraOrdemCompraItemQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG005/SpInserttbcompraordemcompraitem: Não foi a quantidade para o item da ordem de compra' As Msg;      
   Elseif ((tbUnidMedidaIdentifFkCompraOrdemCompraItem = '') or (tbUnidMedidaIdentifFkCompraOrdemCompraItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG006/SpInserttbcompraordemcompraitem: Não foi a unidade de medida para o item da ordem de compra' As Msg;      
   Elseif ((tbCompraOrdemCompraItemPreco = '') or (tbCompraOrdemCompraItemPreco Is Null)) Then      
      Select 1 As CodRetorno, 'MSG007/SpInserttbcompraordemcompraitem: Não foi o preço para o item da ordem de compra' As Msg;      
   Elseif
      ((tbCompraOrdemCompraIdentFkCompraOrdemCompraItem != '') &&
      (Not Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdentFkCompraOrdemCompraItem))) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbcompraordemcompraitem: Ordem de Compra não existe na base de dados!' As Msg;  
   Elseif
      ((tbCompraRequisItemIdentFkCompraOrdemCompraItem != '') &&
      (Not Exists(Select CompraRequisItemIdent From tbcomprarequisitem Where CompraRequisItemIdent = tbCompraRequisItemIdentFkCompraOrdemCompraItem))) Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbcompraordemcompraitem: Requisição não existe na base de dados!' As Msg;  
   Elseif
      ((tbProdutoEmpresaIdentFkCompraOrdemCompraItem != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraOrdemCompraItem))) Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbcompraordemcompraitem: Produto/Empresa não existe na base de dados!' As Msg;        
   Elseif
      ((tbUnidMedidaIdentifFkCompraOrdemCompraItem != '') &&
      (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraOrdemCompraItem))) Then
      Select 1 As CodRetorno, 'MSG011/SpInserttbcompraordemcompraitem: Unidade de Medida não existe na base de dados!' As Msg;              
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcompraordemcompraitem(CompraOrdemCompraIdentFkCompraOrdemCompraItem, CompraOrdemCompraItemSeq, CompraRequisItemIdentFkCompraOrdemCompraItem,
                                          CompraRequisItemAprovIdentFkCompraOrdemCompraItem, CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
                                          ProdutoEmpresaIdentFkCompraOrdemCompraItem, CompraOrdemCompraItemQtde, UnidMedidaIdentifFkCompraOrdemCompraItem,
                                          CompraOrdemCompraItemPreco, CompraOrdemCompraItemObs)
      Values (tbCompraOrdemCompraIdentFkCompraOrdemCompraItem, tbCompraOrdemCompraItemSeq, tbCompraRequisItemIdentFkCompraOrdemCompraItem,
              tbCompraRequisItemAprovIdentFkCompraOrdemCompraItem, tbCompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
              tbProdutoEmpresaIdentFkCompraOrdemCompraItem, tbCompraOrdemCompraItemQtde, tbUnidMedidaIdentifFkCompraOrdemCompraItem,
              tbCompraOrdemCompraItemPreco, tbCompraOrdemCompraItemObs);
      Select 0 As CodRetorno, 'MSG012/SpInserttbcompraordemcompraitem: Item da Ordem de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcompraprior
DELIMITER //
CREATE PROCEDURE `SpInserttbcompraprior`(
IN
tbCompraPriorCod VarChar(20),
tbCompraPriorDescr VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCompraPriorDescr = '') or (tbCompraPriorDescr Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcompraprior: Não foi informado a descrição para a prioridade da compra!' As Msg;
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcompraprior(CompraPriorCod, CompraPriorDescr)
      Values (tbCompraPriorCod, tbCompraPriorDescr);
      Select 0 As CodRetorno, 'MSG002/SpInserttbcompraprior: Prioridade de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprarequisitem
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprarequisitem`(
IN
tbCompraSolicitItemIdentFkCompraRequisItem Int(11),
tbProdutoEmpresaIdentFkCompraRequisItem Int(11),
tbCompraRequisItemDtEmis Date,
tbCompraRequisItemQtde Numeric(12,4),
tbCompraRequisItemQtdeMin Numeric(12,4),
tbUnidMedidaIdentifFkCompraRequisItem Int(11),
tbPessoaIdentFornecSugerFkCompraRequisItem Int(11),
tbCompraRequisItemPrecoSuger Numeric(12,4),
tbCompraRequisItemPrecoSugerMax Numeric(12,4),
tbCompraRequisItemDtEntrMax Date,
tbCompraRequisItemFornecSugerJustif VarChar(400),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCompraRequisItemDtEmis = '') or (tbCompraRequisItemDtEmis Is Null)) Then
     Set tbCompraRequisItemDtEmis = CURDATE();
   End If;
  
   If ((tbCompraSolicitItemIdentFkCompraRequisItem = '') or (tbCompraSolicitItemIdentFkCompraRequisItem Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprarequisitem: Não foi informado o item da solicitação de compra para a requisição de compra!' As Msg;
   Elseif ((tbProdutoEmpresaIdentFkCompraRequisItem = '') or (tbProdutoEmpresaIdentFkCompraRequisItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprarequisitem: Não foi informado o produto para a requisição de compra!' As Msg; 
   Elseif ((tbUnidMedidaIdentifFkCompraRequisItem = '') or (tbUnidMedidaIdentifFkCompraRequisItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprarequisitem: Não foi informado a unidade de medida para a requisição de compra!' As Msg;    
   Elseif ((tbCompraRequisItemQtde = '') or (tbCompraRequisItemQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprarequisitem: Não foi informado a quantidade para a requisição de compra!' As Msg;    
   Elseif
      ((tbCompraSolicitItemIdentFkCompraRequisItem != '') &&
      (Not Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdentFkCompraRequisItem))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprarequisitem: Item da Solicitação de Compra não existe na base de dados!' As Msg;  
   Elseif
      ((tbProdutoEmpresaIdentFkCompraRequisItem != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraRequisItem))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprarequisitem: Produto/Empresa não existe na base de dados!' As Msg;  
   Elseif
      ((tbUnidMedidaIdentifFkCompraRequisItem != '') &&
      (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraRequisItem))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprarequisitem: Unidade de Medida não existe na base de dados!' As Msg;  
   Elseif
      ((tbPessoaIdentFornecSugerFkCompraRequisItem != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecSugerFkCompraRequisItem))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprarequisitem: Fornecedor Sugerido não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprarequisitem(CompraSolicitItemIdentFkCompraRequisItem, ProdutoEmpresaIdentFkCompraRequisItem, CompraRequisItemDtEmis,
                                     CompraRequisItemQtde, CompraRequisItemQtdeMin, UnidMedidaIdentifFkCompraRequisItem, PessoaIdentFornecSugerFkCompraRequisItem,
                                     CompraRequisItemPrecoSuger, CompraRequisItemPrecoSugerMax, CompraRequisItemDtEntrMax, CompraRequisItemFornecSugerJustif)
      Values (tbCompraSolicitItemIdentFkCompraRequisItem, tbProdutoEmpresaIdentFkCompraRequisItem, tbCompraRequisItemDtEmis,
              tbCompraRequisItemQtde, tbCompraRequisItemQtdeMin, tbUnidMedidaIdentifFkCompraRequisItem, tbPessoaIdentFornecSugerFkCompraRequisItem,
              tbCompraRequisItemPrecoSuger, tbCompraRequisItemPrecoSugerMax, tbCompraRequisItemDtEntrMax, tbCompraRequisItemFornecSugerJustif);
      Select 0 As CodRetorno, 'MSG006/SpInserttbcomprarequisitem: Item da Requisição de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprarequisitemaprov
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprarequisitemaprov`(
IN
tbCompraRequisItemIdentFkCompraRequisItemAprov Int(11),
tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov Int(11),
tbPessoaIdentAprovFkCompraRequisItemAprov Int(11),
tbPessoaIdentFornecFkCompraRequisItemAprov Int(11),
tbCompraRequisItemAprovDtAprov Date,
tbCompraRequisItemAprovQtde Numeric(12,4),
tbCompraRequisItemAprovPreco Numeric(12,4),
tbCompraRequisItemAprovFrete Char(3),
tbCompraRequisItemAprovFreteVlr Numeric(12,4),
tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov Int(11),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCompraRequisItemAprovDtAprov = '') or (tbCompraRequisItemAprovDtAprov Is Null)) Then
     Set tbCompraRequisItemAprovDtAprov = CURDATE();
   End If;
  
   If ((tbCompraRequisItemIdentFkCompraRequisItemAprov = '') or (tbCompraRequisItemIdentFkCompraRequisItemAprov Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprarequisitemaprov: Não foi informado o item da requisição de compra para aprovação!' As Msg;
   Elseif ((tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov = '') or (tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprarequisitemaprov: Não foi informado o item da da cotação para aprovação!' As Msg; 
   Elseif ((tbPessoaIdentAprovFkCompraRequisItemAprov = '') or (tbPessoaIdentAprovFkCompraRequisItemAprov Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprarequisitemaprov: Não foi informado o usuario aprovador!' As Msg;    
   Elseif ((tbPessoaIdentFornecFkCompraRequisItemAprov = '') or (tbPessoaIdentFornecFkCompraRequisItemAprov Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprarequisitemaprov: Não foi informado o fornecedor aprovado!' As Msg;    
   Elseif ((tbCompraRequisItemAprovQtde = '') or (tbCompraRequisItemAprovQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprarequisitemaprov: Não foi informado o quantidade aprovada!' As Msg;  
   Elseif ((tbCompraRequisItemAprovPreco = '') or (tbCompraRequisItemAprovPreco Is Null)) Then      
      Select 1 As CodRetorno, 'MSG006/SpInserttbcomprarequisitemaprov: Não foi informado o preço aprovado!' As Msg;        
   Elseif ((tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov = '') or (tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov Is Null)) Then      
      Select 1 As CodRetorno, 'MSG007/SpInserttbcomprarequisitemaprov: Não foi informado as condições de pagamento aprovada!' As Msg;        
   Elseif
      (tbCompraRequisItemIdentFkCompraRequisItemAprov != '') &&
      (Not Exists(Select CompraRequisItemIdent From tbcomprarequisitem Where CompraRequisItemIdent = tbCompraRequisItemIdentFkCompraRequisItemAprov)) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbcomprarequisitemaprov: Item da Requisição de Compra não existe na base de dados!' As Msg;    
   Elseif
      (tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov != '') &&
      (Not Exists(Select CompraRequisItemCotacaoIdent From tbcomprarequisitemcotacao Where CompraRequisItemCotacaoIdent = tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov)) Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbcomprarequisitemaprov: Item da Cotação de Compra não existe na base de dados!' As Msg;    
   Elseif
      ((tbPessoaIdentAprovFkCompraRequisItemAprov != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentAprovFkCompraRequisItemAprov))) Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbcomprarequisitemaprov: Usuário aprovador não existe na base de dados!' As Msg;  
   Elseif
      ((tbPessoaIdentFornecFkCompraRequisItemAprov != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecFkCompraRequisItemAprov))) Then
      Select 1 As CodRetorno, 'MSG011/SpInserttbcomprarequisitemaprov: Fornecedor não existe na base de dados!' As Msg;  
   Elseif
      ((tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov != '') &&
      (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov))) Then
      Select 1 As CodRetorno, 'MSG012/SpInserttbcomprarequisitemaprov: Condição de Pagamento não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprarequisitemaprov(CompraRequisItemIdentFkCompraRequisItemAprov, CompraRequisItemCotacaoIdentFkCompraRequisItemAprov,
                                          PessoaIdentAprovFkCompraRequisItemAprov, PessoaIdentFornecFkCompraRequisItemAprov, CompraRequisItemAprovDtAprov,
                                          CompraRequisItemAprovQtde, CompraRequisItemAprovPreco, CompraRequisItemAprovFrete, CompraRequisItemAprovFreteVlr,
                                          CondicaoPgtoRecebIdentFkCompraRequisItemAprov)
      Values (tbCompraRequisItemIdentFkCompraRequisItemAprov, tbCompraRequisItemCotacaoIdentFkCompraRequisItemAprov,
              tbPessoaIdentAprovFkCompraRequisItemAprov, tbPessoaIdentFornecFkCompraRequisItemAprov, tbCompraRequisItemAprovDtAprov,
              tbCompraRequisItemAprovQtde, tbCompraRequisItemAprovPreco, tbCompraRequisItemAprovFrete, tbCompraRequisItemAprovFreteVlr,
              tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov);
      Select 0 As CodRetorno, 'MSG013/SpInserttbcomprarequisitemaprov: Item da Aprovação de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprarequisitemcotacao
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprarequisitemcotacao`(
IN
tbCompraRequisItemIdentFkCompraRequisItemCotacao Int(11),
tbPessoaIdentFornecRequisFkCompraRequisItemCotacao Int(11),
tbCompraRequisItemCotacaoQtde Numeric(12,4),
tbCompraRequisItemCotacaoDtCotacao Date,
tbCompraRequisItemCotacaoDtValid Date,
tbCompraRequisItemCotacaoPreco Numeric(12,4),
tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao Int(11),
tbCompraRequisItemCotacaoPrazoEntrDias Int(3),
tbCompraRequisItemCotacaoFrete Char(3),
tbCompraRequisItemCotacaoObs VarChar(400),
tbCompraRequisItemCotacaoDocto Blob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCompraRequisItemCotacaoDtCotacao = '') or (tbCompraRequisItemCotacaoDtCotacao Is Null)) Then
     Set tbCompraRequisItemCotacaoDtCotacao = CURDATE();
   End If;
  
   If ((tbCompraRequisItemIdentFkCompraRequisItemCotacao = '') or (tbCompraRequisItemIdentFkCompraRequisItemCotacao Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprarequisitemcotacao: Não foi informado o item da requisição de compra para cotação!' As Msg;
   Elseif ((tbPessoaIdentFornecRequisFkCompraRequisItemCotacao = '') or (tbPessoaIdentFornecRequisFkCompraRequisItemCotacao Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprarequisitemcotacao: Não foi informado o fornecedor para o item da requisição de compra para cotação!' As Msg; 
   Elseif ((tbCompraRequisItemCotacaoQtde = '') or (tbCompraRequisItemCotacaoQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprarequisitemcotacao: Não foi informado a quantidade para o item da requisição de compra para cotação!' As Msg;    
   Elseif ((tbCompraRequisItemCotacaoPreco = '') or (tbCompraRequisItemCotacaoPreco Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprarequisitemcotacao: Não foi informado a preço para o item da requisição de compra para cotação!' As Msg;    
   Elseif
      ((tbCompraRequisItemIdentFkCompraRequisItemCotacao != '') &&
      (Not Exists(Select CompraRequisItemIdent From tbcomprarequisitem Where CompraRequisItemIdent = tbCompraRequisItemIdentFkCompraRequisItemCotacao))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprarequisitemcotacao: Item da Requisição de Compra não existe na base de dados!' As Msg;    
   Elseif
      ((tbPessoaIdentFornecRequisFkCompraRequisItemCotacao != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecRequisFkCompraRequisItemCotacao))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbcomprarequisitemcotacao: Fornecedor não existe na base de dados!' As Msg;  
   Elseif
      ((tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao != '') &&
      (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbcomprarequisitemcotacao: Condição de Pagamento não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprarequisitemcotacao(CompraRequisItemIdentFkCompraRequisItemCotacao, PessoaIdentFornecRequisFkCompraRequisItemCotacao,
                                            CompraRequisItemCotacaoQtde, CompraRequisItemCotacaoDtCotacao, CompraRequisItemCotacaoDtValid,
                                            CompraRequisItemCotacaoPreco, CondicaoPgtoRecebIdentFkCompraRequisItemCotacao, CompraRequisItemCotacaoPrazoEntrDias, 
                                            CompraRequisItemCotacaoFrete, CompraRequisItemCotacaoObs, CompraRequisItemCotacaoDocto)
      Values (tbCompraRequisItemIdentFkCompraRequisItemCotacao, tbPessoaIdentFornecRequisFkCompraRequisItemCotacao,
              tbCompraRequisItemCotacaoQtde, tbCompraRequisItemCotacaoDtCotacao, tbCompraRequisItemCotacaoDtValid,
              tbCompraRequisItemCotacaoPreco, tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao, tbCompraRequisItemCotacaoPrazoEntrDias, 
              tbCompraRequisItemCotacaoFrete, tbCompraRequisItemCotacaoObs, tbCompraRequisItemCotacaoDocto);
      Select 0 As CodRetorno, 'MSG008/SpInserttbcomprarequisitemcotacao: Item da Cotação da Requisição de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprasolicit
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprasolicit`(
IN
tbCompraSolicitDtEmis Date,
tbCompraSolicitFlag Char(1),
tbCompraPriorIdentFkCompraSolicit Int(11),
tbPessoaIdentFkCompraSolicit Int(11),
tbCompraSolicitObs VarChar(400),
tbCompraSolicitVlrTotal Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If tbCompraSolicitDtEmis = '' Then
      Set tbCompraSolicitDtEmis = CURDATE();
   End If;

   If ((tbCompraSolicitFlag = '')  or (tbCompraSolicitFlag Is Null)) Then
      Set tbCompraSolicitFlag = 'M';
   End If;
   If ((tbCompraPriorIdentFkCompraSolicit = '')  or (tbCompraPriorIdentFkCompraSolicit Is Null)) Then
      Set tbCompraPriorIdentFkCompraSolicit = '';
   End If;
   
   If ((tbPessoaIdentFkCompraSolicit = '') or (tbPessoaIdentFkCompraSolicit Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprasolicit: Não foi informado o usuário emitente da solicitação de compra!' As Msg;
   Elseif
      ((tbPessoaIdentFkCompraSolicit != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFkCompraSolicit))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprasolicit: Usuário emitente da solicitação de compra não existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprasolicit(CompraSolicitDtEmis, CompraSolicitFlag, CompraPriorIdentFkCompraSolicit, PessoaIdentFkCompraSolicit, 
                                  CompraSolicitObs, CompraSolicitVlrTotal)
      Values (tbCompraSolicitDtEmis, tbCompraSolicitFlag, tbCompraPriorIdentFkCompraSolicit, tbPessoaIdentFkCompraSolicit, 
              tbCompraSolicitObs, tbCompraSolicitVlrTotal);
      Select 0 As CodRetorno, 'MSG003/SpInserttbcomprasolicit: Solicitação de Compra Master incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprasolicititem
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprasolicititem`(
IN
tbCompraSolicitIdentFkCompraSolicitItem Int(11),
tbProdutoEmpresaIdentFkCompraSolicitItem Int(11),
tbCompraSolicitItemQtde Numeric(12,4),
tbCompraSolicitItemQtdeMinima Numeric(12,4),
tbUnidMedidaIdentifFkCompraSolicitItem Int(11),
tbCompraSolicitItemDtEntrDes Date,
tbCompraSolicitItemDtEntrMax Date,
tbPessoaIdentFornecSugerFkCompraSolicitItem Int(11),
tbCompraSolicitItemPrecoSuger Numeric(12,4),
tbCompraSolicitItemPrecoSugerMax Numeric(12,4),
tbCompraSolicitItemFornecSugerJustif VarChar(400),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCompraSolicitIdentFkCompraSolicitItem = '') or (tbCompraSolicitIdentFkCompraSolicitItem Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprasolicititem: Não foi informado a identificação da solicitação de compra para o item de compra!' As Msg;
   Elseif ((tbProdutoEmpresaIdentFkCompraSolicitItem = '') or (tbProdutoEmpresaIdentFkCompraSolicitItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprasolicititem: Não foi informado a identificação do produto/empresa para o item de compra!' As Msg;      
   Elseif ((tbCompraSolicitItemQtde = '') or (tbCompraSolicitItemQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprasolicititem: Não foi informado a quantidade do produto/empresa para o item de compra!' As Msg;      
   Elseif ((tbUnidMedidaIdentifFkCompraSolicitItem = '') or (tbUnidMedidaIdentifFkCompraSolicitItem Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprasolicititem: Não foi informado a unidade de medida do produto/empresa para o item de compra!' As Msg;      
   Elseif
      ((tbCompraSolicitIdentFkCompraSolicitItem != '') &&
      (Not Exists(Select CompraSolicitIdent From tbcomprasolicit Where CompraSolicitIdent = tbCompraSolicitIdentFkCompraSolicitItem))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprasolicititem: Solicitação de Compra Master não existe na base de dados!' As Msg;  
   Elseif
      ((tbProdutoEmpresaIdentFkCompraSolicitItem != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraSolicitItem))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbcomprasolicititem: Produto/Empresa não existe na base de dados!' As Msg;  
   Elseif
      ((tbUnidMedidaIdentifFkCompraSolicitItem != '') &&
      (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraSolicitItem))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbcomprasolicititem: Unidade de Medida não existe na base de dados!' As Msg;        
   Elseif
      ((tbPessoaIdentFornecSugerFkCompraSolicitItem != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecSugerFkCompraSolicitItem))) Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbcomprasolicititem: Fornecedor sugerido não existe na base de dados!' As Msg;              
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprasolicititem(CompraSolicitIdentFkCompraSolicitItem, ProdutoEmpresaIdentFkCompraSolicitItem, CompraSolicitItemQtde,
                                      CompraSolicitItemQtdeMinima, UnidMedidaIdentifFkCompraSolicitItem, CompraSolicitItemDtEntrDes, 
                                      CompraSolicitItemDtEntrMax, PessoaIdentFornecSugerFkCompraSolicitItem, CompraSolicitItemPrecoSuger,
                                      CompraSolicitItemPrecoSugerMax, CompraSolicitItemFornecSugerJustif)
      Values (tbCompraSolicitIdentFkCompraSolicitItem, tbProdutoEmpresaIdentFkCompraSolicitItem, tbCompraSolicitItemQtde,
              tbCompraSolicitItemQtdeMinima, tbUnidMedidaIdentifFkCompraSolicitItem, tbCompraSolicitItemDtEntrDes, 
              tbCompraSolicitItemDtEntrMax, tbPessoaIdentFornecSugerFkCompraSolicitItem, tbCompraSolicitItemPrecoSuger,
              tbCompraSolicitItemPrecoSugerMax, tbCompraSolicitItemFornecSugerJustif);
      Select 0 As CodRetorno, 'MSG009/SpInserttbcomprasolicititem: Item da Solicitação de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprasolicititemaprov
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprasolicititemaprov`(
IN
tbCompraSolicitItemIdentFkCompraSolicitItemAprov Int(11),
tbPessoaIdentAprovFkCompraSolicitItemAprov Int(11),
tbCompraSolicitItemAprovDtAprov Date,
tbCompraSolicitItemAprovQtde Numeric(12,4),
tbPessoaIdentFornecSugerFkCompraSolicitItemAprov Int(11),
tbCompraSolicitItemAprovPrecoSuger Numeric(12,4),
tbCompraSolicitItemAprovPrecoSugerMax Numeric(12,4),
tbCompraSolicitItemAprovFornecSugerJustif VarChar(400),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN

   If ((tbCompraSolicitItemAprovDtAprov = '') or (tbCompraSolicitItemAprovDtAprov Is Null)) Then
     Set tbCompraSolicitItemAprovDtAprov = CURDATE();
   End If;
  
   If ((tbCompraSolicitItemIdentFkCompraSolicitItemAprov = '') or (tbCompraSolicitItemIdentFkCompraSolicitItemAprov Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprasolicititemaprov: Não foi informado o item da solicitação de compra para a aprovação!' As Msg;
   Elseif ((tbPessoaIdentAprovFkCompraSolicitItemAprov = '') or (tbPessoaIdentAprovFkCompraSolicitItemAprov Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprasolicititemaprov: Não foi informado o usuário aprovador do item da solicitação de compra!' As Msg;      
   Elseif ((tbCompraSolicitItemAprovQtde = '') or (tbCompraSolicitItemAprovQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprasolicititemaprov: Não foi informado a quantidade do produto/empresa aprovado!' As Msg;      
   Elseif
      ((tbCompraSolicitItemIdentFkCompraSolicitItemAprov != '') &&
      (Not Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdentFkCompraSolicitItemAprov))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprasolicititemaprov: Item da Solicitação de Compra não existe na base de dados!' As Msg;  
   Elseif
      ((tbPessoaIdentAprovFkCompraSolicitItemAprov != '') &&
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentAprovFkCompraSolicitItemAprov))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprasolicititemaprov: Usuário aprovador não existe na base de dados!' As Msg;  
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprasolicititemaprov(CompraSolicitItemIdentFkCompraSolicitItemAprov, PessoaIdentAprovFkCompraSolicitItemAprov, 
                                           CompraSolicitItemAprovDtAprov, CompraSolicitItemAprovQtde, PessoaIdentFornecSugerFkCompraSolicitItemAprov,
                                           CompraSolicitItemAprovPrecoSuger, CompraSolicitItemAprovPrecoSugerMax, CompraSolicitItemAprovFornecSugerJustif)
      Values (tbCompraSolicitItemIdentFkCompraSolicitItemAprov, tbPessoaIdentAprovFkCompraSolicitItemAprov, 
              tbCompraSolicitItemAprovDtAprov, tbCompraSolicitItemAprovQtde, tbPessoaIdentFornecSugerFkCompraSolicitItemAprov,
              tbCompraSolicitItemAprovPrecoSuger, tbCompraSolicitItemAprovPrecoSugerMax, tbCompraSolicitItemAprovFornecSugerJustif);
      Select 0 As CodRetorno, 'MSG006/SpInserttbcomprasolicititemaprov: Aprovação do Item da Solicitação de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcomprasolicititemmaterremessa
DELIMITER //
CREATE PROCEDURE `SpInserttbcomprasolicititemmaterremessa`(
IN
tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa Int(11),
tbCompraSolicitItemMaterRemessaSeq Int(3),
tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa Int(11),
tbCompraSolicitItemMaterRemessaCod VarChar(20),
tbCompraSolicitItemMaterRemessaDescr VarChar(200),
tbCompraSolicitItemMaterRemessaQtde Numeric(12,4),
tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa Int(11),
tbCompraSolicitItemMaterRemessaObs VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = '') or (tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcomprasolicititemmaterremessa: Não foi informado o item da solicitação de compra para a remessa!' As Msg;
   Elseif ((tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa = '') or (tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa Is Null)) Then      
      Select 1 As CodRetorno, 'MSG002/SpInserttbcomprasolicititemmaterremessa: Não foi informado a unidade de medida para a remessa!' As Msg;      
   Elseif ((tbCompraSolicitItemMaterRemessaSeq = '') or (tbCompraSolicitItemMaterRemessaSeq Is Null)) Then      
      Select 1 As CodRetorno, 'MSG003/SpInserttbcomprasolicititemmaterremessa: Não foi informado a sequencia para remessa!' As Msg;      
   Elseif ((tbCompraSolicitItemMaterRemessaQtde = '') or (tbCompraSolicitItemMaterRemessaQtde Is Null)) Then      
      Select 1 As CodRetorno, 'MSG004/SpInserttbcomprasolicititemmaterremessa: Não foi informado a quantidade para a remessa!' As Msg;      
   Elseif
      ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa != '') &&
      (Not Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbcomprasolicititemmaterremessa: Item da Solicitação de Compra não existe na base de dados!' As Msg;  
   Elseif
      ((tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa))) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbcomprasolicititemmaterremessa: Produto/Empresa não existe na base de dados!' As Msg;  
   Elseif
      ((tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa != '') &&
      (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa))) Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbcomprasolicititemmaterremessa: Unidade de Medida não existe na base de dados!' As Msg;        
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcomprasolicititemmaterremessa(CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, CompraSolicitItemMaterRemessaSeq,
                                                  ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa, CompraSolicitItemMaterRemessaCod,
                                                  CompraSolicitItemMaterRemessaDescr, CompraSolicitItemMaterRemessaQtde, 
                                                  UnidMedidaIdentifFkCompraSolicitItemMaterRemessa, CompraSolicitItemMaterRemessaObs)
      Values (tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa, tbCompraSolicitItemMaterRemessaSeq,
              tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa, tbCompraSolicitItemMaterRemessaCod,
              tbCompraSolicitItemMaterRemessaDescr, tbCompraSolicitItemMaterRemessaQtde, 
              tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa, tbCompraSolicitItemMaterRemessaObs);
      Select 0 As CodRetorno, 'MSG008/SpInserttbcomprasolicititemmaterremessa: Item para Remessa da Solicitação de Compra incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcrt
DELIMITER //
CREATE PROCEDURE `SpInserttbcrt`(
IN
tbCRTCod SmallInt(1),
tbCRTDescr VarChar(300),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCRTCod = '') or (tbCRTCod Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcrt: Não foi Informado o Código do Regime Tributário!' As Msg;
   Elseif
      ((tbCRTCod != '') &&
      (Exists(Select CRTCod From tbcrt Where CRTCod = tbCRTCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbcrt: Código do Regime Tributário existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcrt(CRTCod, CRTDescr, CRTFlagAtivo)
      Values (tbCRTCod, tbCRTDescr, 1);
      Select 0 As CodRetorno, 'MSG003/SpInserttbcrt: Código do Regime Tributário incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbcst
DELIMITER //
CREATE PROCEDURE `SpInserttbcst`(
IN
tbCSTCod VarChar(3),
tbCSTDescr VarChar(300),
tbCSTTribIntegral SmallInt(1),
tbCSTFlagIPI SmallInt(1),
tbCSTFlagICMS SmallInt(1),
tbCSTFlagPIS SmallInt(1),
tbCSTFlagCOFINS SmallInt(1),
tbCSTFlagSimpNac SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbCSTCod = '') or (tbCSTCod Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbcst: Não foi Informado o Código da CST!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbcst(CSTCod, CSTDescr, CSTTribIntegral, CSTFlagIPI, CSTFlagICMS, CSTFlagPIS, CSTFlagCOFINS, CSTFlagSimpNac, CSTFlagAtivo)
      Values (tbCSTCod, tbCSTDescr, tbCSTTribIntegral, tbCSTFlagIPI, tbCSTFlagICMS, tbCSTFlagPIS, tbCSTFlagCOFINS, tbCSTFlagSimpNac, 1);
      Select 0 As CodRetorno, 'MSG002/SpInserttbcst:  Código da CST incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbctapagar
DELIMITER //
CREATE PROCEDURE `SpInserttbctapagar`(
IN
tbEmpresaIdentFkCtaPagar Int(11),
tbPessoaIdentFkCtaPagar Int(11),
tbCtaPagarDtIncl Date,
tbNFEEntradaIdentFkCtaPagar Int(11),
tbCtaPagarOrigemDocto VarChar(300),
tbCondicaoPgtoRecebIdentFkCtaPagar Int(11),
tbCtaPagarQtdeParc Int(5),
tbCtaPagarVlrParc Numeric(12,4),
tbCtaPagarVlrTot Numeric(12,4),
tbCtaPagarMultaPerc Numeric(12,4),
tbCtaPagarMultaVlrTot Numeric(12,4),
tbCtaPagarJuroPerc Numeric(12,4),
tbCtaPagarJuroVlrTot Numeric(12,4),
tbCtaPagarDescPerc Numeric(12,4),
tbCtaPagarDescVlrTot Numeric(12,4),
tbCtaPagarFlagStatus SmallInt(1),
tbCtaPagarFlagStatusAprov SmallInt(1),
tbCtaPagarObs VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If ((tbCtaPagarDtIncl = '') or (tbCtaPagarDtIncl Is Null)) Then
      Set tbCtaPagarDtIncl = CurDate();
   End If;
   If ((tbEmpresaIdentFkCtaPagar = '') or (tbEmpresaIdentFkCtaPagar Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbctapagar: Não foi Informado o Código da Empresa para o Contas a Pagar!' As Msg;
   ElseIf
      ((tbPessoaIdentFkCtaPagarInt = '') or (tbPessoaIdentFkCtaPagarInt Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbctapagar: Não foi Informado o Fornecedor para o Contas a Pagar!' As Msg;
   ElseIf
      ((tbCondicaoPgtoRecebIdentFkCtaPagar = '') or (tbCondicaoPgtoRecebIdentFkCtaPagar Is Null)) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbctapagar: Não foi Informado a Condição de Pagamento para o Contas a Pagar!' As Msg;      
   ElseIf
      ((tbCtaPagarQtdeParc = '') or (tbCtaPagarQtdeParc Is Null)) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbctapagar: Não foi Informado a Quantidade de Parcelas para o Contas a Pagar!' As Msg;      
   ElseIf
      ((tbCtaPagarVlrParc = '') or (tbCtaPagarVlrParc Is Null)) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbctapagar: Não foi Informado o Valor da Parcela para o Contas a Pagar!' As Msg;      
   ElseIf
      ((tbCtaPagarVlrTot = '') or (tbCtaPagarVlrTot Is Null)) Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbctapagar: Não foi Informado o Valor Total para o Contas a Pagar!' As Msg; 
   ElseIf
      ((tbEmpresaIdentFkCtaPagar != '') && 
      (Not Exists(Select EmpresaIdent From evomodadm.tbempresa Where EmpresaIdent = tbEmpresaIdentFkCtaPagar)))  Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbctapagar: NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbPessoaIdentFkCtaPagarInt != '') && 
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFkCtaPagarInt)))  Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbctapagar: Fornecedor não existe na base de dados!' As Msg;
   ElseIf
      ((tbNFEEntradaIdentFkCtaPagar != '') && 
      (Not Exists(Select NFEEntradaIdent From tbnfeentrada Where NFEEntradaIdent = tbNFEEntradaIdentFkCtaPagar)))  Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbctapagar: NFe Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCondicaoPgtoRecebIdentFkCtaPagar != '') && 
      (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCtaPagar)))  Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbctapagar: Condição de Pagamento não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbctapagar(EmpresaIdentFkCtaPagar, PessoaIdentFkCtaPagar, CtaPagarDtIncl, NFEEntradaIdentFkCtaPagar, CtaPagarOrigemDocto,
                             CondicaoPgtoRecebIdentFkCtaPagar, CtaPagarQtdeParc, CtaPagarVlrParc, CtaPagarVlrTot, CtaPagarMultaPerc, 
                             CtaPagarMultaVlrTot, CtaPagarJuroPerc, CtaPagarJuroVlrTot, CtaPagarDescPerc, CtaPagarDescVlrTot, 
                             CtaPagarFlagStatus, CtaPagarFlagStatusAprov, CtaPagarObs, CtaPagarFlagAtivo)
      Values (tbEmpresaIdentFkCtaPagar, tbPessoaIdentFkCtaPagar, tbCtaPagarDtIncl, tbNFEEntradaIdentFkCtaPagar, tbCtaPagarOrigemDocto,
              tbCondicaoPgtoRecebIdentFkCtaPagar, tbCtaPagarQtdeParc, tbCtaPagarVlrParc, tbCtaPagarVlrTot, tbCtaPagarMultaPerc, 
              tbCtaPagarMultaVlrTot, tbCtaPagarJuroPerc, tbCtaPagarJuroVlrTot, tbCtaPagarDescPerc, tbCtaPagarDescVlrTot, 
              tbCtaPagarFlagStatus, tbCtaPagarFlagStatusAprov, tbCtaPagarObs, 1);
      Select 0 As CodRetorno, 'MSG011/SpInserttbctapagar:  Contas a Pagar incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbctapagaritem
DELIMITER //
CREATE PROCEDURE `SpInserttbctapagaritem`(
IN
tbCtaPagarIdentFkCtaPagarItem Int(11),
tbCtaPagarItemNrParc Int(5),
tbCtaPagarItemCodBarra VarChar(48),
tbCtaPagarItemDtVcto Date,
tbCtaPagarItemVlParc Numeric(12,4),
tbCtaPagarItemMultaPerc Numeric(12,4),
tbCtaPagarItemJuroPerc Numeric(12,4),
tbCtaPagarItemDescPerc Numeric(12,4),
tbCtaPagarItemDescVlrVcto Numeric(12,4),
tbCtaPagarItemFlagStatus SmallInt(1),
tbCtaPagarItemObs VarChar(200),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN

   If ((tbCtaPagarItemFlagStatus = '') or (tbCtaPagarItemFlagStatus Is Null)) Then
      Set tbCtaPagarItemFlagStatus = 3;
   End If;
   
   If ((tbCtaPagarIdentFkCtaPagarItem = '') or (tbCtaPagarIdentFkCtaPagarItem Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbctapagaritem: Não foi Informado o Código do Contas a Pagar para a parcela!' As Msg;
   ElseIf
      ((tbCtaPagarItemNrParc = '') or (tbCtaPagarItemNrParc Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbctapagaritem: Não foi Informado o número da parcela para o Contas a Pagar!' As Msg;
   ElseIf
      ((tbCtaPagarItemDtVcto = '') or (tbCtaPagarItemDtVcto Is Null)) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbctapagaritem: Não foi Informado a Data do Vencimento para a parcela do Contas a Pagar!' As Msg; 
   ElseIf
      ((tbCtaPagarItemVlParc = '') or (tbCtaPagarItemVlParc Is Null)) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbctapagaritem: Não foi Informado o Valor da parcela do Contas a Pagar!' As Msg; 
   ElseIf
      ((tbCtaPagarIdentFkCtaPagarItem != '') && 
      (Not Exists(Select CtaPagarIdent From tbctapagar Where CtaPagarIdent = tbCtaPagarIdentFkCtaPagarItem)))  Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbctapagaritem: Contas a Pagar não existe na base de dados!' As Msg;
   ElseIf
      ((tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
      (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
              And CtaPagarItemNrParc = tbCtaPagarItemNrParc)))  Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbctapagaritem: Parcela do Contas a Pagar existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbctapagaritem(CtaPagarIdentFkCtaPagarItem, CtaPagarItemNrParc, CtaPagarItemCodBarra, CtaPagarItemDtVcto, 
                                 CtaPagarItemVlParc, CtaPagarItemMultaPerc, CtaPagarItemJuroPerc, CtaPagarItemDescPerc, 
                                 CtaPagarItemDescVlrVcto, CtaPagarItemFlagStatus, CtaPagarItemObs, CtaPagarItemFlagAtivo)
      Values (tbCtaPagarIdentFkCtaPagarItem, tbCtaPagarItemNrParc, tbCtaPagarItemCodBarra, tbCtaPagarItemDtVcto, 
              tbCtaPagarItemVlParc, tbCtaPagarItemMultaPerc, tbCtaPagarItemJuroPerc, tbCtaPagarItemDescPerc, 
              tbCtaPagarItemDescVlrVcto, tbCtaPagarItemFlagStatus, tbCtaPagarItemObs, CtaPagarFlagStatus, 1);
      Select 0 As CodRetorno, 'MSG007/SpInserttbctapagaritem:  Parcela do Contas a Pagar incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbdoctofiscal
DELIMITER //
CREATE PROCEDURE `SpInserttbdoctofiscal`(
IN
tbDoctoFiscalCod Char(2),
tbDoctoFiscalDescr VarChar(300),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbDoctoFiscalCod = '') or (tbDoctoFiscalCod Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbdoctofiscal: Não foi Informado o Código do Documento Fiscal!' As Msg;
   Elseif
      ((tbDoctoFiscalCod != '') &&
      (Exists(Select DoctoFiscalCod From tbdoctofiscal Where DoctoFiscalCod = tbDoctoFiscalCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbdoctofiscal: Código do Documento Fiscal existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbdoctofiscal(DoctoFiscalCod, DoctoFiscalDescr, DoctoFiscalAtivo)
      Values (tbDoctoFiscalCod, tbDoctoFiscalDescr, 1);
      Select 0 As CodRetorno, 'MSG003/SpInserttbdoctofiscal: Documento Fiscal incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbestoquemov
DELIMITER //
CREATE PROCEDURE `SpInserttbestoquemov`(
IN
tbProdutoEmpresaIdentFkEstoqueMov Int(11),
tbEstoqueTpMovCodFkEstoqueMov VarChar(20),
tbServerIdent Int(3),
tbEstoqueMovData Datetime,
tbEstoqueMovQtde Numeric(12,4),
tbEstoqueMovVlr Numeric(12,4),
tbEstoqueMovDoctoOrigTp  Varchar(20),
tbEstoqueMovDoctoOrigNr VarChar(100),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If tbServerIdent = '' Then
      Select variable_value Into tbServerIdent
      From INFORMATION_SCHEMA.GLOBAL_VARIABLES    
      Where variable_name = 'server_id';
   End If;
   If tbEstoqueMovData = '' Then
      Set tbEstoqueMovData = Now();      
   End If;      
   If (tbProdutoEmpresaIdentFkEstoqueMov = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbestoquemov: Não foi informado o Código do Produto!' As Msg;
   Elseif
      (tbEstoqueTpMovCodFkEstoqueMov = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbestoquemov: Não foi informado o Tipo de Movimento!' As Msg; 
   Elseif
      (tbEstoqueMovQtde = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbestoquemov: Não foi informado a Quantidade do Movimento!' As Msg; 
   Elseif
      ((tbProdutoEmpresaIdentFkEstoqueMov != '') &&
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkEstoqueMov And ProdutoEmpresaExcluido Is Null))) Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbestoquemov: Produto/Empresa não existe na base de dados!' As Msg; 
   Elseif
      ((tbEstoqueTpMovCodFkEstoqueMov != '') &&
      (Not Exists(Select EstoqueTpMovCod From tbestoquetpmov Where EstoqueTpMovCod = tbEstoqueTpMovCodFkEstoqueMov And EstoqueTpMovExcluido Is Null))) Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbestoquemov: Tipo Movimento Estoque não existe na base de dados!' As Msg;       
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbestoquemov(ProdutoEmpresaIdentFkEstoqueMov, EstoqueTpMovCodFkEstoqueMov, ServerIdent, EstoqueMovData, EstoqueMovQtde,
                               EstoqueMovVlr, EstoqueMovDoctoOrigTp, EstoqueMovDoctoOrigNr)
      Values (tbProdutoEmpresaIdentFkEstoqueMov, tbEstoqueTpMovCodFkEstoqueMov, tbServerIdent, tbEstoqueMovData, tbEstoqueMovQtde,
              tbEstoqueMovVlr, tbEstoqueMovDoctoOrigTp, tbEstoqueMovDoctoOrigNr);
      Select 0 As CodRetorno, 'MSG006/SpInserttbestoquemov: Movimento de Estoque incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbestoquetpmov
DELIMITER //
CREATE PROCEDURE `SpInserttbestoquetpmov`(
IN
tbEstoqueTpMovCod VarChar(20),
tbEstoqueTpMovDescr VarChar(200),
tbEstoqueTpMovEntSai Char(1),
tbEstoqueTpMovEntSaiDet VarChar(2),
tbEstoqueTpMovFlagCusto SmallInt(1),
tbEstoqueTpMovFlagSaldo SmallInt(1),
tbEstoqueTpMovFlagAutom  SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   If (tbEstoqueTpMovCod = '') Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbestoquetpmov: Não foi informado o Código do Movimento!' As Msg;
   Elseif
      (tbEstoqueTpMovDescr = '') Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbestoquetpmov: Não foi informada a Descrição do Movimento!' As Msg; 
   Elseif
      (tbEstoqueTpMovEntSai = '') Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbestoquetpmov: Não foi informado se o Movimento e de Entrada (E) ou Saida (S)!' As Msg; 
   Elseif
      (tbEstoqueTpMovEntSaiDet = '') Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbestoquetpmov: Não foi informado o detalhe do movimento de estoque!' As Msg; 
   Elseif
      (tbEstoqueTpMovFlagCusto = '') Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbestoquetpmov: Não foi informado a flag de custo para o tipo de movimento de estoque!' As Msg; 
   Elseif
      (tbEstoqueTpMovFlagSaldo = '') Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbestoquetpmov: Não foi informado a flag de saldo para o tipo de movimento de estoque!' As Msg; 
   Elseif
      (tbEstoqueTpMovFlagAutom = '') Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbestoquetpmov: Não foi informado a flag de lcto automático para o tipo de movimento de estoque!' As Msg; 
   Elseif   
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbestoquetpmov(tbEstoqueTpMovCod, tbEstoqueTpMovDescr, tbEstoqueTpMovEntSai, tbEstoqueTpMovEntSaiDet, tbEstoqueTpMovFlagCusto,
                                 tbEstoqueTpMovFlagSaldo, tbEstoqueTpMovFlagAutom)
      Values (tbEstoqueTpMovCod, tbEstoqueTpMovDescr, tbEstoqueTpMovEntSai, tbEstoqueTpMovEntSaiDet, tbEstoqueTpMovFlagCusto,
              tbEstoqueTpMovFlagSaldo, tbEstoqueTpMovFlagAutom);
      Select 0 As CodRetorno, 'MSG010/SpInserttbestoquetpmov: Tipo de Movimento incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbnaoconformentmat
DELIMITER //
CREATE PROCEDURE `SpInserttbnaoconformentmat`(
IN
tbTpNaoConformidadeCodFkNaoConformEntMat VarChar(20),
tbNaoConformEntMatDtOcor Date,
tbCompraOrdemCompraIdentFkNaoConformEntMat Int(11),
tbCompraOrdemCompraItemSeqFkNaoConformEntMat Int(5),
tbNFEEntradaIdentFkNaoConformEntMat Int(11),
tbNFEEntradaItemSeqFkNaoConformEntMat Int(5),
tbNaoConformEntMatObs VarChar(500),
tbNaoConformEntMatAcao VarChar(500),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN

   If ((tbNaoConformEntMatDtOcor = '') or (tbNaoConformEntMatDtOcor Is Null)) Then
      Set tbNaoConformEntMatDtOcor = CurDate();
   End If;

   If ((tbTpNaoConformidadeCodFkNaoConformEntMat = '') or (tbTpNaoConformidadeCodFkNaoConformEntMat Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbnaoconformentmat: Não foi Informado o Código da Não Conformidade!' As Msg;
   ElseIf
      ((tbNFEEntradaIdentFkNaoConformEntMat = '') or (tbNFEEntradaIdentFkNaoConformEntMat Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbnaoconformentmat: Não foi Informado o Documento de Origem da Não Conformidade!' As Msg;
   ElseIf
      ((tbTpNaoConformidadeCodFkNaoConformEntMat != '') && 
      (Not Exists(Select TpNaoConformidadeCod From tbtpnaoconformidade Where TpNaoConformidadeCod = tbTpNaoConformidadeCodFkNaoConformEntMat)))  Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbnaoconformentmat: Código da Nao Conformidade não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbnaoconformentmat(TpNaoConformidadeCodFkNaoConformEntMat, NaoConformEntMatDtOcor, CompraOrdemCompraIdentFkNaoConformEntMat, 
                                     CompraOrdemCompraItemSeqFkNaoConformEntMat, NFEEntradaIdentFkNaoConformEntMat, NFEEntradaItemSeqFkNaoConformEntMat, 
                                     NaoConformEntMatObs, NaoConformEntMatAcao, NaoConformEntMatFlagAtivo)
      Values (tbTpNaoConformidadeCodFkNaoConformEntMat, tbNaoConformEntMatDtOcor, tbCompraOrdemCompraIdentFkNaoConformEntMat, 
              tbCompraOrdemCompraItemSeqFkNaoConformEntMat, tbNFEEntradaIdentFkNaoConformEntMat, tbNFEEntradaItemSeqFkNaoConformEntMat, 
              tbNaoConformEntMatObs, tbNaoConformEntMatAcao, 1);
      Select 0 As CodRetorno, 'MSG004/SpInserttbnaoconformentmat:  Não Conformidade incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbnfeentrada
DELIMITER //
CREATE PROCEDURE `SpInserttbnfeentrada`(
IN
tbEmpresaIdentFkNFEEntrada Int(11),
tbPessoaIdentFkNFEEntrada Int(11),
tbNFEEntradaPessoaCNPJCPF VarChar(45),
tbNFEEntradaPessoaInscrEstad VarChar(20),
tbIndicInscEstadIdentFkNFEEntrada Int(11),
tbNFEEntradaPessoaInscrMunic VarChar(20),
tbNFEEntradaPessoaInscrSuframa VarChar(10),
tbNFEEntradaPessoaNomeRazaoSocial VarChar(200),
tbNFEEntradaPessoaEndereco VarChar(300),
tbNFEEntradaPessoaEnderecoNr VarChar(10),
tbNFEEntradaPessoaEnderecoCompl VarChar(200),
tbNFEEntradaPessoaFoneDDD VarChar(3),
tbNFEEntradaPessoaNrFone VarChar(20),
tbCEPIdentFkNFEEntrada Int(11),
tbDoctoFiscalIdentFkNFEEntrada Int(11),
tbCompraOrdemCompraIdentFkNFEEntrada Int(11),
tbNFEEntradaNr Int(11),
tbNFEEntradaSerie VarChar(20),
tbNFEEntradaChaveEletr VarChar(100),
tbNFEEntradaDtEmis Date,
tbNFEEntradaDtEntrega Date,
tbCFOPIdentFkNFEEntrada Int(11),
tbNFESaidaIdentFkNFEEntrada Int(11),
tbNFEEntradaPrincFkNFEntrada Int(11),
tbNFEEntradaProdutoServVlrTot Numeric(12,4),
tbNFEEntradaDescontoVlrTot Numeric(12,4),
tbNFEEntradaAcrescVlrTot Numeric(12,4),
tbNFEEntradaOutrosVlrTot  Numeric(12,4),
tbNFEEntradaFreteVlrTot Numeric(12,4),
tbNFEEntradaImpostoVlrTot Numeric(12,4),
tbNFEEntradaSeguroVlrTot Numeric(12,4),
tbNFEEntradaVlrTot Numeric(12,4),
tbNFEEntradaIIVlrTotBase Numeric(12,4),
tbNFEEntradaIIVlrTot Numeric(12,4),
tbCSTIdentIPIFkNFEEntrada Int(11),
tbNFEEntradaIPIVlrTotBase Numeric(12,4),
tbNFEEntradaIPIVlrTot Numeric(12,4),
tbCSTIdentICMSFkNFEEntrada Int(11),
tbNFEEntradaICMSVlrTotBase Numeric(12,4),
tbNFEEntradaICMSVlrTot Numeric(12,4),
tbCSTIdentICMSSTFkNFEEntrada Int(11),
tbNFEEntradaICMSSTVlrTotBase Numeric(12,4),
tbNFEEntradaICMSSTVlrTot Numeric(12,4),
tbNFEEntradaFCPVlrTotBase Numeric(12,4),
tbNFEEntradaFCPVlrTot Numeric(12,4),
tbNFEEntradaFCPSTVlrTotBase Numeric(12,4),
tbNFEEntradaFCPSTVlrTot Numeric(12,4),
tbNFEEntradaFCPSTRetVlrTotBase Numeric(12,4),
tbNFEEntradaFCPSTRetVlrTot Numeric(12,4),
tbNFEEntradaFCPDestVlrTotBase Numeric(12,4),
tbNFEEntradaFCPDestVlrTot Numeric(12,4),
tbCSTIdentPISFkNFEEntrada Int(11),
tbNFEEntradaPISVlrTotBase Numeric(12,4),
tbNFEEntradaPISVlrTot Numeric(12,4),
tbCSTIdentCOFINSFkNFEEntrada Int(11),
tbNFEEntradaCOFINSVlrTotBase Numeric(12,4),
tbNFEEntradaCOFINSVlrTot Numeric(12,4),
tbNFEEntradaISSVlrTotBase Numeric(12,4),
tbNFEEntradaISSVlrTot Numeric(12,4),
tbNFEEntradaISSFlagRetido SmallInt(1),
tbNFEEntradaPISRetVlrTotBase Numeric(12,4),
tbNFEEntradaPISRetVlrTot Numeric(12,4),
tbNFEEntradaCOFINSRetVlrTotBase Numeric(12,4),
tbNFEEntradaCOFINSRetVlrTot Numeric(12,4),
tbNFEEntradaCSLLVlrTotBase Numeric(12,4),
tbNFEEntradaCSLLVlrTot Numeric(12,4),
tbNFEEntradaIRRFVlrTotBase Numeric(12,4),
tbNFEEntradaIRRFVlrTot Numeric(12,4),
tbNFEEntradaIRRFFlagRetido SmallInt(1),
tbNFEEntradaINSSVlrTotBase Numeric(12,4),
tbNFEEntradaINSSVlrTot  Numeric(12,4),
tbNFEEntradaINSSRetVlrTotBase Numeric(12,4),
tbNFEEntradaINSSRetVlrTot Numeric(12,4),
tbNFEEntradaVolumeTot SmallInt(5),
tbNFEEntradaPesTotBruto Numeric(12,4),
tbNFEEntradaPesTotLiquido Numeric(12,4),
tbNFEEntradaParcQtde SmallInt(5),
tbNFEEntradaParcVlrUnit Numeric(12,4),
tbNFEEntradaFreteTp VarChar(3),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbEmpresaIdentFkNFEEntrada = '') or (tbEmpresaIdentFkNFEEntrada Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbnfeentrada: Não foi Informado o Código da Empresa para a NFe de Entrada!' As Msg;
   ElseIf
      ((tbPessoaIdentFkNFEEntrada = '') or (tbPessoaIdentFkNFEEntrada Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbnfeentrada: Não foi Informado o Emitente da NFe de Entrada!' As Msg;
   ElseIf
      ((tbDoctoFiscalIdentFkNFEEntrada = '') or (tbDoctoFiscalIdentFkNFEEntrada Is Null)) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbnfeentrada: Não foi Informado o Tipo de Documento Fiscal da NFe de Entrada!' As Msg;
   ElseIf
      ((tbEmpresaIdentFkNFEEntrada != '') && 
      (Not Exists(Select EmpresaIdent From evomodadm.tbempresa Where EmpresaIdent = tbEmpresaIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbnfeentrada: Código da Empresa Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbPessoaIdentFkNFEEntrada != '') && 
      (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbnfeentrada: Código do Emitente Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbIndicInscEstadIdentFkNFEEntrada != '') && 
      (Not Exists(Select IndicInscEstadIdent From evomodadm.tbindicinscrestad Where IndicInscEstadIdent = tbIndicInscEstadIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbnfeentrada: Código do Indicativo da I.E. Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCEPIdentFkNFEEntrada != '') && 
      (Not Exists(Select CEPIdent From evomodadm.tbcep Where CEPIdent = tbCEPIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbnfeentrada: Código do CEP Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbDoctoFiscalIdentFkNFEEntrada != '') && 
      (Not Exists(Select DoctoFiscalIdent From tbdoctofiscal Where DoctoFiscalIdent = tbDoctoFiscalIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbnfeentrada: Código do Documento Fiscal Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCompraOrdemCompraIdentFkNFEEntrada != '') && 
      (Not Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbnfeentrada: Código da Ordem de Compra Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCFOPIdentFkNFEEntrada != '') && 
      (Not Exists(Select CFOPIdent From evomodadm.tbcfop Where CFOPIdent = tbCFOPIdentFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbnfeentrada: Código da CFOP Informado na NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbNFEEntradaPrincFkNFEntrada != '') && 
      (Not Exists(Select NFEEntradaIdent From tbnfeentrada Where NFEEntradaIdent = tbNFEEntradaPrincFkNFEntrada)))  Then
      Select 1 As CodRetorno, 'MSG011/SpInserttbnfeentrada: NFe de Entrada Principal referente ao CTe não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentIPIFkNFEEntrada != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentIPIFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG012/SpInserttbnfeentrada: Código da CST do IPI Informado na NFe de Entrada não existe na base de dados!' As Msg;      
   ElseIf
      ((tbCSTIdentICMSFkNFEEntrada != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentICMSFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG013/SpInserttbnfeentrada: Código da CST do ICMS Informado na NFe de Entrada não existe na base de dados!' As Msg;      
   ElseIf
      ((tbCSTIdentICMSSTFkNFEEntrada != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentICMSSTFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG014/SpInserttbnfeentrada: Código da CST do ICMS ST Informado na NFe de Entrada não existe na base de dados!' As Msg;      
   ElseIf
      ((tbCSTIdentPISFkNFEEntrada != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentPISFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG015/SpInserttbnfeentrada: Código da CST do PIS Informado na NFe de Entrada não existe na base de dados!' As Msg;            
   ElseIf
      ((tbCSTIdentCOFINSFkNFEEntrada != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentCOFINSFkNFEEntrada)))  Then
      Select 1 As CodRetorno, 'MSG016/SpInserttbnfeentrada: Código da CST do COFINS Informado na NFe de Entrada não existe na base de dados!' As Msg;                  
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbnfeentrada(EmpresaIdentFkNFEEntrada, PessoaIdentFkNFEEntrada, NFEEntradaPessoaCNPJCPF, NFEEntradaPessoaInscrEstad,
                  IndicInscEstadIdentFkNFEEntrada, NFEEntradaPessoaInscrMunic, NFEEntradaPessoaInscrSuframa, NFEEntradaPessoaNomeRazaoSocial, 
                  NFEEntradaPessoaEndereco, NFEEntradaPessoaEnderecoNr, NFEEntradaPessoaEnderecoCompl, NFEEntradaPessoaFoneDDD, 
                  NFEEntradaPessoaNrFone, CEPIdentFkNFEEntrada, DoctoFiscalIdentFkNFEEntrada, CompraOrdemCompraIdentFkNFEEntrada, 
                  NFEEntradaNr, NFEEntradaSerie, NFEEntradaChaveEletr, NFEEntradaDtEmis, NFEEntradaDtEntrega, CFOPIdentFkNFEEntrada, 
                  NFESaidaIdentFkNFEEntrada, NFEEntradaPrincFkNFEntrada, NFEEntradaProdutoServVlrTot, NFEEntradaDescontoVlrTot, 
                  NFEEntradaAcrescVlrTot, NFEEntradaOutrosVlrTot, NFEEntradaFreteVlrTot, NFEEntradaImpostoVlrTot, NFEEntradaSeguroVlrTot, 
                  NFEEntradaVlrTot, NFEEntradaIIVlrTotBase, NFEEntradaIIVlrTot, CSTIdentIPIFkNFEEntrada, NFEEntradaIPIVlrTotBase, 
                  NFEEntradaIPIVlrTot, CSTIdentICMSFkNFEEntrada, NFEEntradaICMSVlrTotBase, NFEEntradaICMSVlrTot, CSTIdentICMSSTFkNFEEntrada, 
                  NFEEntradaICMSSTVlrTotBase, NFEEntradaICMSSTVlrTot, NFEEntradaFCPVlrTotBase, NFEEntradaFCPVlrTot, NFEEntradaFCPSTVlrTotBase, 
                  NFEEntradaFCPSTVlrTot, NFEEntradaFCPSTRetVlrTotBase, NFEEntradaFCPSTRetVlrTot, NFEEntradaFCPDestVlrTotBase, 
                  NFEEntradaFCPDestVlrTot, CSTIdentPISFkNFEEntrada, NFEEntradaPISVlrTotBase, NFEEntradaPISVlrTot, CSTIdentCOFINSFkNFEEntrada,
                  NFEEntradaCOFINSVlrTotBase, NFEEntradaCOFINSVlrTot, NFEEntradaISSVlrTotBase, NFEEntradaISSVlrTot, NFEEntradaISSFlagRetido, 
                  NFEEntradaPISRetVlrTotBase, NFEEntradaPISRetVlrTot, NFEEntradaCOFINSRetVlrTotBase, NFEEntradaCOFINSRetVlrTot, 
                  NFEEntradaCSLLVlrTotBase, NFEEntradaCSLLVlrTot, NFEEntradaIRRFVlrTotBase, NFEEntradaIRRFVlrTot, NFEEntradaIRRFFlagRetido, 
                  NFEEntradaINSSVlrTotBase, NFEEntradaINSSVlrTot, NFEEntradaINSSRetVlrTotBase, NFEEntradaINSSRetVlrTot, NFEEntradaVolumeTot, 
                  NFEEntradaPesTotBruto, NFEEntradaPesTotLiquido, NFEEntradaParcQtde, NFEEntradaParcVlrUnit, NFEEntradaFreteTp, NFEEntradaFlagAtivo)
      Values (tbEmpresaIdentFkNFEEntrada, tbPessoaIdentFkNFEEntrada, tbNFEEntradaPessoaCNPJCPF, tbNFEEntradaPessoaInscrEstad,
              tbIndicInscEstadIdentFkNFEEntrada, tbNFEEntradaPessoaInscrMunic, tbNFEEntradaPessoaInscrSuframa, tbNFEEntradaPessoaNomeRazaoSocial, 
              tbNFEEntradaPessoaEndereco, tbNFEEntradaPessoaEnderecoNr, tbNFEEntradaPessoaEnderecoCompl, tbNFEEntradaPessoaFoneDDD, 
              tbNFEEntradaPessoaNrFone, tbCEPIdentFkNFEEntrada, tbDoctoFiscalIdentFkNFEEntrada, tbCompraOrdemCompraIdentFkNFEEntrada, 
              tbNFEEntradaNr, tbNFEEntradaSerie, tbNFEEntradaChaveEletr, tbNFEEntradaDtEmis, tbNFEEntradaDtEntrega, tbCFOPIdentFkNFEEntrada, 
              tbNFESaidaIdentFkNFEEntrada, tbNFEEntradaPrincFkNFEntrada, tbNFEEntradaProdutoServVlrTot, tbNFEEntradaDescontoVlrTot, 
              tbNFEEntradaAcrescVlrTot, tbNFEEntradaOutrosVlrTot, tbNFEEntradaFreteVlrTot, tbNFEEntradaImpostoVlrTot, tbNFEEntradaSeguroVlrTot, 
              tbNFEEntradaVlrTot, tbNFEEntradaIIVlrTotBase, tbNFEEntradaIIVlrTot, tbCSTIdentIPIFkNFEEntrada, tbNFEEntradaIPIVlrTotBase, 
              tbNFEEntradaIPIVlrTot, tbCSTIdentICMSFkNFEEntrada, tbNFEEntradaICMSVlrTotBase, tbNFEEntradaICMSVlrTot, tbCSTIdentICMSSTFkNFEEntrada, 
              tbNFEEntradaICMSSTVlrTotBase, tbNFEEntradaICMSSTVlrTot, tbNFEEntradaFCPVlrTotBase, tbNFEEntradaFCPVlrTot, tbNFEEntradaFCPSTVlrTotBase, 
              tbNFEEntradaFCPSTVlrTot, tbNFEEntradaFCPSTRetVlrTotBase, tbNFEEntradaFCPSTRetVlrTot, tbNFEEntradaFCPDestVlrTotBase, 
              tbNFEEntradaFCPDestVlrTot, tbCSTIdentPISFkNFEEntrada, tbNFEEntradaPISVlrTotBase, tbNFEEntradaPISVlrTot, tbCSTIdentCOFINSFkNFEEntrada,
              tbNFEEntradaCOFINSVlrTotBase, tbNFEEntradaCOFINSVlrTot, tbNFEEntradaISSVlrTotBase, tbNFEEntradaISSVlrTot, tbNFEEntradaISSFlagRetido, 
              tbNFEEntradaPISRetVlrTotBase, tbNFEEntradaPISRetVlrTot, tbNFEEntradaCOFINSRetVlrTotBase, tbNFEEntradaCOFINSRetVlrTot, 
              tbNFEEntradaCSLLVlrTotBase, tbNFEEntradaCSLLVlrTot, tbNFEEntradaIRRFVlrTotBase, tbNFEEntradaIRRFVlrTot, tbNFEEntradaIRRFFlagRetido, 
              tbNFEEntradaINSSVlrTotBase, tbNFEEntradaINSSVlrTot, tbNFEEntradaINSSRetVlrTotBase, tbNFEEntradaINSSRetVlrTot, tbNFEEntradaVolumeTot, 
              tbNFEEntradaPesTotBruto, tbNFEEntradaPesTotLiquido, tbNFEEntradaParcQtde, tbNFEEntradaParcVlrUnit, tbNFEEntradaFreteTp, 1);
      Select 0 As CodRetorno, 'MSG017/SpInserttbnfeentrada:  NFe de Entrada incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbnfeentradaitem
DELIMITER //
CREATE PROCEDURE `SpInserttbnfeentradaitem`(
IN
tbNFEEntradaIdentFkNFEEntradaItem Int(11),
tbNFEEntradaItemSeq Int(5),
tbProdutoEmpresaIdentFkNFEEntradaItem Int(11),
tbNFEEntradaItemProdutoFornecCod VarChar(50),
tbClassifServicoCodFkNFEEntradaItem VarChar(20),
tbNFEEntradaItemProdutoServicoFornecDescr VarChar(300),
tbNCMIdentFkNFEEntradaItem Int(11),
tbCFOPIdentFkNFEEntradaItem Int(11),
tbOrigMercadoriaCodFkNFEEntradaItem SmallInt(1),
tbCSTIdentFkNFEEntradaItem Int(11),
tbUnidMedidaIdentifFkNFEEntradaItem Int(11),
tbNFEEntradaItemUnidMedida VarChar(20),
tbNFEEntradaItemQtde Numeric(12,4),
tbNFEEntradaItemProdutoServVlrUnit Numeric(12,4),
tbNFEEntradaItemDescontoVlr Numeric(12,4),
tbNFEEntradaItemAcrescVlr Numeric(12,4),
tbNFEEntradaItemOutrosVlr Numeric(12,4),
tbNFEEntradaItemFreteVlr Numeric(12,4),
tbNFEEntradaItemSeguroVlr Numeric(12,4),
tbNFEEntradaItemProdutoServVlrTot Numeric(12,4),
tbNFEEntradaItemIIVlrTotBase Numeric(12,4),
tbNFEEntradaItemIIPerc Numeric(12,4),
tbNFEEntradaItemIIVlrTot Numeric(12,4),
tbCSTIdentIPIFkNFEEntradaItem Int(11),
tbNFEEntradaItemIPIVlrTotBase Numeric(12,4),
tbNFEEntradaItemIPIPerc Numeric(12,4),
tbNFEEntradaItemIPIVlrTot Numeric(12,4),
tbCSTIdentICMSFkNFEEntradaItem Int(11),
tbNFEEntradaItemICMSVlrTotBase Numeric(12,4),
tbNFEEntradaItemICMSPerc Numeric(12,4),
tbNFEEntradaItemICMSVlrTot Numeric(12,4),
tbCSTIdentICMSSTFkNFEEntradaItem  Int(11),
tbNFEEntradaItemICMSSTVlrTotBase Numeric(12,4),
tbNFEEntradaItemICMSSTPerc Numeric(12,4),
tbNFEEntradaItemICMSSTVlrTot Numeric(12,4),
tbNFEEntradaItemFCPVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPPerc Numeric(12,4),
tbNFEEntradaItemFCPVlrTot Numeric(12,4),
tbNFEEntradaItemFCPSTVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPSTPerc Numeric(12,4),
tbNFEEntradaItemFCPSTVlrTot Numeric(12,4),
tbNFEEntradaItemFCPSTRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPSTRetPerc Numeric(12,4),
tbNFEEntradaItemFCPSTRetVlrTot Numeric(12,4),
tbNFEEntradaItemFCPDestVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPDestPerc Numeric(12,4),
tbNFEEntradaItemFCPDestVlrTot Numeric(12,4),
tbCSTIdentPISFkNFEEntradaItem Int(11),
tbNFEEntradaItemPISVlrTotBase Numeric(12,4),
tbNFEEntradaItemPISPerc Numeric(12,4),
tbNFEEntradaItemPISVlrTot Numeric(12,4),
tbCSTIdentCOFINSFkNFEEntradaItem Int(11),
tbNFEEntradaItemCOFINSVlrTotBase Numeric(12,4),
tbNFEEntradaItemCOFINSPerc Numeric(12,4),
tbNFEEntradaItemCOFINSVlrTot Numeric(12,4),
tbNFEEntradaItemISSVlrTotBase Numeric(12,4),
tbNFEEntradaItemISSPerc Numeric(12,4),
tbNFEEntradaItemISSVlrTot Numeric(12,4),
tbNFEEntradaItemISSFlagRetido SmallInt(1),
tbNFEEntradaItemPISRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemPISRetPerc Numeric(12,4),
tbNFEEntradaItemPISRetVlrTot Numeric(12,4),
tbNFEEntradaItemCOFINSRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemCOFINSRetPerc Numeric(12,4),
tbNFEEntradaItemCOFINSRetVlrTot Numeric(12,4),
tbNFEEntradaItemCSLLVlrTotBase Numeric(12,4),
tbNFEEntradaItemCSLLPerc Numeric(12,4),
tbNFEEntradaItemCSLLVlrTot Numeric(12,4),
tbNFEEntradaItemIRRFVlrTotBase Numeric(12,4),
tbNFEEntradaItemIRRFPerc Numeric(12,4),
tbNFEEntradaItemIRRFVlrTot Numeric(12,4),
tbNFEEntradaItemIRRFFlagRetido SmallInt(1),
tbNFEEntradaItemINSSVlrTotBase Numeric(12,4),
tbNFEEntradaItemINSSPerc Numeric(12,4),
tbNFEEntradaItemINSSVlrTot Numeric(12,4),
tbNFEEntradaItemINSSRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemINSSRetPerc Numeric(12,4),
tbNFEEntradaItemINSSRetVlrTot Numeric(12,4),
tbNFEEntradaItemPesBruto Numeric(12,4),
tbNFEEntradaItemPesLiquido Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbNFEEntradaIdentFkNFEEntradaItem = '') or (tbNFEEntradaIdentFkNFEEntradaItem Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbnfeentradaitem: Não foi Informado o Codigo da NFe de Entrada para o item da NFe de Entrada!' As Msg;
   ElseIf
      ((tbNFEEntradaItemSeq = '') or (tbNFEEntradaItemSeq Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbnfeentradaitem: Não foi Informado o Número Sequencial para o item da NFE de Entrada!' As Msg;
   ElseIf
      ((tbNFEEntradaIdentFkNFEEntradaItem != '') && (tbNFEEntradaItemSeq != '') &&
       (Exists (Select NFEEntradaIdentFkNFEEntradaItem From tbnfeentradaitem Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem
                And NFEEntradaItemSeq = tbNFEEntradaItemSeq))) Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbnfeentradaitem: Sequencia do Item da Nota Fiscal de Entrada existe na base de dados!' As Msg;
   ElseIf
      ((tbProdutoEmpresaIdentFkNFEEntradaItem != '') && 
      (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG004/SpInserttbnfeentradaitem: Produto/Empresa Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbClassifServicoCodFkNFEEntradaItem != '') && 
      (Not Exists(Select ClassifServicoCod From tbclassifservico Where tbclassifservico = tbClassifServicoCodFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG005/SpInserttbnfeentradaitem: Código da Classificação do Serviço Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbNCMIdentFkNFEEntradaItem != '') && 
      (Not Exists(Select NCMIdent From evomodadm.tbncm Where NCMIdent = tbNCMIdentFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG006/SpInserttbnfeentradaitem: Código da NCM Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCFOPIdentFkNFEEntradaItem != '') && 
      (Not Exists(Select CFOPIdent From evomodadm.tbcfop Where CFOPIdent = tbCFOPIdentFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG007/SpInserttbnfeentradaitem: Código do CFOP Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbOrigMercadoriaCodFkNFEEntradaItem != '') && 
      (Not Exists(Select OrigMercadoriaCod From tborigmercadoria Where OrigMercadoriaCod = tbOrigMercadoriaCodFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG008/SpInserttbnfeentradaitem: Código da Origem da Mercadoria Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG009/SpInserttbnfeentradaitem: Código CST Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbUnidMedidaIdentifFkNFEEntradaItem != '') && 
      (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG010/SpInserttbnfeentradaitem: Código da Unidade de Medida Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentIPIFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentIPIFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG011/SpInserttbnfeentradaitem: Código da CST IPI Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentICMSFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentICMSFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG012/SpInserttbnfeentradaitem: Código da CST ICMS Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentICMSSTFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentICMSSTFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG013/SpInserttbnfeentradaitem: Código da CST ICMS ST Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentPISFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentPISFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG014/SpInserttbnfeentradaitem: Código da CST PIS Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   ElseIf
      ((tbCSTIdentCOFINSFkNFEEntradaItem != '') && 
      (Not Exists(Select CSTIdent From tbcst Where CSTIdent = tbCSTIdentCOFINSFkNFEEntradaItem)))  Then
      Select 1 As CodRetorno, 'MSG015/SpInserttbnfeentradaitem: Código da CST COFINS Informado para o item da NFe de Entrada não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbnfeentradaitem(NFEEntradaIdentFkNFEEntradaItem, NFEEntradaItemSeq, ProdutoEmpresaIdentFkNFEEntradaItem, NFEEntradaItemProdutoFornecCod, 
                                   ClassifServicoCodFkNFEEntradaItem, NFEEntradaItemProdutoServicoFornecDescr, NCMIdentFkNFEEntradaItem, 
                                   CFOPIdentFkNFEEntradaItem, OrigMercadoriaCodFkNFEEntradaItem, CSTIdentFkNFEEntradaItem, 
                                   UnidMedidaIdentifFkNFEEntradaItem, NFEEntradaItemUnidMedida, NFEEntradaItemQtde, 
                                   NFEEntradaItemProdutoServVlrUnit, NFEEntradaItemDescontoVlr, NFEEntradaItemAcrescVlr, 
                                   NFEEntradaItemOutrosVlr, NFEEntradaItemFreteVlr, NFEEntradaItemSeguroVlr, 
                                   NFEEntradaItemProdutoServVlrTot, NFEEntradaItemIIVlrTotBase, NFEEntradaItemIIPerc, 
                                   NFEEntradaItemIIVlrTot, CSTIdentIPIFkNFEEntradaItem, NFEEntradaItemIPIVlrTotBase, 
                                   NFEEntradaItemIPIPerc, NFEEntradaItemIPIVlrTot, CSTIdentICMSFkNFEEntradaItem, 
                                   NFEEntradaItemICMSVlrTotBase, NFEEntradaItemICMSPerc, NFEEntradaItemICMSVlrTot, 
                                   CSTIdentICMSSTFkNFEEntradaItem, NFEEntradaItemICMSSTVlrTotBase, NFEEntradaItemICMSSTPerc, 
                                   NFEEntradaItemICMSSTVlrTot, NFEEntradaItemFCPVlrTotBase, NFEEntradaItemFCPPerc, 
                                   NFEEntradaItemFCPVlrTot, NFEEntradaItemFCPSTVlrTotBase, NFEEntradaItemFCPSTPerc, 
                                   NFEEntradaItemFCPSTVlrTot, NFEEntradaItemFCPSTRetVlrTotBase, NFEEntradaItemFCPSTRetPerc, 
                                   NFEEntradaItemFCPSTRetVlrTot, NFEEntradaItemFCPDestVlrTotBase, NFEEntradaItemFCPDestPerc, 
                                   NFEEntradaItemFCPDestVlrTot, CSTIdentPISFkNFEEntradaItem, NFEEntradaItemPISVlrTotBase, 
                                   NFEEntradaItemPISPerc, NFEEntradaItemPISVlrTot, CSTIdentCOFINSFkNFEEntradaItem, 
                                   NFEEntradaItemCOFINSVlrTotBase, NFEEntradaItemCOFINSPerc, NFEEntradaItemCOFINSVlrTot, 
                                   NFEEntradaItemISSVlrTotBase, NFEEntradaItemISSPerc, NFEEntradaItemISSVlrTot, 
                                   NFEEntradaItemISSFlagRetido, NFEEntradaItemPISRetVlrTotBase, NFEEntradaItemPISRetPerc, 
                                   NFEEntradaItemPISRetVlrTot, NFEEntradaItemCOFINSRetVlrTotBase, NFEEntradaItemCOFINSRetPerc, 
                                   NFEEntradaItemCOFINSRetVlrTot, NFEEntradaItemCSLLVlrTotBase, NFEEntradaItemCSLLPerc, 
                                   NFEEntradaItemCSLLVlrTot, NFEEntradaItemIRRFVlrTotBase, NFEEntradaItemIRRFPerc, 
                                   NFEEntradaItemIRRFVlrTot, NFEEntradaItemIRRFFlagRetido, NFEEntradaItemINSSVlrTotBase, 
                                   NFEEntradaItemINSSPerc, NFEEntradaItemINSSVlrTot, NFEEntradaItemINSSRetVlrTotBase, 
                                   NFEEntradaItemINSSRetPerc, NFEEntradaItemINSSRetVlrTot, NFEEntradaItemPesBruto, 
                                   NFEEntradaItemPesLiquido, NFEEntradaItemFlagAtivo) 
      Values (tbNFEEntradaIdentFkNFEEntradaItem, tbNFEEntradaItemSeq, tbProdutoEmpresaIdentFkNFEEntradaItem, tbNFEEntradaItemProdutoFornecCod, 
              tbClassifServicoCodFkNFEEntradaItem, tbNFEEntradaItemProdutoServicoFornecDescr, tbNCMIdentFkNFEEntradaItem, 
              tbCFOPIdentFkNFEEntradaItem, tbOrigMercadoriaCodFkNFEEntradaItem, tbCSTIdentFkNFEEntradaItem, 
              tbUnidMedidaIdentifFkNFEEntradaItem, tbNFEEntradaItemUnidMedida, tbNFEEntradaItemQtde, 
              tbNFEEntradaItemProdutoServVlrUnit, tbNFEEntradaItemDescontoVlr, tbNFEEntradaItemAcrescVlr, 
              tbNFEEntradaItemOutrosVlr, tbNFEEntradaItemFreteVlr, tbNFEEntradaItemSeguroVlr, 
              tbNFEEntradaItemProdutoServVlrTot, tbNFEEntradaItemIIVlrTotBase, tbNFEEntradaItemIIPerc, 
              tbNFEEntradaItemIIVlrTot, tbCSTIdentIPIFkNFEEntradaItem, tbNFEEntradaItemIPIVlrTotBase, 
              tbNFEEntradaItemIPIPerc, tbNFEEntradaItemIPIVlrTot, tbCSTIdentICMSFkNFEEntradaItem, 
              tbNFEEntradaItemICMSVlrTotBase, tbNFEEntradaItemICMSPerc, tbNFEEntradaItemICMSVlrTot, 
              tbCSTIdentICMSSTFkNFEEntradaItem, tbNFEEntradaItemICMSSTVlrTotBase, tbNFEEntradaItemICMSSTPerc, 
              tbNFEEntradaItemICMSSTVlrTot, tbNFEEntradaItemFCPVlrTotBase, tbNFEEntradaItemFCPPerc, 
              tbNFEEntradaItemFCPVlrTot, tbNFEEntradaItemFCPSTVlrTotBase, tbNFEEntradaItemFCPSTPerc, 
              tbNFEEntradaItemFCPSTVlrTot, tbNFEEntradaItemFCPSTRetVlrTotBase, tbNFEEntradaItemFCPSTRetPerc, 
              tbNFEEntradaItemFCPSTRetVlrTot, tbNFEEntradaItemFCPDestVlrTotBase, tbNFEEntradaItemFCPDestPerc, 
              tbNFEEntradaItemFCPDestVlrTot, tbCSTIdentPISFkNFEEntradaItem, tbNFEEntradaItemPISVlrTotBase, 
              tbNFEEntradaItemPISPerc, tbNFEEntradaItemPISVlrTot, tbCSTIdentCOFINSFkNFEEntradaItem, 
              tbNFEEntradaItemCOFINSVlrTotBase, tbNFEEntradaItemCOFINSPerc, tbNFEEntradaItemCOFINSVlrTot, 
              tbNFEEntradaItemISSVlrTotBase, tbNFEEntradaItemISSPerc, tbNFEEntradaItemISSVlrTot, 
              tbNFEEntradaItemISSFlagRetido, tbNFEEntradaItemPISRetVlrTotBase, tbNFEEntradaItemPISRetPerc, 
              tbNFEEntradaItemPISRetVlrTot, tbNFEEntradaItemCOFINSRetVlrTotBase, tbNFEEntradaItemCOFINSRetPerc, 
              tbNFEEntradaItemCOFINSRetVlrTot, tbNFEEntradaItemCSLLVlrTotBase, tbNFEEntradaItemCSLLPerc, 
              tbNFEEntradaItemCSLLVlrTot, tbNFEEntradaItemIRRFVlrTotBase, tbNFEEntradaItemIRRFPerc, 
              tbNFEEntradaItemIRRFVlrTot, tbNFEEntradaItemIRRFFlagRetido, tbNFEEntradaItemINSSVlrTotBase, 
              tbNFEEntradaItemINSSPerc, tbNFEEntradaItemINSSVlrTot, tbNFEEntradaItemINSSRetVlrTotBase, 
              tbNFEEntradaItemINSSRetPerc, tbNFEEntradaItemINSSRetVlrTot, tbNFEEntradaItemPesBruto, 
              tbNFEEntradaItemPesLiquido, 1);
      Select 0 As CodRetorno, 'MSG016/SpInserttbnfeentradaitem: Item NFe de Entrada incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbnfeentradaxml
DELIMITER //
CREATE PROCEDURE `SpInserttbnfeentradaxml`(
IN
tbNFEEntradaIdentFkNFEEntradaXML Int(11),
tbNFEEntradaXMLConteudo Blob,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbNFEEntradaIdentFkNFEEntradaXML = '') or (tbNFEEntradaIdentFkNFEEntradaXML Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbnfeentradaxml: Não foi Informado o Código da NFe de Entrada para o XML!' As Msg;
   ElseIf
      ((tbNFEEntradaXMLConteudo = '') or (tbNFEEntradaXMLConteudo Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbnfeentradaxml: Não foi Informado o conteúdo XML da NFe de Entrada!' As Msg;
   ElseIf
      ((tbNFEEntradaIdentFkNFEEntradaXML != '') && 
      (Not Exists(Select NFEEntradaIdent From tbnfeentrada Where NFEEntradaIdent = tbNFEEntradaIdentFkNFEEntradaXML)))  Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbnfeentradaxml: NFe de Entrada não existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbnfeentradaxml(NFEEntradaIdentFkNFEEntradaXML, NFEEntradaXMLConteudo, NFEEntradaXMLFlagAtivo)
      Values (tbNFEEntradaIdentFkNFEEntradaXML, tbNFEEntradaXMLConteudo, 1);
      Select 0 As CodRetorno, 'MSG004/SpInserttbnfeentradaxml:  XML da NFe de Entrada incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttborigmercadoria
DELIMITER //
CREATE PROCEDURE `SpInserttborigmercadoria`(
IN
tbOrigMercadoriaCod SmallInt(1),
tbOrigMercadoriaDescr VarChar(300),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  
   If ((tbOrigMercadoriaCod = '') or (tbOrigMercadoriaCod Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttborigmercadoria: Não foi Informado o Código da Origem da Mercadoria!' As Msg;
   Elseif
      ((tbOrigMercadoriaCod != '') &&
      (Exists(Select OrigMercadoriaCod From tborigmercadoria Where OrigMercadoriaCod = tbOrigMercadoriaCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttborigmercadoria: Código da Origem da Mercadoria existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tborigmercadoria(OrigMercadoriaCod, OrigMercadoriaDescr, OrigMercadoriaFlagAtivo)
      Values (tbOrigMercadoriaCod, tbOrigMercadoriaDescr, 1);
      Select 0 As CodRetorno, 'MSG003/SpInserttbcrt: Código da Origem da Mercadoria incluído com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpInserttbtpnaoconformidade
DELIMITER //
CREATE PROCEDURE `SpInserttbtpnaoconformidade`(
IN
tbTpNaoConformidadeCod VarChar(20),
tbTpNaoConformidadeDescr VarChar(300),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
   
   If ((tbTpNaoConformidadeCod = '') or (tbTpNaoConformidadeCod Is Null)) Then
      Select 1 As CodRetorno, 'MSG001/SpInserttbtpnaoconformidade: Não foi Informado o Código da Não Conformidade!' As Msg;
   ElseIf
      ((tbTpNaoConformidadeDescr = '') or (tbTpNaoConformidadeDescr Is Null)) Then
      Select 1 As CodRetorno, 'MSG002/SpInserttbtpnaoconformidade: Não foi Informado a Descrição da Não Conformidade!' As Msg;
   ElseIf
      ((tbTpNaoConformidadeCod != '') && 
      (Exists(Select TpNaoConformidadeCod From tbtpnaoconformidade Where TpNaoConformidadeCod = tbTpNaoConformidadeCod)))  Then
      Select 1 As CodRetorno, 'MSG003/SpInserttbtpnaoconformidade: Codigo da Não Conformidade existe na base de dados!' As Msg;
   Elseif 
      Exists (Select 1 As Inclusao ) Then
      Insert Into tbtpnaoconformidade(TpNaoConformidadeCod, TpNaoConformidadeDescr, TpNaoConformidadeFlagAtivo)
      Values (tbTpNaoConformidadeCod, tbTpNaoConformidadeDescr, 1);
      Select 0 As CodRetorno, 'MSG004/SpInserttbtpnaoconformidade:  Código da Não Conformidade incluída com sucesso!' As Msg;
   End If;      
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbclassifservico
DELIMITER //
CREATE PROCEDURE `SpUpdatetbclassifservico`(
IN 
tbClassifServicoCod VarChar(20),
tbClassifServicoDescr VarChar(500), 
tbClassifServicoFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbClassifServicoCod = '') or (tbClassifServicoCod Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbclassifservico: Código da Classificação do Serviço não informado!' As Msg;
  ElseIf ((tbClassifServicoCod != '') &&
     (Not Exists(Select ClassifServicoCod From tbclassifservico 
                 Where ClassifServicoCod = tbClassifServicoCod))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbclassifservico: Código da Classificação do Serviço não localizado!' As Msg;     
  ElseIf (Exists(Select ClassifServicoCod From tbclassifservico 
                 Where ClassifServicoCod = tbClassifServicoCod))  Then
  Update tbclassifservico
  Set ClassifServicoDescr = Case
                            When tbClassifServicoDescr != '' Then tbClassifServicoDescr
                            Else ClassifServicoDescr
                            End,
      ClassifServicoFlagAtivo = Case
                                When tbClassifServicoFlagAtivo != '' Then  tbClassifServicoFlagAtivo
                                Else ClassifServicoFlagAtivo
                                End
  Where ClassifServicoCod = tbClassifServicoCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbclassifservico: Atualização realizada com sucesso!' As Msg;
  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcompraalcadageral
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcompraalcadageral`(
IN 
tbCompraAlcadaGeralIdent Int(11), 
tbPessoaIdentAprovFkCompraAlcadaGeral Int(11), 
tbCompraAlcadaGeralFlagSolic SmallInt(1),
tbCompraAlcadaGeralSolicVlrLimite Numeric(12,4),
tbCompraAlcadaGeralFlagRequis SmallInt(1),
tbCompraAlcadaGeralRequisVlrLimite Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraAlcadaGeralIdent = '') or (tbCompraAlcadaGeralIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraalcadageral: Identificador Alçada não informado!' As Msg;
  ElseIf ((tbCompraAlcadaGeralIdent != '') &&
     (Not Exists(Select CompraAlcadaGeralIdent From tbcompraalcadageral 
                 Where CompraAlcadaGeralIdent = tbCompraAlcadaGeralIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcompraalcadageral: Alçada não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CompraAlcadaGeralIdent From tbcompraalcadageral 
                 Where CompraAlcadaGeralIdent = tbCompraAlcadaGeralIdent))  Then
  Insert Into tbcompraalcadageral(PessoaIdentAprovFkCompraAlcadaGeral, CompraAlcadaGeralFlagSolic, CompraAlcadaGeralSolicVlrLimite,
                                  CompraAlcadaGeralFlagRequis, CompraAlcadaGeralRequisVlrLimite, CompraAlcadaGeralDtCanc)               
  Select PessoaIdentAprovFkCompraAlcadaGeral,
         If(tbCompraAlcadaGeralFlagSolic != '', tbCompraAlcadaGeralFlagSolic, CompraAlcadaGeralFlagSolic),
         If(tbCompraAlcadaGeralSolicVlrLimite != '', tbCompraAlcadaGeralSolicVlrLimite, CompraAlcadaGeralSolicVlrLimite),
         If(tbCompraAlcadaGeralFlagRequis != '', tbCompraAlcadaGeralFlagRequis, CompraAlcadaGeralFlagRequis),
         If(tbCompraAlcadaGeralRequisVlrLimite != '', tbCompraAlcadaGeralRequisVlrLimite, CompraAlcadaGeralRequisVlrLimite),
         Null
  From tbcompraalcadageral
  Where CompraAlcadaGeralIdent = tbCompraAlcadaGeralIdent;
  Update tbcompraalcadageral
  Set CompraAlcadaGeralDtCanc = CurDate()
  Where CompraAlcadaGeralIdent = tbCompraAlcadaGeralIdent;          
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcompraalcadageral: Atualização realizada com sucesso!' As Msg;
  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcompraalcadaprodutoempresa
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcompraalcadaprodutoempresa`(
IN 
tbCompraAlcadaProdutoEmpresaIdent Int(11), 
tbCompraAlcadaProdutoEmpresaFlagSolic SmallInt(1),
tbCompraAlcadaProdutoEmpresaSolicQtdeLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaSolicVlrLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaFlagRequis SmallInt(1),
tbCompraAlcadaProdutoEmpresaRequisQtdeLimite Numeric(12,4),
tbCompraAlcadaProdutoEmpresaRequisVlrLimite  Numeric(12,4),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraAlcadaProdutoEmpresaIdent = '') or (tbCompraAlcadaProdutoEmpresaIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraalcadaprodutoempresa: Identificador Alçada não informado!' As Msg;
  ElseIf ((tbCompraAlcadaProdutoEmpresaIdent != '') &&
     (Not Exists(Select CompraAlcadaProdutoEmpresaIdent From tbcompraalcadaprodutoempresa 
                 Where CompraAlcadaProdutoEmpresaIdent = tbCompraAlcadaProdutoEmpresaIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcompraalcadaprodutoempresa: Alçada não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CompraAlcadaProdutoEmpresaIdent From tbcompraalcadaprodutoempresa 
                 Where CompraAlcadaProdutoEmpresaIdent = tbCompraAlcadaProdutoEmpresaIdent))  Then
  Insert Into tbcompraalcadaprodutoempresa (PessoaIdentAprovFkCompraAlcadaProdutoEmpresa, ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
                                            CompraAlcadaProdutoEmpresaFlagSolic, CompraAlcadaProdutoEmpresaSolicQtdeLimite, CompraAlcadaProdutoEmpresaSolicVlrLimite,
                                            CompraAlcadaProdutoEmpresaFlagRequis, CompraAlcadaProdutoEmpresaRequisQtdeLimite, CompraAlcadaProdutoEmpresaRequisVlrLimite,
                                            CompraAlcadaProdutoEmpresaDtCanc)               
  Select PessoaIdentAprovFkCompraAlcadaProdutoEmpresa, ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
         If(tbCompraAlcadaProdutoEmpresaFlagSolic != '', tbCompraAlcadaProdutoEmpresaFlagSolic, CompraAlcadaProdutoEmpresaFlagSolic),
         If(CompraAlcadaProdutoEmpresaSolicQtdeLimite != '', tbCompraAlcadaProdutoEmpresaSolicQtdeLimite, CompraAlcadaProdutoEmpresaSolicQtdeLimite),
         If(tbCompraAlcadaProdutoEmpresaSolicVlrLimite != '', tbCompraAlcadaProdutoEmpresaSolicVlrLimite, CompraAlcadaProdutoEmpresaSolicVlrLimite),
         If(tbCompraAlcadaProdutoEmpresaFlagRequis != '', tbCompraAlcadaProdutoEmpresaFlagRequis, CompraAlcadaProdutoEmpresaFlagRequis),
         If(tbCompraAlcadaProdutoEmpresaRequisQtdeLimite != '', tbCompraAlcadaProdutoEmpresaRequisQtdeLimite, CompraAlcadaProdutoEmpresaRequisQtdeLimite),
         If(tbCompraAlcadaProdutoEmpresaRequisVlrLimite != '', tbCompraAlcadaProdutoEmpresaRequisVlrLimite, CompraAlcadaProdutoEmpresaRequisVlrLimite),
         Null
  From tbcompraalcadaprodutoempresa
  Where CompraAlcadaProdutoEmpresaIdent = tbCompraAlcadaProdutoEmpresaIdent;
  Update tbcompraalcadaprodutoempresa
  Set tbCompraAlcadaProdutoEmpresaDtCanc = CurDate()
  Where CompraAlcadaProdutoEmpresaIdent = tbCompraAlcadaProdutoEmpresaIdent;          
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcompraalcadaprodutoempresa: Atualização realizada com sucesso!' As Msg;
  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcompraordemcompra
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcompraordemcompra`(
IN 
tbCompraOrdemCompraIdent Int(11), 
tbCompraOrdemCompraPrazoEntrDias Int(3),
tbCompraOrdemCompraDtEnt Date,
tbCompraOrdemCompraObs VarChar(400),
tbCompraOrdemCompraDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraOrdemCompraIdent = '') or (tbCompraOrdemCompraIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraordemcompra: Identificador da ordem de compra não informado!' As Msg;
  ElseIf ((tbCompraOrdemCompraIdent != '') &&
     (Not Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra 
                 Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcompraordemcompra: Ordem de Compra não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra 
                 Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdent))  Then
  Update tbcompraordemcompra
  Set CompraOrdemCompraPrazoEntrDias = Case
                                       When tbCompraOrdemCompraPrazoEntrDias != '' Then tbCompraOrdemCompraPrazoEntrDias
                                       Else CompraOrdemCompraPrazoEntrDias
                                       End,
      CompraOrdemCompraDtEnt = Case
                               When tbCompraOrdemCompraDtEnt != '' Then  tbCompraOrdemCompraDtEnt
                               Else CompraOrdemCompraDtEnt
                               End,
      CompraOrdemCompraObs = Case
                             When tbCompraOrdemCompraObs != '' Then tbCompraOrdemCompraObs
                             Else CompraOrdemCompraObs
                             End,
      CompraOrdemCompraDtCanc = Case
                                When tbCompraOrdemCompraDtCanc != '' Then tbCompraOrdemCompraDtCanc
                                Else CompraOrdemCompraDtCanc                
                                End
  Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdent;
  Update tbcompraordemcompraitem
  Set CompraOrdemCompraItemDtCanc = tbCompraOrdemCompraDtCanc
  Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = tbCompraOrdemCompraIdent
  And tbCompraOrdemCompraDtCanc != '';
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcompraordemcompra: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcompraordemcompraitem
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcompraordemcompraitem`(
IN 
tbCompraOrdemCompraIdentFkCompraOrdemCompraItem Int(11), 
tbCompraOrdemCompraItemSeq Int(5),
tbCompraOrdemCompraItemObs VarChar(400),
tbCompraOrdemCompraItemDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraOrdemCompraIdentFkCompraOrdemCompraItem = '') or (tbCompraOrdemCompraIdentFkCompraOrdemCompraItem Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraordemcompraitem: Identificador da ordem de compra não informado!' As Msg;
  ElseIf ((tbCompraOrdemCompraItemSeq = '') or (tbCompraOrdemCompraItemSeq Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraordemcompraitem: Sequencia do item da ordem de compra não informado!' As Msg;
  ElseIf ((tbCompraOrdemCompraIdentFkCompraOrdemCompraItem != '') && (tbCompraOrdemCompraItemSeq != '') &&
     (Not Exists(Select CompraOrdemCompraIdentFkCompraOrdemCompraItem From tbcompraordemcompraitem 
                 Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = tbCompraOrdemCompraIdentFkCompraOrdemCompraItem
                 And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcompraordemcompraitem: Item da Ordem de Compra não localizada pelo Identificador/Sequencia!' As Msg;     
  ElseIf (Exists(Select CompraOrdemCompraIdentFkCompraOrdemCompraItem From tbcompraordemcompraitem 
                 Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = tbCompraOrdemCompraIdentFkCompraOrdemCompraItem
                 And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq))  Then
  Update tbcompraordemcompraitem
  Set CompraOrdemCompraItemObs = Case
                                 When tbCompraOrdemCompraItemObs != '' Then tbCompraOrdemCompraItemObs
                                 Else CompraOrdemCompraItemObs
                                 End,
      CompraOrdemCompraItemDtCanc = Case
                                    When tbCompraOrdemCompraItemDtCanc != '' Then  tbCompraOrdemCompraItemDtCanc
                                    Else CompraOrdemCompraItemDtCanc
                                    End
  Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = tbCompraOrdemCompraIdentFkCompraOrdemCompraItem
  And CompraOrdemCompraItemSeq = tbCompraOrdemCompraItemSeq;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcompraordemcompraitem: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcompraprior
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcompraprior`(
IN 
tbCompraPriorIdent Int(11), 
tbCompraPriorDescr VarChar(200),
tbCompraPriorExcluido SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraPriorIdent = '') or (tbCompraPriorIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcompraprior: Identificador da prioridade de compra não informado!' As Msg;
  ElseIf ((tbCompraPriorIdent != '') &&
     (Not Exists(Select CompraPriorIdent From tbcompraprior 
                 Where CompraPriorIdent = tbCompraPriorIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcompraprior: Prioridade de Compra não localizada pelo Identificador!' As Msg;     
  ElseIf (Exists(Select CompraPriorIdent From tbcompraprior 
                 Where CompraPriorIdent = tbCompraPriorIdent))  Then
  Update tbcompraprior
  Set CompraPriorDescr = Case
                         When tbCompraPriorDescr != '' Then tbCompraPriorDescr
                         Else CompraPriorDescr
                         End,
      CompraPriorExcluido = Case
                            When tbCompraPriorExcluido != '' Then  tbCompraPriorExcluido
                            Else CompraPriorExcluido
                            End
  Where CompraPriorIdent = tbCompraPriorIdent;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcompraprior: Atualização realizada com sucesso!' As Msg;
  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprarequisitem
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprarequisitem`(
IN 
tbCompraRequisItemIdent Int(11), 
tbCompraSolicitItemIdentFkCompraRequisItem Int(11),
tbProdutoEmpresaIdentFkCompraRequisItem Int(11),
tbCompraRequisItemDtEmis Date,
tbCompraRequisItemQtde Numeric(12,4),
tbCompraRequisItemQtdeMin Numeric(12,4),
tbUnidMedidaIdentifFkCompraRequisItem Int(11),
tbPessoaIdentFornecSugerFkCompraRequisItem Int(11),
tbCompraRequisItemPrecoSuger Numeric(12,4),
tbCompraRequisItemPrecoSugerMax Numeric(12,4),
tbCompraRequisItemDtEntrMax Date,
tbCompraRequisItemFornecSugerJustif VarChar(400),
tbCompraRequisItemDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraRequisItemIdent = '') or (tbCompraRequisItemIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprarequisitem: Identificador da requisição de compra não informado!' As Msg;
  ElseIf ((tbCompraRequisItemIdent != '') &&
     (Not Exists(Select CompraRequisItemIdent From tbcomprarequisitem 
                 Where CompraRequisItemIdent = tbCompraRequisItemIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprarequisitem: Requisição não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraSolicitItemIdentFkCompraRequisItem != '') &&
     (Not Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdentFkCompraRequisItem))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprarequisitem: Item da Solicitação de Compra não localizado pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFornecSugerFkCompraRequisItem != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecSugerFkCompraRequisItem))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprarequisitem: Fornecedor Sugerido da Requisição de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbUnidMedidaIdentifFkCompraRequisItem != '') &&
     (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraRequisItem))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbcomprarequisitem: Unidade de Medida da Requisição de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkCompraRequisItem != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraRequisItem))) Then
     Select 1 As CodRetorno, 'MSG006/SpUpdatetbcomprarequisitem: Produto/Empresa da Requisição de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraRequisItemDtCanc != '') &&
     (Exists(Select CompraRequisItemAprovIdent From tbcomprarequisitemaprov Where CompraRequisItemIdentFkCompraRequisItemAprov = tbCompraRequisItemIdent And CompraRequisItemAprovDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG007/SpUpdatetbcomprarequisitem: Não é possível Cancelar Requisição de Compra com aprovação! Cancele a aprovação.' As Msg;
  ElseIf ((tbCompraRequisItemDtCanc != '') &&
     (Exists(Select CompraOrdemCompraIdentFkCompraOrdemCompraItem From tbcompraordemcompraitem Where CompraRequisItemIdentFkCompraOrdemCompraItem = tbCompraRequisItemIdent And CompraOrdemCompraItemDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG008/SpUpdatetbcomprarequisitem: Não é possível Cancelar Requisição de Compra com ordem de compra! Cancele a ordem de compra.' As Msg;
  ElseIf (Exists(Select CompraRequisItemIdent From tbcomprarequisitem 
                 Where CompraRequisItemIdent = tbCompraRequisItemIdent))  Then
  Update tbcomprarequisitem
  Set ProdutoEmpresaIdentFkCompraRequisItem = Case
                                              When tbProdutoEmpresaIdentFkCompraRequisItem != '' Then tbProdutoEmpresaIdentFkCompraRequisItem
                                              Else ProdutoEmpresaIdentFkCompraRequisItem
                                              End,
      CompraRequisItemDtEmis = Case
                               When tbCompraRequisItemDtEmis != '' Then  tbCompraRequisItemDtEmis
                               Else CompraRequisItemDtEmis
                               End,
      CompraRequisItemQtde = Case
                             When tbCompraRequisItemQtde != '' Then tbCompraRequisItemQtde
                             Else CompraRequisItemQtde
                             End,
      CompraRequisItemQtdeMin = Case
                                When tbCompraRequisItemQtdeMin != '' Then tbCompraRequisItemQtdeMin
                                Else CompraRequisItemQtdeMin                
                                End,
      UnidMedidaIdentifFkCompraRequisItem = Case
                                            When tbUnidMedidaIdentifFkCompraRequisItem != '' Then tbUnidMedidaIdentifFkCompraRequisItem
                                            Else UnidMedidaIdentifFkCompraRequisItem
                                            End,
      PessoaIdentFornecSugerFkCompraRequisItem = Case
                                                 When tbPessoaIdentFornecSugerFkCompraRequisItem != '' Then tbPessoaIdentFornecSugerFkCompraRequisItem
                                                 Else PessoaIdentFornecSugerFkCompraRequisItem
                                                 End,
      CompraRequisItemPrecoSuger = Case
                                   When tbCompraRequisItemPrecoSuger != '' Then tbCompraRequisItemPrecoSuger
                                   Else CompraRequisItemPrecoSuger
                                   End,
      CompraRequisItemPrecoSugerMax = Case
                                      When tbCompraRequisItemPrecoSugerMax != '' Then tbCompraRequisItemPrecoSugerMax
                                      Else CompraRequisItemPrecoSugerMax
                                      End,
      CompraRequisItemDtEntrMax = Case
                                  When tbCompraRequisItemDtEntrMax != '' Then tbCompraRequisItemDtEntrMax
                                  Else CompraRequisItemDtEntrMax
                                  End,
      CompraRequisItemFornecSugerJustif = Case
                                          When tbCompraRequisItemFornecSugerJustif != '' Then tbCompraRequisItemFornecSugerJustif
                                          Else CompraRequisItemFornecSugerJustif
                                          End,
      CompraRequisItemDtCanc = Case
                               When tbCompraRequisItemDtCanc != '' Then tbCompraRequisItemDtCanc
                               Else CompraRequisItemDtCanc
                               End
  Where CompraRequisItemIdent = tbCompraRequisItemIdent;
  Update tbcomprarequisitemcotacao
  Set CompraRequisItemCotacaoDtCanc = tbCompraRequisItemDtCanc
  Where CompraRequisItemIdentFkCompraRequisItemCotacao = tbCompraRequisItemIdent
  And tbCompraRequisItemDtCanc != '';
  Select 0 As CodRetorno, 'MSG009/SpUpdatetbcomprarequisitem: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprarequisitemaprov
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprarequisitemaprov`(
IN 
tbCompraRequisItemAprovIdent Int(11), 
tbCompraRequisItemIdentFkCompraRequisItemAprov int(11),
tbCompraRequisItemAprovDtAprov Date,
tbCompraRequisItemAprovQtde Numeric(12,4),
tbCompraRequisItemAprovPreco Numeric(12,4),
tbCompraRequisItemAprovFrete Char(3),
tbCompraRequisItemAprovFreteVlr Numeric(12,4),
tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov Int(11), 
tbCompraRequisItemAprovDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraRequisItemAprovIdent = '') or (tbCompraRequisItemAprovIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprarequisitemaprov: Identificador da aprovação da requisição de compra não informado!' As Msg;
  ElseIf ((tbCompraRequisItemIdentFkCompraRequisItemAprov = '') or (tbCompraRequisItemIdentFkCompraRequisItemAprov Is Null)) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprarequisitemaprov: Identificador da requisição de compra não informado!' As Msg;
  ElseIf ((tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov != '') &&
     (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb 
                 Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprarequisitemaprov: Condição de Pagamento não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraRequisItemAprovIdent != '') &&
     (Not Exists(Select CompraRequisItemAprovIdent From tbcomprarequisitemaprov 
                 Where CompraRequisItemAprovIdent = tbCompraRequisItemAprovIdent))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprarequisitemaprov: Item Aprovação da requisição de compra não localizada pelo Identificador!' As Msg;     
  ElseIf ((tbCompraRequisItemAprovDtCanc != '') &&
     (Exists(Select CompraOrdemCompraIdentFkCompraOrdemCompraItem From tbcompraordemcompraitem 
             Where CompraRequisItemIdentFkCompraOrdemCompraItem = tbCompraRequisItemIdentFkCompraRequisItemAprov))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbcomprarequisitemaprov: Não e possével cancelar aprovação de requisição com ordem de compra. Cancele a Ordem de Compra!' As Msg;
  ElseIf (Exists(Select CompraRequisItemAprovIdent From tbcomprarequisitemaprov 
                 Where CompraRequisItemAprovIdent = tbCompraRequisItemAprovIdent))  Then
  Update tbcomprarequisitemaprov
  Set CompraRequisItemAprovDtAprov = Case
                                     When tbCompraRequisItemAprovDtAprov != '' Then tbCompraRequisItemAprovDtAprov
                                     Else CompraRequisItemAprovDtAprov
                                     End,
      CompraRequisItemAprovQtde = Case
                                  When tbCompraRequisItemAprovQtde != '' Then  tbCompraRequisItemAprovQtde
                                  Else CompraRequisItemAprovQtde
                                  End,
      CompraRequisItemAprovPreco = Case
                                   When tbCompraRequisItemAprovPreco != '' Then tbCompraRequisItemAprovPreco
                                   Else CompraRequisItemAprovPreco
                                   End,
      CompraRequisItemAprovFrete = Case
                                     When tbCompraRequisItemAprovFrete != '' Then tbCompraRequisItemAprovFrete
                                     Else CompraRequisItemAprovFrete                
                                     End,
      CompraRequisItemAprovFreteVlr = Case
                                      When tbCompraRequisItemAprovFreteVlr != '' Then tbCompraRequisItemAprovFreteVlr
                                      Else CompraRequisItemAprovFreteVlr
                                      End,
      CondicaoPgtoRecebIdentFkCompraRequisItemAprov = Case
                                                      When tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov != '' Then tbCondicaoPgtoRecebIdentFkCompraRequisItemAprov
                                                      Else CondicaoPgtoRecebIdentFkCompraRequisItemAprov
                                                      End,
      CompraRequisItemAprovDtCanc = Case
                                    When tbCompraRequisItemAprovDtCanc != '' Then tbCompraRequisItemAprovDtCanc
                                    Else CompraRequisItemAprovDtCanc
                                    End
  Where CompraRequisItemAprovIdent = tbCompraRequisItemAprovIdent;
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbcomprarequisitemaprov: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprarequisitemcotacao
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprarequisitemcotacao`(
IN 
tbCompraRequisItemCotacaoIdent Int(11), 
tbCompraRequisItemCotacaoQtde Numeric(12,4),
tbCompraRequisItemCotacaoDtCotacao Date,
tbCompraRequisItemCotacaoDtValid Date,
tbCompraRequisItemCotacaoPreco Numeric(12,4),
tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao Int(11),
tbCompraRequisItemCotacaoPrazoEntrDias Int(3),
tbCompraRequisItemCotacaoFrete Char(3),
tbCompraRequisItemCotacaoObs VarChar(400),
tbCompraRequisItemCotacaoDocto Blob,
tbCompraRequisItemCotacaoDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraRequisItemCotacaoIdent = '') or (tbCompraRequisItemCotacaoIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprarequisitemcotacao: Identificador da cotação da requisição de compra não informado!' As Msg;
  ElseIf ((tbCompraRequisItemCotacaoIdent != '') &&
     (Not Exists(Select CompraRequisItemCotacaoIdent From tbcomprarequisitemcotacao 
                 Where CompraRequisItemCotacaoIdent = tbCompraRequisItemCotacaoIdent))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprarequisitemcotacao: Cotação não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao != '') &&
     (Not Exists(Select CondicaoPgtoRecebIdent From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprarequisitemcotacao: Condição de Pagamento não localizada pelo Identificador!' As Msg;
  ElseIf (Exists(Select CompraRequisItemCotacaoIdent From tbcomprarequisitemcotacao 
                 Where CompraRequisItemCotacaoIdent = tbCompraRequisItemCotacaoIdent))  Then
  Update tbcomprarequisitemcotacao
  Set CompraRequisItemCotacaoQtde = Case
                                    When tbCompraRequisItemCotacaoQtde != '' Then tbCompraRequisItemCotacaoQtde
                                    Else CompraRequisItemCotacaoQtde
                                    End,
      CompraRequisItemCotacaoDtCotacao = Case
                                         When tbCompraRequisItemCotacaoDtCotacao != '' Then  tbCompraRequisItemCotacaoDtCotacao
                                         Else CompraRequisItemCotacaoDtCotacao
                                         End,
      CompraRequisItemCotacaoDtValid = Case
                                       When tbCompraRequisItemCotacaoDtValid != '' Then tbCompraRequisItemCotacaoDtValid
                                       Else CompraRequisItemCotacaoDtValid
                                       End,
      CompraRequisItemCotacaoPreco = Case
                                     When tbCompraRequisItemCotacaoPreco != '' Then tbCompraRequisItemCotacaoPreco
                                     Else CompraRequisItemCotacaoPreco                
                                     End,
      CondicaoPgtoRecebIdentFkCompraRequisItemCotacao = Case
                                                        When tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao != '' Then tbCondicaoPgtoRecebIdentFkCompraRequisItemCotacao
                                                        Else CondicaoPgtoRecebIdentFkCompraRequisItemCotacao
                                                        End,
      CompraRequisItemCotacaoPrazoEntrDias = Case
                                             When tbCompraRequisItemCotacaoPrazoEntrDias != '' Then tbCompraRequisItemCotacaoPrazoEntrDias
                                             Else CompraRequisItemCotacaoPrazoEntrDias
                                             End,
      CompraRequisItemCotacaoFrete = Case
                                     When tbCompraRequisItemCotacaoFrete != '' Then tbCompraRequisItemCotacaoFrete
                                     Else CompraRequisItemCotacaoFrete
                                     End,
      CompraRequisItemCotacaoObs = Case
                                   When tbCompraRequisItemCotacaoObs != '' Then tbCompraRequisItemCotacaoObs
                                   Else CompraRequisItemCotacaoObs
                                   End,
      CompraRequisItemCotacaoDocto = Case
                                     When tbCompraRequisItemCotacaoDocto != '' Then tbCompraRequisItemCotacaoDocto
                                     Else CompraRequisItemCotacaoDocto
                                     End,
      CompraRequisItemCotacaoDtCanc = Case
                                      When tbCompraRequisItemCotacaoDtCanc != '' Then tbCompraRequisItemCotacaoDtCanc
                                      Else CompraRequisItemCotacaoDtCanc
                                      End
  Where CompraRequisItemCotacaoIdent = tbCompraRequisItemCotacaoIdent;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbcomprarequisitemcotacao: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprasolicit
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprasolicit`(
IN 
tbCompraSolicitIdent Int(11), 
tbCompraSolicitDtEmis Date,
tbCompraSolicitFlag Char(1),
tbCompraPriorIdentFkCompraSolicit Int(11), 
tbPessoaIdentFkCompraSolicit Int(11), 
tbCompraSolicitObs VarChar(400),
tbCompraSolicitVlrTotal Numeric(12,4),
tbCompraSolicitDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraSolicitIdent = '') or (tbCompraSolicitIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprasolicit: Identificador da solicitação de compra não informado!' As Msg;
  ElseIf ((tbCompraSolicitIdent != '') &&
     (Not Exists(Select CompraSolicitIdent From tbcomprasolicit Where CompraSolicitIdent = tbCompraSolicitIdentl))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprasolicit: Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraPriorIdentFkCompraSolicit != '') &&
     (Not Exists(Select CompraPriorIdent From tbcompraprior Where CompraPriorIdent = tbCompraPriorIdentFkCompraSolicit))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprasolicit: Prioridade da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkCompraSolicit != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFkCompraSolicit))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicit: Pessoa da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFkCompraSolicit != '') &&
     (Exists(Select CompraSolicitItemIdent From tbcomprasolicititem, tbcomprasolicititemaprov
             Where CompraSolicitIdentFkCompraSolicitItem = tbCompraSolicitIdent
             And   CompraSolicitItemIdentFkCompraSolicitItemAprov = CompraSolicitItemIdent 
             And CompraSolicitItemAprovDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicit: Não é possivel cancelar Solicitação de Compra com item aprovado!' As Msg;
  ElseIf ((tbPessoaIdentFkCompraSolicit != '') &&
     (Exists(Select CompraSolicitItemIdent From tbcomprasolicititem, tbcomprarequisitem
             Where CompraSolicitIdentFkCompraSolicitItem = tbCompraSolicitIdent
             And   CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent 
             And CompraRequisItemDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicit: Não é possivel cancelar Solicitação de Compra com item em requisição!' As Msg;
  ElseIf (Exists(Select CompraSolicitIdent From tbcomprasolicit Where CompraSolicitIdent = tbCompraSolicitIdent))  Then
  Update tbcomprasolicit
  Set CompraSolicitDtEmis = Case
                            When tbCompraSolicitDtEmis != '' Then tbCompraSolicitDtEmis
                            Else CompraSolicitDtEmis
                            End,
      CompraSolicitFlag = Case
                          When tbCompraSolicitFlag != '' Then  tbCompraSolicitFlag
                          Else CompraSolicitFlag
                          End,
      CompraPriorIdentFkCompraSolicit = Case
                                        When tbCompraPriorIdentFkCompraSolicit != '' Then tbCompraPriorIdentFkCompraSolicit
                                        Else CompraPriorIdentFkCompraSolicit
                                        End,
      PessoaIdentFkCompraSolicit = Case
                                   When tbPessoaIdentFkCompraSolicit != '' Then tbPessoaIdentFkCompraSolicit
                                   Else PessoaIdentFkCompraSolicit                
                                   End,
      CompraSolicitObs = Case
                         When tbCompraSolicitObs != '' Then tbCompraSolicitObs
                         Else CompraSolicitObs
                         End,
      CompraSolicitVlrTotal = Case
                              When tbCompraSolicitVlrTotal != '' Then tbCompraSolicitVlrTotal
                              Else CompraSolicitVlrTotal
                              End,
      CompraSolicitDtCanc = Case
                            When tbCompraSolicitDtCanc != '' Then tbCompraSolicitDtCanc
                            Else CompraSolicitDtCanc
                            End
  Where CompraSolicitIdent = tbCompraSolicitIdent;
  Update tbcomprasolicititem
  Set CompraSolicitItemDtCanc = tbCompraSolicitDtCanc
  Where CompraSolicitIdentFkCompraSolicitItem = tbCompraSolicitIdent
  And tbCompraSolicitDtCanc != '';
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbcomprasolicit: Atualização realizada com sucesso!' As Msg;
  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprasolicititem
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprasolicititem`(
IN 
tbCompraSolicitItemIdent Int(11), 
tbCompraSolicitItemQtde Numeric(12,4),
tbCompraSolicitItemQtdeMinima Numeric(12,4),
tbUnidMedidaIdentifFkCompraSolicitItem Int(11),
tbCompraSolicitItemDtEntrDes Date,
tbCompraSolicitItemDtEntrMax Date,
tbPessoaIdentFornecSugerFkCompraSolicitItem Int(11),
tbCompraSolicitItemPrecoSuger Numeric(12,4),
tbCompraSolicitItemPrecoSugerMax  Numeric(12,4),
tbCompraSolicitItemFornecSugerJustif VarChar(400),
tbCompraSolicitItemDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraSolicitItemIdent = '') or (tbCompraSolicitItemIdent Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprasolicititem: Identificador do item da solicitação de compra não informado!' As Msg;
  ElseIf ((tbUnidMedidaIdentifFkCompraSolicitItem != '') &&
     (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraSolicitItem))) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprasolicititem: Unidade de Medida do Item da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFornecSugerFkCompraSolicitItem != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecSugerFkCompraSolicitItem))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprasolicititem: Fornecedor Sugerido do Item da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraSolicitItemDtCanc != '') &&
     (Exists(Select CompraSolicitItemIdentFkCompraSolicitItemAprov From tbcomprasolicititemaprov Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdent And CompraSolicitItemAprovDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicititem: Não é possível alterar Item da Solicitação de Compra com aprovação! Cancela a aprovação!' As Msg;
  ElseIf ((tbCompraSolicitItemDtCanc != '') &&
     (Exists(Select CompraSolicitItemIdentFkCompraRequisItem From tbcomprarequisitem Where CompraSolicitItemIdentFkCompraRequisItem = tbCompraSolicitItemIdent And CompraRequisItemDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbcomprasolicititem: Não é possível alterar Item da Solicitação de Compra com requisição! Cancele a requisição' As Msg;
  ElseIf (Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdent))  Then
  Update tbcomprasolicititem
  Set CompraSolicitItemQtde = Case
                              When tbCompraSolicitItemQtde != '' Then tbCompraSolicitItemQtde
                              Else CompraSolicitItemQtde
                              End,
      CompraSolicitItemQtdeMinima = Case
                                    When tbCompraSolicitItemQtdeMinima != '' Then  tbCompraSolicitItemQtdeMinima
                                    Else CompraSolicitItemQtdeMinima
                                    End,
      UnidMedidaIdentifFkCompraSolicitItem = Case
                                             When tbUnidMedidaIdentifFkCompraSolicitItem != '' Then tbUnidMedidaIdentifFkCompraSolicitItem
                                             Else UnidMedidaIdentifFkCompraSolicitItem
                                             End,
      CompraSolicitItemDtEntrDes = Case
                                   When tbCompraSolicitItemDtEntrDes != '' Then tbCompraSolicitItemDtEntrDes
                                   Else CompraSolicitItemDtEntrDes                
                                   End,
      CompraSolicitItemDtEntrMax = Case
                                   When tbCompraSolicitItemDtEntrMax != '' Then tbCompraSolicitItemDtEntrMax
                                   Else CompraSolicitItemDtEntrMax
                                   End,
      PessoaIdentFornecSugerFkCompraSolicitItem = Case
                                                  When tbPessoaIdentFornecSugerFkCompraSolicitItem != '' Then tbPessoaIdentFornecSugerFkCompraSolicitItem
                                                  Else PessoaIdentFornecSugerFkCompraSolicitItem
                                                  End,
      CompraSolicitItemPrecoSuger = Case
                                    When tbCompraSolicitItemPrecoSuger != '' Then tbCompraSolicitItemPrecoSuger
                                    Else CompraSolicitItemPrecoSuger
                                    End,
      CompraSolicitItemPrecoSugerMax = Case
                                       When tbCompraSolicitItemPrecoSugerMax != '' Then tbCompraSolicitItemPrecoSugerMax
                                       Else CompraSolicitItemPrecoSugerMax
                                       End,
      CompraSolicitItemFornecSugerJustif = Case
                                           When tbCompraSolicitItemFornecSugerJustif != '' Then tbCompraSolicitItemFornecSugerJustif
                                           Else CompraSolicitItemFornecSugerJustif
                                           End
  Where CompraSolicitItemIdent = tbCompraSolicitItemIdent;
  Update tbcomprasolicititemmaterremessa
  Set CompraSolicitItemMaterRemessaDtCanc = tbCompraSolicitItemDtCanc
  Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdent
  And tbCompraSolicitItemDtCanc != '';
  Select 0 As CodRetorno, 'MSG006/SpUpdatetbcomprasolicititem: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprasolicititemaprov
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprasolicititemaprov`(
IN 
tbCompraSolicitItemIdentFkCompraSolicitItemAprov Int(11), 
tbPessoaIdentAprovFkCompraSolicitItemAprov Int(11),
tbCompraSolicitItemAprovDtAprov Date,
tbCompraSolicitItemAprovQtde Numeric(12,4),
tbPessoaIdentFornecSugerFkCompraSolicitItemAprov Int(11), 
tbCompraSolicitItemAprovPrecoSuger Numeric(12,4),
tbCompraSolicitItemAprovPrecoSugerMax Numeric(12,4),
tbCompraSolicitItemAprovFornecSugerJustif VarChar(400),
tbCompraSolicitItemAprovDtCanc Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraSolicitItemIdentFkCompraSolicitItemAprov = '') or (tbCompraSolicitItemIdentFkCompraSolicitItemAprov Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprasolicititemaprov: Identificador do item aprovação da solicitação de compra não informado!' As Msg;
  ElseIf ((tbCompraSolicitItemIdentFkCompraSolicitItemAprov != '') &&
     (Not Exists(Select CompraSolicitItemIdentFkCompraSolicitItemAprov From tbcomprasolicititemaprov 
                 Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdentFkCompraSolicitItemAprov))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprasolicititemaprov: Item para aprovação da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentAprovFkCompraSolicitItemAprov != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentAprovFkCompraSolicitItemAprov))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicititemaprov: Usuário aprovador do Item da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbPessoaIdentFornecSugerFkCompraSolicitItemAprov != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa Where PessoaIdent = tbPessoaIdentFornecSugerFkCompraSolicitItemAprov))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbcomprasolicititemaprov: Fornecedor Sugerido do Item da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraSolicitItemAprovDtCanc != '') &&
     (Exists(Select CompraSolicitItemIdentFkCompraRequisItem From tbcomprarequisitem Where CompraSolicitItemIdentFkCompraRequisItem = tbCompraSolicitItemIdentFkCompraSolicitItemAprov And CompraRequisItemDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG006/SpUpdatetbcomprasolicititemaprov: Não é possível alterar Item da Aprovação da Solicitação de Compra com requisição! Cancele a requisição' As Msg;
  ElseIf (Exists(Select CompraSolicitItemIdentFkCompraSolicitItemAprov From tbcomprasolicititemaprov 
                 Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdentFkCompraSolicitItemAprov))  Then
  Update tbcomprasolicititemaprov
  Set CompraSolicitItemAprovDtAprov = Case
                                      When tbCompraSolicitItemAprovDtAprov != '' Then tbCompraSolicitItemAprovDtAprov
                                      Else CompraSolicitItemAprovDtAprov
                                      End,
      ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa = Case
                                    When tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa != '' Then  tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                    Else ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                    End,
      CompraSolicitItemAprovQtde = Case
                                   When tbCompraSolicitItemAprovQtde != '' Then tbCompraSolicitItemAprovQtde
                                   Else CompraSolicitItemAprovQtde
                                   End,
      PessoaIdentFornecSugerFkCompraSolicitItemAprov = Case
                                                       When tbPessoaIdentFornecSugerFkCompraSolicitItemAprov != '' Then tbPessoaIdentFornecSugerFkCompraSolicitItemAprov
                                                       Else PessoaIdentFornecSugerFkCompraSolicitItemAprov                
                                                       End,
      CompraSolicitItemAprovPrecoSuger = Case
                                         When tbCompraSolicitItemAprovPrecoSuger != '' Then tbCompraSolicitItemAprovPrecoSuger
                                         Else CompraSolicitItemAprovPrecoSuger
                                         End,
      CompraSolicitItemAprovPrecoSugerMax = Case
                                            When tbCompraSolicitItemAprovPrecoSugerMax != '' Then tbCompraSolicitItemAprovPrecoSugerMax
                                            Else CompraSolicitItemAprovPrecoSugerMax
                                            End,
      CompraSolicitItemAprovFornecSugerJustif = Case
                                                When tbCompraSolicitItemAprovFornecSugerJustif != '' Then tbCompraSolicitItemAprovFornecSugerJustif
                                                Else CompraSolicitItemAprovFornecSugerJustif
                                                End,
      CompraSolicitItemAprovDtCanc = Case
                                     When tbCompraSolicitItemAprovDtCanc != '' Then tbCompraSolicitItemAprovDtCanc
                                     Else CompraSolicitItemAprovDtCanc
                                     End
  Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdentFkCompraSolicitItemAprov;
  Select 0 As CodRetorno, 'MSG007/SpUpdatetbcomprasolicititemaprov: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcomprasolicititemmaterremessa
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcomprasolicititemmaterremessa`(
IN 
tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa Int(11), 
tbCompraSolicitItemMaterRemessaSeq Int(3),
tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa Int(11),
tbCompraSolicitItemMaterRemessaCod VarChar(20),
tbCompraSolicitItemMaterRemessaDescr VarChar(200),
tbCompraSolicitItemMaterRemessaQtde Numeric(12,4),
tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa Int(11),
tbCompraSolicitItemMaterRemessaObs VarChar(200),
tbCompraSolicitItemMaterRemessaDtCanc  Date,
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = '') or (tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcomprasolicititemmaterremessa: Identificador do item remessa da solicitação de compra não informado!' As Msg;
  ElseIf ((tbCompraSolicitItemMaterRemessaSeq = '') or (tbCompraSolicitItemMaterRemessaSeq Is Null)) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbcomprasolicititemmaterremessa: Sequencia do item remessa da solicitação de compra não informado!' As Msg;
  ElseIf ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa != '') && (tbCompraSolicitItemMaterRemessaSeq != '') &&
     (Not Exists(Select CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa From tbcomprasolicititemmaterremessa 
                 Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa
                 And tbCompraSolicitItemMaterRemessaSeq = tbtbCompraSolicitItemMaterRemessaSeq))) Then
     Select 1 As CodRetorno, 'MSG003/SpUpdatetbcomprasolicititemmaterremessa: Item para remessa da Solicitação de Compra não localizada pelo Identificador/sequencia!' As Msg;
  ElseIf ((tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa))) Then
     Select 1 As CodRetorno, 'MSG004/SpUpdatetbcomprasolicititemmaterremessa: Produto/Empresa do Item Remessa da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa != '') &&
     (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida Where UnidMedidaIdentif = tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa))) Then
     Select 1 As CodRetorno, 'MSG005/SpUpdatetbcomprasolicititemmaterremessa: Unidade de Medida do Item Remessa da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa != '') &&
     (Not Exists(Select CompraSolicitItemIdent From tbcomprasolicititem Where CompraSolicitItemIdent = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa))) Then
     Select 1 As CodRetorno, 'MSG006/SpUpdatetbcomprasolicititemmaterremessa: Item da Solicitação de Compra não localizada pelo Identificador!' As Msg;
  ElseIf ((tbCompraSolicitItemMaterRemessaDtCanc != '') &&
     (Exists(Select CompraSolicitItemIdentFkCompraRequisItem From tbcomprarequisitem Where CompraSolicitItemIdentFkCompraRequisItem = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa And CompraRequisItemDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG007/SpUpdatetbcomprasolicititemmaterremessa: Não é possível alterar Item da Remessa da Solicitação de Compra com requisição! Cancele a requisição' As Msg;
  ElseIf ((tbCompraSolicitItemMaterRemessaDtCanc != '') &&
     (Exists(Select CompraSolicitItemIdentFkCompraSolicitItemAprov From tbcomprasolicititemaprov Where CompraSolicitItemIdentFkCompraSolicitItemAprov = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa And CompraSolicitItemAprovDtCanc Is Null))) Then
     Select 1 As CodRetorno, 'MSG008/SpUpdatetbcomprasolicititemmaterremessa: Não é possível alterar Item da Remessa da Solicitação de Compra com aprovação! Cancele a aprovação' As Msg;
  ElseIf (Exists(Select CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa From tbcomprasolicititemmaterremessa 
                 Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa
                 And CompraSolicitItemMaterRemessaSeq = tbCompraSolicitItemMaterRemessaSeq))  Then
  Update tbcomprasolicititemmaterremessa
  Set ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa = Case
                                                           When tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa != '' Then tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                                           Else ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                                           End,
      ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa = Case
                                    When tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa != '' Then  tbProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                    Else ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa
                                    End,
      CompraSolicitItemMaterRemessaCod = Case
                                         When tbCompraSolicitItemMaterRemessaCod != '' Then tbCompraSolicitItemMaterRemessaCod
                                         Else CompraSolicitItemMaterRemessaCod
                                         End,
      CompraSolicitItemMaterRemessaDescr = Case
                                           When tbCompraSolicitItemMaterRemessaDescr != '' Then tbCompraSolicitItemMaterRemessaDescr
                                           Else CompraSolicitItemMaterRemessaDescr                
                                           End,
      CompraSolicitItemMaterRemessaQtde = Case
                                          When tbCompraSolicitItemMaterRemessaQtde != '' Then tbCompraSolicitItemMaterRemessaQtde
                                          Else CompraSolicitItemMaterRemessaQtde
                                          End,
      UnidMedidaIdentifFkCompraSolicitItemMaterRemessa = Case
                                                         When tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa != '' Then tbUnidMedidaIdentifFkCompraSolicitItemMaterRemessa
                                                         Else UnidMedidaIdentifFkCompraSolicitItemMaterRemessa
                                                         End,
      CompraSolicitItemMaterRemessaObs = Case
                                         When tbCompraSolicitItemMaterRemessaObs != '' Then tbCompraSolicitItemMaterRemessaObs
                                         Else CompraSolicitItemMaterRemessaObs
                                         End,
      CompraSolicitItemMaterRemessaDtCanc = Case
                                            When tbCompraSolicitItemMaterRemessaDtCanc != '' Then tbCompraSolicitItemMaterRemessaDtCanc
                                            Else CompraSolicitItemMaterRemessaDtCanc
                                            End
  Where CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa = tbCompraSolicitItemIdentFkCompraSolicitItemMaterRemessa
  And CompraSolicitItemMaterRemessaSeq = tbCompraSolicitItemMaterRemessaSeq;
  Select 0 As CodRetorno, 'MSG009/SpUpdatetbcomprasolicititemmaterremessa: Atualização realizada com sucesso!' As Msg;

  End If;
END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcrt
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcrt`(
IN 
tbCRTCod SmallInt(1),
tbCRTDescr VarChar(300), 
tbCRTFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCRTCod = '') or (tbCRTCod Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcrt: Código do Regime Tributário não informado!' As Msg;
  ElseIf ((tbCRTCod != '') &&
     (Not Exists(Select CRTCod From tbcrt 
                 Where CRTCod = tbCRTCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbcrt: Código do Regime Tributário não localizado!' As Msg;     
  ElseIf ((tbCRTCod != '') &&
     (Exists(Select CRTCod From tbcrt 
                 Where CRTCod = tbCRTCod)))  Then
  Update tbcrt
  Set CRTDescr = Case
                 When tbCRTDescr != '' Then tbCRTDescr
                 Else CRTDescr
                 End,
      CRTFlagAtivo = Case
                     When tbCRTFlagAtivo != '' Then  tbCRTFlagAtivo
                     Else CRTFlagAtivo
                     End
  Where CRTCod = tbCRTCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbcrt: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbcst
DELIMITER //
CREATE PROCEDURE `SpUpdatetbcst`(
IN 
tbCSTIdent Int(11),
tbCSTCod VarChar(3), 
tbCSTDescr VarChar(300),
tbCSTTribIntegral SmallInt(1),
tbCSTFlagIPI SmallInt(1),
tbCSTFlagICMS SmallInt(1),
tbCSTFlagPIS SmallInt(1),
tbCSTFlagCOFINS SmallInt(1),
tbCSTFlagSimpNac SmallInt(1),
tbCSTFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCSTIdent = '') or (tbCSTCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbcst: Identificador ou Código do CST não informado!' As Msg;
  ElseIf ((tbCSTIdent != '') &&
     (Not Exists(Select CSTIdent From tbcst 
                 Where CSTIdent = tbCSTIdent))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbcst: Identificador do CST não localizado!' As Msg;     
  ElseIf ((tbCSTCod != '') &&
     (Not Exists(Select CSTIdent From tbcst 
                 Where CSTCod = tbCSTCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbcst: Código do CST não localizado!' As Msg; 
  ElseIf ((tbCSTIdent != '') &&
     (Exists(Select CSTIdent From tbcst 
                 Where CSTIdent = tbCSTIdent)))  Then
  Update tbcst
  Set CSTDescr = Case
                 When tbCSTDescr != '' Then tbCSTDescr
                 Else CSTDescr
                 End,
      CSTTribIntegral = Case
                        When tbCSTTribIntegral != '' Then  tbCSTTribIntegral
                        Else CSTTribIntegral
                        End, 
      CSTFlagIPI = Case
                   When tbCSTFlagIPI != '' Then  tbCSTFlagIPI
                   Else CSTFlagIPI
                   End,                         
      CSTFlagICMS = Case
                    When tbCSTFlagICMS != '' Then  tbCSTFlagICMS
                    Else CSTFlagICMS
                    End,                                            
      CSTFlagPIS = Case
                   When tbCSTFlagPIS != '' Then  tbCSTFlagPIS
                   Else CSTFlagPIS
                   End,                                                                
      CSTFlagCOFINS = Case
                      When tbCSTFlagCOFINS != '' Then  tbCSTFlagCOFINS
                      Else CSTFlagCOFINS
                      End,        
      CSTFlagSimpNac = Case
                       When tbCSTFlagSimpNac != '' Then  tbCSTFlagSimpNac
                       Else CSTFlagSimpNac
                       End,                              
      CSTFlagAtivo = Case
                     When tbCSTFlagAtivo != '' Then  tbCSTFlagAtivo
                     Else CSTFlagAtivo
                     End
  Where CSTIdent = tbCSTIdent
  Limit 1;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbcst: Atualização realizada com sucesso!' As Msg;
  ElseIf ((tbCSTCod != '') &&
     (Exists(Select CSTCod From tbcst 
                 Where CSTCod = tbCSTCod)))  Then
  Update tbcst
  Set CSTDescr = Case
                 When tbCSTDescr != '' Then tbCSTDescr
                 Else CSTDescr
                 End,
      CSTTribIntegral = Case
                        When tbCSTTribIntegral != '' Then  tbCSTTribIntegral
                        Else CSTTribIntegral
                        End, 
      CSTFlagIPI = Case
                   When tbCSTFlagIPI != '' Then  tbCSTFlagIPI
                   Else CSTFlagIPI
                   End,                         
      CSTFlagICMS = Case
                    When tbCSTFlagICMS != '' Then  tbCSTFlagICMS
                    Else CSTFlagICMS
                    End,                                            
      CSTFlagPIS = Case
                   When tbCSTFlagPIS != '' Then  tbCSTFlagPIS
                   Else CSTFlagPIS
                   End,                                                                
      CSTFlagCOFINS = Case
                      When tbCSTFlagCOFINS != '' Then  tbCSTFlagCOFINS
                      Else CSTFlagCOFINS
                      End,        
      CSTFlagSimpNac = Case
                       When tbCSTFlagSimpNac != '' Then  tbCSTFlagSimpNac
                       Else CSTFlagSimpNac
                       End,                              
      CSTFlagAtivo = Case
                     When tbCSTFlagAtivo != '' Then  tbCSTFlagAtivo
                     Else CSTFlagAtivo
                     End
  Where CSTCod = tbCSTCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbcst: Atualização realizada com sucesso!' As Msg;  
  
  

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbctapagar
DELIMITER //
CREATE PROCEDURE `SpUpdatetbctapagar`(
IN 
tbCtaPagarIdent Int(11),
tbCtaPagarDtLiquidacao Date,
tbCtaPagarDtCancel Date,
tbCtaPagarDtRenegoc Date,
tbNFEEntradaIdentFkCtaPagar Int(11),
tbCtaPagarOrigemDocto VarChar(300),
tbCtaPagarMultaVlrTot Numeric(12,4),
tbCtaPagarJuroVlrTot Numeric(12,4),
tbCtaPagarPgtoVlrTot Numeric(12,4),
tbCtaPagarFlagStatus SmallInt(1),
tbCtaPagarFlagStatusAprov SmallInt(1),
tbCtaPagarObs VarChar(200),
tbCtaPagarFlagAtivo SmallInt(1),

OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCtaPagarIdent = '') or (tbCtaPagarIdent = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbctapagar: Identificador do Contas a Pagar não informado!' As Msg;
  ElseIf ((tbCtaPagarIdent != '') &&
     (Not Exists(Select CtaPagarIdent From tbctapagar 
                 Where CtaPagarIdent = tbCtaPagarIdent))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbctapagar: Identificador do Contas a Pagar não localizado!' As Msg;   
  ElseIf ((tbNFEEntradaIdentFkCtaPagar != '') &&
     (Not Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdentFkCtaPagar))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbctapagar: Identificador da NFe de Entrada não localizado!' As Msg;        
  ElseIf 
     ((tbCtaPagarFlagStatus = 5) && (tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
             Where CtaPagarIdent = tbCtaPagarIdent
             And CtaPagarFlagStatus in (1, 2)))) Then
      Select 1 As CodRetorno, 'MSG004/SpUpdatetbctapagar: Não é possível cancelar contas a pagar liquidado ou parcialmente pago!' As Msg;          
   ElseIf 
     ((tbCtaPagarFlagStatus = 1) && (tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
             Where CtaPagarIdent = tbCtaPagarIdent
             And CtaPagarFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG005/SpUpdatetbctapagar: Não é possível liquidar contas a pagar liquidado ou cancelado!' As Msg; 
   ElseIf 
     ((tbCtaPagarFlagStatus = 2) && (tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
             Where CtaPagarIdent = tbCtaPagarIdent
             And CtaPagarFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG006/SpUpdatetbctapagar: Não é possível liquidar parcialmente contas a pagar liquidado ou cancelado!' As Msg;  
   ElseIf 
     ((tbCtaPagarFlagStatus = 3) && (tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
             Where CtaPagarIdent = tbCtaPagarIdent
             And CtaPagarFlagStatus in (1, 2, 5)))) Then
      Select 1 As CodRetorno, 'MSG007/SpUpdatetbctapagar: Não é possível reabrir total ou parcialmente contas a pagar liquidado, parcialmente liquidado ou cancelado!' As Msg;   
   ElseIf 
     ((tbCtaPagarFlagStatus = 4) && (tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
             Where CtaPagarIdent = tbCtaPagarIdent
             And CtaPagarFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG008/SpUpdatetbctapagar: Não é possível renegociar contas a pagar liquidado ou cancelado!' As Msg;   
  ElseIf ((tbCtaPagarIdent != '') &&
     (Exists(Select CtaPagarIdent From tbctapagar 
                 Where CtaPagarIdent = tbCtaPagarIdent)))  Then
  Update tbctapagar
  Set CtaPagarDtLiquidacao = Case
                             When tbCtaPagarDtLiquidacao != '' Then tbCtaPagarDtLiquidacao
                             Else CtaPagarDtLiquidacao
                             End,
      CtaPagarDtCancel = Case
                         When tbCtaPagarDtCancel != '' Then  tbCtaPagarDtCancel
                         Else CtaPagarDtCancel
                         End, 
      CtaPagarDtRenegoc = Case
                          When tbCtaPagarDtRenegoc != '' Then  tbCtaPagarDtRenegoc
                          Else CtaPagarDtRenegoc
                          End,      
      NFEEntradaIdentFkCtaPagar = Case
                                  When tbNFEEntradaIdentFkCtaPagar != '' Then  tbNFEEntradaIdentFkCtaPagar
                                  Else NFEEntradaIdentFkCtaPagar
                                  End,   
      CtaPagarOrigemDocto = Case
                            When tbCtaPagarOrigemDocto != '' Then  tbCtaPagarOrigemDocto
                            Else CtaPagarOrigemDocto
                            End,   
      CtaPagarMultaVlrTot = Case
                            When tbCtaPagarMultaVlrTot != '' Then  tbCtaPagarMultaVlrTot
                            Else CtaPagarMultaVlrTot
                            End,                    
      CtaPagarJuroVlrTot = Case
                           When tbCtaPagarJuroVlrTot != '' Then  tbCtaPagarJuroVlrTot
                           Else CtaPagarJuroVlrTot
                           End,
      tbCtaPagarPgtoVlrTot = Case
                             When tbCtaPagarPgtoVlrTot != '' Then  tbCtaPagarPgtoVlrTot
                             Else CtaPagarPgtoVlrTot
                             End,                           
      CtaPagarFlagStatus = Case
                           When tbCtaPagarFlagStatus != '' Then  tbCtaPagarFlagStatus
                           Else CtaPagarFlagStatus
                           End,                                                        
      CtaPagarFlagStatusAprov = Case
                                When tbCtaPagarFlagStatusAprov != '' Then  tbCtaPagarFlagStatusAprov
                                Else CtaPagarFlagStatusAprov
                                End,                                                                                   
      CtaPagarObs = Case
                    When tbCtaPagarObs != '' Then  tbCtaPagarObs
                    Else CtaPagarObs
                    End,
      CtaPagarFlagAtivo = Case
                          When tbCtaPagarFlagAtivo != '' Then  tbCtaPagarFlagAtivo
                          Else CtaPagarFlagAtivo
                          End
  Where CtaPagarIdent = tbCtaPagarIdent
  Limit 1;
  Select 0 As CodRetorno, 'MSG009/SpUpdatetbctapagar: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbctapagaritem
DELIMITER //
CREATE PROCEDURE `SpUpdatetbctapagaritem`(
IN 
tbCtaPagarIdentFkCtaPagarItem Int(11),
tbCtaPagarItemNrParc Int(5),
tbCtaPagarItemCodBarra VarChar(48),
tbCtaPagarItemDtVcto Date,
tbCtaPagarItemDtPgto Date,
tbCtaPagarItemDtCancel Date,
tbCtaPagarItemDtRenegoc Date,
tbCtaPagarItemMultaPerc Numeric(12,4),
tbCtaPagarItemJuroPerc Numeric(12,4),
tbCtaPagarItemDescPerc SmallInt(1),
tbCtaPagarItemDescVlrVcto SmallInt(1),
tbCtaPagarItemFlagStatus SmallInt(1),
tbCtaPagarItemObs VarChar(200),
tbCtaPagarItemFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbCtaPagarIdentFkCtaPagarItem = '') or (tbCtaPagarIdentFkCtaPagarItem = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbctapagaritem: Identificador do Contas a Pagar não informado!' As Msg;
  ElseIf ((tbCtaPagarItemNrParc = '') or (tbCtaPagarItemNrParc = '')) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbctapagaritem: Número da Parcela do Contas a Pagar não informado!' As Msg;
  ElseIf ((tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Not Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
                 Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
                 And CtaPagarItemNrParc = tbCtaPagarItemNrParc))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbctapagaritem: Parcela do Contas a Pagar não localizado!' As Msg;  
  ElseIf 
     ((tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus = 1))) Then
      Select 1 As CodRetorno, 'MSG004/SpUpdatetbctapagaritem: Não é possível atualizar parcelas do contas a pagar liquidadas!' As Msg;       
  ElseIf 
     ((tbCtaPagarItemFlagStatus = 5) && (tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus in (1, 2)))) Then
      Select 1 As CodRetorno, 'MSG005/SpUpdatetbctapagaritem: Não é possível cancelar contas a pagar liquidado ou parcialmente pago!' As Msg;          
  ElseIf 
     ((tbCtaPagarItemFlagStatus = 1) && (tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG006/SpUpdatetbctapagaritem: Não é possível liquidar contas a pagar liquidado ou cancelado!' As Msg;  
  ElseIf 
     ((tbCtaPagarItemFlagStatus = 2) && (tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG007/SpUpdatetbctapagaritem: Não é possível liquidar parcialmente contas a pagar liquidado ou cancelado!' As Msg;  
  ElseIf 
     ((tbCtaPagarItemFlagStatus = 3) && (tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus in (1, 2, 5)))) Then
      Select 1 As CodRetorno, 'MSG008/SpUpdatetbctapagaritem: Não é possível reabrir total ou parcialmente contas a pagar liquidado, parcialmente liquidado ou cancelado!' As Msg; 
  ElseIf 
     ((tbCtaPagarItemFlagStatus = 4) && (tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
             Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
             And CtaPagarItemNrParc = tbCtaPagarItemNrParc
             And CtaPagarItemFlagStatus in (1, 5)))) Then
      Select 1 As CodRetorno, 'MSG009/SpUpdatetbctapagaritem: Não é possível renegociar contas a pagar liquidado ou cancelado!' As Msg; 
  ElseIf ((tbCtaPagarIdentFkCtaPagarItem != '') && (tbCtaPagarItemNrParc != '') &&
     (Exists(Select CtaPagarIdentFkCtaPagarItem From tbctapagaritem 
                 Where CtaPagarItemNrParc = tbCtaPagarIdentFkCtaPagarItem
                 And CtaPagarItemNrParc = tbCtaPagarItemNrParc)))  Then
  Update tbctapagaritem
  Set CtaPagarItemCodBarra = Case
                             When tbCtaPagarItemCodBarra != '' Then tbCtaPagarItemCodBarra
                             Else CtaPagarItemCodBarra
                             End,
      CtaPagarItemDtVcto = Case
                           When tbCtaPagarItemDtVcto != '' Then  tbCtaPagarItemDtVcto
                           Else CtaPagarItemDtVcto
                           End, 
      CtaPagarItemDtPgto = Case
                          When tbCtaPagarItemDtPgto != '' Then  tbCtaPagarItemDtPgto
                          Else CtaPagarItemDtPgto
                          End,      
      CtaPagarItemDtCancel = Case
                             When tbCtaPagarItemDtCancel != '' Then  tbCtaPagarItemDtCancel
                             Else CtaPagarItemDtCancel
                             End,   
      CtaPagarItemDtRenegoc = Case
                              When tbCtaPagarItemDtRenegoc != '' Then  tbCtaPagarItemDtRenegoc
                              Else CtaPagarItemDtRenegoc
                              End,   
      CtaPagarItemMultaPerc = Case
                              When tbCtaPagarItemMultaPerc != '' Then  tbCtaPagarItemMultaPerc
                              Else CtaPagarItemMultaPerc
                              End,                    
      CtaPagarItemJuroPerc = Case
                             When tbCtaPagarItemJuroPerc != '' Then  tbCtaPagarItemJuroPerc
                             Else CtaPagarItemJuroPerc
                             End,
      CtaPagarItemDescPerc = Case
                             When tbCtaPagarItemDescPerc != '' Then  tbCtaPagarItemDescPerc
                             Else CtaPagarItemDescPerc
                             End,                           
      CtaPagarItemDescVlrVcto = Case
                                When tbCtaPagarItemDescVlrVcto != '' Then  tbCtaPagarItemDescVlrVcto
                                Else CtaPagarItemDescVlrVcto
                                End,                                                        
      CtaPagarItemFlagStatus = Case
                               When tbCtaPagarItemFlagStatus != '' Then  tbCtaPagarItemFlagStatus
                               Else CtaPagarItemFlagStatus
                               End,                                                                                   
      CtaPagarItemObs = Case
                        When tbCtaPagarItemObs != '' Then  tbCtaPagarItemObs
                        Else CtaPagarItemObs
                        End,
      CtaPagarItemFlagAtivo = Case
                              When tbCtaPagarItemFlagAtivo != '' Then  tbCtaPagarItemFlagAtivo
                              Else CtaPagarItemFlagAtivo
                              End
  Where CtaPagarIdentFkCtaPagarItem = tbCtaPagarIdentFkCtaPagarItem
  And CtaPagarItemNrParc = tbCtaPagarItemNrParc
  Limit 1;
  Select 0 As CodRetorno, 'MSG010/SpUpdatetbctapagaritem: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbdoctofiscal
DELIMITER //
CREATE PROCEDURE `SpUpdatetbdoctofiscal`(
IN 
tbDoctoFiscalIdent Int(11),
tbDoctoFiscalCod Char(2), 
tbDoctoFiscalDescr VarChar(300),
tbDoctoFiscalAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbDoctoFiscalIdent = '') or (tbDoctoFiscalCod = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbdoctofiscal: Identificador ou Código do Documento Fiscal não informado!' As Msg;
  ElseIf ((tbDoctoFiscalIdent != '') &&
     (Not Exists(Select DoctoFiscalIdent From tbdoctofiscal 
                 Where DoctoFiscalIdent = tbDoctoFiscalIdent))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbdoctofiscal: Identificador do Documento Fiscal não localizado!' As Msg;     
  ElseIf ((tbDoctoFiscalCod != '') &&
     (Not Exists(Select DoctoFiscalCod From tbdoctofiscal 
                 Where DoctoFiscalCod = tbDoctoFiscalCod))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbdoctofiscal: Código do Documento Fiscal não localizado!' As Msg;     
  ElseIf ((tbDoctoFiscalIdent != '') &&
     (Exists(Select DoctoFiscalIdent From tbdoctofiscal 
                 Where DoctoFiscalIdent = tbDoctoFiscalIdent)))  Then
  Update tbdoctofiscal
  Set DoctoFiscalDescr = Case
                         When tbDoctoFiscalDescr != '' Then tbDoctoFiscalDescr
                         Else DoctoFiscalDescr
                         End,
      DoctoFiscalAtivo = Case
                         When tbDoctoFiscalAtivo != '' Then  tbDoctoFiscalAtivo
                         Else DoctoFiscalAtivo
                         End
  Where DoctoFiscalIdent = tbDoctoFiscalIdent
  Limit 1;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbdoctofiscal: Atualização realizada com sucesso!' As Msg;
  ElseIf ((tbDoctoFiscalCod != '') &&
     (Exists(Select DoctoFiscalCod From tbdoctofiscal 
                 Where DoctoFiscalCod = tbDoctoFiscalCod)))  Then
  Update tbdoctofiscal
  Set DoctoFiscalDescr = Case
                         When tbDoctoFiscalDescr != '' Then tbDoctoFiscalDescr
                         Else DoctoFiscalDescr
                         End,
      DoctoFiscalAtivo = Case
                         When tbDoctoFiscalAtivo != '' Then  tbDoctoFiscalAtivo
                         Else DoctoFiscalAtivo
                         End
  Where DoctoFiscalCod = tbDoctoFiscalCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG005/SpUpdatetbdoctofiscal: Atualização realizada com sucesso!' As Msg;  
  
  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbnaoconformentmat
DELIMITER //
CREATE PROCEDURE `SpUpdatetbnaoconformentmat`(
IN 
tbNaoConformEntMatIdent Int(11),
tbTpNaoConformidadeCodFkNaoConformEntMat VarChar(20),
tbNaoConformEntMatDtOcor Date,
tbCompraOrdemCompraIdentFkNaoConformEntMat Int(11),
tbCompraOrdemCompraItemSeqFkNaoConformEntMat Int(5),
tbNFEEntradaIdentFkNaoConformEntMat Int(11),
tbNFEEntradaItemSeqFkNaoConformEntMat Int(5),
tbNaoConformEntMatObs VarChar(500),
tbNaoConformEntMatAcao VarChar(500),
tbNaoConformEntMatFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN

  If ((tbNaoConformEntMatDtOcor = '') or (tbNaoConformEntMatDtOcor Is Null)) Then
     Set tbNaoConformEntMatDtOcor = CurDate();
  End If;
     
  If ((tbNaoConformEntMatIdent = '') or (tbNaoConformEntMatIdent = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbnaoconformentmat: Identificador da Não Conformidade não informado!' As Msg;
  ElseIf ((tbNaoConformidadeCodFkNaoConformEntMat = '') or (tbNaoConformidadeCodFkNaoConformEntMat = '')) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbnaoconformentmat: Código da Não Conformidade não informado!' As Msg;
  ElseIf ((tbNaoConformEntMatIdent != '') &&
     (Not Exists(Select NaoConformEntMatIdent From tbnaoconformentmat 
                 Where NaoConformEntMatIdent = tbNaoConformEntMatIdent))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbnaoconformentmat: Identificador da Não Conformidade não localizado!' As Msg;   
  ElseIf ((tbTpNaoConformidadeCodFkNaoConformEntMat != '') &&
     (Not Exists(Select TpNaoConformidadeCod From tbtpnaoconformidade 
                 Where TpNaoConformidadeCod = tbTpNaoConformidadeCodFkNaoConformEntMat))) Then
      Select 1 As CodRetorno, 'MSG004/SpUpdatetbnaoconformentmat: Código da Não Conformidade não localizado!' As Msg;   
  ElseIf ((tbCompraOrdemCompraIdentFkNaoConformEntMat != '') &&
     (Not Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra 
                 Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdentFkNaoConformEntMat))) Then
      Select 1 As CodRetorno, 'MSG005/SpUpdatetbnaoconformentmat: Ordem de Compra não localizada!' As Msg;  
  ElseIf ((tbNFEEntradaIdentFkNaoConformEntMat != '') &&
     (Not Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdentFkNaoConformEntMat))) Then
      Select 1 As CodRetorno, 'MSG006/SpUpdatetbnaoconformentmat: NFe Entrada não localizada!' As Msg;        
  ElseIf ((tbNaoConformEntMatIdent != '') &&
     (Exists(Select NaoConformEntMatIdent From tbnaoconformentmat 
                 Where NaoConformEntMatIdent = tbNaoConformEntMatIdent)))  Then
  Update tbnaoconformentmat
  Set TpNaoConformidadeCodFkNaoConformEntMat = Case
                                               When tbTpNaoConformidadeCodFkNaoConformEntMat != '' Then tbTpNaoConformidadeCodFkNaoConformEntMat
                                               Else TpNaoConformidadeCodFkNaoConformEntMat
                                               End,
      NaoConformEntMatDtOcor = Case
                               When tbNaoConformEntMatDtOcor != '' Then  tbNaoConformEntMatDtOcor
                               Else NaoConformEntMatDtOcor
                               End, 
      CompraOrdemCompraIdentFkNaoConformEntMat = Case
                                                 When tbCompraOrdemCompraIdentFkNaoConformEntMat != '' Then  tbCompraOrdemCompraIdentFkNaoConformEntMat
                                                 Else CompraOrdemCompraIdentFkNaoConformEntMat
                                                 End,      
      CompraOrdemCompraItemSeqFkNaoConformEntMat = Case
                                                   When tbCompraOrdemCompraItemSeqFkNaoConformEntMat != '' Then  tbCompraOrdemCompraItemSeqFkNaoConformEntMat
                                                   Else CompraOrdemCompraItemSeqFkNaoConformEntMat
                                                   End,   
      NFEEntradaIdentFkNaoConformEntMat = Case
                                          When tbNFEEntradaIdentFkNaoConformEntMat != '' Then  tbNFEEntradaIdentFkNaoConformEntMat
                                          Else NFEEntradaIdentFkNaoConformEntMat
                                          End,   
      NFEEntradaItemSeqFkNaoConformEntMat = Case
                                            When tbNFEEntradaItemSeqFkNaoConformEntMat != '' Then  tbNFEEntradaItemSeqFkNaoConformEntMat
                                            Else NFEEntradaItemSeqFkNaoConformEntMat
                                            End,                    
      NaoConformEntMatObs = Case
                            When tbNaoConformEntMatObs != '' Then  tbNaoConformEntMatObs
                            Else NaoConformEntMatObs
                            End,
      NaoConformEntMatAcao = Case
                             When tbNaoConformEntMatAcao != '' Then  tbNaoConformEntMatAcao
                             Else NaoConformEntMatAcao
                             End,                           
      NaoConformEntMatFlagAtivo = Case
                                  When tbNaoConformEntMatFlagAtivo != '' Then  tbNaoConformEntMatFlagAtivo
                                  Else NaoConformEntMatFlagAtivo
                                  End
  Where NaoConformEntMatIdent = tbNaoConformEntMatIdent
  Limit 1;
  Select 0 As CodRetorno, 'MSG007/SpUpdatetbnaoconformentmat: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbnfeentrada
DELIMITER //
CREATE PROCEDURE `SpUpdatetbnfeentrada`(
IN 
tbNFEEntradaIdent Int(11),
tbNFEEntradaPessoaCNPJCPF VarChar(45),
tbNFEEntradaPessoaInscrEstad VarChar(20),
tbIndicInscEstadIdentFkNFEEntrada Int(11),
tbNFEEntradaPessoaInscrMunic VarChar(20),
tbNFEEntradaPessoaInscrSuframa VarChar(10),
tbNFEEntradaPessoaNomeRazaoSocial VarChar(200),
tbNFEEntradaPessoaEndereco VarChar(300),
tbNFEEntradaPessoaEnderecoNr VarChar(10),
tbNFEEntradaPessoaEnderecoCompl VarChar(200),
tbNFEEntradaPessoaFoneDDD VarChar(3),
tbNFEEntradaPessoaNrFone VarChar(20),
tbCEPIdentFkNFEEntrada Int(11),
tbDoctoFiscalIdentFkNFEEntrada Int(11),
tbCompraOrdemCompraIdentFkNFEEntrada Int(11),
tbNFEEntradaNr Int(11),
tbNFEEntradaSerie VarChar(20),
tbNFEEntradaChaveEletr VarChar(100),
tbNFEEntradaDtEmis Date,
tbNFEEntradaDtEntrega Date,
tbCFOPIdentFkNFEEntrada Int(11),
tbNFESaidaIdentFkNFEEntrada Int(11),
tbNFEEntradaPrincFkNFEntrada Int(11),
tbNFEEntradaProdutoServVlrTot Numeric(12,4),
tbNFEEntradaDescontoVlrTot Numeric(12,4),
tbNFEEntradaAcrescVlrTot Numeric(12,4),
tbNFEEntradaOutrosVlrTot Numeric(12,4),
tbNFEEntradaFreteVlrTot Numeric(12,4),
tbNFEEntradaImpostoVlrTot Numeric(12,4),
tbNFEEntradaSeguroVlrTot Numeric(12,4),
tbNFEEntradaVlrTot Numeric(12,4),
tbNFEEntradaIIVlrTotBase Numeric(12,4),
tbNFEEntradaIIVlrTot Numeric(12,4),
tbCSTIdentIPIFkNFEEntrada Int(11),
tbNFEEntradaIPIVlrTotBase Numeric(12,4),
tbNFEEntradaIPIVlrTot Numeric(12,4),
tbCSTIdentICMSFkNFEEntrada Int(11),
tbNFEEntradaICMSVlrTotBase Numeric(12,4),
tbNFEEntradaICMSVlrTot Numeric(12,4),
tbCSTIdentICMSSTFkNFEEntrada Int(11),
tbNFEEntradaICMSSTVlrTotBase Numeric(12,4),
tbNFEEntradaICMSSTVlrTot Numeric(12,4),
tbNFEEntradaFCPVlrTotBase Numeric(12,4),
tbNFEEntradaFCPVlrTot Numeric(12,4),
tbNFEEntradaFCPSTVlrTotBase Numeric(12,4),
tbNFEEntradaFCPSTVlrTot Numeric(12,4),
tbNFEEntradaFCPSTRetVlrTotBase Numeric(12,4),
tbNFEEntradaFCPSTRetVlrTot Numeric(12,4),
tbNFEEntradaFCPDestVlrTotBase Numeric(12,4),
tbNFEEntradaFCPDestVlrTot Numeric(12,4),
tbCSTIdentPISFkNFEEntrada Int(11),
tbNFEEntradaPISVlrTotBase Numeric(12,4),
tbNFEEntradaPISVlrTot Numeric(12,4),
tbCSTIdentCOFINSFkNFEEntrada Int(11),
tbNFEEntradaCOFINSVlrTotBase Numeric(12,4),
tbNFEEntradaCOFINSVlrTot Numeric(12,4),
tbNFEEntradaISSVlrTotBase Numeric(12,4),
tbNFEEntradaISSVlrTot Numeric(12,4),
tbNFEEntradaISSFlagRetido SmallInt(1),
tbNFEEntradaPISRetVlrTotBase Numeric(12,4),
tbNFEEntradaPISRetVlrTot Numeric(12,4),
tbNFEEntradaCOFINSRetVlrTotBase Numeric(12,4),
tbNFEEntradaCOFINSRetVlrTot Numeric(12,4),
tbNFEEntradaCSLLVlrTotBase Numeric(12,4),
tbNFEEntradaCSLLVlrTot Numeric(12,4),
tbNFEEntradaIRRFVlrTotBase Numeric(12,4),
tbNFEEntradaIRRFVlrTot Numeric(12,4),
tbNFEEntradaIRRFFlagRetido SmallInt(1),
tbNFEEntradaINSSVlrTotBase Numeric(12,4),
tbNFEEntradaINSSVlrTot Numeric(12,4),
tbNFEEntradaINSSRetVlrTotBase Numeric(12,4),
tbNFEEntradaINSSRetVlrTot Numeric(12,4),
tbNFEEntradaVolumeTot SmallInt(5),
tbNFEEntradaPesTotBruto Numeric(12,4),
tbNFEEntradaPesTotLiquido Numeric(12,4),
tbNFEEntradaParcQtde SmallInt(5),
tbNFEEntradaParcVlrUnit Numeric(12,4),
tbNFEEntradaFreteTp VarChar(3),
tbNFEEntradaFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
    
  If ((tbNFEEntradaIdent = '') or (tbNFEEntradaIdent = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbnfeentrada: Identificador da NFe de Entrada não informado!' As Msg;
  ElseIf ((tbNFEEntradaIdent != '') &&
     (Not Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdent))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbnfeentrada: NFE de Entrada não localizada na base de dados!' As Msg;   
  ElseIf ((tbEmpresaIdentFkNFEEntrada != '') &&
     (Not Exists(Select EmpresaIdent From evomodadm.tbempresa 
                 Where EmpresaIdent = tbEmpresaIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbnfeentrada: Empresa não localizada na base de dados!' As Msg;       
  ElseIf ((tbPessoaIdentFkNFEEntrada != '') &&
     (Not Exists(Select PessoaIdent From evomodadm.tbpessoa
                 Where PessoaIdent = tbPessoaIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG004/SpUpdatetbnfeentrada: Fornecedor não localizado na base de dados!' As Msg;        
  ElseIf ((tbIndicInscEstadIdentFkNFEEntrada != '') &&
     (Not Exists(Select IndicInscEstadIdent From evomodadm.tbindicinscrestad
                 Where IndicInscEstadIdent = tbIndicInscEstadIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG005/SpUpdatetbnfeentrada: Indicador de Inscrição Estadual não localizado na base de dados!' As Msg;        
  ElseIf ((tbCEPIdentFkNFEEntrada != '') &&
     (Not Exists(Select CEPIdent From evomodadm.tbcep
                 Where CEPIdent = tbCEPIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG006/SpUpdatetbnfeentrada: CEP não localizado na base de dados!' As Msg;            
  ElseIf ((tbDoctoFiscalIdentFkNFEEntrada != '') &&
     (Not Exists(Select DoctoFiscalIdent From tbdoctofiscal
                 Where DoctoFiscalIdent = tbDoctoFiscalIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG007/SpUpdatetbnfeentrada: Documento Fiscal não localizado na base de dados!' As Msg;         
  ElseIf ((tbCompraOrdemCompraIdentFkNFEEntrada != '') &&
     (Not Exists(Select CompraOrdemCompraIdent From tbcompraordemcompra
                 Where CompraOrdemCompraIdent = tbCompraOrdemCompraIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG008/SpUpdatetbnfeentrada: Ordem de Compra não localizada na base de dados!' As Msg;  
  ElseIf ((tbCFOPIdentFkNFEEntrada != '') &&
     (Not Exists(Select CFOPIdent From evomodadm.tbcfop
                 Where CFOPIdent = tbCFOPIdentFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG009/SpUpdatetbnfeentrada: CFOP não localizada na base de dados!' As Msg;  
  ElseIf ((tbNFEEntradaPrincFkNFEntrada != '') &&
     (Not Exists(Select NFEEntradaIdent From tbnfeentrada
                 Where NFEEntradaIdent = tbNFEEntradaPrincFkNFEntrada))) Then
      Select 1 As CodRetorno, 'MSG010/SpUpdatetbnfeentrada: NFe Entrada Principal para o CTe não localizada na base de dados!' As Msg;              
  ElseIf ((tbCSTIdentIPIFkNFEEntrada != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentIPIFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG011/SpUpdatetbnfeentrada: CST IPI não localizada na base de dados!' As Msg;                    
  ElseIf ((tbCSTIdentICMSFkNFEEntrada != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentICMSFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG012/SpUpdatetbnfeentrada: CST ICMS não localizada na base de dados!' As Msg;                    
  ElseIf ((tbCSTIdentICMSSTFkNFEEntrada != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentICMSSTFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG013/SpUpdatetbnfeentrada: CST ICMS ST não localizada na base de dados!' As Msg;                          
  ElseIf ((tbCSTIdentPISFkNFEEntrada != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentPISFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG014/SpUpdatetbnfeentrada: CST PIS não localizada na base de dados!' As Msg;                   
  ElseIf ((tbCSTIdentCOFINSFkNFEEntrada != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentCOFINSFkNFEEntrada))) Then
      Select 1 As CodRetorno, 'MSG015/SpUpdatetbnfeentrada: CST COFINS não localizada na base de dados!' As Msg;                         
  ElseIf ((tbNFEEntradaIdent != '') &&
     (Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdent)))  Then
  Update tbnfeentrada
  Set NFEEntradaPessoaCNPJCPF = Case
                                When tbNFEEntradaPessoaCNPJCPF != '' Then tbNFEEntradaPessoaCNPJCPF
                                Else NFEEntradaPessoaCNPJCPF
                                End,
      NFEEntradaPessoaInscrEstad = Case
                                   When tbNFEEntradaPessoaInscrEstad != '' Then  tbNFEEntradaPessoaInscrEstad
                                   Else NFEEntradaPessoaInscrEstad
                                   End,
      IndicInscEstadIdentFkNFEEntrada = Case
                                        When tbIndicInscEstadIdentFkNFEEntrada != '' Then  tbIndicInscEstadIdentFkNFEEntrada
                                        Else IndicInscEstadIdentFkNFEEntrada
                                        End,                                   
      NFEEntradaPessoaInscrMunic = Case
                                   When tbNFEEntradaPessoaInscrMunic != '' Then  tbNFEEntradaPessoaInscrMunic
                                   Else NFEEntradaPessoaInscrMunic
                                   End,                                                                      
      NFEEntradaPessoaInscrSuframa = Case
                                     When tbNFEEntradaPessoaInscrSuframa != '' Then  tbNFEEntradaPessoaInscrSuframa
                                     Else NFEEntradaPessoaInscrSuframa
                                     End,     
      NFEEntradaPessoaNomeRazaoSocial = Case
                                        When tbNFEEntradaPessoaNomeRazaoSocial != '' Then  tbNFEEntradaPessoaNomeRazaoSocial
                                        Else NFEEntradaPessoaNomeRazaoSocial
                                        End,                                     
      NFEEntradaPessoaEndereco = Case
                                 When tbNFEEntradaPessoaEndereco != '' Then  tbNFEEntradaPessoaEndereco
                                 Else NFEEntradaPessoaEndereco
                                 End,                                                                      
      NFEEntradaPessoaEnderecoNr = Case
                                   When tbNFEEntradaPessoaEnderecoNr != '' Then  tbNFEEntradaPessoaEnderecoNr
                                   Else NFEEntradaPessoaEnderecoNr
                                   End,                                                                      
      NFEEntradaPessoaEnderecoCompl = Case
                                      When tbNFEEntradaPessoaEnderecoCompl != '' Then  tbNFEEntradaPessoaEnderecoCompl
                                      Else NFEEntradaPessoaEnderecoCompl
                                      End,
      NFEEntradaPessoaFoneDDD = Case
                                When tbNFEEntradaPessoaFoneDDD != '' Then  tbNFEEntradaPessoaFoneDDD
                                Else NFEEntradaPessoaFoneDDD
                                End,                                   
      NFEEntradaPessoaNrFone = Case
                               When tbNFEEntradaPessoaNrFone != '' Then  tbNFEEntradaPessoaNrFone
                               Else NFEEntradaPessoaNrFone
                               End,                                                                    
      CEPIdentFkNFEEntrada = Case
                             When tbCEPIdentFkNFEEntrada != '' Then  tbCEPIdentFkNFEEntrada
                             Else CEPIdentFkNFEEntrada
                             End,
      DoctoFiscalIdentFkNFEEntrada = Case
                                     When tbDoctoFiscalIdentFkNFEEntrada != '' Then  tbDoctoFiscalIdentFkNFEEntrada
                                     Else DoctoFiscalIdentFkNFEEntrada
                                     End,                               
      CompraOrdemCompraIdentFkNFEEntrada = Case
                                           When tbCompraOrdemCompraIdentFkNFEEntrada != '' Then  tbCompraOrdemCompraIdentFkNFEEntrada
                                           Else CompraOrdemCompraIdentFkNFEEntrada
                                           End,                               
      NFEEntradaNr = Case
                     When tbNFEEntradaNr != '' Then  tbNFEEntradaNr
                     Else NFEEntradaNr
                     End,                                                                                                   
      NFEEntradaSerie = Case
                        When tbNFEEntradaSerie != '' Then  tbNFEEntradaSerie
                        Else NFEEntradaSerie
                        End,                                                                                                   
      NFEEntradaChaveEletr = Case
                             When tbNFEEntradaChaveEletr != '' Then  tbNFEEntradaChaveEletr
                             Else NFEEntradaChaveEletr
                             End,
      NFEEntradaDtEmis = Case
                         When tbNFEEntradaDtEmis != '' Then  tbNFEEntradaDtEmis
                         Else NFEEntradaDtEmis
                         End,
      NFEEntradaDtEntrega = Case
                            When tbNFEEntradaDtEntrega != '' Then  tbNFEEntradaDtEntrega
                            Else NFEEntradaDtEntrega
                            End,
      CFOPIdentFkNFEEntrada = Case
                              When tbCFOPIdentFkNFEEntrada != '' Then  tbCFOPIdentFkNFEEntrada
                              Else CFOPIdentFkNFEEntrada
                              End,
      NFESaidaIdentFkNFEEntrada = Case
                                  When tbNFESaidaIdentFkNFEEntrada != '' Then  tbNFESaidaIdentFkNFEEntrada
                                  Else NFESaidaIdentFkNFEEntrada
                                  End,
      NFEEntradaPrincFkNFEntrada = Case
                                   When tbNFEEntradaPrincFkNFEntrada != '' Then  tbNFEEntradaPrincFkNFEntrada
                                   Else NFEEntradaPrincFkNFEntrada
                                   End,                              
      NFEEntradaProdutoServVlrTot = Case
                                    When tbNFEEntradaProdutoServVlrTot != '' Then  tbNFEEntradaProdutoServVlrTot
                                    Else NFEEntradaProdutoServVlrTot
                                    End,                                
      NFEEntradaDescontoVlrTot = Case
                                 When tbNFEEntradaDescontoVlrTot != '' Then  tbNFEEntradaDescontoVlrTot
                                 Else NFEEntradaDescontoVlrTot
                                 End,                              
      NFEEntradaAcrescVlrTot = Case
                               When tbNFEEntradaAcrescVlrTot != '' Then  tbNFEEntradaAcrescVlrTot
                               Else NFEEntradaAcrescVlrTot
                               End,                              
      NFEEntradaOutrosVlrTot = Case
                               When tbNFEEntradaOutrosVlrTot != '' Then  tbNFEEntradaOutrosVlrTot
                               Else NFEEntradaOutrosVlrTot
                               End,
      NFEEntradaFreteVlrTot = Case
                              When tbNFEEntradaFreteVlrTot != '' Then  tbNFEEntradaFreteVlrTot
                              Else NFEEntradaFreteVlrTot
                              End,                               
      NFEEntradaImpostoVlrTot = Case
                               When tbNFEEntradaImpostoVlrTot != '' Then  tbNFEEntradaImpostoVlrTot
                               Else NFEEntradaImpostoVlrTot
                               End,                               
       NFEEntradaSeguroVlrTot = Case
                                When tbNFEEntradaSeguroVlrTot != '' Then  tbNFEEntradaSeguroVlrTot
                                Else NFEEntradaSeguroVlrTot
                                End,                                
       NFEEntradaVlrTot = Case
                          When tbNFEEntradaVlrTot != '' Then  tbNFEEntradaVlrTot
                          Else NFEEntradaVlrTot
                          End,                                
       NFEEntradaIIVlrTotBase = Case
                                When tbNFEEntradaIIVlrTotBase != '' Then  tbNFEEntradaIIVlrTotBase
                                Else NFEEntradaIIVlrTotBase
                                End,  
       NFEEntradaIIVlrTot = Case
                            When tbNFEEntradaIIVlrTot != '' Then  tbNFEEntradaIIVlrTot
                            Else NFEEntradaIIVlrTot
                            End,                           
       CSTIdentIPIFkNFEEntrada = Case
                                 When tbCSTIdentIPIFkNFEEntrada != '' Then  tbCSTIdentIPIFkNFEEntrada
                                 Else CSTIdentIPIFkNFEEntrada
                                 End,
       NFEEntradaIPIVlrTotBase = Case
                                 When tbNFEEntradaIPIVlrTotBase != '' Then  tbNFEEntradaIPIVlrTotBase
                                 Else NFEEntradaIPIVlrTotBase
                                 End,
       NFEEntradaIPIVlrTot = Case
                             When tbNFEEntradaIPIVlrTot != '' Then  tbNFEEntradaIPIVlrTot
                             Else NFEEntradaIPIVlrTot
                             End,
       CSTIdentICMSFkNFEEntrada = Case
                                  When tbCSTIdentICMSFkNFEEntrada != '' Then  tbCSTIdentICMSFkNFEEntrada
                                  Else CSTIdentICMSFkNFEEntrada
                                  End,
       NFEEntradaICMSVlrTotBase = Case
                                  When tbNFEEntradaICMSVlrTotBase != '' Then  tbNFEEntradaICMSVlrTotBase
                                  Else NFEEntradaICMSVlrTotBase
                                  End,                             
       NFEEntradaICMSVlrTot = Case
                              When tbNFEEntradaICMSVlrTot != '' Then  tbNFEEntradaICMSVlrTot
                              Else NFEEntradaICMSVlrTot
                              End,                               
       CSTIdentICMSSTFkNFEEntrada = Case
                                    When tbCSTIdentICMSSTFkNFEEntrada != '' Then  tbCSTIdentICMSSTFkNFEEntrada
                                    Else CSTIdentICMSSTFkNFEEntrada
                                    End,                             
       NFEEntradaICMSSTVlrTotBase = Case
                                    When tbNFEEntradaICMSSTVlrTotBase != '' Then  tbNFEEntradaICMSSTVlrTotBase
                                    Else NFEEntradaICMSSTVlrTotBase
                                    End,                             
       NFEEntradaICMSSTVlrTot = Case
                                When tbNFEEntradaICMSSTVlrTot != '' Then  tbNFEEntradaICMSSTVlrTot
                                Else NFEEntradaICMSSTVlrTot
                                End,
       NFEEntradaFCPVlrTotBase = Case
                                 When tbNFEEntradaFCPVlrTotBase != '' Then  tbNFEEntradaFCPVlrTotBase
                                 Else NFEEntradaFCPVlrTotBase
                                 End,                                    
       NFEEntradaFCPVlrTot = Case
                             When tbNFEEntradaFCPVlrTot != '' Then  tbNFEEntradaFCPVlrTot
                             Else NFEEntradaFCPVlrTot
                             End,                                    
       NFEEntradaFCPSTVlrTotBase = Case
                                   When tbNFEEntradaFCPSTVlrTotBase != '' Then  tbNFEEntradaFCPSTVlrTotBase
                                   Else tbNFEEntradaFCPSTVlrTotBase
                                   End,                                    
       NFEEntradaFCPSTVlrTot = Case
                               When tbNFEEntradaFCPSTVlrTot != '' Then  tbNFEEntradaFCPSTVlrTot
                               Else NFEEntradaFCPSTVlrTot
                               End,                                    
       NFEEntradaFCPSTRetVlrTotBase = Case
                                      When tbNFEEntradaFCPSTRetVlrTotBase != '' Then  tbNFEEntradaFCPSTRetVlrTotBase
                                      Else NFEEntradaFCPSTRetVlrTotBase
                                      End,                                                                                                                           
       NFEEntradaFCPSTRetVlrTot = Case
                                  When tbNFEEntradaFCPSTRetVlrTot != '' Then  tbNFEEntradaFCPSTRetVlrTot
                                  Else NFEEntradaFCPSTRetVlrTot
                                  End,
       NFEEntradaFCPDestVlrTotBase = Case
                                     When tbNFEEntradaFCPDestVlrTotBase != '' Then  tbNFEEntradaFCPDestVlrTotBase
                                     Else NFEEntradaFCPDestVlrTotBase
                                     End,
       NFEEntradaFCPDestVlrTot = Case
                                 When tbNFEEntradaFCPDestVlrTot != '' Then  tbNFEEntradaFCPDestVlrTot
                                 Else NFEEntradaFCPDestVlrTot
                                 End,
       CSTIdentPISFkNFEEntrada = Case
                                 When tbCSTIdentPISFkNFEEntrada != '' Then  tbCSTIdentPISFkNFEEntrada
                                 Else CSTIdentPISFkNFEEntrada
                                 End,
       NFEEntradaPISVlrTotBase = Case
                                 When tbNFEEntradaPISVlrTotBase != '' Then  tbNFEEntradaPISVlrTotBase
                                 Else NFEEntradaPISVlrTotBase
                                 End,
       NFEEntradaPISVlrTot = Case
                             When tbNFEEntradaPISVlrTot != '' Then  tbNFEEntradaPISVlrTot
                             Else NFEEntradaPISVlrTot
                             End,                                 
       CSTIdentCOFINSFkNFEEntrada = Case
                                    When tbCSTIdentCOFINSFkNFEEntrada != '' Then  tbCSTIdentCOFINSFkNFEEntrada
                                    Else CSTIdentCOFINSFkNFEEntrada
                                    End,                                 
       NFEEntradaCOFINSVlrTotBase = Case
                                    When tbNFEEntradaCOFINSVlrTotBase != '' Then  tbNFEEntradaCOFINSVlrTotBase
                                    Else NFEEntradaCOFINSVlrTotBase
                                    End,                                 
       NFEEntradaCOFINSVlrTot = Case
                                When tbNFEEntradaCOFINSVlrTot != '' Then  tbNFEEntradaCOFINSVlrTot
                                Else NFEEntradaCOFINSVlrTot
                                End, 
       NFEEntradaISSVlrTotBase = Case
                                 When tbNFEEntradaISSVlrTotBase != '' Then  tbNFEEntradaISSVlrTotBase
                                 Else NFEEntradaISSVlrTotBase
                                 End,                                
       NFEEntradaISSVlrTot = Case
                             When tbNFEEntradaISSVlrTot != '' Then  tbNFEEntradaISSVlrTot
                             Else NFEEntradaISSVlrTot
                             End,                                
       NFEEntradaISSFlagRetido = Case
                                 When tbNFEEntradaISSFlagRetido != '' Then  tbNFEEntradaISSFlagRetido
                                 Else NFEEntradaISSFlagRetido
                                 End,                                  
       NFEEntradaPISRetVlrTotBase = Case
                                    When tbNFEEntradaPISRetVlrTotBase != '' Then  tbNFEEntradaPISRetVlrTotBase
                                    Else NFEEntradaPISRetVlrTotBase
                                    End,
       NFEEntradaPISRetVlrTot = Case
                                When tbNFEEntradaPISRetVlrTot != '' Then  tbNFEEntradaPISRetVlrTot
                                Else NFEEntradaPISRetVlrTot
                                End,                                 
       NFEEntradaCOFINSRetVlrTotBase = Case
                                       When tbNFEEntradaCOFINSRetVlrTotBase != '' Then  tbNFEEntradaCOFINSRetVlrTotBase
                                       Else NFEEntradaCOFINSRetVlrTotBase
                                       End,                                 
       NFEEntradaCOFINSRetVlrTot = Case
                                   When tbNFEEntradaCOFINSRetVlrTot != '' Then  tbNFEEntradaCOFINSRetVlrTot
                                   Else NFEEntradaCOFINSRetVlrTot
                                   End,                                 
       NFEEntradaCSLLVlrTotBase = Case
                                  When tbNFEEntradaCSLLVlrTotBase != '' Then  tbNFEEntradaCSLLVlrTotBase
                                  Else NFEEntradaCSLLVlrTotBase
                                  End,
       NFEEntradaCSLLVlrTot = Case
                              When tbNFEEntradaCSLLVlrTot != '' Then  tbNFEEntradaCSLLVlrTot
                              Else NFEEntradaCSLLVlrTot
                              End,                                                                                                                                   
       NFEEntradaIRRFVlrTotBase = Case
                                  When tbNFEEntradaIRRFVlrTotBase != '' Then  tbNFEEntradaIRRFVlrTotBase
                                  Else NFEEntradaIRRFVlrTotBase
                                  End,
       NFEEntradaIRRFVlrTot = Case
                              When tbNFEEntradaIRRFVlrTot != '' Then  tbNFEEntradaIRRFVlrTot
                              Else NFEEntradaIRRFVlrTot
                              End,
       NFEEntradaIRRFFlagRetido = Case
                                  When tbNFEEntradaIRRFFlagRetido != '' Then  tbNFEEntradaIRRFFlagRetido
                                  Else NFEEntradaIRRFFlagRetido
                                  End,
       NFEEntradaINSSVlrTotBase = Case
                                  When tbNFEEntradaINSSVlrTotBase != '' Then  tbNFEEntradaINSSVlrTotBase
                                  Else NFEEntradaINSSVlrTotBase
                                  End,
       NFEEntradaINSSVlrTot = Case
                              When tbNFEEntradaINSSVlrTot != '' Then  tbNFEEntradaINSSVlrTot
                              Else NFEEntradaINSSVlrTot
                              End,
       NFEEntradaINSSRetVlrTotBase = Case
                                     When tbNFEEntradaINSSRetVlrTotBase != '' Then  tbNFEEntradaINSSRetVlrTotBase
                                     Else NFEEntradaINSSRetVlrTotBase
                                     End,
       NFEEntradaINSSRetVlrTot = Case
                                 When tbNFEEntradaINSSRetVlrTot != '' Then  tbNFEEntradaINSSRetVlrTot
                                 Else NFEEntradaINSSRetVlrTot
                                 End,
       NFEEntradaVolumeTot = Case
                             When tbNFEEntradaVolumeTot != '' Then  tbNFEEntradaVolumeTot
                             Else NFEEntradaVolumeTot
                             End,
       NFEEntradaPesTotBruto = Case
                               When tbNFEEntradaPesTotBruto != '' Then  tbNFEEntradaPesTotBruto
                               Else NFEEntradaPesTotBruto
                               End,                                 
       NFEEntradaPesTotLiquido = Case
                                 When tbNFEEntradaPesTotLiquido != '' Then  tbNFEEntradaPesTotLiquido
                                 Else NFEEntradaPesTotLiquido
                                 End,                                 
       NFEEntradaParcQtde = Case
                            When tbNFEEntradaParcQtde != '' Then  tbNFEEntradaParcQtde
                            Else NFEEntradaParcQtde
                            End,
       NFEEntradaParcVlrUnit = Case
                               When tbNFEEntradaParcVlrUnit != '' Then  tbNFEEntradaParcVlrUnit
                               Else NFEEntradaParcVlrUnit
                               End,                                 
       NFEEntradaFreteTp = Case
                           When tbNFEEntradaFreteTp != '' Then  tbNFEEntradaFreteTp
                           Else NFEEntradaFreteTp
                           End,
       NFEEntradaFlagAtivo = Case
                             When tbNFEEntradaFlagAtivo != '' Then  tbNFEEntradaFlagAtivo
                             Else NFEEntradaFlagAtivo
                             End
  Where NFEEntradaIdent = tbNFEEntradaIdent
  Limit 1;
  Select 0 As CodRetorno, 'MSG016/SpUpdatetbnfeentrada: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbnfeentradaitem
DELIMITER //
CREATE PROCEDURE `SpUpdatetbnfeentradaitem`(
IN 
tbNFEEntradaIdentFkNFEEntradaItem Int(11),
tbNFEEntradaItemSeq Int(5),
tbProdutoEmpresaIdentFkNFEEntradaItem Int(11),
tbNFEEntradaItemProdutoFornecCod VarChar(50),
tbClassifServicoCodFkNFEEntradaItem VarChar(20),
tbNFEEntradaItemProdutoServicoFornecDescr VarChar(300),
tbNCMIdentFkNFEEntradaItem Int(11),
tbCFOPIdentFkNFEEntradaItem Int(11),
tbOrigMercadoriaCodFkNFEEntradaItem SmallInt(1),
tbCSTIdentFkNFEEntradaItem Int(11),
tbUnidMedidaIdentifFkNFEEntradaItem Int(11),
tbNFEEntradaItemUnidMedida VarChar(20),
tbNFEEntradaItemQtde Numeric(12,4),
tbNFEEntradaItemProdutoServVlrUnit Numeric(12,4),
tbNFEEntradaItemDescontoVlr Numeric(12,4),
tbNFEEntradaItemAcrescVlr Numeric(12,4),
tbNFEEntradaItemOutrosVlr Numeric(12,4),
tbNFEEntradaItemFreteVlr Numeric(12,4),
tbNFEEntradaItemSeguroVlr Numeric(12,4),
tbNFEEntradaItemProdutoServVlrTot Numeric(12,4),
tbNFEEntradaItemIIVlrTotBase Numeric(12,4),
tbNFEEntradaItemIIPerc Numeric(12,4),
tbNFEEntradaItemIIVlrTot Numeric(12,4),
tbCSTIdentIPIFkNFEEntradaItem Int(11),
tbNFEEntradaItemIPIVlrTotBase Numeric(12,4),
tbNFEEntradaItemIPIPerc Numeric(12,4),
tbNFEEntradaItemIPIVlrTot Numeric(12,4),
tbCSTIdentICMSFkNFEEntradaItem Int(11),
tbNFEEntradaItemICMSVlrTotBase Numeric(12,4),
tbNFEEntradaItemICMSPerc Numeric(12,4),
tbNFEEntradaItemICMSVlrTot Numeric(12,4),
tbCSTIdentICMSSTFkNFEEntradaItem Int(11),
tbNFEEntradaItemICMSSTVlrTotBase Numeric(12,4),
tbNFEEntradaItemICMSSTPerc Numeric(12,4),
tbNFEEntradaItemICMSSTVlrTot Numeric(12,4),
tbNFEEntradaItemFCPVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPPerc Numeric(12,4),
tbNFEEntradaItemFCPVlrTot Numeric(12,4),
tbNFEEntradaItemFCPSTVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPSTPerc Numeric(12,4),
tbNFEEntradaItemFCPSTVlrTot Numeric(12,4),
tbNFEEntradaItemFCPSTRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPSTRetPerc Numeric(12,4),
tbNFEEntradaItemFCPSTRetVlrTot Numeric(12,4),
tbNFEEntradaItemFCPDestVlrTotBase Numeric(12,4),
tbNFEEntradaItemFCPDestPerc Numeric(12,4),
tbNFEEntradaItemFCPDestVlrTot Numeric(12,4),
tbCSTIdentPISFkNFEEntradaItem Int(11),
tbNFEEntradaItemPISVlrTotBase Numeric(12,4),
tbNFEEntradaItemPISPerc Numeric(12,4),
tbNFEEntradaItemPISVlrTot Numeric(12,4),
tbCSTIdentCOFINSFkNFEEntradaItem Int(11),
tbNFEEntradaItemCOFINSVlrTotBase Numeric(12,4),
tbNFEEntradaItemCOFINSPerc Numeric(12,4),
tbNFEEntradaItemCOFINSVlrTot Numeric(12,4),
tbNFEEntradaItemISSVlrTotBase Numeric(12,4),
tbNFEEntradaItemISSPerc Numeric(12,4),
tbNFEEntradaItemISSVlrTot Numeric(12,4),
tbNFEEntradaItemISSFlagRetido SmallInt(1),
tbNFEEntradaItemPISRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemPISRetPerc Numeric(12,4),
tbNFEEntradaItemPISRetVlrTot Numeric(12,4),
tbNFEEntradaItemCOFINSRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemCOFINSRetPerc Numeric(12,4),
tbNFEEntradaItemCOFINSRetVlrTot Numeric(12,4),
tbNFEEntradaItemCSLLVlrTotBase Numeric(12,4),
tbNFEEntradaItemCSLLPerc Numeric(12,4),
tbNFEEntradaItemCSLLVlrTot Numeric(12,4),
tbNFEEntradaItemIRRFVlrTotBase Numeric(12,4),
tbNFEEntradaItemIRRFPerc Numeric(12,4),
tbNFEEntradaItemIRRFVlrTot Numeric(12,4),
tbNFEEntradaItemIRRFFlagRetido SmallInt(1),
tbNFEEntradaItemINSSVlrTotBase Numeric(12,4),
tbNFEEntradaItemINSSPerc Numeric(12,4),
tbNFEEntradaItemINSSVlrTot Numeric(12,4),
tbNFEEntradaItemINSSRetVlrTotBase Numeric(12,4),
tbNFEEntradaItemINSSRetPerc Numeric(12,4),
tbNFEEntradaItemINSSRetVlrTot Numeric(12,4),
tbNFEEntradaItemPesBruto Numeric(12,4),
tbNFEEntradaItemPesLiquido Numeric(12,4),
tbNFEEntradaItemFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
    
  If ((tbNFEEntradaIdentFkNFEEntradaItem = '') or (tbNFEEntradaIdentFkNFEEntradaItem = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbnfeentradaitem: Identificador da NFe de Entrada não informado!' As Msg;
  ElseIf ((tbNFEEntradaItemSeq = '') or (tbNFEEntradaItemSeq = '')) Then
     Select 1 As CodRetorno, 'MSG002/SpUpdatetbnfeentradaitem: Sequencia do Item da NFe de Entrada não informado!' As Msg;
  ElseIf ((tbNFEEntradaIdentFkNFEEntradaItem != '') && (tbNFEEntradaItemSeq != '') &&
     (Not Exists(Select NFEEntradaIdentFkNFEEntradaItem From tbnfeentradaitem 
                 Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem
                 And NFEEntradaItemSeq = tbNFEEntradaItemSeq))) Then
      Select 1 As CodRetorno, 'MSG003/SpUpdatetbnfeentradaitem: Item da NFE de Entrada não localizada na base de dados!' As Msg;   
  ElseIf ((tbProdutoEmpresaIdentFkNFEEntradaItem != '') &&
     (Not Exists(Select ProdutoEmpresaIdent From evomodadm.tbprodutoempresa
                 Where ProdutoEmpresaIdent = tbProdutoEmpresaIdentFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG004/SpUpdatetbnfeentradaitem: Produto/Empresa não localizada na base de dados!' As Msg;       
  ElseIf ((tbClassifServicoCodFkNFEEntradaItem != '') &&
     (Not Exists(Select ClassifServicoCod From tbclassifservico
                 Where ClassifServicoCod = tbClassifServicoCodFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG005/SpUpdatetbnfeentradaitem: Classificação do Serviço não localizada na base de dados!' As Msg; 
  ElseIf ((tbNCMIdentFkNFEEntradaItem != '') &&
     (Not Exists(Select NCMIdent From evomodadm.tbncm
                 Where NCMIdent = tbNCMIdentFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG006/SpUpdatetbnfeentradaitem: NCM não localizada na base de dados!' As Msg; 
  ElseIf ((tbCFOPIdentFkNFEEntradaItem != '') &&
     (Not Exists(Select CFOPIdent From evomodadm.tbcfop
                 Where CFOPIdent = tbCFOPIdentFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG007/SpUpdatetbnfeentradaitem: CFOP não localizada na base de dados!' As Msg; 
  ElseIf ((tbOrigMercadoriaCodFkNFEEntradaItem != '') &&
     (Not Exists(Select OrigMercadoriaCod From tborigmercadoria
                 Where OrigMercadoriaCod = tbOrigMercadoriaCodFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG008/SpUpdatetbnfeentradaitem: Origem da Mercadoria não localizada na base de dados!' As Msg; 
  ElseIf ((tbCSTIdentFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG009/SpUpdatetbnfeentradaitem: CST não localizada na base de dados!' As Msg; 
  ElseIf ((tbUnidMedidaIdentifFkNFEEntradaItem != '') &&
     (Not Exists(Select UnidMedidaIdentif From evomodadm.tbunidmedida
                 Where UnidMedidaIdentif = tbUnidMedidaIdentifFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG010/SpUpdatetbnfeentradaitem: Unidade de Medida não localizada na base de dados!' As Msg;       
  ElseIf ((tbCSTIdentIPIFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentIPIFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG011/SpUpdatetbnfeentradaitem: CST IPI não localizada na base de dados!' As Msg; 
  ElseIf ((tbCSTIdentICMSFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentICMSFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG012/SpUpdatetbnfeentradaitem: CST ICMS não localizada na base de dados!' As Msg;       
  ElseIf ((tbCSTIdentICMSSTFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentICMSSTFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG013/SpUpdatetbnfeentradaitem: CST ICMS ST não localizada na base de dados!' As Msg;       
  ElseIf ((tbCSTIdentPISFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentPISFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG014/SpUpdatetbnfeentradaitem: CST PIS não localizada na base de dados!' As Msg;            
  ElseIf ((tbCSTIdentCOFINSFkNFEEntradaItem != '') &&
     (Not Exists(Select CSTIdent From tbcst
                 Where CSTIdent = tbCSTIdentCOFINSFkNFEEntradaItem))) Then
      Select 1 As CodRetorno, 'MSG015/SpUpdatetbnfeentradaitem: CST COFINS não localizada na base de dados!' As Msg;                  
  ElseIf ((tbNFEEntradaIdentFkNFEEntradaItem != '') && (tbNFEEntradaItemSeq != '') &&
     (Exists(Select NFEEntradaIdentFkNFEEntradaItem From tbnfeentradaitem
                 Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem 
                 And NFEEntradaItemSeq = tbNFEEntradaItemSeq)))  Then
  Update tbnfeentradaitem
  Set ProdutoEmpresaIdentFkNFEEntradaItem = Case
                                            When tbProdutoEmpresaIdentFkNFEEntradaItem != '' Then tbProdutoEmpresaIdentFkNFEEntradaItem
                                            Else ProdutoEmpresaIdentFkNFEEntradaItem
                                            End,
      NFEEntradaItemProdutoFornecCod = Case
                                       When tbNFEEntradaItemProdutoFornecCod != '' Then  tbNFEEntradaItemProdutoFornecCod
                                       Else NFEEntradaItemProdutoFornecCod
                                       End,
      ClassifServicoCodFkNFEEntradaItem = Case
                                          When tbClassifServicoCodFkNFEEntradaItem != '' Then  tbClassifServicoCodFkNFEEntradaItem
                                          Else ClassifServicoCodFkNFEEntradaItem
                                          End,                                   
      NFEEntradaItemProdutoServicoFornecDescr = Case
                                                When tbNFEEntradaItemProdutoServicoFornecDescr != '' Then  tbNFEEntradaItemProdutoServicoFornecDescr
                                                Else NFEEntradaItemProdutoServicoFornecDescr
                                                End,                                                                      
      NCMIdentFkNFEEntradaItem = Case
                                 When tbNCMIdentFkNFEEntradaItem != '' Then  tbNCMIdentFkNFEEntradaItem
                                 Else NCMIdentFkNFEEntradaItem
                                 End,     
      CFOPIdentFkNFEEntradaItem = Case
                                  When tbCFOPIdentFkNFEEntradaItem != '' Then  tbCFOPIdentFkNFEEntradaItem
                                  Else CFOPIdentFkNFEEntradaItem
                                  End,                                     
      OrigMercadoriaCodFkNFEEntradaItem = Case
                                          When tbOrigMercadoriaCodFkNFEEntradaItem != '' Then  tbOrigMercadoriaCodFkNFEEntradaItem
                                          Else OrigMercadoriaCodFkNFEEntradaItem
                                          End,                                                                      
      CSTIdentFkNFEEntradaItem = Case
                                 When tbCSTIdentFkNFEEntradaItem != '' Then  tbCSTIdentFkNFEEntradaItem
                                 Else CSTIdentFkNFEEntradaItem
                                 End,                                                                      
      UnidMedidaIdentifFkNFEEntradaItem = Case
                                          When tbUnidMedidaIdentifFkNFEEntradaItem != '' Then  tbUnidMedidaIdentifFkNFEEntradaItem
                                          Else UnidMedidaIdentifFkNFEEntradaItem
                                          End,
      NFEEntradaItemUnidMedida = Case
                                 When tbNFEEntradaItemUnidMedida != '' Then  tbNFEEntradaItemUnidMedida
                                 Else NFEEntradaItemUnidMedida
                                 End,                                   
      NFEEntradaItemQtde = Case
                           When tbNFEEntradaItemQtde != '' Then  tbNFEEntradaItemQtde
                           Else NFEEntradaItemQtde
                           End,                                                                    
      NFEEntradaItemProdutoServVlrUnit = Case
                                         When tbNFEEntradaItemProdutoServVlrUnit != '' Then  tbNFEEntradaItemProdutoServVlrUnit
                                         Else NFEEntradaItemProdutoServVlrUnit
                                         End,
      NFEEntradaItemDescontoVlr = Case
                                  When tbNFEEntradaItemDescontoVlr != '' Then  tbNFEEntradaItemDescontoVlr
                                  Else NFEEntradaItemDescontoVlr
                                  End,                               
      NFEEntradaItemAcrescVlr = Case
                                When tbNFEEntradaItemAcrescVlr != '' Then  tbNFEEntradaItemAcrescVlr
                                Else NFEEntradaItemAcrescVlr
                                End,                               
      NFEEntradaItemOutrosVlr = Case
                                When tbNFEEntradaItemOutrosVlr != '' Then  tbNFEEntradaItemOutrosVlr
                                Else NFEEntradaItemOutrosVlr
                                End,                                                                                                   
      NFEEntradaItemFreteVlr = Case
                               When tbNFEEntradaItemFreteVlr != '' Then  tbNFEEntradaItemFreteVlr
                               Else NFEEntradaItemFreteVlr
                               End,                                                                                                   
      NFEEntradaItemSeguroVlr = Case
                                When tbNFEEntradaItemSeguroVlr != '' Then  tbNFEEntradaItemSeguroVlr
                                Else NFEEntradaItemSeguroVlr
                                End,
      NFEEntradaItemProdutoServVlrTot = Case
                                        When tbNFEEntradaItemProdutoServVlrTot != '' Then  tbNFEEntradaItemProdutoServVlrTot
                                        Else NFEEntradaItemProdutoServVlrTot
                                        End,
      NFEEntradaItemIIVlrTotBase = Case
                                   When tbNFEEntradaItemIIVlrTotBase != '' Then  tbNFEEntradaItemIIVlrTotBase
                                   Else NFEEntradaItemIIVlrTotBase
                                   End,
      NFEEntradaItemIIPerc = Case
                             When tbNFEEntradaItemIIPerc != '' Then  tbNFEEntradaItemIIPerc
                             Else NFEEntradaItemIIPerc
                             End,
      NFEEntradaItemIIVlrTot = Case
                               When tbNFEEntradaItemIIVlrTot != '' Then  tbNFEEntradaItemIIVlrTot
                               Else NFEEntradaItemIIVlrTot
                               End,
      CSTIdentIPIFkNFEEntradaItem = Case
                                    When tbCSTIdentIPIFkNFEEntradaItem != '' Then  tbCSTIdentIPIFkNFEEntradaItem
                                    Else CSTIdentIPIFkNFEEntradaItem
                                    End,                              
      NFEEntradaItemIPIVlrTotBase = Case
                                    When tbNFEEntradaItemIPIVlrTotBase != '' Then  tbNFEEntradaItemIPIVlrTotBase
                                    Else NFEEntradaItemIPIVlrTotBase
                                    End,                                
      NFEEntradaItemIPIPerc = Case
                              When tbNFEEntradaItemIPIPerc != '' Then  tbNFEEntradaItemIPIPerc
                              Else NFEEntradaItemIPIPerc
                              End,                              
      NFEEntradaItemIPIVlrTot = Case
                                When tbNFEEntradaItemIPIVlrTot != '' Then  tbNFEEntradaItemIPIVlrTot
                                Else NFEEntradaItemIPIVlrTot
                                End,                              
      CSTIdentICMSFkNFEEntradaItem = Case
                                     When tbCSTIdentICMSFkNFEEntradaItem != '' Then  tbCSTIdentICMSFkNFEEntradaItem
                                     Else CSTIdentICMSFkNFEEntradaItem
                                     End,
      NFEEntradaItemICMSVlrTotBase = Case
                                     When tbNFEEntradaItemICMSVlrTotBase != '' Then  tbNFEEntradaItemICMSVlrTotBase
                                     Else NFEEntradaItemICMSVlrTotBase
                                     End,                               
      NFEEntradaItemICMSVlrTotBase = Case
                                     When tbNFEEntradaItemICMSVlrTotBase != '' Then  tbNFEEntradaItemICMSVlrTotBase
                                     Else NFEEntradaItemICMSVlrTotBase
                                     End,                               
       NFEEntradaItemICMSPerc = Case
                                When tbNFEEntradaItemICMSPerc != '' Then  tbNFEEntradaItemICMSPerc
                                Else NFEEntradaItemICMSPerc
                                End,                                
       NFEEntradaItemICMSVlrTot = Case
                                  When tbNFEEntradaItemICMSVlrTot != '' Then  tbNFEEntradaItemICMSVlrTot
                                  Else NFEEntradaItemICMSVlrTot
                                  End,                                
       CSTIdentICMSSTFkNFEEntradaItem = Case
                                        When tbCSTIdentICMSSTFkNFEEntradaItem != '' Then  tbCSTIdentICMSSTFkNFEEntradaItem
                                        Else CSTIdentICMSSTFkNFEEntradaItem
                                        End,  
       NFEEntradaItemICMSSTVlrTotBase = Case
                                        When tbNFEEntradaItemICMSSTVlrTotBase != '' Then  tbNFEEntradaItemICMSSTVlrTotBase
                                        Else NFEEntradaItemICMSSTVlrTotBase
                                        End,                           
       NFEEntradaItemICMSSTPerc = Case
                                  When tbNFEEntradaItemICMSSTPerc != '' Then  tbNFEEntradaItemICMSSTPerc
                                  Else NFEEntradaItemICMSSTPerc
                                  End,
       NFEEntradaItemICMSSTVlrTot = Case
                                    When tbNFEEntradaItemICMSSTVlrTot != '' Then  tbNFEEntradaItemICMSSTVlrTot
                                    Else NFEEntradaItemICMSSTVlrTot
                                    End,
       NFEEntradaItemFCPVlrTotBase = Case
                                     When tbNFEEntradaItemFCPVlrTotBase != '' Then  tbNFEEntradaItemFCPVlrTotBase
                                     Else NFEEntradaItemFCPVlrTotBase
                                     End,
       NFEEntradaItemFCPPerc = Case
                               When tbNFEEntradaItemFCPPerc != '' Then  tbNFEEntradaItemFCPPerc
                               Else NFEEntradaItemFCPPerc
                               End,
       NFEEntradaItemFCPVlrTot = Case
                                 When tbNFEEntradaItemFCPVlrTot != '' Then  tbNFEEntradaItemFCPVlrTot
                                 Else NFEEntradaItemFCPVlrTot
                                 End,                             
       NFEEntradaItemFCPSTVlrTotBase = Case
                                       When tbNFEEntradaItemFCPSTVlrTotBase != '' Then  tbNFEEntradaItemFCPSTVlrTotBase
                                       Else NFEEntradaItemFCPSTVlrTotBase
                                       End,                               
       NFEEntradaItemFCPSTPerc = Case
                                 When tbNFEEntradaItemFCPSTPerc != '' Then  tbNFEEntradaItemFCPSTPerc
                                 Else NFEEntradaItemFCPSTPerc
                                 End,                             
       NFEEntradaItemFCPSTVlrTot = Case
                                   When tbNFEEntradaItemFCPSTVlrTot != '' Then  tbNFEEntradaItemFCPSTVlrTot
                                   Else NFEEntradaItemFCPSTVlrTot
                                   End,                             
       NFEEntradaItemFCPSTRetVlrTotBase = Case
                                          When tbNFEEntradaItemFCPSTRetVlrTotBase != '' Then  tbNFEEntradaItemFCPSTRetVlrTotBase
                                          Else NFEEntradaItemFCPSTRetVlrTotBase
                                          End,
       NFEEntradaItemFCPSTRetPerc = Case
                                    When tbNFEEntradaItemFCPSTRetPerc != '' Then  tbNFEEntradaItemFCPSTRetPerc
                                    Else NFEEntradaItemFCPSTRetPerc
                                    End,                                    
       NFEEntradaItemFCPSTRetVlrTot = Case
                                      When tbNFEEntradaItemFCPSTRetVlrTot != '' Then  tbNFEEntradaItemFCPSTRetVlrTot
                                      Else NFEEntradaItemFCPSTRetVlrTot
                                      End,                                    
       NFEEntradaItemFCPDestVlrTotBase = Case
                                         When tbNFEEntradaItemFCPDestVlrTotBase != '' Then  tbNFEEntradaItemFCPDestVlrTotBase
                                         Else NFEEntradaItemFCPDestVlrTotBase
                                         End,                                    
       NFEEntradaItemFCPDestPerc = Case
                                   When tbNFEEntradaItemFCPDestPerc != '' Then  tbNFEEntradaItemFCPDestPerc
                                   Else NFEEntradaItemFCPDestPerc
                                   End,                                    
       NFEEntradaItemFCPDestVlrTot = Case
                                     When tbNFEEntradaItemFCPDestVlrTot != '' Then  tbNFEEntradaItemFCPDestVlrTot
                                     Else NFEEntradaItemFCPDestVlrTot
                                     End,                                                                                                                           
       CSTIdentPISFkNFEEntradaItem = Case
                                     When tbCSTIdentPISFkNFEEntradaItem != '' Then  tbCSTIdentPISFkNFEEntradaItem
                                     Else CSTIdentPISFkNFEEntradaItem
                                     End,
       NFEEntradaItemPISVlrTotBase = Case
                                     When tbNFEEntradaItemPISVlrTotBase != '' Then  tbNFEEntradaItemPISVlrTotBase
                                     Else NFEEntradaItemPISVlrTotBase
                                     End,
       NFEEntradaItemPISPerc = Case
                               When tbNFEEntradaItemPISPerc != '' Then  tbNFEEntradaItemPISPerc
                               Else NFEEntradaItemPISPerc
                               End,
       NFEEntradaItemPISVlrTot = Case
                                 When tbNFEEntradaItemPISVlrTot != '' Then  tbNFEEntradaItemPISVlrTot
                                 Else NFEEntradaItemPISVlrTot
                                 End,
       CSTIdentCOFINSFkNFEEntradaItem = Case
                                        When tbCSTIdentCOFINSFkNFEEntradaItem != '' Then  tbCSTIdentCOFINSFkNFEEntradaItem
                                        Else CSTIdentCOFINSFkNFEEntradaItem
                                        End,
       NFEEntradaItemCOFINSVlrTotBase = Case
                                        When tbNFEEntradaItemCOFINSVlrTotBase != '' Then  tbNFEEntradaItemCOFINSVlrTotBase
                                        Else NFEEntradaItemCOFINSVlrTotBase
                                        End,                                 
       NFEEntradaItemCOFINSPerc = Case
                                  When tbNFEEntradaItemCOFINSPerc != '' Then  tbNFEEntradaItemCOFINSPerc
                                  Else NFEEntradaItemCOFINSPerc
                                  End,                                 
       NFEEntradaItemCOFINSVlrTot = Case
                                    When tbNFEEntradaItemCOFINSVlrTot != '' Then  tbNFEEntradaItemCOFINSVlrTot
                                    Else NFEEntradaItemCOFINSVlrTot
                                    End,                                 
       NFEEntradaItemISSVlrTotBase = Case
                                     When tbNFEEntradaItemISSVlrTotBase != '' Then  tbNFEEntradaItemISSVlrTotBase
                                     Else NFEEntradaItemISSVlrTotBase
                                     End, 
       NFEEntradaItemISSPerc = Case
                               When tbNFEEntradaItemISSPerc != '' Then  tbNFEEntradaItemISSPerc
                               Else NFEEntradaItemISSPerc
                               End,                                
       NFEEntradaItemISSVlrTot = Case
                                 When tbNFEEntradaItemISSVlrTot != '' Then  tbNFEEntradaItemISSVlrTot
                                 Else NFEEntradaItemISSVlrTot
                                 End,                                
       NFEEntradaItemISSFlagRetido = Case
                                     When tbNFEEntradaItemISSFlagRetido != '' Then  tbNFEEntradaItemISSFlagRetido
                                     Else NFEEntradaItemISSFlagRetido
                                     End,                                  
       NFEEntradaItemPISRetVlrTotBase = Case
                                        When tbNFEEntradaItemPISRetVlrTotBase != '' Then  tbNFEEntradaItemPISRetVlrTotBase
                                        Else NFEEntradaItemPISRetVlrTotBase
                                        End,
       NFEEntradaItemPISRetPerc = Case
                                  When tbNFEEntradaItemPISRetPerc != '' Then  tbNFEEntradaItemPISRetPerc
                                  Else NFEEntradaItemPISRetPerc
                                  End,                                 
       NFEEntradaItemPISRetVlrTot = Case
                                    When tbNFEEntradaItemPISRetVlrTot != '' Then  tbNFEEntradaItemPISRetVlrTot
                                    Else NFEEntradaItemPISRetVlrTot
                                    End,                                 
       NFEEntradaItemCOFINSRetVlrTotBase = Case
                                           When tbNFEEntradaItemCOFINSRetVlrTotBase != '' Then  tbNFEEntradaItemCOFINSRetVlrTotBase
                                           Else NFEEntradaItemCOFINSRetVlrTotBase
                                           End,                                 
       NFEEntradaItemCOFINSRetPerc = Case
                                     When tbNFEEntradaItemCOFINSRetPerc != '' Then  tbNFEEntradaItemCOFINSRetPerc
                                     Else NFEEntradaItemCOFINSRetPerc
                                     End,
       NFEEntradaItemCOFINSRetVlrTot = Case
                                       When tbNFEEntradaItemCOFINSRetVlrTot != '' Then  tbNFEEntradaItemCOFINSRetVlrTot
                                       Else NFEEntradaItemCOFINSRetVlrTot
                                       End,                                                                                                                                   
       NFEEntradaItemCSLLVlrTotBase = Case
                                      When tbNFEEntradaItemCSLLVlrTotBase != '' Then  tbNFEEntradaItemCSLLVlrTotBase
                                      Else NFEEntradaItemCSLLVlrTotBase
                                      End,
       NFEEntradaItemCSLLPerc = Case
                                When tbNFEEntradaItemCSLLPerc != '' Then  tbNFEEntradaItemCSLLPerc
                                Else NFEEntradaItemCSLLPerc
                                End,
       NFEEntradaItemCSLLVlrTot = Case
                                  When tbNFEEntradaItemCSLLVlrTot != '' Then  tbNFEEntradaItemCSLLVlrTot
                                  Else NFEEntradaItemCSLLVlrTot
                                  End,
       NFEEntradaItemIRRFVlrTotBase = Case
                                      When tbNFEEntradaItemIRRFVlrTotBase != '' Then  tbNFEEntradaItemIRRFVlrTotBase
                                      Else NFEEntradaItemIRRFVlrTotBase
                                      End,
       NFEEntradaItemIRRFPerc = Case
                                When tbNFEEntradaItemIRRFPerc != '' Then  tbNFEEntradaItemIRRFPerc
                                Else NFEEntradaItemIRRFPerc
                                End,
       NFEEntradaItemIRRFVlrTot = Case
                                  When tbNFEEntradaItemIRRFVlrTot != '' Then  tbNFEEntradaItemIRRFVlrTot
                                  Else NFEEntradaItemIRRFVlrTot
                                  End,
       NFEEntradaItemIRRFFlagRetido = Case
                                      When tbNFEEntradaItemIRRFFlagRetido != '' Then  tbNFEEntradaItemIRRFFlagRetido
                                      Else NFEEntradaItemIRRFFlagRetido
                                      End,
       NFEEntradaItemINSSVlrTotBase = Case
                                      When tbNFEEntradaItemINSSVlrTotBase != '' Then  tbNFEEntradaItemINSSVlrTotBase
                                      Else NFEEntradaItemINSSVlrTotBase
                                      End,
       NFEEntradaItemINSSPerc = Case
                                When tbNFEEntradaItemINSSPerc != '' Then  tbNFEEntradaItemINSSPerc
                                Else NFEEntradaItemINSSPerc
                                End,                                 
       NFEEntradaItemINSSVlrTot = Case
                                  When tbNFEEntradaItemINSSVlrTot != '' Then  tbNFEEntradaItemINSSVlrTot
                                  Else NFEEntradaItemINSSVlrTot
                                  End,                                 
       NFEEntradaItemINSSRetVlrTotBase = Case
                                         When tbNFEEntradaItemINSSRetVlrTotBase != '' Then  tbNFEEntradaItemINSSRetVlrTotBase
                                         Else NFEEntradaItemINSSRetVlrTotBase
                                         End,
       NFEEntradaItemINSSRetPerc = Case
                                   When tbNFEEntradaItemINSSRetPerc != '' Then  tbNFEEntradaItemINSSRetPerc
                                   Else NFEEntradaItemINSSRetPerc
                                   End,                                 
       NFEEntradaItemINSSRetVlrTot = Case
                                     When tbNFEEntradaItemINSSRetVlrTot != '' Then  tbNFEEntradaItemINSSRetVlrTot
                                     Else NFEEntradaItemINSSRetVlrTot
                                     End,
       NFEEntradaItemPesBruto = Case
                                When tbNFEEntradaItemPesBruto != '' Then  tbNFEEntradaItemPesBruto
                                Else NFEEntradaItemPesBruto
                                End,
       NFEEntradaItemPesLiquido = Case
                                  When tbNFEEntradaItemPesLiquido != '' Then  tbNFEEntradaItemPesLiquido
                                  Else NFEEntradaItemPesLiquido
                                  End,
       NFEEntradaItemFlagAtivo = Case
                                 When tbNFEEntradaItemFlagAtivo != '' Then  tbNFEEntradaItemFlagAtivo
                                 Else NFEEntradaItemFlagAtivo
                                 End                              
  Where NFEEntradaIdentFkNFEEntradaItem = tbNFEEntradaIdentFkNFEEntradaItem
  And NFEEntradaItemSeq = tbNFEEntradaItemSeq
  Limit 1;
  Select 0 As CodRetorno, 'MSG016/SpUpdatetbnfeentradaitem: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbnfeentradaxml
DELIMITER //
CREATE PROCEDURE `SpUpdatetbnfeentradaxml`(
IN 
tbNFEEntradaIdentFkNFEEntradaXML Int(11),
tbNFEEntradaXMLConteudo Blob,
tbNFEEntradaXMLFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbNFEEntradaIdentFkNFEEntradaXML = '') or (tbNFEEntradaIdentFkNFEEntradaXML = '')) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbnfeentradaxml: Identificador do XML da NFe de Entrada não informado!' As Msg;
  ElseIf ((tbNFEEntradaIdentFkNFEEntradaXML != '') &&
     (Not Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdentFkNFEEntradaXML))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbnfeentradaxml: Identificador do XML da NFe de Entrada não localizado!' As Msg;     
  ElseIf ((tbNFEEntradaIdentFkNFEEntradaXML != '') &&
     (Exists(Select NFEEntradaIdent From tbnfeentrada 
                 Where NFEEntradaIdent = tbNFEEntradaIdentFkNFEEntradaXML)))  Then
  Update tbnfeentrada
  Set NFEEntradaXMLConteudo = Case
                              When tbNFEEntradaXMLConteudo != '' Then tbNFEEntradaXMLConteudo
                              Else NFEEntradaXMLConteudo
                              End,
      NFEEntradaXMLFlagAtivo = Case
                               When tbNFEEntradaXMLFlagAtivo != '' Then  tbNFEEntradaXMLFlagAtivo
                               Else NFEEntradaXMLFlagAtivo
                               End
  Where NFEEntradaIdentFkNFEEntradaXML = tbNFEEntradaIdentFkNFEEntradaXML
  Limit 1;
  Select 0 As CodRetorno, 'MSG004/SpUpdatetbnfeentradaxml: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetborigmercadoria
DELIMITER //
CREATE PROCEDURE `SpUpdatetborigmercadoria`(
IN 
tbOrigMercadoriaCod SmallInt(1),
tbOrigMercadoriaDescr VarChar(300), 
tbOrigMercadoriaFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbOrigMercadoriaCod = '') or (tbOrigMercadoriaCod Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetborigmercadoria: Código da Origem da Mercadoria não informado!' As Msg;
  ElseIf ((tbOrigMercadoriaCod != '') &&
     (Not Exists(Select OrigMercadoriaCod From tborigmercadoria 
                 Where OrigMercadoriaCod = tbOrigMercadoriaCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetborigmercadoria: Código da Origem da Mercadoria não localizado!' As Msg;     
  ElseIf ((tbOrigMercadoriaCod != '') &&
     (Exists(Select OrigMercadoriaCod From tborigmercadoria 
                 Where OrigMercadoriaCod = tbOrigMercadoriaCod)))  Then
  Update tborigmercadoria
  Set OrigMercadoriaDescr = Case
                            When tbOrigMercadoriaDescr != '' Then tbOrigMercadoriaDescr
                            Else OrigMercadoriaDescr
                            End,
      OrigMercadoriaFlagAtivo = Case
                                When tbOrigMercadoriaFlagAtivo != '' Then  tbOrigMercadoriaFlagAtivo
                                Else OrigMercadoriaFlagAtivo
                                End
  Where OrigMercadoriaCod = tbOrigMercadoriaCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetborigmercadoria: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para procedure evomodmat.SpUpdatetbtpnaoconformidade
DELIMITER //
CREATE PROCEDURE `SpUpdatetbtpnaoconformidade`(
IN 
tbTpNaoConformidadeCod VarChar(20),
tbTpNaoConformidadeDescr VarChar(300), 
tbTpNaoConformidadeFlagAtivo SmallInt(1),
OUT
CodRetorno Int(11), Msg VarChar(200))
BEGIN
  If ((tbTpNaoConformidadeCod = '') or (tbTpNaoConformidadeCod Is Null)) Then
     Select 1 As CodRetorno, 'MSG001/SpUpdatetbtpnaoconformidade: Código da Não Conformidade não informado!' As Msg;
  ElseIf ((tbTpNaoConformidadeCod != '') &&
     (Not Exists(Select TpNaoConformidadeCod From tbtpnaoconformidade 
                 Where TpNaoConformidadeCod = tbTpNaoConformidadeCod))) Then
      Select 1 As CodRetorno, 'MSG002/SpUpdatetbtpnaoconformidade: Código da Não Conformidade não localizado!' As Msg;     
  ElseIf ((tbTpNaoConformidadeCod != '') &&
     (Exists(Select TpNaoConformidadeCod From tbtpnaoconformidade 
                 Where TpNaoConformidadeCod = tbTpNaoConformidadeCod)))  Then
  Update tbtpnaoconformidade
  Set TpNaoConformidadeDescr = Case
                               When tbTpNaoConformidadeDescr != '' Then tbTpNaoConformidadeDescr
                               Else TpNaoConformidadeDescr
                               End,
      TpNaoConformidadeFlagAtivo = Case
                                   When tbTpNaoConformidadeFlagAtivo != '' Then  tbTpNaoConformidadeFlagAtivo
                                   Else TpNaoConformidadeFlagAtivo
                                   End
  Where TpNaoConformidadeCod = tbTpNaoConformidadeCod
  Limit 1;
  Select 0 As CodRetorno, 'MSG003/SpUpdatetbtpnaoconformidade: Atualização realizada com sucesso!' As Msg;

  End If;

END//
DELIMITER ;

-- Copiando estrutura para tabela evomodmat.tbclassifservico
CREATE TABLE IF NOT EXISTS `tbclassifservico` (
  `ClassifServicoCod` varchar(20) NOT NULL DEFAULT '',
  `ClassifServicoDescr` varchar(500) NOT NULL DEFAULT 'SEMDESCRICAO',
  `ClassifServicoFlagAtivo` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`ClassifServicoCod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbclassifservico: ~236 rows (aproximadamente)
DELETE FROM `tbclassifservico`;
/*!40000 ALTER TABLE `tbclassifservico` DISABLE KEYS */;
INSERT INTO `tbclassifservico` (`ClassifServicoCod`, `ClassifServicoDescr`, `ClassifServicoFlagAtivo`) VALUES
	('1.00', 'Serviços de informática e congêneres', 1),
	('1.02', 'Programação', 1),
	('1.03', 'Processamento de dados e congêneres', 1),
	('1.04', 'Elaboração de programas de computadores, inclusive de jogos eletrônicos', 1),
	('1.05', 'Licenciamento ou cessão de direito de uso de programas de computação', 1),
	('1.06', 'Assessoria e consultoria em informática', 1),
	('1.07', 'Suporte técnico em informática, inclusive instalação, configuração e manutenção de programas de computação e bancos de dados', 1),
	('1.08', 'Planejamento, confecção, manutenção e atualização de páginas eletrônicas', 1),
	('10.00', 'Serviços de intermediação e congêneres', 1),
	('10.01', 'Agenciamento, corretagem ou intermediação de câmbio, de seguros, de cartões de crédito, de planos de saúde e de planos de previdência privada', 1),
	('10.02', 'Agenciamento, corretagem ou intermediação de títulos em geral, valores mobiliários e contratos quaisquer', 1),
	('10.03', 'Agenciamento, corretagem ou intermediação de direitos de propriedade industrial, artística ou literária', 1),
	('10.04', 'Agenciamento, corretagem ou intermediação de contratos de arrendamento mercantil (leasing), de franquia (franchising) e de faturização (factoring)', 1),
	('10.05', 'Agenciamento, corretagem ou intermediação de bens móveis ou imóveis, não abrangidos em outros itens ou subitens, inclusive aqueles realizados no âmbito de Bolsas de Mercadorias e Futuros, por quaisquer meios', 1),
	('10.06', 'Agenciamento marítimo', 1),
	('10.07', 'Agenciamento de notícias', 1),
	('10.08', 'Agenciamento de publicidade e propaganda, inclusive o agenciamento de veiculação por quaisquer meios', 1),
	('10.09', 'Representação de qualquer natureza, inclusive comercial', 1),
	('10.10', 'Distribuição de bens de terceiros', 1),
	('11.00', 'Serviços de guarda, estacionamento, armazenamento, vigilância e congêneres', 1),
	('11.01', 'Guarda e estacionamento de veículos terrestres automotores, de aeronaves e de embarcações', 1),
	('11.02', 'Vigilância, segurança ou monitoramento de bens e pessoas', 1),
	('11.03', 'Escolta, inclusive de veículos e cargas', 1),
	('11.04', 'Armazenamento, depósito, carga, descarga, arrumação e guarda de bens de qualquer espécie', 1),
	('12.00', 'Serviços de diversões, lazer, entretenimento e congêneres', 1),
	('12.01', 'Espetáculos teatrais', 1),
	('12.02', 'Exibições cinematográficas', 1),
	('12.03', 'Espetáculos circensesEspetáculos circenses', 1),
	('12.04', 'Programas de auditório', 1),
	('12.05', 'Parques de diversões, centros de lazer e congêneres', 1),
	('12.06', 'Boates, taxi-dancing e congêneres', 1),
	('12.07', 'Shows, ballet, danças, desfiles, bailes, óperas, concertos, recitais, festivais e congêneres', 1),
	('12.08', 'Feiras, exposições, congressos e congêneres', 1),
	('12.09', 'Bilhares, boliches e diversões eletrônicas ou não', 1),
	('12.10', 'Corridas e competições de animais', 1),
	('12.11', 'Competições esportivas ou de destreza física ou intelectual, com ou sem a participação do espectador', 1),
	('12.12', 'Execução de música', 1),
	('12.13', 'Produção, mediante ou sem encomenda prévia, de eventos, espetáculos, entrevistas, shows, ballet, danças, desfiles, bailes, teatros, óperas, concertos, recitais, festivais e congêneres', 1),
	('12.14', 'Fornecimento de música para ambientes fechados ou não, mediante transmissão por qualquer processo', 1),
	('12.15', 'Desfiles de blocos carnavalescos ou folclóricos, trios elétricos e congêneres', 1),
	('12.16', 'Exibição de filmes, entrevistas, musicais, espetáculos, shows, concertos, desfiles, óperas, competições esportivas, de destreza intelectual ou congêneres', 1),
	('12.17', 'Recreação e animação, inclusive em festas e eventos de qualquer natureza', 1),
	('13.00', 'Serviços relativos a fonografia, fotografia, cinematografia e reprografia', 1),
	('13.01', '(VETADO) 13.02 – Fonografia ou gravação de sons, inclusive trucagem, dublagem, mixagem e congêneres', 1),
	('13.02', 'VETADO', 1),
	('13.03', 'Fotografia e cinematografia, inclusive revelação, ampliação, cópia, reprodução, trucagem e congêneres', 1),
	('13.04', 'Reprografia, microfilmagem e digitalização', 1),
	('13.05', 'Composição gráfica, fotocomposição, clicheria, zincografia, litografia, fotolitografia', 1),
	('14.00', 'Serviços relativos a bens de terceiros', 1),
	('14.01', 'Lubrificação, limpeza, lustração, revisão, carga e recarga, conserto, restauração, blindagem, manutenção e conservação de máquinas, veículos, aparelhos, equipamentos, motores, elevadores ou de qualquer objeto (exceto peças e partes empregadas, que ficam sujeitas ao ICMS)', 1),
	('14.02', 'Assistência técnica', 1),
	('14.03', 'Recondicionamento de motores (exceto peças e partes empregadas, que ficam sujeitas ao ICMS)', 1),
	('14.04', 'Recauchutagem ou regeneração de pneus', 1),
	('14.05', 'Restauração, recondicionamento, acondicionamento, pintura, beneficiamento, lavagem, secagem, tingimento, galvanoplastia, anodização, corte, recorte, polimento, plastificação e congêneres, de objetos quaisquer', 1),
	('14.06', 'Instalação e montagem de aparelhos, máquinas e equipamentos, inclusive montagem industrial, prestados ao usuário final, exclusivamente com material por ele fornecido', 1),
	('14.07', 'Colocação de molduras e congêneres', 1),
	('14.08', 'Encadernação, gravação e douração de livros, revistas e congêneres', 1),
	('14.09', 'Alfaiataria e costura, quando o material for fornecido pelo usuário final, exceto aviamento', 1),
	('14.10', 'Tinturaria e lavanderia', 1),
	('14.11', 'Tapeçaria e reforma de estofamentos em geral', 1),
	('14.12', 'Funilaria e lanternagem', 1),
	('14.13', 'Carpintaria e serralheria', 1),
	('15.00', 'Serviços relacionados ao setor bancário ou financeiro, inclusive aqueles prestados por instituições financeiras autorizadas a funcionar pela União ou por quem de direito', 1),
	('15.01', 'Administração de fundos quaisquer, de consórcio, de cartão de crédito ou débito e congêneres, de carteira de clientes, de cheques pré-datados e congêneres', 1),
	('15.02', 'Abertura de contas em geral, inclusive conta-corrente, conta de investimentos e aplicação e caderneta de poupança, no País e no exterior, bem como a manutenção das referidas contas ativas e inativas', 1),
	('15.03', 'Locação e manutenção de cofres particulares, de terminais eletrônicos, de terminais de atendimento e de bens e equipamentos em geral', 1),
	('15.04', 'Fornecimento ou emissão de atestados em geral, inclusive atestado de idoneidade, atestado de capacidade financeira e congêneres', 1),
	('15.05', 'Cadastro, elaboração de ficha cadastral, renovação cadastral e congêneres, inclusão ou exclusão no Cadastro de Emitentes de Cheques sem Fundos – CCF ou em quaisquer outros bancos cadastrais', 1),
	('15.06', 'Emissão, reemissão e fornecimento de avisos, comprovantes e documentos em geral; abono de firmas; coleta e entrega de documentos, bens e valores; comunicação com outra agência ou com a administração central; licenciamento eletrônico de veículos; transferência de veículos; agenciamento fiduciário ou depositário; devolução de bens em custódia', 1),
	('15.07', 'Acesso, movimentação, atendimento e consulta a contas em geral, por qualquer meio ou processo, inclusive por telefone, fac-símile, internet e telex, acesso a terminais de atendimento, inclusive vinte e quatro horas; acesso a outro banco e a rede compartilhada; fornecimento de saldo, extrato e demais informações relativas a contas em geral, por qualquer meio ou processo', 1),
	('15.08', 'Emissão, reemissão, alteração, cessão, substituição, cancelamento e registro de contrato de crédito; estudo, análise e avaliação de operações de crédito; emissão, concessão, alteração ou contratação de aval, fiança, anuência e congêneres; serviços relativos a abertura de crédito, para quaisquer fins', 1),
	('15.09', 'Arrendamento mercantil (leasing) de quaisquer bens, inclusive cessão de direitos e obrigações, substituição de garantia, alteração, cancelamento e registro de contrato, e demais serviços relacionados ao arrendamento mercantil (leasing)', 1),
	('15.10', 'Serviços relacionados a cobranças, recebimentos ou pagamentos em geral, de títulos quaisquer, de contas ou carnês, de câmbio, de tributos e por conta de terceiros, inclusive os efetuados por meio eletrônico, automático ou por máquinas de atendimento; fornecimento de posição de cobrança, recebimento ou pagamento; emissão de carnês, fichas de compensação, impressos e documentos em geral', 1),
	('15.11', 'Devolução de títulos, protesto de títulos, sustação de protesto, manutenção de títulos, reapresentação de títulos, e demais serviços a eles relacionados', 1),
	('15.12', 'Custódia em geral, inclusive de títulos e valores mobiliários', 1),
	('15.13', 'Serviços relacionados a operações de câmbio em geral, edição, alteração, prorrogação, cancelamento e baixa de contrato de câmbio; emissão de registro de exportação ou de crédito; cobrança ou depósito no exterior; emissão, fornecimento e cancelamento de cheques de viagem; fornecimento, transferência, cancelamento e demais serviços relativos a carta de crédito de importação, exportação e garantias recebidas; envio e recebimento de mensagens em geral relacionadas a operações de câmbio', 1),
	('15.14', 'Fornecimento, emissão, reemissão, renovação e manutenção de cartão magnético, cartão de crédito, cartão de débito, cartão salário e congêneres', 1),
	('15.15', 'Compensação de cheques e títulos quaisquer; serviços relacionados a depósito, inclusive depósito identificado, a saque de contas quaisquer, por qualquer meio ou processo, inclusive em terminais eletrônicos e de atendimento', 1),
	('15.16', 'Emissão, reemissão, liquidação, alteração, cancelamento e baixa de ordens de pagamento, ordens de crédito e similares, por qualquer meio ou processo; serviços relacionados à transferência de valores, dados, fundos, pagamentos e similares, inclusive entre contas em geral', 1),
	('15.17', 'Emissão, fornecimento, devolução, sustação, cancelamento e oposição de cheques quaisquer, avulso ou por talão', 1),
	('15.18', 'Serviços relacionados a crédito imobiliário, avaliação e vistoria de imóvel ou obra, análise técnica e jurídica, emissão, reemissão, alteração, transferência e renegociação de contrato, emissão e reemissão do termo de quitação e demais serviços relacionados a crédito imobiliário', 1),
	('16.00', 'Serviços de transporte de natureza municipal.', 1),
	('16.01', 'Serviços de transporte de natureza municipal', 1),
	('17.00', 'Serviços de apoio técnico, administrativo, jurídico, contábil, comercial e congêneres', 1),
	('17.01', 'Assessoria ou consultoria de qualquer natureza, não contida em outros itens desta lista; análise, exame, pesquisa, coleta, compilação e fornecimento de dados e informações de qualquer natureza, inclusive cadastro e similares', 1),
	('17.02', 'Datilografia, digitação, estenografia, expediente, secretaria em geral, resposta audível, redação, edição, interpretação, revisão, tradução, apoio e infra-estrutura administrativa e congêneres', 1),
	('17.03', 'Planejamento, coordenação, programação ou organização técnica, financeira ou administrativa', 1),
	('17.04', 'Recrutamento, agenciamento, seleção e colocação de mão-de-obra', 1),
	('17.05', 'Fornecimento de mão-de-obra, mesmo em caráter temporário, inclusive de empregados ou trabalhadores, avulsos ou temporários, contratados pelo prestador de serviço.', 1),
	('17.06', 'Propaganda e publicidade, inclusive promoção de vendas, planejamento de campanhas ou sistemas de publicidade, elaboração de desenhos, textos e demais materiais publicitários', 1),
	('17.07', '(VETADO) 17.08 – Franquia (franchising)', 1),
	('17.08', 'VETADO', 1),
	('17.09', 'Perícias, laudos, exames técnicos e análises técnicas', 1),
	('17.10', 'Planejamento, organização e administração de feiras, exposições, congressos e congêneres', 1),
	('17.11', 'Organização de festas e recepções; bufê (exceto o fornecimento de alimentação e bebidas, que fica sujeito ao ICMS)', 1),
	('17.12', 'Administração em geral, inclusive de bens e negócios de terceiros', 1),
	('17.13', 'Leilão e congêneres', 1),
	('17.14', 'Advocacia', 1),
	('17.15', 'Arbitragem de qualquer espécie, inclusive jurídica', 1),
	('17.16', 'Auditoria', 1),
	('17.17', 'Análise de Organização e Métodos', 1),
	('17.18', 'Atuária e cálculos técnicos de qualquer natureza', 1),
	('17.19', 'Contabilidade, inclusive serviços técnicos e auxiliares', 1),
	('17.20', 'Consultoria e assessoria econômica ou financeira', 1),
	('17.21', 'Estatística', 1),
	('17.22', 'Cobrança em geral', 1),
	('17.23', 'Assessoria, análise, avaliação, atendimento, consulta, cadastro, seleção, gerenciamento de informações, administração de contas a receber ou a pagar e em geral, relacionados a operações de faturização (factoring)', 1),
	('17.24', 'Apresentação de palestras, conferências, seminários e congêneres', 1),
	('18.00', 'Serviços de regulação de sinistros vinculados a contratos de seguros; inspeção e avaliação de riscos para cobertura de contratos de seguros; prevenção e gerência de riscos seguráveis e congêneres', 1),
	('18.01', 'Serviços de regulação de sinistros vinculados a contratos de seguros; inspeção e avaliação de riscos para cobertura de contratos de seguros; prevenção e gerência de riscos seguráveis e congêneres', 1),
	('19.00', 'Serviços de distribuição e venda de bilhetes e demais produtos de loteria, bingos, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres', 1),
	('19.01', 'Serviços de distribuição e venda de bilhetes e demais produtos de loteria, bingos, cartões, pules ou cupons de apostas, sorteios, prêmios, inclusive os decorrentes de títulos de capitalização e congêneres', 1),
	('2.00', 'Serviços de pesquisas e desenvolvimento de qualquer natureza', 1),
	('2.01', 'Serviços de pesquisas e desenvolvimento de qualquer natureza', 1),
	('20.00', 'Serviços portuários, aeroportuários, ferroportuários, de terminais rodoviários, ferroviários e metroviários', 1),
	('20.01', 'Serviços portuários, ferroportuários, utilização de porto, movimentação de passageiros, reboque de embarcações, rebocador escoteiro, atracação, desatracação, serviços de praticagem, capatazia, armazenagem de qualquer natureza, serviços acessórios, movimentação de mercadorias, serviços de apoio marítimo, de movimentação ao largo, serviços de armadores, estiva, conferência, logística e congêneres', 1),
	('20.02', 'Serviços aeroportuários, utilização de aeroporto, movimentação de passageiros, armazenagem de qualquer natureza, capatazia, movimentação de aeronaves, serviços de apoio aeroportuários, serviços acessórios, movimentação de mercadorias, logística e congêneres', 1),
	('20.03', 'Serviços de terminais rodoviários, ferroviários, metroviários, movimentação de passageiros, mercadorias, inclusive suas operações, logística e congêneres', 1),
	('21.00', 'Serviços de registros públicos, cartorários e notariais', 1),
	('21.01', 'Serviços de registros públicos, cartorários e notariais', 1),
	('22.00', 'Serviços de exploração de rodovia', 1),
	('22.01', 'Serviços de exploração de rodovia mediante cobrança de preço ou pedágio dos usuários, envolvendo execução de serviços de conservação, manutenção, melhoramentos para adequação de capacidade e segurança de trânsito, operação, monitoração, assistência aos usuários e outros serviços definidos em contratos, atos de concessão ou de permissão ou em normas oficiais', 1),
	('23.00', 'Serviços de programação e comunicação visual, desenho industrial e congêneres', 1),
	('23.01', 'Serviços de programação e comunicação visual, desenho industrial e congêneres', 1),
	('24.00', 'Serviços de chaveiros, confecção de carimbos, placas, sinalização visual, banners, adesivos e congêneres', 1),
	('24.01', 'Serviços de chaveiros, confecção de carimbos, placas, sinalização visual, banners, adesivos e congêneres', 1),
	('25.00', 'Serviços funerários', 1),
	('25.01', 'Funerais, inclusive fornecimento de caixão, urna ou esquifes; aluguel de capela; transporte do corpo cadavérico; fornecimento de flores, coroas e outros paramentos; desembaraço de certidão de óbito; fornecimento de véu, essa e outros adornos; embalsamento, embelezamento, conservação ou restauração de cadáveres', 1),
	('25.02', 'Cremação de corpos e partes de corpos cadavéricos', 1),
	('25.03', 'Planos ou convênio funerários', 1),
	('25.04', 'Manutenção e conservação de jazigos e cemitérios', 1),
	('26.00', 'Serviços de coleta, remessa ou entrega de correspondências, documentos, objetos, bens ou valores, inclusive pelos correios e suas agências franqueadas; courrier e congêneres', 1),
	('26.01', 'Serviços de coleta, remessa ou entrega de correspondências, documentos, objetos, bens ou valores, inclusive pelos correios e suas agências franqueadas; courrier e congêneres', 1),
	('27.00', 'Serviços de assistência social', 1),
	('27.01', 'Serviços de assistência social', 1),
	('28.00', 'Serviços de avaliação de bens e serviços de qualquer natureza', 1),
	('28.01', 'Serviços de avaliação de bens e serviços de qualquer natureza', 1),
	('29.00', 'Serviços de biblioteconomia.', 1),
	('29.01', 'Serviços de biblioteconomia', 1),
	('3.00', 'Serviços prestados mediante locação, cessão de direito de uso e congêneres', 1),
	('3.01', '(VETADO) 3.02 – Cessão de direito de uso de marcas e de sinais de propaganda', 1),
	('3.03', 'Exploração de salões de festas, centro de convenções, escritórios virtuais, stands, quadras esportivas, estádios, ginásios, auditórios, casas de espetáculos, parques de diversões, canchas e congêneres, para realização de eventos ou negócios de qualquer natureza', 1),
	('3.04', 'Locação, sublocação, arrendamento, direito de passagem ou permissão de uso, compartilhado ou não, de ferrovia, rodovia, postes, cabos, dutos e condutos de qualquer natureza', 1),
	('3.05', 'Cessão de andaimes, palcos, coberturas e outras estruturas de uso temporário', 1),
	('30.00', 'Serviços de biologia, biotecnologia e química', 1),
	('30.01', 'Serviços de biologia, biotecnologia e química', 1),
	('31.00', 'Serviços técnicos em edificações, eletrônica, eletrotécnica, mecânica, telecomunicações e congêneres.', 1),
	('31.01', 'Serviços técnicos em edificações, eletrônica, eletrotécnica, mecânica, telecomunicações e congêneres', 1),
	('32.00', 'Serviços de desenhos técnicos', 1),
	('32.01', 'Serviços de desenhos técnicos', 1),
	('33.00', 'Serviços de desembaraço aduaneiro, comissários, despachantes e congêneres', 1),
	('33.01', 'Serviços de desembaraço aduaneiro, comissários, despachantes e congêneres', 1),
	('34.00', 'Serviços de investigações particulares, detetives e congêneres.', 1),
	('34.01', 'Serviços de investigações particulares, detetives e congêneres', 1),
	('35.00', 'Serviços de reportagem, assessoria de imprensa, jornalismo e relações públicas', 1),
	('35.01', 'Serviços de reportagem, assessoria de imprensa, jornalismo e relações públicas', 1),
	('36.00', 'Serviços de meteorologia', 1),
	('36.01', 'Serviços de meteorologia', 1),
	('37.00', 'Serviços de artistas, atletas, modelos e manequins', 1),
	('37.01', 'Serviços de artistas, atletas, modelos e manequins', 1),
	('38.00', 'Serviços de museologia', 1),
	('38.01', 'Serviços de museologia', 1),
	('39.00', 'Serviços de ourivesaria e lapidação', 1),
	('39.01', 'Serviços de ourivesaria e lapidação (quando o material for fornecido pelo tomador do serviço)', 1),
	('4.00', 'Serviços de saúde, assistência médica e congêneres', 1),
	('4.01', 'Medicina e biomedicina', 1),
	('4.02', 'Análises clínicas, patologia, eletricidade médica, radioterapia, quimioterapia, ultra-sonografia, ressonância magnética, radiologia, tomografia e congêneres', 1),
	('4.03', 'Hospitais, clínicas, laboratórios, sanatórios, manicômios, casas de saúde, prontos-socorros, ambulatórios e congêneres', 1),
	('4.04', 'Instrumentação cirúrgica', 1),
	('4.05', 'Acupuntura', 1),
	('4.06', 'Enfermagem, inclusive serviços auxiliares', 1),
	('4.07', 'Serviços farmacêuticos', 1),
	('4.08', 'Terapia ocupacional, fisioterapia e fonoaudiologia', 1),
	('4.09', 'Terapias de qualquer espécie destinadas ao tratamento físico, orgânico e mental', 1),
	('4.10', 'Nutrição', 1),
	('4.11', 'Obstetrícia', 1),
	('4.12', 'Odontologia', 1),
	('4.13', 'Ortóptica', 1),
	('4.14', 'Próteses sob encomenda', 1),
	('4.15', 'Psicanálise', 1),
	('4.16', 'Psicologia', 1),
	('4.17', 'Casas de repouso e de recuperação, creches, asilos e congêneres', 1),
	('4.18', 'Inseminação artificial, fertilização in vitro e congêneres', 1),
	('4.19', 'Bancos de sangue, leite, pele, olhos, óvulos, sêmen e congêneres', 1),
	('4.20', 'Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie', 1),
	('4.21', 'Unidade de atendimento, assistência ou tratamento móvel e congêneres', 1),
	('4.22', 'Planos de medicina de grupo ou individual e convênios para prestação de assistência médica, hospitalar, odontológica e congêneres', 1),
	('4.23', 'Outros planos de saúde que se cumpram através de serviços de terceiros contratados, credenciados, cooperados ou apenas pagos pelo operador do plano mediante indicação do beneficiário', 1),
	('40.00', 'Serviços relativos a obras de arte sob encomenda', 1),
	('40.01', 'Obras de arte sob encomenda', 1),
	('5.00', 'Serviços de medicina e assistência veterinária e congêneres', 1),
	('5.01', 'Medicina veterinária e zootecnia', 1),
	('5.02', 'Hospitais, clínicas, ambulatórios, prontos-socorros e congêneres, na área veterinária', 1),
	('5.03', 'Laboratórios de análise na área veterinária', 1),
	('5.04', 'Inseminação artificial, fertilização in vitro e congêneres', 1),
	('5.05', 'Bancos de sangue e de órgãos e congêneres', 1),
	('5.06', 'Coleta de sangue, leite, tecidos, sêmen, órgãos e materiais biológicos de qualquer espécie', 1),
	('5.07', 'Unidade de atendimento, assistência ou tratamento móvel e congêneres', 1),
	('5.08', 'Guarda, tratamento, amestramento, embelezamento, alojamento e congêneres', 1),
	('5.09', 'Planos de atendimento e assistência médico-veterinária', 1),
	('6.00', 'Serviços de cuidados pessoais, estética, atividades físicas e congêneres', 1),
	('6.01', 'Barbearia, cabeleireiros, manicuros, pedicuros e congêneres', 1),
	('6.02', 'Esteticistas, tratamento de pele, depilação e congêneres', 1),
	('6.03', 'Banhos, duchas, sauna, massagens e congêneres', 1),
	('6.04', 'Ginástica, dança, esportes, natação, artes marciais e demais atividades físicas', 1),
	('6.05', 'Centros de emagrecimento, spa e congêneres', 1),
	('7.00', 'Serviços relativos a engenharia, arquitetura, geologia, urbanismo, construção civil, manutenção, limpeza, meio ambiente, saneamento e congêneres', 1),
	('7.01', 'Engenharia, agronomia, agrimensura, arquitetura, geologia, urbanismo, paisagismo e congêneres', 1),
	('7.02', 'Execução, por administração, empreitada ou subempreitada, de obras de construção civil, hidráulica ou elétrica e de outras obras semelhantes, inclusive sondagem, perfuração de poços, escavação, drenagem e irrigação, terraplanagem, pavimentação, concretagem e a instalação e montagem de produtos, peças e equipamentos (exceto o fornecimento de mercadorias produzidas pelo prestador de serviços fora do local da prestação dos serviços, que fica sujeito ao ICMS)', 1),
	('7.03', 'Elaboração de planos diretores, estudos de viabilidade, estudos organizacionais e outros, relacionados com obras e serviços de engenharia; elaboração de anteprojetos, projetos básicos e projetos executivos para trabalhos de engenharia', 1),
	('7.04', 'Demolição', 1),
	('7.05', 'Reparação, conservação e reforma de edifícios, estradas, pontes, portos e congêneres (exceto o fornecimento de mercadorias produzidas pelo prestador dos serviços, fora do local da prestação dos serviços, que fica sujeito ao ICMS)', 1),
	('7.06', 'Colocação e instalação de tapetes, carpetes, assoalhos, cortinas, revestimentos de parede, vidros, divisórias, placas de gesso e congêneres, com material fornecido pelo tomador do serviço', 1),
	('7.07', 'Recuperação, raspagem, polimento e lustração de pisos e congêneres', 1),
	('7.08', 'Calafetação', 1),
	('7.09', 'Varrição, coleta, remoção, incineração, tratamento, reciclagem, separação e destinação final de lixo, rejeitos e outros resíduos quaisquer', 1),
	('7.10', 'Limpeza, manutenção e conservação de vias e logradouros públicos, imóveis, chaminés, piscinas, parques, jardins e congêneres', 1),
	('7.11', 'Decoração e jardinagem, inclusive corte e poda de árvores', 1),
	('7.12', 'Controle e tratamento de efluentes de qualquer natureza e de agentes físicos, químicos e biológicos', 1),
	('7.13', 'Dedetização, desinfecção, desinsetização, imunização, higienização, desratização, pulverização e congêneres', 1),
	('7.14', '(VETADO) 7.15 – (VETADO) 7.16 – Florestamento, reflorestamento, semeadura, adubação e congêneres', 1),
	('7.15', 'VETADO', 1),
	('7.16', 'VETADO', 1),
	('7.17', 'Escoramento, contenção de encostas e serviços congêneres', 1),
	('7.18', 'Limpeza e dragagem de rios, portos, canais, baías, lagos, lagoas, represas, açudes e congêneres', 1),
	('7.19', 'Acompanhamento e fiscalização da execução de obras de engenharia, arquitetura e urbanismo', 1),
	('7.20', 'Aerofotogrametria (inclusive interpretação), cartografia, mapeamento, levantamentos topográficos, batimétricos, geográficos, geodésicos, geológicos, geofísicos e congêneres', 1),
	('7.21', 'Pesquisa, perfuração, cimentação, mergulho, perfilagem, concretação, testemunhagem, pescaria, estimulação e outros serviços relacionados com a exploração e explotação de petróleo, gás natural e de outros recursos minerais', 1),
	('7.22', 'Nucleação e bombardeamento de nuvens e congêneres', 1),
	('8.00', 'Serviços de educação, ensino, orientação pedagógica e educacional, instrução, treinamento e avaliação pessoal de qualquer grau ou natureza', 1),
	('8.01', 'Ensino regular pré-escolar, fundamental, médio e superior', 1),
	('8.02', 'Instrução, treinamento, orientação pedagógica e educacional, avaliação de conhecimentos de qualquer natureza', 1),
	('9.00', 'Serviços relativos a hospedagem, turismo, viagens e congêneres', 1),
	('9.01', 'Hospedagem de qualquer natureza em hotéis, apart-service condominiais, flat, apart-hotéis, hotéis residência, residence-service, suite service, hotelaria marítima, motéis, pensões e congêneres; ocupação por temporada com fornecimento de serviço (o valor da alimentação e gorjeta, quando incluído no preço da diária, fica sujeito ao Imposto Sobre Serviços)', 1),
	('9.02', 'Agenciamento, organização, promoção, intermediação e execução de programas de turismo, passeios, viagens, excursões, hospedagens e congêneres', 1),
	('9.03', 'Guias de turismo', 1);
/*!40000 ALTER TABLE `tbclassifservico` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcompraalcadageral
CREATE TABLE IF NOT EXISTS `tbcompraalcadageral` (
  `CompraAlcadaGeralIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PessoaIdentAprovFkCompraAlcadaGeral` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraAlcadaGeralFlagSolic` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao Aprova Solicitacao de Compra / 1 = Aprova Solicitacao de Compra',
  `CompraAlcadaGeralSolicVlrLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaGeralFlagRequis` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao Aprova Requisicao/Ordem de Compra / 1 = Aprova Requisicao/Ordem Compra',
  `CompraAlcadaGeralRequisVlrLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaGeralDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraAlcadaGeralIdent`),
  KEY `Fk_PessoaIdentAprovCompraAlcadaGeral` (`PessoaIdentAprovFkCompraAlcadaGeral`),
  CONSTRAINT `Fk_PessoaIdentAprovCompraAlcadaGeral` FOREIGN KEY (`PessoaIdentAprovFkCompraAlcadaGeral`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcompraalcadageral: ~0 rows (aproximadamente)
DELETE FROM `tbcompraalcadageral`;
/*!40000 ALTER TABLE `tbcompraalcadageral` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompraalcadageral` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcompraalcadaprodutoempresa
CREATE TABLE IF NOT EXISTS `tbcompraalcadaprodutoempresa` (
  `CompraAlcadaProdutoEmpresaIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PessoaIdentAprovFkCompraAlcadaProdutoEmpresa` int(11) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraAlcadaProdutoEmpresaFlagSolic` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao Aprova Solicitacao de Compra / 1 = Aprova Solicitacao de Compra',
  `CompraAlcadaProdutoEmpresaSolicQtdeLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaProdutoEmpresaSolicVlrLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaProdutoEmpresaFlagRequis` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Não Aprova Requisicao/Ordem de Compra / 1 = Aprova Requisicao/Ordem Compra',
  `CompraAlcadaProdutoEmpresaRequisQtdeLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaProdutoEmpresaRequisVlrLimite` decimal(12,4) unsigned DEFAULT NULL,
  `CompraAlcadaProdutoEmpresaDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraAlcadaProdutoEmpresaIdent`),
  KEY `Fk_PessoaIdentAprovCompraAlcadaProdutoEmpresa` (`PessoaIdentAprovFkCompraAlcadaProdutoEmpresa`),
  KEY `Fk_ProdutoEmpresaIdentCompraAlcadaProdutoEmpresa` (`ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa`),
  CONSTRAINT `Fk_PessoaIdentAprovCompraAlcadaProdutoEmpresa` FOREIGN KEY (`PessoaIdentAprovFkCompraAlcadaProdutoEmpresa`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentCompraAlcadaProdutoEmpresa` FOREIGN KEY (`ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcompraalcadaprodutoempresa: ~0 rows (aproximadamente)
DELETE FROM `tbcompraalcadaprodutoempresa`;
/*!40000 ALTER TABLE `tbcompraalcadaprodutoempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompraalcadaprodutoempresa` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcompraordemcompra
CREATE TABLE IF NOT EXISTS `tbcompraordemcompra` (
  `CompraOrdemCompraIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraOrdemCompraDtEmis` date NOT NULL DEFAULT '0000-00-00',
  `PessoaIdentFornecFkCompraOrdemCompra` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraOrdemCompraVlrTotal` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraOrdemCompraPrazoEntrDias` smallint(3) unsigned DEFAULT NULL,
  `CompraOrdemCompraDtEnt` date DEFAULT NULL,
  `CondicaoPgtoRecebIdentFkCompraOrdemCompra` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraOrdemCompraFrete` char(3) DEFAULT NULL COMMENT 'CIF / FOB',
  `CompraOrdemCompraFreteVlr` decimal(12,4) unsigned DEFAULT NULL,
  `CompraOrdemCompraObs` varchar(400) DEFAULT NULL,
  `CompraOrdemCompraDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraOrdemCompraIdent`),
  KEY `Fk_PessoaIdentFornecCompraOrdemCompra` (`PessoaIdentFornecFkCompraOrdemCompra`),
  KEY `Fk_CondicaoPgtoRecebCompraOrdemCompra` (`CondicaoPgtoRecebIdentFkCompraOrdemCompra`),
  CONSTRAINT `Fk_CondicaoPgtoRecebCompraOrdemCompra` FOREIGN KEY (`CondicaoPgtoRecebIdentFkCompraOrdemCompra`) REFERENCES `evomodadm`.`tbcondicaopgtoreceb` (`CondicaoPgtoRecebIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentFornecCompraOrdemCompra` FOREIGN KEY (`PessoaIdentFornecFkCompraOrdemCompra`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcompraordemcompra: ~0 rows (aproximadamente)
DELETE FROM `tbcompraordemcompra`;
/*!40000 ALTER TABLE `tbcompraordemcompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompraordemcompra` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcompraordemcompraitem
CREATE TABLE IF NOT EXISTS `tbcompraordemcompraitem` (
  `CompraOrdemCompraIdentFkCompraOrdemCompraItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraOrdemCompraItemSeq` int(5) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemIdentFkCompraOrdemCompraItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemAprovIdentFkCompraOrdemCompraItem` int(11) unsigned DEFAULT NULL,
  `CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem` int(11) unsigned DEFAULT NULL,
  `ProdutoEmpresaIdentFkCompraOrdemCompraItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraOrdemCompraItemQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `UnidMedidaIdentifFkCompraOrdemCompraItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraOrdemCompraItemPreco` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraOrdemCompraItemObs` varchar(400) DEFAULT NULL,
  `CompraOrdemCompraItemDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraOrdemCompraIdentFkCompraOrdemCompraItem`,`CompraOrdemCompraItemSeq`),
  KEY `Fk_CompraRequisItemCompraOrdemCompraItem` (`CompraRequisItemIdentFkCompraOrdemCompraItem`),
  KEY `Fk_ProdutoEmpresaIdentCompraOrdemCompraItem` (`ProdutoEmpresaIdentFkCompraOrdemCompraItem`),
  KEY `Fk_UnidMedidaIdentifCompraOrdemCompraItem` (`UnidMedidaIdentifFkCompraOrdemCompraItem`),
  CONSTRAINT `Fk_CompraOrdemCompraIdentCompraOrdemCompraItem` FOREIGN KEY (`CompraOrdemCompraIdentFkCompraOrdemCompraItem`) REFERENCES `tbcompraordemcompra` (`CompraOrdemCompraIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_CompraRequisItemCompraOrdemCompraItem` FOREIGN KEY (`CompraRequisItemIdentFkCompraOrdemCompraItem`) REFERENCES `tbcomprarequisitem` (`CompraRequisItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentCompraOrdemCompraItem` FOREIGN KEY (`ProdutoEmpresaIdentFkCompraOrdemCompraItem`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_UnidMedidaIdentifCompraOrdemCompraItem` FOREIGN KEY (`UnidMedidaIdentifFkCompraOrdemCompraItem`) REFERENCES `evomodadm`.`tbunidmedida` (`UnidMedidaIdentif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcompraordemcompraitem: ~0 rows (aproximadamente)
DELETE FROM `tbcompraordemcompraitem`;
/*!40000 ALTER TABLE `tbcompraordemcompraitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompraordemcompraitem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcompraprior
CREATE TABLE IF NOT EXISTS `tbcompraprior` (
  `CompraPriorIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraPriorCod` varchar(20) DEFAULT 'SEMCODIGO',
  `CompraPriorDescr` varchar(200) DEFAULT 'SEMDESCRICAO',
  `CompraPriorExcluido` smallint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`CompraPriorIdent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcompraprior: ~0 rows (aproximadamente)
DELETE FROM `tbcompraprior`;
/*!40000 ALTER TABLE `tbcompraprior` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcompraprior` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprarequisitem
CREATE TABLE IF NOT EXISTS `tbcomprarequisitem` (
  `CompraRequisItemIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraSolicitItemIdentFkCompraRequisItem` int(11) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkCompraRequisItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemDtEmis` date NOT NULL DEFAULT '0000-00-00',
  `CompraRequisItemQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraRequisItemQtdeMin` decimal(12,4) unsigned DEFAULT NULL,
  `UnidMedidaIdentifFkCompraRequisItem` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentFornecSugerFkCompraRequisItem` int(11) unsigned DEFAULT NULL,
  `CompraRequisItemPrecoSuger` decimal(12,4) unsigned DEFAULT NULL,
  `CompraRequisItemPrecoSugerMax` decimal(12,4) unsigned DEFAULT NULL,
  `CompraRequisItemDtEntrMax` date DEFAULT NULL,
  `CompraRequisItemFornecSugerJustif` varchar(400) DEFAULT NULL,
  `CompraRequisItemDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraRequisItemIdent`),
  KEY `Fk_CompraSolicitItemIdentCompraRequisItem` (`CompraSolicitItemIdentFkCompraRequisItem`),
  KEY `Fk_ProdutoEmpresaIdentCompraRequisItem` (`ProdutoEmpresaIdentFkCompraRequisItem`),
  KEY `Fk_UnidMedidaIdentCompraRequisItem` (`UnidMedidaIdentifFkCompraRequisItem`),
  KEY `Fk_PessoaIdentFornecSugerCompraRequisItem` (`PessoaIdentFornecSugerFkCompraRequisItem`),
  CONSTRAINT `Fk_CompraSolicitItemIdentCompraRequisItem` FOREIGN KEY (`CompraSolicitItemIdentFkCompraRequisItem`) REFERENCES `tbcomprasolicititem` (`CompraSolicitItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentFornecSugerCompraRequisItem` FOREIGN KEY (`PessoaIdentFornecSugerFkCompraRequisItem`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentCompraRequisItem` FOREIGN KEY (`ProdutoEmpresaIdentFkCompraRequisItem`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_UnidMedidaIdentCompraRequisItem` FOREIGN KEY (`UnidMedidaIdentifFkCompraRequisItem`) REFERENCES `evomodadm`.`tbunidmedida` (`UnidMedidaIdentif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprarequisitem: ~0 rows (aproximadamente)
DELETE FROM `tbcomprarequisitem`;
/*!40000 ALTER TABLE `tbcomprarequisitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprarequisitem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprarequisitemaprov
CREATE TABLE IF NOT EXISTS `tbcomprarequisitemaprov` (
  `CompraRequisItemAprovIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraRequisItemIdentFkCompraRequisItemAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemCotacaoIdentFkCompraRequisItemAprov` int(11) unsigned DEFAULT NULL,
  `PessoaIdentAprovFkCompraRequisItemAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentFornecFkCompraRequisItemAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemAprovDtAprov` date NOT NULL DEFAULT '0000-00-00',
  `CompraRequisItemAprovQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraRequisItemAprovPreco` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraRequisItemAprovFrete` char(3) DEFAULT NULL COMMENT 'CIF / FOB',
  `CompraRequisItemAprovFreteVlr` decimal(12,4) unsigned DEFAULT NULL,
  `CondicaoPgtoRecebIdentFkCompraRequisItemAprov` int(11) unsigned DEFAULT NULL,
  `CompraRequisItemAprovDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraRequisItemAprovIdent`),
  KEY `Fk_CompraRequisItemCompraRequisItemAprov` (`CompraRequisItemIdentFkCompraRequisItemAprov`),
  KEY `Fk_PessoaIdentAprovCompraRequisItemAprov` (`PessoaIdentAprovFkCompraRequisItemAprov`),
  KEY `Fk_PessoaIdentFornecCompraRequisItemAprov` (`PessoaIdentFornecFkCompraRequisItemAprov`),
  CONSTRAINT `Fk_CompraRequisItemCompraRequisItemAprov` FOREIGN KEY (`CompraRequisItemIdentFkCompraRequisItemAprov`) REFERENCES `tbcomprarequisitem` (`CompraRequisItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentAprovCompraRequisItemAprov` FOREIGN KEY (`PessoaIdentAprovFkCompraRequisItemAprov`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentFornecCompraRequisItemAprov` FOREIGN KEY (`PessoaIdentFornecFkCompraRequisItemAprov`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprarequisitemaprov: ~0 rows (aproximadamente)
DELETE FROM `tbcomprarequisitemaprov`;
/*!40000 ALTER TABLE `tbcomprarequisitemaprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprarequisitemaprov` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprarequisitemcotacao
CREATE TABLE IF NOT EXISTS `tbcomprarequisitemcotacao` (
  `CompraRequisItemCotacaoIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraRequisItemIdentFkCompraRequisItemCotacao` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentFornecRequisFkCompraRequisItemCotacao` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraRequisItemCotacaoQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraRequisItemCotacaoDtCotacao` date NOT NULL DEFAULT '0000-00-00',
  `CompraRequisItemCotacaoDtValid` date DEFAULT NULL,
  `CompraRequisItemCotacaoPreco` decimal(12,4) unsigned DEFAULT NULL,
  `CondicaoPgtoRecebIdentFkCompraRequisItemCotacao` int(11) unsigned DEFAULT '0',
  `CompraRequisItemCotacaoPrazoEntrDias` int(3) unsigned DEFAULT NULL,
  `CompraRequisItemCotacaoFrete` char(3) DEFAULT NULL COMMENT 'CIF / FOB',
  `CompraRequisItemCotacaoObs` varchar(400) DEFAULT NULL,
  `CompraRequisItemCotacaoDocto` blob,
  `CompraRequisItemCotacaoDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraRequisItemCotacaoIdent`),
  KEY `Fk_CompraRequisItemIdentCompraRequisItemCotacao` (`CompraRequisItemIdentFkCompraRequisItemCotacao`),
  KEY `Fk_PessoaIdentFornecRequisCompraRequisItemCotacao` (`PessoaIdentFornecRequisFkCompraRequisItemCotacao`),
  KEY `Fk_CondicaoPgtoRecebIdentCompraRequisItemCotacao` (`CondicaoPgtoRecebIdentFkCompraRequisItemCotacao`),
  CONSTRAINT `Fk_CompraRequisItemIdentCompraRequisItemCotacao` FOREIGN KEY (`CompraRequisItemIdentFkCompraRequisItemCotacao`) REFERENCES `tbcomprarequisitem` (`CompraRequisItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_CondicaoPgtoRecebIdentCompraRequisItemCotacao` FOREIGN KEY (`CondicaoPgtoRecebIdentFkCompraRequisItemCotacao`) REFERENCES `evomodadm`.`tbcondicaopgtoreceb` (`CondicaoPgtoRecebIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentFornecRequisCompraRequisItemCotacao` FOREIGN KEY (`PessoaIdentFornecRequisFkCompraRequisItemCotacao`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprarequisitemcotacao: ~0 rows (aproximadamente)
DELETE FROM `tbcomprarequisitemcotacao`;
/*!40000 ALTER TABLE `tbcomprarequisitemcotacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprarequisitemcotacao` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprasolicit
CREATE TABLE IF NOT EXISTS `tbcomprasolicit` (
  `CompraSolicitIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraSolicitDtEmis` date NOT NULL DEFAULT '0000-00-00',
  `CompraSolicitFlag` char(1) NOT NULL DEFAULT 'M' COMMENT 'M = Manual / A = Automatica',
  `CompraPriorIdentFkCompraSolicit` int(11) unsigned DEFAULT NULL,
  `PessoaIdentFkCompraSolicit` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitObs` varchar(400) DEFAULT NULL,
  `CompraSolicitVlrTotal` decimal(12,4) unsigned DEFAULT NULL,
  `CompraSolicitDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraSolicitIdent`),
  KEY `CompraPriorIdentFkCompraSolicit` (`CompraPriorIdentFkCompraSolicit`),
  KEY `Fk_PessoIdentFkCompraSolicit` (`PessoaIdentFkCompraSolicit`),
  CONSTRAINT `Fk_PessoIdentFkCompraSolicit` FOREIGN KEY (`PessoaIdentFkCompraSolicit`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tbcomprasolicit_ibfk_1` FOREIGN KEY (`CompraPriorIdentFkCompraSolicit`) REFERENCES `tbcompraprior` (`CompraPriorIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprasolicit: ~0 rows (aproximadamente)
DELETE FROM `tbcomprasolicit`;
/*!40000 ALTER TABLE `tbcomprasolicit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprasolicit` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprasolicititem
CREATE TABLE IF NOT EXISTS `tbcomprasolicititem` (
  `CompraSolicitItemIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CompraSolicitIdentFkCompraSolicitItem` int(11) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkCompraSolicitItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitItemQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CompraSolicitItemQtdeMinima` decimal(12,4) unsigned DEFAULT NULL,
  `UnidMedidaIdentifFkCompraSolicitItem` int(10) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitItemDtEntrDes` date DEFAULT NULL,
  `CompraSolicitItemDtEntrMax` date DEFAULT NULL,
  `PessoaIdentFornecSugerFkCompraSolicitItem` int(11) unsigned DEFAULT NULL,
  `CompraSolicitItemPrecoSuger` decimal(12,4) unsigned DEFAULT NULL,
  `CompraSolicitItemPrecoSugerMax` decimal(12,4) unsigned DEFAULT NULL,
  `CompraSolicitItemFornecSugerJustif` varchar(400) DEFAULT NULL,
  `CompraSolicitItemDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraSolicitItemIdent`),
  KEY `Fk_CompraSolicitIdentCompraSolicitItem` (`CompraSolicitIdentFkCompraSolicitItem`),
  KEY `Fk_ProdutoEmpresaIdentCompraSolicitItem` (`ProdutoEmpresaIdentFkCompraSolicitItem`),
  KEY `Fk_UnidMedidaIdentCompraSolicitItem` (`UnidMedidaIdentifFkCompraSolicitItem`),
  KEY `Fk_PessoIdentFornecSugerCompraSolicitItem` (`PessoaIdentFornecSugerFkCompraSolicitItem`),
  CONSTRAINT `Fk_CompraSolicitIdentCompraSolicitItem` FOREIGN KEY (`CompraSolicitIdentFkCompraSolicitItem`) REFERENCES `tbcomprasolicit` (`CompraSolicitIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoIdentFornecSugerCompraSolicitItem` FOREIGN KEY (`PessoaIdentFornecSugerFkCompraSolicitItem`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentCompraSolicitItem` FOREIGN KEY (`ProdutoEmpresaIdentFkCompraSolicitItem`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_UnidMedidaIdentCompraSolicitItem` FOREIGN KEY (`UnidMedidaIdentifFkCompraSolicitItem`) REFERENCES `evomodadm`.`tbunidmedida` (`UnidMedidaIdentif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprasolicititem: ~0 rows (aproximadamente)
DELETE FROM `tbcomprasolicititem`;
/*!40000 ALTER TABLE `tbcomprasolicititem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprasolicititem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprasolicititemaprov
CREATE TABLE IF NOT EXISTS `tbcomprasolicititemaprov` (
  `CompraSolicitItemIdentFkCompraSolicitItemAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentAprovFkCompraSolicitItemAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitItemAprovDtAprov` date NOT NULL DEFAULT '0000-00-00',
  `CompraSolicitItemAprovQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `PessoaIdentFornecSugerFkCompraSolicitItemAprov` int(11) unsigned DEFAULT NULL,
  `CompraSolicitItemAprovPrecoSuger` decimal(12,4) unsigned DEFAULT NULL,
  `CompraSolicitItemAprovPrecoSugerMax` decimal(12,4) unsigned DEFAULT NULL,
  `CompraSolicitItemAprovFornecSugerJustif` varchar(400) DEFAULT NULL,
  `CompraSolicitItemAprovDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraSolicitItemIdentFkCompraSolicitItemAprov`),
  KEY `Fk_PessoaIdentAprovCompraSolicitItemAprov` (`PessoaIdentAprovFkCompraSolicitItemAprov`),
  KEY `Fk_PessoaIdentFornecSugerCompraSolicitItemAprov` (`PessoaIdentFornecSugerFkCompraSolicitItemAprov`),
  CONSTRAINT `Fk_CompraSolicitItemIdentCompraSolicitItemAprov` FOREIGN KEY (`CompraSolicitItemIdentFkCompraSolicitItemAprov`) REFERENCES `tbcomprasolicititem` (`CompraSolicitItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentAprovCompraSolicitItemAprov` FOREIGN KEY (`PessoaIdentAprovFkCompraSolicitItemAprov`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_PessoaIdentFornecSugerCompraSolicitItemAprov` FOREIGN KEY (`PessoaIdentFornecSugerFkCompraSolicitItemAprov`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprasolicititemaprov: ~0 rows (aproximadamente)
DELETE FROM `tbcomprasolicititemaprov`;
/*!40000 ALTER TABLE `tbcomprasolicititemaprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprasolicititemaprov` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcomprasolicititemmaterremessa
CREATE TABLE IF NOT EXISTS `tbcomprasolicititemmaterremessa` (
  `CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitItemMaterRemessaSeq` int(3) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa` int(11) unsigned DEFAULT '0',
  `CompraSolicitItemMaterRemessaCod` varchar(20) DEFAULT NULL,
  `CompraSolicitItemMaterRemessaDescr` varchar(200) DEFAULT NULL,
  `CompraSolicitItemMaterRemessaQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `UnidMedidaIdentifFkCompraSolicitItemMaterRemessa` int(11) unsigned NOT NULL DEFAULT '0',
  `CompraSolicitItemMaterRemessaObs` varchar(200) DEFAULT NULL,
  `CompraSolicitItemMaterRemessaDtCanc` date DEFAULT NULL,
  PRIMARY KEY (`CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa`,`CompraSolicitItemMaterRemessaSeq`),
  KEY `Fk_ProdutoEmpresaIdentCompraSolicitItemMaterRemessa` (`ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa`),
  KEY `Fk_UnidMedidaIdentCompraSolicitItemMaterRemessa` (`UnidMedidaIdentifFkCompraSolicitItemMaterRemessa`),
  CONSTRAINT `Fk_CompraSolicitItemIdentCompraSolicitItemMaterRemessa` FOREIGN KEY (`CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa`) REFERENCES `tbcomprasolicititem` (`CompraSolicitItemIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentCompraSolicitItemMaterRemessa` FOREIGN KEY (`ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_UnidMedidaIdentCompraSolicitItemMaterRemessa` FOREIGN KEY (`UnidMedidaIdentifFkCompraSolicitItemMaterRemessa`) REFERENCES `evomodadm`.`tbunidmedida` (`UnidMedidaIdentif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcomprasolicititemmaterremessa: ~0 rows (aproximadamente)
DELETE FROM `tbcomprasolicititemmaterremessa`;
/*!40000 ALTER TABLE `tbcomprasolicititemmaterremessa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcomprasolicititemmaterremessa` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcrt
CREATE TABLE IF NOT EXISTS `tbcrt` (
  `CRTCod` smallint(1) unsigned NOT NULL DEFAULT '0',
  `CRTDescr` varchar(300) NOT NULL DEFAULT 'SEMDESCRICAO',
  `CRTFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`CRTCod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcrt: ~3 rows (aproximadamente)
DELETE FROM `tbcrt`;
/*!40000 ALTER TABLE `tbcrt` DISABLE KEYS */;
INSERT INTO `tbcrt` (`CRTCod`, `CRTDescr`, `CRTFlagAtivo`) VALUES
	(1, 'Empresa optante pelo Simples Nacional', 1),
	(2, 'Empresa optante pelo Simples Nacional com excesso de sublimite de receita bruta fixado pelo UF', 1),
	(3, 'Regime Normal', 1);
/*!40000 ALTER TABLE `tbcrt` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbcst
CREATE TABLE IF NOT EXISTS `tbcst` (
  `CSTIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CSTCod` varchar(3) NOT NULL DEFAULT '000',
  `CSTDescr` varchar(300) NOT NULL DEFAULT 'SEMDESCRICAO',
  `CSTTribIntegral` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 = Nao Integral  / 1 = Integral',
  `CSTFlagIPI` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao se aplica / 1 = Aplica',
  `CSTFlagICMS` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao se aplica / 1 = Aplica',
  `CSTFlagPIS` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao se aplica / 1 = Aplica',
  `CSTFlagCOFINS` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao se aplica / 1 = Aplica',
  `CSTFlagSimpNac` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 = Nao se aplica / 1 = Aplica',
  `CSTFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`CSTIdent`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbcst: ~68 rows (aproximadamente)
DELETE FROM `tbcst`;
/*!40000 ALTER TABLE `tbcst` DISABLE KEYS */;
INSERT INTO `tbcst` (`CSTIdent`, `CSTCod`, `CSTDescr`, `CSTTribIntegral`, `CSTFlagIPI`, `CSTFlagICMS`, `CSTFlagPIS`, `CSTFlagCOFINS`, `CSTFlagSimpNac`, `CSTFlagAtivo`) VALUES
	(1, '00', 'Entrada com recuperação de crédito', 1, 1, 0, 0, 0, 0, 1),
	(2, '01', 'Entrada tributada com alíquota zero', 0, 1, 0, 0, 0, 0, 1),
	(3, '02', 'Entrada isenta', 0, 1, 0, 0, 0, 0, 1),
	(4, '03', 'Entrada não-tributada', 0, 1, 0, 0, 0, 0, 1),
	(5, '04', 'Entrada imune', 0, 1, 0, 0, 0, 0, 1),
	(6, '05', 'Entrada com suspensão', 0, 1, 0, 0, 0, 0, 1),
	(7, '49', 'Outras entradas', 0, 1, 0, 0, 0, 0, 1),
	(8, '50', 'Saída tributada', 1, 1, 0, 0, 0, 0, 1),
	(9, '51', 'Saída tributável com alíquota zero', 0, 1, 0, 0, 0, 0, 1),
	(10, '52', 'Saída isenta', 0, 1, 0, 0, 0, 0, 1),
	(11, '53', 'Saída não-tributada', 0, 1, 0, 0, 0, 0, 1),
	(12, '54', 'Saída imune', 0, 1, 0, 0, 0, 0, 1),
	(13, '55', 'Saída com suspensão', 0, 1, 0, 0, 0, 0, 1),
	(14, '99', 'Outras saídas', 0, 1, 0, 0, 0, 0, 1),
	(15, '00', 'Tributada integralmente', 1, 0, 1, 0, 0, 0, 1),
	(16, '10', 'Tributada e com cobrança do ICMS por substituição tributária', 0, 0, 1, 0, 0, 0, 1),
	(17, '20', 'Com redução da BC', 0, 0, 1, 0, 0, 0, 1),
	(18, '30', 'Isenta / não tributada e com cobrança do ICMS por substituição tributária', 0, 0, 1, 0, 0, 0, 1),
	(19, '40', 'Isenta', 0, 0, 1, 0, 0, 0, 1),
	(20, '41', 'Não tributada', 0, 0, 1, 0, 0, 0, 1),
	(21, '50', 'Com suspensão', 0, 0, 1, 0, 0, 0, 1),
	(22, '51', 'Com diferimento', 0, 0, 1, 0, 0, 0, 1),
	(23, '60', 'ICMS cobrado anteriormente por substituição tributária', 0, 0, 1, 0, 0, 0, 1),
	(24, '70', 'Com redução da BC e cobrança do ICMS por substituição tributária', 0, 0, 1, 0, 0, 0, 1),
	(25, '90', 'Outras', 0, 0, 1, 0, 0, 0, 1),
	(26, '101', 'Tributada pelo Simples Nacional com permissão de crédito de ICMS', 1, 0, 0, 0, 0, 1, 1),
	(27, '102', 'Tributada pelo Simples Nacional sem permissão de crédito', 0, 0, 0, 0, 0, 1, 1),
	(28, '103', 'Isenção de ICMS no Simples Nacional na faixa de receita bruta', 1, 0, 0, 0, 0, 1, 1),
	(29, '201', 'Tributada pelo Simples Nacional com permissão de crédito e cobrança do ICMS por ST', 1, 0, 0, 0, 0, 1, 1),
	(30, '202', 'Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por ST', 0, 0, 0, 0, 0, 1, 1),
	(31, '203', 'Isenção do ICMS no Simples Nacional para faixa de receita bruta e cobrança de ICMS por ST', 0, 0, 0, 0, 0, 1, 1),
	(32, '300', 'Imune de ICMS', 0, 0, 0, 0, 0, 1, 1),
	(33, '400', 'Não tributada pelo Simples Nacional', 0, 0, 0, 0, 0, 1, 1),
	(34, '500', 'ICMS cobrado anteriormente por ST ou por antecipação', 0, 0, 0, 0, 0, 1, 1),
	(35, '900', 'Outros (operações que não se enquadram nos códigos anteriores)', 0, 0, 0, 0, 0, 1, 1),
	(36, '01', 'Operação Tributável com Alíquota Básica', 1, 0, 0, 1, 1, 0, 1),
	(37, '02', 'Operação Tributável com Alíquota Diferenciada', 1, 0, 0, 1, 1, 0, 1),
	(38, '03', 'Operação Tributável com Alíquota por Unidade de Medida de Produto', 1, 0, 0, 1, 1, 0, 1),
	(39, '04', 'Operação Tributável Monofásica - Revenda a Alíquota Zero', 0, 0, 0, 1, 1, 0, 1),
	(40, '05', 'Operação Tributável por Substituição Tributária', 1, 0, 0, 1, 1, 0, 1),
	(41, '06', 'Operação Tributável a Alíquota Zero', 0, 0, 0, 1, 1, 0, 1),
	(42, '07', 'Operação Isenta da Contribuição', 0, 0, 0, 1, 1, 0, 1),
	(43, '08', 'Operação sem Incidência da Contribuição', 0, 0, 0, 1, 1, 0, 1),
	(44, '09', 'Operação com Suspensão da Contribuição', 0, 0, 0, 1, 1, 0, 1),
	(45, '49', 'Outras Operações de Saída', 0, 0, 0, 1, 1, 0, 1),
	(46, '50', 'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Tributada no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(47, '51', 'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(48, '52', 'Operação com Direito a Crédito - Vinculada Exclusivamente a Receita de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(49, '53', 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(50, '54', 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(51, '55', 'Operação com Direito a Crédito - Vinculada a Receitas Não Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(52, '56', 'Operação com Direito a Crédito - Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(53, '60', 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Tributada no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(54, '61', 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita Não-Tributada no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(55, '62', 'Crédito Presumido - Operação de Aquisição Vinculada Exclusivamente a Receita de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(56, '63', 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno', 1, 0, 0, 1, 1, 0, 1),
	(57, '64', 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(58, '65', 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Não-Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(59, '66', 'Crédito Presumido - Operação de Aquisição Vinculada a Receitas Tributadas e Não-Tributadas no Mercado Interno e de Exportação', 1, 0, 0, 1, 1, 0, 1),
	(60, '67', 'Crédito Presumido - Outras Operações', 1, 0, 0, 1, 1, 0, 1),
	(61, '70', 'Operação de Aquisição sem Direito a Crédito', 0, 0, 0, 1, 1, 0, 1),
	(62, '71', 'Operação de Aquisição com Isenção', 0, 0, 0, 1, 1, 0, 1),
	(63, '72', 'Operação de Aquisição com Suspensão', 0, 0, 0, 1, 1, 0, 1),
	(64, '73', 'Operação de Aquisição a Alíquota Zero', 0, 0, 0, 1, 1, 0, 1),
	(65, '74', 'Operação de Aquisição sem Incidência da Contribuição', 0, 0, 0, 1, 1, 0, 1),
	(66, '75', 'Operação de Aquisição por Substituição Tributária', 0, 0, 0, 1, 1, 0, 1),
	(67, '98', 'Outras Operações de Entrada', 0, 0, 0, 1, 1, 0, 1),
	(68, '99', 'Outras Operações', 0, 0, 0, 1, 1, 0, 1);
/*!40000 ALTER TABLE `tbcst` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbctapagar
CREATE TABLE IF NOT EXISTS `tbctapagar` (
  `CtaPagarIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EmpresaIdentFkCtaPagar` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentFkCtaPagar` int(11) unsigned NOT NULL DEFAULT '0',
  `CtaPagarDtIncl` date NOT NULL DEFAULT '0000-00-00',
  `CtaPagarDtLiquidacao` date DEFAULT NULL,
  `CtaPagarDtCancel` date DEFAULT NULL,
  `CtaPagarDtRenegoc` date DEFAULT NULL,
  `NFEEntradaIdentFkCtaPagar` int(11) unsigned DEFAULT NULL,
  `CtaPagarOrigemDocto` varchar(300) DEFAULT NULL,
  `CondicaoPgtoRecebIdentFkCtaPagar` int(11) unsigned DEFAULT NULL,
  `CtaPagarQtdeParc` int(5) unsigned NOT NULL DEFAULT '0',
  `CtaPagarVlrParc` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CtaPagarVlrTot` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `CtaPagarMultaPerc` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarMultaVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarJuroPerc` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarJuroVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarDescPerc` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarDescVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarPgtoVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CtaPagarFlagStatus` smallint(1) unsigned DEFAULT '3' COMMENT '1 = Liquidada /  2 = Em aberto Parcial  / 3 = Em Aberto Total / 4 = Renegociada / 5 = Cancelada',
  `CtaPagarFlagStatusAprov` smallint(1) unsigned DEFAULT '0' COMMENT '0 = Nao aprovada / 1 = Aprovada',
  `CtaPagarObs` varchar(200) DEFAULT NULL,
  `CtaPagarFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 Inativo / 1 = Ativo',
  PRIMARY KEY (`CtaPagarIdent`),
  KEY `FkEmpresaIdentCtaPagar` (`EmpresaIdentFkCtaPagar`),
  KEY `FkPessoaIdentFkCtaPagar` (`PessoaIdentFkCtaPagar`),
  CONSTRAINT `FkEmpresaIdentCtaPagar` FOREIGN KEY (`EmpresaIdentFkCtaPagar`) REFERENCES `evomodadm`.`tbempresa` (`EmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkPessoaIdentFkCtaPagar` FOREIGN KEY (`PessoaIdentFkCtaPagar`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbctapagar: ~0 rows (aproximadamente)
DELETE FROM `tbctapagar`;
/*!40000 ALTER TABLE `tbctapagar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbctapagar` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbctapagaraprov
CREATE TABLE IF NOT EXISTS `tbctapagaraprov` (
  `CtaPagarIdentFkCtaPagarAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentAprovFkCtaPagarAprov` int(11) unsigned NOT NULL DEFAULT '0',
  `CtaPagarAprovDt` date NOT NULL DEFAULT '0000-00-00',
  `CtaPagarAprovObs` varchar(300) DEFAULT NULL,
  `CtaPagarAprovFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 Inativo / 1 = Ativo',
  PRIMARY KEY (`CtaPagarIdentFkCtaPagarAprov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbctapagaraprov: ~0 rows (aproximadamente)
DELETE FROM `tbctapagaraprov`;
/*!40000 ALTER TABLE `tbctapagaraprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbctapagaraprov` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbctapagaritem
CREATE TABLE IF NOT EXISTS `tbctapagaritem` (
  `CtaPagarIdentFkCtaPagarItem` int(11) unsigned NOT NULL DEFAULT '0',
  `CtaPagarItemNrParc` int(5) unsigned NOT NULL DEFAULT '0',
  `CtaPagarItemCodBarra` varchar(48) DEFAULT NULL,
  `CtaPagarItemDtVcto` date NOT NULL DEFAULT '0000-00-00',
  `CtaPagarItemDtPgto` date DEFAULT NULL,
  `CtaPagarItemDtCancel` date DEFAULT NULL,
  `CtaPagarItemDtRenegoc` date DEFAULT NULL,
  `CtaPagarItemVlParc` decimal(12,4) NOT NULL DEFAULT '0.0000',
  `CtaPagarItemMultaPerc` decimal(12,4) DEFAULT NULL,
  `CtaPagarItemJuroPerc` decimal(12,4) DEFAULT NULL,
  `CtaPagarItemDescPerc` decimal(12,4) DEFAULT NULL,
  `CtaPagarItemDescVlrVcto` decimal(12,4) DEFAULT NULL,
  `CtaPagarItemFlagStatus` smallint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 = Liquida / 2 = Em Aberto Parcial / 3 = Em Aberto Total / 4 - Renegociada / 5 = Cancelada',
  `CtaPagarItemObs` varchar(200) DEFAULT NULL,
  `CtaPagarItemFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 Inativo / 1 = Ativo',
  PRIMARY KEY (`CtaPagarIdentFkCtaPagarItem`),
  CONSTRAINT `FkCtaPagarIdentCtaPagarItem` FOREIGN KEY (`CtaPagarIdentFkCtaPagarItem`) REFERENCES `tbctapagar` (`CtaPagarIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbctapagaritem: ~0 rows (aproximadamente)
DELETE FROM `tbctapagaritem`;
/*!40000 ALTER TABLE `tbctapagaritem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbctapagaritem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbdoctofiscal
CREATE TABLE IF NOT EXISTS `tbdoctofiscal` (
  `DoctoFiscalIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `DoctoFiscalCod` char(2) NOT NULL DEFAULT '00',
  `DoctoFiscalDescr` varchar(300) NOT NULL DEFAULT 'SEMDESCRICAO',
  `DoctoFiscalAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`DoctoFiscalIdent`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbdoctofiscal: ~31 rows (aproximadamente)
DELETE FROM `tbdoctofiscal`;
/*!40000 ALTER TABLE `tbdoctofiscal` DISABLE KEYS */;
INSERT INTO `tbdoctofiscal` (`DoctoFiscalIdent`, `DoctoFiscalCod`, `DoctoFiscalDescr`, `DoctoFiscalAtivo`) VALUES
	(1, '01', 'Nota Fiscal 1-1A', 1),
	(2, '1B', 'Nota Fiscal Avulsa', 1),
	(3, '02', 'Nota Fiscal de Venda a Consumidor', 1),
	(4, '2D', 'Cupom Fiscal', 1),
	(5, '2E', 'Cupom Fiscal Bilhete de Passagem', 1),
	(6, '04', 'Nota Fiscal de Produtor', 1),
	(7, '06', 'Nota Fiscal-Conta de Energia Elétrica', 1),
	(8, '07', 'Nota Fiscal de Serviço de Transporte', 1),
	(9, '08', 'Conhecimento de Transporte Rodoviário de Cargas', 1),
	(10, '8B', 'Conhecimento de Transporte de Cargas Avulso', 1),
	(11, '09', 'Conhecimento de Transporte Aquaviário de Cargas', 1),
	(12, '10', 'Conhecimento Aéreo', 1),
	(13, '11', 'Conhecimento de Transporte Ferroviário de Cargas', 1),
	(14, '13', 'Bilhete de Passagem Rodoviário', 1),
	(15, '14', 'Bilhete de Passagem Aquaviário', 1),
	(16, '15', 'Bilhete de Passagem e Nota de Bagagem', 1),
	(17, '16', 'Bilhete de Passagem Ferroviário', 1),
	(18, '18', 'Resumo de Movimento Diário', 1),
	(19, '21', 'Nota Fiscal de Serviço de Comunicação', 1),
	(20, '22', 'Nota Fiscal de Serviço de Telecomunicação', 1),
	(21, '26', 'Conhecimento de Transporte Multimodal de Cargas', 1),
	(22, '27', 'Nota Fiscal De Transporte Ferroviário De Carga', 1),
	(23, '28', 'Nota Fiscal/Conta de Fornecimento de Gás Canalizado', 1),
	(24, '29', 'Nota Fiscal/Conta de Fornecimento de Água Canalizada', 1),
	(25, '55', 'Nota Fiscal Eletrônica (NF-e)', 1),
	(26, '57', 'Conhecimento de Transporte Eletrônico (CT-e)', 1),
	(27, '59', 'Cupom Fiscal Eletrônico (CF-e-SAT)', 1),
	(28, '60', 'Cupom Fiscal Eletrônico (CF-e-ECF)', 1),
	(29, '63', 'Bilhete de Passagem Eletrônico (BP-e)', 1),
	(30, '65', 'Nota Fiscal Eletrônica ao Consumidor Final (NFC-e)', 1),
	(31, '67', 'Conhecimento de Transporte Eletrônico (CT-e OS)', 1);
/*!40000 ALTER TABLE `tbdoctofiscal` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbestoquemov
CREATE TABLE IF NOT EXISTS `tbestoquemov` (
  `ProdutoEmpresaIdentFkEstoqueMov` int(11) unsigned NOT NULL DEFAULT '0',
  `EstoqueTpMovCodFkEstoqueMov` varchar(20) NOT NULL DEFAULT 'SEMCODIGO',
  `ServerIdent` int(3) unsigned NOT NULL DEFAULT '1',
  `EstoqueMovData` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EstoqueMovQtde` decimal(12,4) unsigned NOT NULL DEFAULT '0.0000',
  `EstoqueMovVlr` decimal(12,4) unsigned DEFAULT '0.0000',
  `EstoqueMovDoctoOrigTp` varchar(20) DEFAULT 'SEMORIGEM',
  `EstoqueMovDoctoOrigNr` varchar(100) DEFAULT '0',
  KEY `Ix_ProdutoEmpresaIdentEstoqueMov` (`ProdutoEmpresaIdentFkEstoqueMov`),
  KEY `Ix_EstoqueTpMovCodEstoqueMov` (`EstoqueTpMovCodFkEstoqueMov`),
  KEY `Ix_EstoqueMovData` (`EstoqueMovData`),
  CONSTRAINT `Fk_EstoqueTpMovCodEstoqueMov` FOREIGN KEY (`EstoqueTpMovCodFkEstoqueMov`) REFERENCES `tbestoquetpmov` (`EstoqueTpMovCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentEstoqueMov` FOREIGN KEY (`ProdutoEmpresaIdentFkEstoqueMov`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbestoquemov: ~0 rows (aproximadamente)
DELETE FROM `tbestoquemov`;
/*!40000 ALTER TABLE `tbestoquemov` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbestoquemov` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbestoquesaldo
CREATE TABLE IF NOT EXISTS `tbestoquesaldo` (
  `ProdutoEmpresaIdentFkEstoqueSaldo` int(11) unsigned NOT NULL DEFAULT '0',
  `EstoqueSaldoQtdeEnt` decimal(12,4) unsigned DEFAULT NULL,
  `EstoqueSaldoQtdeSai` decimal(12,4) unsigned DEFAULT NULL,
  `EstoqueSaldoEmpenho` decimal(5,4) unsigned DEFAULT NULL,
  `EstoqueSaldoReserva` decimal(12,4) unsigned DEFAULT NULL,
  `EstoqueSaldoAtual` decimal(12,4) unsigned DEFAULT NULL,
  KEY `ProdutoEmpresaIdent` (`ProdutoEmpresaIdentFkEstoqueSaldo`),
  CONSTRAINT `Fk_ProdutoEmpresaIdentEstoqueSaldo` FOREIGN KEY (`ProdutoEmpresaIdentFkEstoqueSaldo`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbestoquesaldo: ~1 rows (aproximadamente)
DELETE FROM `tbestoquesaldo`;
/*!40000 ALTER TABLE `tbestoquesaldo` DISABLE KEYS */;
INSERT INTO `tbestoquesaldo` (`ProdutoEmpresaIdentFkEstoqueSaldo`, `EstoqueSaldoQtdeEnt`, `EstoqueSaldoQtdeSai`, `EstoqueSaldoEmpenho`, `EstoqueSaldoReserva`, `EstoqueSaldoAtual`) VALUES
	(15, 0.0000, 0.0000, 0.0000, 0.0000, NULL);
/*!40000 ALTER TABLE `tbestoquesaldo` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbestoquetpmov
CREATE TABLE IF NOT EXISTS `tbestoquetpmov` (
  `EstoqueTpMovCod` varchar(20) NOT NULL DEFAULT 'SEMCODIGO',
  `EstoqueTpMovDescr` varchar(200) NOT NULL DEFAULT 'SEMDESCRICAO',
  `EstoqueTpMovEntSai` char(1) NOT NULL DEFAULT 'E' COMMENT 'E = Entrada / S = Saida',
  `EstoqueTpMovEntSaiDet` varchar(2) NOT NULL DEFAULT 'MN' COMMENT 'MN = Movimento Normal / EP = Empenho / PT = Poder de Terceiros / DT = De Terceiros / CO = Consignacao / DC = De Consignacao / EF = Entrega Futura / RE = Reserva / RF = Refugo / SU = Sucata / PE = Perda de Estoque / QE = Quebra de Estoque',
  `EstoqueTpMovFlagCusto` smallint(1) NOT NULL DEFAULT '0' COMMENT '0 = Nao Altera Custo / 1 = Altera Custo',
  `EstoqueTpMovFlagSaldo` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Nao Altera Saldo Estoque / 1 = Altera Saldo Estoque',
  `EstoqueTpMovFlagAutom` smallint(1) NOT NULL DEFAULT '1' COMMENT '0 = Movimento Manual / 1 = Movimento Automatico',
  `EstoqueTpMovExcluido` smallint(1) DEFAULT NULL COMMENT 'NULL = Ativo / NOT NULL = Excluido',
  UNIQUE KEY `EstoqueTpMovCod` (`EstoqueTpMovCod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbestoquetpmov: ~23 rows (aproximadamente)
DELETE FROM `tbestoquetpmov`;
/*!40000 ALTER TABLE `tbestoquetpmov` DISABLE KEYS */;
INSERT INTO `tbestoquetpmov` (`EstoqueTpMovCod`, `EstoqueTpMovDescr`, `EstoqueTpMovEntSai`, `EstoqueTpMovEntSaiDet`, `EstoqueTpMovFlagCusto`, `EstoqueTpMovFlagSaldo`, `EstoqueTpMovFlagAutom`, `EstoqueTpMovExcluido`) VALUES
	('COE', 'Consignação - Devolução', 'E', 'CO', 0, 1, 1, NULL),
	('COS', 'Consignação - Remessa', 'S', 'CO', 0, 1, 1, NULL),
	('DCE', 'De Consignação - Remessa', 'E', 'DC', 0, 1, 1, NULL),
	('DCS', 'De Consignação - Devolução', 'S', 'DC', 0, 1, 1, NULL),
	('DEE', 'Devolução - Entrada', 'E', 'DE', 0, 1, 1, NULL),
	('DES', 'Devolução - Saída', 'S', 'DE', 0, 1, 1, NULL),
	('DTE', 'De Terceiros - Remessa', 'E', 'DT', 0, 1, 1, NULL),
	('DTS', 'De Terceiros - Devolução', 'S', 'DT', 0, 1, 1, NULL),
	('EFE', 'Entrega Futura - Estorno', 'E', 'EF', 0, 1, 1, NULL),
	('EFS', 'Entrega Futura - Saída', 'S', 'EF', 0, 1, 1, NULL),
	('EPE', 'Empenho - Cancelamento', 'E', 'EP', 0, 0, 1, NULL),
	('EPS', 'Empenho - Reserva', 'S', 'EP', 0, 0, 1, NULL),
	('MNE', 'Movimento Normal - Entrada', 'E', 'MN', 0, 1, 1, NULL),
	('MNS', 'Movimento Normal - Saída', 'S', 'MN', 0, 1, 1, NULL),
	('PES', 'Perda de Estoque - Saída', 'S', 'PE', 0, 1, 1, NULL),
	('PTE', 'Em Poder de Terceiros - Devolução', 'E', 'PT', 0, 1, 1, NULL),
	('PTS', 'Em Poder de Terceiros - Remessa', 'S', 'PT', 0, 1, 1, NULL),
	('QES', 'Quebra Estoque - Saída', 'S', 'MN', 0, 1, 1, NULL),
	('REE', 'Reserva - Cancelamento', 'E', 'RE', 0, 0, 1, NULL),
	('RES', 'Reserva - Reserva', 'S', 'RE', 0, 0, 1, NULL),
	('RFS', 'Refugo - Saída', 'S', 'MN', 0, 1, 1, NULL),
	('SDE', 'Saldo Inicial ou de Transferência', 'E', 'SD', 0, 1, 1, NULL),
	('SUS', 'Sucata - Saída', 'S', 'SU', 0, 1, 1, NULL);
/*!40000 ALTER TABLE `tbestoquetpmov` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbinventario
CREATE TABLE IF NOT EXISTS `tbinventario` (
  `InventarioIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EmpresaIdentFkInventario` int(11) unsigned NOT NULL DEFAULT '0',
  `InventarioDescr` varchar(200) DEFAULT NULL,
  `InventarioDtGeracao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `InventarioDtExecucao` datetime DEFAULT NULL,
  `InventarioDtEfetivacao` datetime DEFAULT NULL,
  `InventarioExcluido` smallint(1) unsigned DEFAULT NULL COMMENT 'NULL = Ativo / Not Null = Excluido',
  PRIMARY KEY (`InventarioIdent`),
  KEY `Fk_EmpresaIdentInventario` (`EmpresaIdentFkInventario`),
  CONSTRAINT `Fk_EmpresaIdentInventario` FOREIGN KEY (`EmpresaIdentFkInventario`) REFERENCES `evomodadm`.`tbempresa` (`EmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbinventario: ~0 rows (aproximadamente)
DELETE FROM `tbinventario`;
/*!40000 ALTER TABLE `tbinventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbinventario` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbinventarioitem
CREATE TABLE IF NOT EXISTS `tbinventarioitem` (
  `InventarioIdentFkInventarioItem` int(11) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkInventarioItem` int(11) unsigned NOT NULL DEFAULT '0',
  `EstoqueSaldoAtualFkInventarioItem` decimal(12,4) unsigned DEFAULT NULL,
  `InventarioItemQtdeApont` decimal(12,4) unsigned DEFAULT NULL,
  PRIMARY KEY (`InventarioIdentFkInventarioItem`,`ProdutoEmpresaIdentFkInventarioItem`),
  KEY `Fk_ProdutoEmpresaIdentInventarioItem` (`ProdutoEmpresaIdentFkInventarioItem`),
  CONSTRAINT `Fk_InventarioIdentInventarioItem` FOREIGN KEY (`InventarioIdentFkInventarioItem`) REFERENCES `tbinventario` (`InventarioIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Fk_ProdutoEmpresaIdentInventarioItem` FOREIGN KEY (`ProdutoEmpresaIdentFkInventarioItem`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbinventarioitem: ~0 rows (aproximadamente)
DELETE FROM `tbinventarioitem`;
/*!40000 ALTER TABLE `tbinventarioitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbinventarioitem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbnaoconformentmat
CREATE TABLE IF NOT EXISTS `tbnaoconformentmat` (
  `NaoConformEntMatIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `TpNaoConformidadeCodFkNaoConformEntMat` varchar(20) DEFAULT NULL,
  `NaoConformEntMatDtOcor` date NOT NULL DEFAULT '0000-00-00',
  `CompraOrdemCompraIdentFkNaoConformEntMat` int(11) unsigned DEFAULT NULL,
  `CompraOrdemCompraItemSeqFkNaoConformEntMat` int(5) unsigned DEFAULT NULL,
  `NFEEntradaIdentFkNaoConformEntMat` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemSeqFkNaoConformEntMat` int(5) unsigned DEFAULT NULL,
  `NaoConformEntMatObs` varchar(500) DEFAULT NULL,
  `NaoConformEntMatAcao` varchar(500) DEFAULT NULL,
  `NaoConformEntMatFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 Inativo / 1 = Ativo',
  PRIMARY KEY (`NaoConformEntMatIdent`),
  KEY `FkTpNaoConformidadeCodNaoConformEntMat` (`TpNaoConformidadeCodFkNaoConformEntMat`),
  CONSTRAINT `FkTpNaoConformidadeCodNaoConformEntMat` FOREIGN KEY (`TpNaoConformidadeCodFkNaoConformEntMat`) REFERENCES `tbtpnaoconformidade` (`TpNaoConformidadeCod`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbnaoconformentmat: ~0 rows (aproximadamente)
DELETE FROM `tbnaoconformentmat`;
/*!40000 ALTER TABLE `tbnaoconformentmat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnaoconformentmat` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbnfeentrada
CREATE TABLE IF NOT EXISTS `tbnfeentrada` (
  `NFEEntradaIdent` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `EmpresaIdentFkNFEEntrada` int(11) unsigned NOT NULL DEFAULT '0',
  `PessoaIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaPessoaCNPJCPF` varchar(45) DEFAULT NULL,
  `NFEEntradaPessoaInscrEstad` varchar(20) DEFAULT NULL,
  `IndicInscEstadIdentFkNFEEntrada` int(1) unsigned NOT NULL DEFAULT '0',
  `NFEEntradaPessoaInscrMunic` varchar(20) DEFAULT NULL,
  `NFEEntradaPessoaInscrSuframa` varchar(10) DEFAULT NULL,
  `NFEEntradaPessoaNomeRazaoSocial` varchar(200) DEFAULT NULL,
  `NFEEntradaPessoaEndereco` varchar(300) DEFAULT NULL,
  `NFEEntradaPessoaEnderecoNr` varchar(10) DEFAULT NULL,
  `NFEEntradaPessoaEnderecoCompl` varchar(200) DEFAULT NULL,
  `NFEEntradaPessoaFoneDDD` varchar(3) DEFAULT NULL,
  `NFEEntradaPessoaNrFone` varchar(20) DEFAULT NULL,
  `CEPIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `DoctoFiscalIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `CompraOrdemCompraIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaNr` int(11) unsigned DEFAULT NULL,
  `NFEEntradaSerie` varchar(20) DEFAULT NULL,
  `NFEEntradaChaveEletr` varchar(100) DEFAULT NULL,
  `NFEEntradaDtEmis` date DEFAULT NULL,
  `NFEEntradaDtEntrega` date DEFAULT NULL,
  `CFOPIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFESaidaIdentFkNFEEntrada` int(11) unsigned DEFAULT NULL COMMENT 'Nota Fiscal de Venda Qdo for Devolucao',
  `NFEEntradaPrincFkNFEntrada` int(11) unsigned DEFAULT NULL COMMENT 'Nota Fiscal Principal no caso de CTE',
  `NFEEntradaProdutoServVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaDescontoVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaAcrescVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaOutrosVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFreteVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaImpostoVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaSeguroVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIIVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIIVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentIPIFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaIPIVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIPIVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentICMSFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaICMSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaICMSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentICMSSTFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaICMSSTVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaICMSSTVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPSTVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPSTVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPSTRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPSTRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPDestVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFCPDestVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentPISFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaPISVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaPISVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentCOFINSFkNFEEntrada` int(11) unsigned DEFAULT NULL,
  `NFEEntradaCOFINSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaCOFINSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaISSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaISSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaISSFlagRetido` smallint(1) unsigned DEFAULT NULL COMMENT 'ISS pago pelo emitente / 1 = ISS pago pelo destinatario',
  `NFEEntradaPISRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaPISRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaCOFINSRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaCOFINSRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaCSLLVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaCSLLVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIRRFVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIRRFVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaIRRFFlagRetido` smallint(1) unsigned DEFAULT NULL COMMENT '0 = IRRF pago pelo emitente / 1 = IRRF pago pelo destinatario',
  `NFEEntradaINSSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaINSSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaINSSRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaINSSRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaVolumeTot` smallint(5) unsigned DEFAULT NULL,
  `NFEEntradaPesTotBruto` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaPesTotLiquido` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaParcQtde` smallint(5) unsigned DEFAULT NULL,
  `NFEEntradaParcVlrUnit` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaFreteTp` varchar(3) DEFAULT NULL COMMENT 'CIF / FOB',
  `NFEEntradaFlagAtivo` smallint(1) unsigned DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`NFEEntradaIdent`),
  KEY `EmpresaIdentNFEEntrada` (`EmpresaIdentFkNFEEntrada`),
  KEY `FkPessoaIdentNFEEntrada` (`PessoaIdentFkNFEEntrada`),
  CONSTRAINT `EmpresaIdentNFEEntrada` FOREIGN KEY (`EmpresaIdentFkNFEEntrada`) REFERENCES `evomodadm`.`tbempresa` (`EmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkPessoaIdentNFEEntrada` FOREIGN KEY (`PessoaIdentFkNFEEntrada`) REFERENCES `evomodadm`.`tbpessoa` (`PessoaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbnfeentrada: ~0 rows (aproximadamente)
DELETE FROM `tbnfeentrada`;
/*!40000 ALTER TABLE `tbnfeentrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnfeentrada` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbnfeentradaitem
CREATE TABLE IF NOT EXISTS `tbnfeentradaitem` (
  `NFEEntradaIdentFkNFEEntradaItem` int(11) unsigned NOT NULL DEFAULT '0',
  `NFEEntradaItemSeq` int(5) unsigned NOT NULL DEFAULT '0',
  `ProdutoEmpresaIdentFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemProdutoFornecCod` varchar(50) DEFAULT NULL,
  `ClassifServicoCodFkNFEEntradaItem` varchar(20) DEFAULT NULL,
  `NFEEntradaItemProdutoServicoFornecDescr` varchar(300) DEFAULT NULL,
  `NCMIdentFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `CFOPIdentFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `OrigMercadoriaCodFkNFEEntradaItem` smallint(1) unsigned DEFAULT NULL,
  `CSTIdentFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `UnidMedidaIdentifFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemUnidMedida` varchar(20) DEFAULT NULL,
  `NFEEntradaItemQtde` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemProdutoServVlrUnit` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemDescontoVlr` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemAcrescVlr` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemOutrosVlr` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFreteVlr` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemSeguroVlr` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemProdutoServVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIIVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIIPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIIVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentIPIFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemIPIVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIPIPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIPIVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentICMSFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentICMSSTFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSSTVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSSTPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemICMSSTVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTRetPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPSTRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPDestVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPDestPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFCPDestVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentPISFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemPISVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPISPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPISVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `CSTIdentCOFINSFkNFEEntradaItem` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemISSVlrTotBase` int(11) unsigned DEFAULT NULL,
  `NFEEntradaItemISSPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemISSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemISSFlagRetido` smallint(1) unsigned DEFAULT NULL COMMENT '0 = ISS pago pelo emitente / 1 = ISS pago pelo destinatario',
  `NFEEntradaItemPISRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPISRetPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPISRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSRetPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCOFINSRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCSLLVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCSLLPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemCSLLVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIRRFVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIRRFPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIRRFVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemIRRFFlagRetido` smallint(1) unsigned DEFAULT NULL COMMENT '0 = IRRF pago pelo emitente / 1 = IRRF pago pelo destinatario',
  `NFEEntradaItemINSSVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemINSSPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemINSSVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemINSSRetVlrTotBase` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemINSSRetPerc` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemINSSRetVlrTot` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPesBruto` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemPesLiquido` decimal(12,4) unsigned DEFAULT NULL,
  `NFEEntradaItemFlagAtivo` smallint(1) unsigned DEFAULT NULL COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`NFEEntradaIdentFkNFEEntradaItem`),
  KEY `FkProdutoEmpresaIdentNFEEntradaItem` (`ProdutoEmpresaIdentFkNFEEntradaItem`),
  KEY `FkClassifServicoCodNFEEntradaItem` (`ClassifServicoCodFkNFEEntradaItem`),
  KEY `FkNCMIdentNFEEntradaItem` (`NCMIdentFkNFEEntradaItem`),
  KEY `FkCFOPIdentNFEEntradaItem` (`CFOPIdentFkNFEEntradaItem`),
  KEY `FkOrigMercadoriaCodNFEEntradaItem` (`OrigMercadoriaCodFkNFEEntradaItem`),
  KEY `FkUnidMedidaIdentifNFEEntradaItem` (`UnidMedidaIdentifFkNFEEntradaItem`),
  CONSTRAINT `FkCFOPIdentNFEEntradaItem` FOREIGN KEY (`CFOPIdentFkNFEEntradaItem`) REFERENCES `evomodadm`.`tbcfop` (`CFOPIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkClassifServicoCodNFEEntradaItem` FOREIGN KEY (`ClassifServicoCodFkNFEEntradaItem`) REFERENCES `tbclassifservico` (`ClassifServicoCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkNCMIdentNFEEntradaItem` FOREIGN KEY (`NCMIdentFkNFEEntradaItem`) REFERENCES `evomodadm`.`tbncm` (`NCMIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkNFEEntradaIdentNFEEntradaItem` FOREIGN KEY (`NFEEntradaIdentFkNFEEntradaItem`) REFERENCES `tbnfeentrada` (`NFEEntradaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkOrigMercadoriaCodNFEEntradaItem` FOREIGN KEY (`OrigMercadoriaCodFkNFEEntradaItem`) REFERENCES `tborigmercadoria` (`OrigMercadoriaCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkProdutoEmpresaIdentNFEEntradaItem` FOREIGN KEY (`ProdutoEmpresaIdentFkNFEEntradaItem`) REFERENCES `evomodadm`.`tbprodutoempresa` (`ProdutoEmpresaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkUnidMedidaIdentifNFEEntradaItem` FOREIGN KEY (`UnidMedidaIdentifFkNFEEntradaItem`) REFERENCES `evomodadm`.`tbunidmedida` (`UnidMedidaIdentif`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbnfeentradaitem: ~0 rows (aproximadamente)
DELETE FROM `tbnfeentradaitem`;
/*!40000 ALTER TABLE `tbnfeentradaitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnfeentradaitem` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbnfeentradaxml
CREATE TABLE IF NOT EXISTS `tbnfeentradaxml` (
  `NFEEntradaIdentFkNFEEntradaXML` int(11) unsigned NOT NULL DEFAULT '0',
  `NFEEntradaXMLConteudo` blob,
  `NFEEntradaXMLFlagAtivo` smallint(1) unsigned DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`NFEEntradaIdentFkNFEEntradaXML`),
  CONSTRAINT `FkNFEEntradaIdentNFEEntradaXML` FOREIGN KEY (`NFEEntradaIdentFkNFEEntradaXML`) REFERENCES `tbnfeentrada` (`NFEEntradaIdent`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbnfeentradaxml: ~0 rows (aproximadamente)
DELETE FROM `tbnfeentradaxml`;
/*!40000 ALTER TABLE `tbnfeentradaxml` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbnfeentradaxml` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tborigmercadoria
CREATE TABLE IF NOT EXISTS `tborigmercadoria` (
  `OrigMercadoriaCod` smallint(1) unsigned NOT NULL DEFAULT '0',
  `OrigMercadoriaDescr` varchar(300) NOT NULL DEFAULT 'SEMDESCRICAO',
  `OrigMercadoriaFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`OrigMercadoriaCod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tborigmercadoria: ~9 rows (aproximadamente)
DELETE FROM `tborigmercadoria`;
/*!40000 ALTER TABLE `tborigmercadoria` DISABLE KEYS */;
INSERT INTO `tborigmercadoria` (`OrigMercadoriaCod`, `OrigMercadoriaDescr`, `OrigMercadoriaFlagAtivo`) VALUES
	(0, 'Nacional: exceto as indicadas nos códigos 3, 4, 5 e 8', 1),
	(1, 'Estrangeira: importação direta, exceto a indicada no código 6', 1),
	(2, 'Estrangeira: adquirida no mercado interno, exceto a indicada no código 7', 1),
	(3, 'Nacional: mercadoria ou bem com conteúdo de importação superior a 40% e inferior ou igual a 70%', 1),
	(4, 'Nacional: cuja produção tenha sido feita em conformidade com os processos produtivos básicos de que tratam o Decreto-Lei nº 288/1967, e as Leis nº 8.248/1991, 8.387/1991, 10.176/2001 e 11.484/2007', 1),
	(5, 'Nacional: mercadoria ou bem com Conteúdo de Importação inferior ou igual a 40%', 1),
	(6, 'Estrangeira: importação direta, sem similar nacional, constante em lista de Resolução Camex e gás natural', 1),
	(7, 'Estrangeira: adquirida no mercado interno, sem similar nacional, constante em lista de Resolução Camex e gás natural', 1),
	(8, 'Nacional: mercadoria ou bem com Conteúdo de Importação superior a 70%.', 1);
/*!40000 ALTER TABLE `tborigmercadoria` ENABLE KEYS */;

-- Copiando estrutura para tabela evomodmat.tbtpnaoconformidade
CREATE TABLE IF NOT EXISTS `tbtpnaoconformidade` (
  `TpNaoConformidadeCod` varchar(20) NOT NULL DEFAULT 'SEMCODIGO',
  `TpNaoConformidadeDescr` varchar(300) DEFAULT NULL,
  `TpNaoConformidadeFlagAtivo` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0 = Inativo / 1 = Ativo',
  PRIMARY KEY (`TpNaoConformidadeCod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela evomodmat.tbtpnaoconformidade: ~0 rows (aproximadamente)
DELETE FROM `tbtpnaoconformidade`;
/*!40000 ALTER TABLE `tbtpnaoconformidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbtpnaoconformidade` ENABLE KEYS */;

-- Copiando estrutura para view evomodmat.vwtbclassifservico
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbclassifservico` (
	`ClassifServicoCod` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`ClassifServicoDescr` VARCHAR(500) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbclassifservicocountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbclassifservicocountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbclassifservicocountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbclassifservicocountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadageral
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraalcadageral` (
	`CompraAlcadaGeralIdent` INT(11) UNSIGNED NOT NULL,
	`PessoaIdentAprovFkCompraAlcadaGeral` INT(11) UNSIGNED NOT NULL,
	`PessoaCodAprov` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialAprov` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraAlcadaGeralFlagSolic` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao Aprova Solicitacao de Compra / 1 = Aprova Solicitacao de Compra',
	`CompraAlcadaGeralSolicVlrLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaGeralFlagRequis` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao Aprova Requisicao/Ordem de Compra / 1 = Aprova Requisicao/Ordem Compra',
	`CompraAlcadaGeralRequisVlrLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaGeralDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadageralcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraalcadageralcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadaprodutoempresa
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraalcadaprodutoempresa` (
	`CompraAlcadaProdutoEmpresaIdent` INT(11) UNSIGNED NOT NULL,
	`PessoaIdentAprovFkCompraAlcadaProdutoEmpresa` INT(11) UNSIGNED NOT NULL,
	`PessoaCodAprov` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialAprov` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraAlcadaProdutoEmpresaFlagSolic` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao Aprova Solicitacao de Compra / 1 = Aprova Solicitacao de Compra',
	`CompraAlcadaProdutoEmpresaSolicQtdeLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaProdutoEmpresaSolicVlrLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaProdutoEmpresaFlagRequis` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Não Aprova Requisicao/Ordem de Compra / 1 = Aprova Requisicao/Ordem Compra',
	`CompraAlcadaProdutoEmpresaRequisQtdeLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaProdutoEmpresaRequisVlrLimite` DECIMAL(12,4) UNSIGNED NULL,
	`CompraAlcadaProdutoEmpresaDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadaprodutoempresacount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraalcadaprodutoempresacount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompra
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraordemcompra` (
	`CompraOrdemCompraIdent` INT(11) UNSIGNED NOT NULL,
	`CompraOrdemCompraDtEmis` DATE NOT NULL,
	`PessoaIdentFornecFkCompraOrdemCompra` INT(11) UNSIGNED NOT NULL,
	`PessoaCodFornec` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialFornec` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraVlrTotal` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraOrdemCompraPrazoEntrDias` SMALLINT(3) UNSIGNED NULL,
	`CompraOrdemCompraDtEnt` DATE NULL,
	`CondicaoPgtoRecebIdentFkCompraOrdemCompra` INT(11) UNSIGNED NOT NULL,
	`Name_exp_10` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`Name_exp_11` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraFrete` CHAR(3) NULL COMMENT 'CIF / FOB' COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraFreteVlr` DECIMAL(12,4) UNSIGNED NULL,
	`CompraOrdemCompraObs` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompracount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraordemcompracount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompraitem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraordemcompraitem` (
	`CompraOrdemCompraIdentFkCompraOrdemCompraItem` INT(11) UNSIGNED NOT NULL,
	`CompraOrdemCompraItemSeq` INT(5) UNSIGNED NOT NULL,
	`CompraRequisItemIdentFkCompraOrdemCompraItem` INT(11) UNSIGNED NOT NULL,
	`CompraRequisItemAprovIdentFkCompraOrdemCompraItem` INT(11) UNSIGNED NULL,
	`CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem` INT(11) UNSIGNED NULL,
	`ProdutoEmpresaIdentFkCompraOrdemCompraItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraItemQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`UnidMedidaIdentifFkCompraOrdemCompraItem` INT(11) UNSIGNED NOT NULL,
	`UnidMedidaAbrev` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`UnidMedidaNome` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraItemPreco` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraOrdemCompraItemObs` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraItemDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompraitemcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraordemcompraitemcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcompraprior
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcompraprior` (
	`CompraPriorIdent` INT(11) UNSIGNED NOT NULL,
	`CompraPriorCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`CompraPriorDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprapriorcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprapriorcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprapriorcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprapriorcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitem` (
	`CompraRequisItemIdent` INT(11) UNSIGNED NOT NULL,
	`CompraSolicitItemIdentFkCompraRequisItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoEmpresaIdentFkCompraRequisItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemDtEmis` DATE NOT NULL,
	`CompraRequisItemQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraRequisItemQtdeMin` DECIMAL(12,4) UNSIGNED NULL,
	`UnidMedidaIdentifFkCompraRequisItem` INT(11) UNSIGNED NOT NULL,
	`UnidMedidaAbrev` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`UnidMedidaNome` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFornecSugerFkCompraRequisItem` INT(11) UNSIGNED NULL,
	`PessoaCodFornecSuger` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialFornecSuger` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemPrecoSuger` DECIMAL(12,4) UNSIGNED NULL,
	`CompraRequisItemPrecoSugerMax` DECIMAL(12,4) UNSIGNED NULL,
	`CompraRequisItemDtEntrMax` DATE NULL,
	`CompraRequisItemFornecSugerJustif` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemaprov
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitemaprov` (
	`CompraRequisItemAprovIdent` INT(11) UNSIGNED NOT NULL,
	`CompraRequisItemIdentFkCompraRequisItemAprov` INT(11) UNSIGNED NOT NULL,
	`CompraRequisItemCotacaoIdentFkCompraRequisItemAprov` INT(11) UNSIGNED NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentAprovFkCompraRequisItemAprov` INT(11) UNSIGNED NOT NULL,
	`PessoaCodAprov` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialAprov` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFornecFkCompraRequisItemAprov` INT(11) UNSIGNED NOT NULL,
	`PessoaCodFornec` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialFornec` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemAprovDtAprov` DATE NOT NULL,
	`CompraRequisItemAprovQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraRequisItemAprovPreco` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraRequisItemAprovFrete` CHAR(3) NULL COMMENT 'CIF / FOB' COLLATE 'latin1_swedish_ci',
	`CompraRequisItemAprovFreteVlr` DECIMAL(12,4) UNSIGNED NULL,
	`CondicaoPgtoRecebIdentFkCompraRequisItemAprov` INT(11) UNSIGNED NULL,
	`Name_exp_21` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`Name_exp_22` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemAprovDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemaprovcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitemaprovcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcotacao
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitemcotacao` (
	`CompraRequisItemCotacaoIdent` INT(11) UNSIGNED NOT NULL,
	`CompraRequisItemIdentFkCompraRequisItemCotacao` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFornecRequisFkCompraRequisItemCotacao` INT(11) UNSIGNED NOT NULL,
	`PessoaCodFornecRequis` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialFornecRequis` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemCotacaoQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraRequisItemCotacaoDtCotacao` DATE NOT NULL,
	`CompraRequisItemCotacaoDtValid` DATE NULL,
	`CondicaoPgtoRecebIdentFkCompraRequisItemCotacao` DECIMAL(12,4) UNSIGNED NULL,
	`Name_exp_15` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`Name_exp_16` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemCotacaoPrazoEntrDias` INT(3) UNSIGNED NULL,
	`CompraRequisItemCotacaoFrete` CHAR(3) NULL COMMENT 'CIF / FOB' COLLATE 'latin1_swedish_ci',
	`CompraRequisItemCotacaoObs` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraRequisItemCotacaoDocto` BLOB NULL,
	`CompraRequisItemCotacaoDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcotacaocount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitemcotacaocount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprarequisitemcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicit
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicit` (
	`CompraSolicitIdent` INT(11) UNSIGNED NOT NULL,
	`CompraSolicitDtEmis` DATE NOT NULL,
	`CompraSolicitFlag` CHAR(1) NOT NULL COMMENT 'M = Manual / A = Automatica' COLLATE 'latin1_swedish_ci',
	`CompraPriorIdentFkCompraSolicit` INT(11) UNSIGNED NULL,
	`CompraPriorCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`CompraPriorDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFkCompraSolicit` INT(11) UNSIGNED NOT NULL,
	`PessoaCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitObs` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitVlrTotal` DECIMAL(12,4) UNSIGNED NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicitcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicitcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititem` (
	`CompraSolicitItemIdent` INT(11) UNSIGNED NOT NULL,
	`CompraSolicitIdentFkCompraSolicitItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoEmpresaIdentFkCompraSolicitItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CompraSolicitItemQtdeMinima` DECIMAL(12,4) UNSIGNED NULL,
	`UnidMedidaIdentifFkCompraSolicitItem` INT(10) UNSIGNED NOT NULL,
	`UnidMedidaAbrev` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`UnidMedidaNome` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemDtEntrDes` DATE NULL,
	`CompraSolicitItemDtEntrMax` DATE NULL,
	`PessoaIdentFornecSugerFkCompraSolicitItem` INT(11) UNSIGNED NULL,
	`PessoaCodFornecSuger` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialFornecSuger` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemPrecoSugerMax` DECIMAL(12,4) UNSIGNED NULL,
	`CompraSolicitItemFornecSugerJustif` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemaprov
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititemaprov` (
	`CompraSolicitItemIdentFkCompraSolicitItemAprov` INT(11) UNSIGNED NOT NULL,
	`PessoaIdentAprovFkCompraSolicitItemAprov` INT(11) UNSIGNED NOT NULL,
	`PessoaCodAprov` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocialAprov` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemAprovDtAprov` DATE NOT NULL,
	`CompraSolicitItemAprovQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`PessoaIdentFornecSugerFkCompraSolicitItemAprov` INT(11) UNSIGNED NULL,
	`PessoaCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemAprovPrecoSuger` DECIMAL(12,4) UNSIGNED NULL,
	`CompraSolicitItemAprovPrecoSugerMax` DECIMAL(12,4) UNSIGNED NULL,
	`CompraSolicitItemAprovFornecSugerJustif` VARCHAR(400) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemAprovDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemaprovcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititemaprovcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemcount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititemcount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemmaterremessa
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititemmaterremessa` (
	`CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa` INT(11) UNSIGNED NOT NULL,
	`CompraSolicitItemMaterRemessaSeq` INT(3) UNSIGNED NOT NULL,
	`ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa` INT(11) UNSIGNED NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NULL,
	`ProdutoDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemMaterRemessaCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemMaterRemessaDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemMaterRemessaQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`UnidMedidaIdentifFkCompraSolicitItemMaterRemessa` INT(11) UNSIGNED NOT NULL,
	`UnidMedidaAbrev` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`UnidMedidaNome` VARCHAR(100) NOT NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemMaterRemessaObs` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CompraSolicitItemMaterRemessaDtCanc` DATE NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemmaterremessacount
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcomprasolicititemmaterremessacount` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcrt
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcrt` (
	`CRTCod` SMALLINT(1) UNSIGNED NOT NULL,
	`CRTDescr` VARCHAR(300) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcrtcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcrtcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcrtcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcrtcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcst
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcst` (
	`CSTIdent` INT(11) UNSIGNED NOT NULL,
	`CSTCod` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`CSTDescr` VARCHAR(300) NOT NULL COLLATE 'latin1_swedish_ci',
	`CSTTribIntegral` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao Integral  / 1 = Integral',
	`CSTFlagIPI` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao se aplica / 1 = Aplica',
	`CSTFlagICMS` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao se aplica / 1 = Aplica',
	`CSTFlagPIS` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao se aplica / 1 = Aplica',
	`CSTFlagCOFINS` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao se aplica / 1 = Aplica',
	`CSTFlagSimpNac` SMALLINT(1) UNSIGNED NOT NULL COMMENT '0 = Nao se aplica / 1 = Aplica'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcstcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcstcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbcstcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbcstcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagar
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagar` (
	`CtaPagarIdent` INT(11) UNSIGNED NOT NULL,
	`EmpresaIdentFkCtaPagar` INT(11) UNSIGNED NOT NULL,
	`EmpresaCod` VARCHAR(11) NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFkCtaPagar` INT(11) UNSIGNED NOT NULL,
	`PessoaCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CtaPagarDtIncl` DATE NOT NULL,
	`CtaPagarDtLiquidacao` DATE NULL,
	`CtaPagarDtCancel` DATE NULL,
	`CtaPagarDtRenegoc` DATE NULL,
	`NFEEntradaIdentFkCtaPagar` INT(11) UNSIGNED NULL,
	`CtaPagarOrigemDocto` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`CondicaoPgtoRecebIdentFkCtaPagar` INT(11) UNSIGNED NULL,
	`CondicaoPgtoRecebCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`CondicaoPgtoRecebDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CtaPagarQtdeParc` INT(5) UNSIGNED NOT NULL,
	`CtaPagarVlrParc` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CtaPagarVlrTot` DECIMAL(12,4) UNSIGNED NOT NULL,
	`CtaPagarMultaPerc` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarMultaVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarJuroPerc` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarJuroVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarDescPerc` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarDescVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarPgtoVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CtaPagarFlagStatus` SMALLINT(1) UNSIGNED NULL COMMENT '1 = Liquidada /  2 = Em aberto Parcial  / 3 = Em Aberto Total / 4 = Renegociada / 5 = Cancelada',
	`CtaPagarFlagStatusAprov` SMALLINT(1) UNSIGNED NULL COMMENT '0 = Nao aprovada / 1 = Aprovada',
	`CtaPagarObs` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagarcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagarcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagarcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagarcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagaritem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagaritem` (
	`CtaPagarIdentFkCtaPagarItem` INT(11) UNSIGNED NOT NULL,
	`CtaPagarItemNrParc` INT(5) UNSIGNED NOT NULL,
	`CtaPagarItemCodBarra` VARCHAR(48) NULL COLLATE 'latin1_swedish_ci',
	`CtaPagarItemDtVcto` DATE NOT NULL,
	`CtaPagarItemDtPgto` DATE NULL,
	`CtaPagarItemDtCancel` DATE NULL,
	`CtaPagarItemDtRenegoc` DATE NULL,
	`CtaPagarItemVlParc` DECIMAL(12,4) NOT NULL,
	`CtaPagarItemMultaPerc` DECIMAL(12,4) NULL,
	`CtaPagarItemJuroPerc` DECIMAL(12,4) NULL,
	`CtaPagarItemDescPerc` DECIMAL(12,4) NULL,
	`CtaPagarItemDescVlrVcto` DECIMAL(12,4) NULL,
	`CtaPagarItemFlagStatus` SMALLINT(1) UNSIGNED NOT NULL COMMENT '1 = Liquida / 2 = Em Aberto Parcial / 3 = Em Aberto Total / 4 - Renegociada / 5 = Cancelada',
	`CtaPagarItemObs` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagaritemcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagaritemcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbctapagaritemcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbctapagaritemcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscal
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbdoctofiscal` (
	`DoctoFiscalIdent` INT(11) UNSIGNED NOT NULL,
	`DoctoFiscalCod` CHAR(2) NOT NULL COLLATE 'latin1_swedish_ci',
	`DoctoFiscalDescr` VARCHAR(300) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscalcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbdoctofiscalcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscalcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbdoctofiscalcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquemov
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquemov` (
	`ProdutoEmpresaIdentFkEstoqueMov` INT(11) UNSIGNED NOT NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaCod` VARCHAR(11) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovCodFkEstoqueMov` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovEntSai` CHAR(1) NOT NULL COMMENT 'E = Entrada / S = Saida' COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovEntSaiDet` VARCHAR(2) NOT NULL COMMENT 'MN = Movimento Normal / EP = Empenho / PT = Poder de Terceiros / DT = De Terceiros / CO = Consignacao / DC = De Consignacao / EF = Entrega Futura / RE = Reserva / RF = Refugo / SU = Sucata / PE = Perda de Estoque / QE = Quebra de Estoque' COLLATE 'latin1_swedish_ci',
	`ServerIdent` INT(3) UNSIGNED NOT NULL,
	`EstoqueMovData` TIMESTAMP NOT NULL,
	`EstoqueMovQtde` DECIMAL(12,4) UNSIGNED NOT NULL,
	`EstoqueMovVlr` DECIMAL(12,4) UNSIGNED NULL,
	`EstoqueMovDoctoOrigTp` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`EstoqueMovDoctoOrigNr` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquemovcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquemovcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquesaldo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquesaldo` (
	`ProdutoEmpresaIdentFkEstoqueSaldo` INT(11) UNSIGNED NOT NULL,
	`EstoqueSaldoQtdeEnt` DECIMAL(12,4) UNSIGNED NULL,
	`EstoqueSaldoQtdeSai` DECIMAL(12,4) UNSIGNED NULL,
	`EstoqueSaldoEmpenho` DECIMAL(5,4) UNSIGNED NULL,
	`EstoqueSaldoReserva` DECIMAL(12,4) UNSIGNED NULL,
	`EstoqueSaldoAtual` DECIMAL(12,4) UNSIGNED NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaCod` VARCHAR(11) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquesaldocountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquesaldocountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmov
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquetpmov` (
	`EstoqueTpMovCod` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovEntSai` CHAR(1) NOT NULL COMMENT 'E = Entrada / S = Saida' COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovEntSaiDet` VARCHAR(2) NOT NULL COMMENT 'MN = Movimento Normal / EP = Empenho / PT = Poder de Terceiros / DT = De Terceiros / CO = Consignacao / DC = De Consignacao / EF = Entrega Futura / RE = Reserva / RF = Refugo / SU = Sucata / PE = Perda de Estoque / QE = Quebra de Estoque' COLLATE 'latin1_swedish_ci',
	`EstoqueTpMovFlagCusto` SMALLINT(1) NOT NULL COMMENT '0 = Nao Altera Custo / 1 = Altera Custo',
	`EstoqueTpMovFlagSaldo` SMALLINT(1) NOT NULL COMMENT '0 = Nao Altera Saldo Estoque / 1 = Altera Saldo Estoque',
	`EstoqueTpMovFlagAutom` SMALLINT(1) NOT NULL COMMENT '0 = Movimento Manual / 1 = Movimento Automatico'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmovcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquetpmovcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmovcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbestoquetpmovcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbinventario
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbinventario` (
	`InventarioIdent` INT(11) UNSIGNED NOT NULL,
	`EmpresaIdentFkInventario` INT(11) UNSIGNED NOT NULL,
	`InventarioDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`EmpresaCod` VARCHAR(11) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`InventarioDtGeracao` TIMESTAMP NOT NULL,
	`InventarioDtExecucao` DATETIME NULL,
	`InventarioDtEfetivacao` DATETIME NULL,
	`InventarioExcluido` SMALLINT(1) UNSIGNED NULL COMMENT 'NULL = Ativo / Not Null = Excluido'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbinventarioitem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbinventarioitem` (
	`InventarioIdentFkInventarioItem` INT(11) UNSIGNED NOT NULL,
	`ProdutoEmpresaIdentFkInventarioItem` INT(11) UNSIGNED NOT NULL,
	`InventarioDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`ProdutoCod` BIGINT(20) UNSIGNED NOT NULL,
	`ProdutoDescr` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaCod` VARCHAR(11) NOT NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NOT NULL COLLATE 'latin1_swedish_ci',
	`EstoqueSaldoAtualFkInventarioItem` DECIMAL(12,4) UNSIGNED NULL,
	`InventarioItemQtdeApont` DECIMAL(12,4) UNSIGNED NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmat
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnaoconformentmat` (
	`NaoConformEntMatIdent` INT(11) UNSIGNED NOT NULL,
	`TpNaoConformidadeCodFkNaoConformEntMat` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NaoConformEntMatDtOcor` DATE NOT NULL,
	`CompraOrdemCompraIdentFkNaoConformEntMat` INT(11) UNSIGNED NULL,
	`CompraOrdemCompraItemSeqFkNaoConformEntMat` INT(5) UNSIGNED NULL,
	`NFEEntradaIdentFkNaoConformEntMat` INT(11) UNSIGNED NULL,
	`NFEEntradaItemSeqFkNaoConformEntMat` INT(5) UNSIGNED NULL,
	`NaoConformEntMatObs` VARCHAR(500) NULL COLLATE 'latin1_swedish_ci',
	`NaoConformEntMatAcao` VARCHAR(500) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmatcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnaoconformentmatcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmatcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnaoconformentmatcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentrada
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentrada` (
	`NFEEntradaIdent` INT(11) UNSIGNED NOT NULL,
	`EmpresaIdentFkNFEEntrada` INT(11) UNSIGNED NOT NULL,
	`EmpresaCod` VARCHAR(11) NULL COLLATE 'latin1_swedish_ci',
	`EmpresaRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`PessoaIdentFkNFEEntrada` INT(11) UNSIGNED NULL,
	`PessoaCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`PessoaNomeRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaCNPJCPF` VARCHAR(45) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaInscrEstad` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`IndicInscEstadIdentFkNFEEntrada` INT(1) UNSIGNED NOT NULL,
	`IndicInscEstadCod` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci',
	`IndicInscEstadDescr` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaInscrMunic` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaInscrSuframa` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaNomeRazaoSocial` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaEndereco` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaEnderecoNr` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaEnderecoCompl` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaFoneDDD` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaPessoaNrFone` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`CEPIdentFkNFEEntrada` INT(11) UNSIGNED NULL,
	`CEPCod` VARCHAR(8) NULL COLLATE 'latin1_swedish_ci',
	`CEPEndereco` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`CEPBairro` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`Cidade/Estado` VARCHAR(104) NULL COLLATE 'latin1_swedish_ci',
	`DoctoFiscalIdentFkNFEEntrada` INT(11) UNSIGNED NULL,
	`DoctoFiscalCod` VARCHAR(2) NULL COLLATE 'latin1_swedish_ci',
	`DoctoFiscalDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`CompraOrdemCompraIdentFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaNr` INT(11) UNSIGNED NULL,
	`NFEEntradaSerie` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaChaveEletr` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaDtEmis` DATE NULL,
	`NFEEntradaDtEntrega` DATE NULL,
	`CFOPIdentFkNFEEntrada` INT(11) UNSIGNED NULL,
	`CFOPCod` INT(5) UNSIGNED NULL,
	`CFOPDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`NFESaidaIdentFkNFEEntrada` INT(11) UNSIGNED NULL COMMENT 'Nota Fiscal de Venda Qdo for Devolucao',
	`NFEEntradaPrincFkNFEntrada` INT(11) UNSIGNED NULL COMMENT 'Nota Fiscal Principal no caso de CTE',
	`NFEEntradaProdutoServVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaDescontoVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaAcrescVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaOutrosVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFreteVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaImpostoVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaSeguroVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIIVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIIVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentIPIFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaIPIVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIPIVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentICMSFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaICMSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaICMSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentICMSSTFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaICMSSTVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaICMSSTVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPSTVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPSTVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPSTRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPSTRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPDestVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFCPDestVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentPISFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaPISVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaPISVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentCOFINSFkNFEEntrada` INT(11) UNSIGNED NULL,
	`NFEEntradaCOFINSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaCOFINSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaISSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaISSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaISSFlagRetido` SMALLINT(1) UNSIGNED NULL COMMENT 'ISS pago pelo emitente / 1 = ISS pago pelo destinatario',
	`NFEEntradaPISRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaPISRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaCOFINSRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaCOFINSRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaCSLLVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaCSLLVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIRRFVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIRRFVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaIRRFFlagRetido` SMALLINT(1) UNSIGNED NULL COMMENT '0 = IRRF pago pelo emitente / 1 = IRRF pago pelo destinatario',
	`NFEEntradaINSSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaINSSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaINSSRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaINSSRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaVolumeTot` SMALLINT(5) UNSIGNED NULL,
	`NFEEntradaPesTotBruto` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaPesTotLiquido` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaParcQtde` SMALLINT(5) UNSIGNED NULL,
	`NFEEntradaParcVlrUnit` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaFreteTp` VARCHAR(3) NULL COMMENT 'CIF / FOB' COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradacountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradacountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradacountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradacountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitem
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaitem` (
	`NFEEntradaIdentFkNFEEntradaItem` INT(11) UNSIGNED NOT NULL,
	`NFEEntradaItemSeq` INT(5) UNSIGNED NOT NULL,
	`ProdutoEmpresaIdentFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`ProdutoCod` BIGINT(20) UNSIGNED NULL,
	`ProdutoDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaItemProdutoFornecCod` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`ClassifServicoCodFkNFEEntradaItem` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`ClassifServicoCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`ClassifServicoDescr` VARCHAR(500) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaItemProdutoServicoFornecDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`NCMIdentFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NCMCod` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NCMDescr` VARCHAR(200) NULL COLLATE 'latin1_swedish_ci',
	`CFOPIdentFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`CFOPCod` INT(5) UNSIGNED NULL,
	`CFOPDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`OrigMercadoriaCodFkNFEEntradaItem` SMALLINT(1) UNSIGNED NULL,
	`OrigMercadoriaDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`CSTIdentFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`UnidMedidaIdentifFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`UnidMedidaAbrev` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`UnidMedidaNome` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaItemUnidMedida` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci',
	`NFEEntradaItemQtde` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemProdutoServVlrUnit` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemDescontoVlr` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemAcrescVlr` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemOutrosVlr` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFreteVlr` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemSeguroVlr` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemProdutoServVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIIVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIIPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIIVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentIPIFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NFEEntradaItemIPIVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIPIPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIPIVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentICMSFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NFEEntradaItemICMSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemICMSPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemICMSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentICMSSTFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NFEEntradaItemICMSSTVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemICMSSTPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemICMSSTVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTRetPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPSTRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPDestVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPDestPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemFCPDestVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentPISFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NFEEntradaItemPISVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPISPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPISVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`CSTIdentCOFINSFkNFEEntradaItem` INT(11) UNSIGNED NULL,
	`NFEEntradaItemCOFINSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCOFINSPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCOFINSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemISSVlrTotBase` INT(11) UNSIGNED NULL,
	`NFEEntradaItemISSPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemISSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemISSFlagRetido` SMALLINT(1) UNSIGNED NULL COMMENT '0 = ISS pago pelo emitente / 1 = ISS pago pelo destinatario',
	`NFEEntradaItemPISRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPISRetPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPISRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCOFINSRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCOFINSRetPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCOFINSRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCSLLVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCSLLPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemCSLLVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIRRFVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIRRFPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIRRFVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemIRRFFlagRetido` SMALLINT(1) UNSIGNED NULL COMMENT '0 = IRRF pago pelo emitente / 1 = IRRF pago pelo destinatario',
	`NFEEntradaItemINSSVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemINSSPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemINSSVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemINSSRetVlrTotBase` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemINSSRetPerc` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemINSSRetVlrTot` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPesBruto` DECIMAL(12,4) UNSIGNED NULL,
	`NFEEntradaItemPesLiquido` DECIMAL(12,4) UNSIGNED NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitemcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaitemcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitemcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaitemcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxml
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaxml` (
	`NFEEntradaIdentFkNFEEntradaXML` INT(11) UNSIGNED NOT NULL,
	`NFEEntradaXMLConteudo` BLOB NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxmlcountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaxmlcountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxmlcountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbnfeentradaxmlcountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtborigmercadoria
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtborigmercadoria` (
	`OrigMercadoriaCod` SMALLINT(1) UNSIGNED NOT NULL,
	`OrigMercadoriaDescr` VARCHAR(300) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtborigmercadoriacountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtborigmercadoriacountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtborigmercadoriacountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtborigmercadoriacountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidade
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbtpnaoconformidade` (
	`TpNaoConformidadeCod` VARCHAR(20) NOT NULL COLLATE 'latin1_swedish_ci',
	`TpNaoConformidadeDescr` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidadecountativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbtpnaoconformidadecountativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidadecountinativo
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vwtbtpnaoconformidadecountinativo` (
	`QtdeRegistro` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para trigger evomodmat.trginsertaftertbestoquemov
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `trginsertaftertbestoquemov`
  AFTER INSERT ON `tbestoquemov`
  FOR EACH ROW
BEGIN
If ((Exists(Select variable_value
          From INFORMATION_SCHEMA.GLOBAL_VARIABLES
          Where variable_name = 'server_id'
          And variable_value = 1)) &&
    (Not Exists(Select ProdutoEmpresaIdentFkEstoqueSaldo
               From tbestoquesaldo
               Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov))) Then
     Insert Into tbestoquesaldo(ProdutoEmpresaIdentFkEstoqueSaldo, EstoqueSaldoQtdeEnt, EstoqueSaldoQtdeSai, EstoqueSaldoEmpenho, EstoqueSaldoReserva)
     Values (New.ProdutoEmpresaIdentFkEstoqueMov, 0, 0, 0, 0);
End If;

If Exists(Select variable_value
          From INFORMATION_SCHEMA.GLOBAL_VARIABLES
          Where variable_name = 'server_id'
          And variable_value = 1) Then
   If ((NEW.EstoqueTpMovCodFkEstoqueMov = 'MNE') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'COE') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'DCE') or
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'DEE') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'DTE') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'EFE') or
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'PTE') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'SDE')) Then
       Update tbestoquesaldo
       Set EstoqueSaldoQtdeEnt = EstoqueSaldoQtdeEnt + NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   ElseIf
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'EPE') Then
       Update tbestoquesaldo
       Set EstoqueSaldoEmpenho = EstoqueSaldoEmpenho + NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   ElseIf
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'REE') Then
       Update tbestoquesaldo
       Set EstoqueSaldoReserva = EstoqueSaldoReserva + NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   End If;
End If;
If Exists(Select variable_value
          From INFORMATION_SCHEMA.GLOBAL_VARIABLES
          Where variable_name = 'server_id'
          And variable_value = 1) Then
   If ((NEW.EstoqueTpMovCodFkEstoqueMov = 'COS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'DCS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'DES') or
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'DTS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'EFS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'MNS') or
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'PES') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'PTS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'QES') or
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'RFS') or (NEW.EstoqueTpMovCodFkEstoqueMov = 'SUS')) Then
       Update tbestoquesaldo
       Set EstoqueSaldoQtdeSai = EstoqueSaldoQtdeSai + NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   ElseIf
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'EPS') Then
       Update tbestoquesaldo
       Set EstoqueSaldoEmpenho = EstoqueSaldoEmpenho - NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   ElseIf
       (NEW.EstoqueTpMovCodFkEstoqueMov = 'RES') Then
       Update tbestoquesaldo
       Set EstoqueSaldoReserva = EstoqueSaldoReserva - NEW.EstoqueMovQtde
       Where ProdutoEmpresaIdentFkEstoqueSaldo = NEW.ProdutoEmpresaIdentFkEstoqueMov;
   End If;
End If;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view evomodmat.vwtbclassifservico
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbclassifservico`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbclassifservico` AS SELECT ClassifServicoCod,
ClassifServicoDescr
From tbclassifservico
Where ClassifServicoFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbclassifservicocountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbclassifservicocountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbclassifservicocountativo` AS SELECT Count(ClassifServicoCod) As QtdeRegistro
From tbclassifservico
Where ClassifServicoFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbclassifservicocountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbclassifservicocountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbclassifservicocountinativo` AS Select Count(ClassifServicoCod) As QtdeRegistro
From tbclassifservico
Where ClassifServicoFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadageral
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraalcadageral`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraalcadageral` AS SELECT CompraAlcadaGeralIdent,
PessoaIdentAprovFkCompraAlcadaGeral,
PessoaCod As PessoaCodAprov,
PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
CompraAlcadaGeralFlagSolic,
CompraAlcadaGeralSolicVlrLimite,
CompraAlcadaGeralFlagRequis,
CompraAlcadaGeralRequisVlrLimite,
CompraAlcadaGeralDtCanc
From tbcompraalcadageral,
evomodadm.tbpessoa
Where PessoaIdentAprovFkCompraAlcadaGeral = PessoaIdent; ;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadageralcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraalcadageralcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraalcadageralcount` AS SELECT Count(CompraAlcadaGeralIdent) As QtdeRegistro
From tbcompraalcadageral; ;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadaprodutoempresa
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraalcadaprodutoempresa`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraalcadaprodutoempresa` AS SELECT CompraAlcadaProdutoEmpresaIdent,
PessoaIdentAprovFkCompraAlcadaProdutoEmpresa,
PessoaCod As PessoaCodAprov,
PessoaNomeRazaoSocial As PessoaNomeRazaoSocialAprov,
ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa,
ProdutoCod,
ProdutoDescr,
CompraAlcadaProdutoEmpresaFlagSolic,
CompraAlcadaProdutoEmpresaSolicQtdeLimite,
CompraAlcadaProdutoEmpresaSolicVlrLimite,
CompraAlcadaProdutoEmpresaFlagRequis,
CompraAlcadaProdutoEmpresaRequisQtdeLimite,
CompraAlcadaProdutoEmpresaRequisVlrLimite,
CompraAlcadaProdutoEmpresaDtCanc
From tbcompraalcadaprodutoempresa,
evomodadm.tbpessoa,
evomodadm.tbprodutoempresa,
evomodadm.tbproduto
Where PessoaIdentAprovFkCompraAlcadaProdutoEmpresa = PessoaIdent
And ProdutoEmpresaIdentFkCompraAlcadaProdutoEmpresa = ProdutoEmpresaIdent
And ProdutoIdentFkProdutoEmpresa = ProdutoIdent; ;

-- Copiando estrutura para view evomodmat.vwtbcompraalcadaprodutoempresacount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraalcadaprodutoempresacount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraalcadaprodutoempresacount` AS SELECT Count(CompraAlcadaProdutoEmpresaIdent) As QtdeRegistro
From tbcompraalcadaprodutoempresa; ;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompra
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraordemcompra`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraordemcompra` AS SELECT
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraIdent`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraDtEmis`,
  `evomodmat`.`tbcompraordemcompra`.`PessoaIdentFornecFkCompraOrdemCompra`,
  `evomodadm`.`tbpessoa`.`PessoaCod` AS 'PessoaCodFornec',
  `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` AS 'PessoaNomeRazaoSocialFornec',
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraVlrTotal`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraPrazoEntrDias`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraDtEnt`,
  `evomodmat`.`tbcompraordemcompra`.`CondicaoPgtoRecebIdentFkCompraOrdemCompra`,
  (Select CondicaoPgtoRecebCod From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCompraOrdemCompra),
  (Select CondicaoPgtoRecebDescr From evomodadm.tbcondicaopgtoreceb Where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCompraOrdemCompra),  
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraFrete`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraFreteVlr`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraObs`,
  `evomodmat`.`tbcompraordemcompra`.`CompraOrdemCompraDtCanc`
FROM
  (`evomodmat`.`tbcompraordemcompra`
    JOIN `evomodadm`.`tbpessoa`)
WHERE
  (`evomodmat`.`tbcompraordemcompra`.`PessoaIdentFornecFkCompraOrdemCompra` = `evomodadm`.`tbpessoa`.`PessoaIdent`); ;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompracount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraordemcompracount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraordemcompracount` AS SELECT Count(CompraOrdemCompraIdent) As QtdeRegistro
From tbcompraordemcompra; ;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompraitem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraordemcompraitem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraordemcompraitem` AS SELECT CompraOrdemCompraIdentFkCompraOrdemCompraItem,
CompraOrdemCompraItemSeq,
CompraRequisItemIdentFkCompraOrdemCompraItem,
CompraRequisItemAprovIdentFkCompraOrdemCompraItem,
CompraRequisItemCotacaoIdentFkCompraOrdemCompraItem,
ProdutoEmpresaIdentFkCompraOrdemCompraItem,
ProdutoCod,
ProdutoDescr,
CompraOrdemCompraItemQtde,
UnidMedidaIdentifFkCompraOrdemCompraItem,
UnidMedidaAbrev,
UnidMedidaNome,
CompraOrdemCompraItemPreco,
CompraOrdemCompraItemObs,
CompraOrdemCompraItemDtCanc
From tbcompraordemcompraitem,
tbcompraordemcompra,
tbcomprarequisitem,
evomodadm.tbprodutoempresa,
evomodadm.tbproduto,
evomodadm.tbunidmedida
Where CompraOrdemCompraIdentFkCompraOrdemCompraItem = CompraOrdemCompraIdent
And CompraRequisItemIdentFkCompraOrdemCompraItem = CompraRequisItemIdent
And ProdutoEmpresaIdentFkCompraOrdemCompraItem = ProdutoEmpresaIdent
And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
And UnidMedidaIdentifFkCompraOrdemCompraItem = UnidMedidaIdentif; ;

-- Copiando estrutura para view evomodmat.vwtbcompraordemcompraitemcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraordemcompraitemcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraordemcompraitemcount` AS SELECT Count(CompraOrdemCompraIdentFkCompraOrdemCompraItem) As QtdeRegistro
From tbcompraordemcompraitem; ;

-- Copiando estrutura para view evomodmat.vwtbcompraprior
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcompraprior`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcompraprior` AS SELECT CompraPriorIdent,
CompraPriorCod,
CompraPriorDescr
From tbcompraprior
Where CompraPriorExcluido Is Null; ;

-- Copiando estrutura para view evomodmat.vwtbcomprapriorcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprapriorcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprapriorcountativo` AS SELECT Count(CompraPriorIdent) As QtdeRegistro
From tbcompraprior
Where CompraPriorExcluido Is Null; ;

-- Copiando estrutura para view evomodmat.vwtbcomprapriorcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprapriorcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprapriorcountinativo` AS SELECT Count(CompraPriorIdent) As QtdeRegistro
From tbcompraprior
Where CompraPriorExcluido Is Not Null; ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitem` AS SELECT CompraRequisItemIdent,
CompraSolicitItemIdentFkCompraRequisItem,
ProdutoEmpresaIdentFkCompraRequisItem,
ProdutoCod,
ProdutoDescr,
CompraRequisItemDtEmis,
CompraRequisItemQtde,
CompraRequisItemQtdeMin,
UnidMedidaIdentifFkCompraRequisItem,
UnidMedidaAbrev,
UnidMedidaNome,
PessoaIdentFornecSugerFkCompraRequisItem,
(Select PessoaCod From evomodadm.tbpessoa where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaCodFornecSuger,
(Select PessoaNomeRazaoSocial From evomodadm.tbpessoa where PessoaIdent = PessoaIdentFornecSugerFkCompraRequisItem) As PessoaNomeRazaoSocialFornecSuger,
CompraRequisItemPrecoSuger,
CompraRequisItemPrecoSugerMax,
CompraRequisItemDtEntrMax,
CompraRequisItemFornecSugerJustif,
CompraRequisItemDtCanc
From tbcomprarequisitem,
tbcomprasolicititem,
evomodadm.tbprodutoempresa,
evomodadm.tbproduto,
evomodadm.tbunidmedida
Where CompraSolicitItemIdentFkCompraRequisItem = CompraSolicitItemIdent
And ProdutoEmpresaIdentFkCompraRequisItem = ProdutoEmpresaIdent
And ProdutoIdentFkProdutoEmpresa = ProdutoIdent
And UnidMedidaIdentifFkCompraRequisItem = UnidMedidaIdentif; ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemaprov
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitemaprov`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitemaprov` AS SELECT
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovIdent`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemIdentFkCompraRequisItemAprov`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemCotacaoIdentFkCompraRequisItemAprov`,
  `evomodadm`.`tbproduto`.`ProdutoCod`,
  `evomodadm`.`tbproduto`.`ProdutoDescr`,
  `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentAprovFkCompraRequisItemAprov`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentAprovFkCompraRequisItemAprov`)) AS 'PessoaCodAprov',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentAprovFkCompraRequisItemAprov`)) AS 'PessoaNomeRazaoSocialAprov',
  `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentFornecFkCompraRequisItemAprov`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentFornecFkCompraRequisItemAprov`)) AS 'PessoaCodFornec',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`PessoaIdentFornecFkCompraRequisItemAprov`)) AS 'PessoaNomeRazaoSocialFornec',
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovDtAprov`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovQtde`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovPreco`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovFrete`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovFreteVlr`,
  `evomodmat`.`tbcomprarequisitemaprov`.`CondicaoPgtoRecebIdentFkCompraRequisItemAprov`,
  (SELECT `evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebCod` FROM `evomodadm`.`tbcondicaopgtoreceb` WHERE (`evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`CondicaoPgtoRecebIdentFkCompraRequisItemAprov`)) AS 'Name_exp_21',
  (SELECT `evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebDescr` FROM `evomodadm`.`tbcondicaopgtoreceb` WHERE (`evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebIdent` = `evomodmat`.`tbcomprarequisitemaprov`.`CondicaoPgtoRecebIdentFkCompraRequisItemAprov`)) AS 'Name_exp_22',
  `evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemAprovDtCanc`
FROM
  (((`evomodmat`.`tbcomprarequisitemaprov`
    JOIN `evomodmat`.`tbcomprarequisitem`)
    JOIN `evomodadm`.`tbprodutoempresa`)
    JOIN `evomodadm`.`tbproduto`)
WHERE
  ((`evomodmat`.`tbcomprarequisitemaprov`.`CompraRequisItemIdentFkCompraRequisItemAprov` = `evomodmat`.`tbcomprarequisitem`.`CompraRequisItemIdent`)
    AND (`evomodmat`.`tbcomprarequisitem`.`ProdutoEmpresaIdentFkCompraRequisItem` = `evomodadm`.`tbprodutoempresa`.`ProdutoEmpresaIdent`)
    AND (`evomodadm`.`tbprodutoempresa`.`ProdutoIdentFkProdutoEmpresa` = `evomodadm`.`tbproduto`.`ProdutoIdent`)); ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemaprovcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitemaprovcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitemaprovcount` AS SELECT Count(CompraRequisItemAprovIdent) As QtdeRegistro
From tbcomprarequisitemaprov; ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcotacao
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitemcotacao`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitemcotacao` AS SELECT
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoIdent`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemIdentFkCompraRequisItemCotacao`,
  `evomodadm`.`tbproduto`.`ProdutoCod`,
  `evomodadm`.`tbproduto`.`ProdutoDescr`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`PessoaIdentFornecRequisFkCompraRequisItemCotacao`,
  `evomodadm`.`tbpessoa`.`PessoaCod` AS 'PessoaCodFornecRequis',
  `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` AS 'PessoaNomeRazaoSocialFornecRequis',
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoQtde`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoDtCotacao`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoDtValid`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoPreco` AS 'CondicaoPgtoRecebIdentFkCompraRequisItemCotacao',
  (SELECT `evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebCod` FROM `evomodadm`.`tbcondicaopgtoreceb` WHERE (`evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebIdent` = `evomodmat`.`tbcomprarequisitemcotacao`.`CondicaoPgtoRecebIdentFkCompraRequisItemCotacao`)) AS 'Name_exp_15',
  (SELECT `evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebDescr` FROM `evomodadm`.`tbcondicaopgtoreceb` WHERE (`evomodadm`.`tbcondicaopgtoreceb`.`CondicaoPgtoRecebIdent` = `evomodmat`.`tbcomprarequisitemcotacao`.`CondicaoPgtoRecebIdentFkCompraRequisItemCotacao`)) AS 'Name_exp_16',
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoPrazoEntrDias`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoFrete`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoObs`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoDocto`,
  `evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemCotacaoDtCanc`
FROM
  ((((`evomodmat`.`tbcomprarequisitemcotacao`
    JOIN `evomodmat`.`tbcomprarequisitem`)
    JOIN `evomodadm`.`tbpessoa`)
    JOIN `evomodadm`.`tbprodutoempresa`)
    JOIN `evomodadm`.`tbproduto`)
WHERE
  ((`evomodmat`.`tbcomprarequisitemcotacao`.`CompraRequisItemIdentFkCompraRequisItemCotacao` = `evomodmat`.`tbcomprarequisitem`.`CompraRequisItemIdent`)
    AND (`evomodmat`.`tbcomprarequisitem`.`ProdutoEmpresaIdentFkCompraRequisItem` = `evomodadm`.`tbprodutoempresa`.`ProdutoEmpresaIdent`)
    AND (`evomodadm`.`tbprodutoempresa`.`ProdutoIdentFkProdutoEmpresa` = `evomodadm`.`tbproduto`.`ProdutoIdent`)
    AND (`evomodmat`.`tbcomprarequisitemcotacao`.`PessoaIdentFornecRequisFkCompraRequisItemCotacao` = `evomodadm`.`tbpessoa`.`PessoaIdent`)); ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcotacaocount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitemcotacaocount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitemcotacaocount` AS SELECT Count(CompraRequisItemCotacaoIdent) As QtdeRegistro
From tbcomprarequisitemcotacao; ;

-- Copiando estrutura para view evomodmat.vwtbcomprarequisitemcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprarequisitemcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprarequisitemcount` AS SELECT Count(CompraRequisItemIdent) As QtdeRegistro
From tbcomprarequisitem; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicit
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicit`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicit` AS SELECT CompraSolicitIdent,
CompraSolicitDtEmis,
CompraSolicitFlag,
CompraPriorIdentFkCompraSolicit,
CompraPriorCod,
CompraPriorDescr,
PessoaIdentFkCompraSolicit,
PessoaCod,
PessoaNomeRazaoSocial,
CompraSolicitObs,
CompraSolicitVlrTotal
From tbcomprasolicit,
tbcompraprior,
evomodadm.tbpessoa
Where CompraPriorIdentFkCompraSolicit = CompraPriorIdent
And PessoaIdentFkCompraSolicit = PessoaIdent; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicitcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicitcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicitcount` AS SELECT Count(CompraSolicitIdent) As QtdeRegistro
From tbcomprasolicit; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititem` AS SELECT
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemIdent`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitIdentFkCompraSolicitItem`,
  `evomodmat`.`tbcomprasolicititem`.`ProdutoEmpresaIdentFkCompraSolicitItem`,
  `evomodadm`.`tbproduto`.`ProdutoCod`,
  `evomodadm`.`tbproduto`.`ProdutoDescr`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemQtde`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemQtdeMinima`,
  `evomodmat`.`tbcomprasolicititem`.`UnidMedidaIdentifFkCompraSolicitItem`,
  `evomodadm`.`tbunidmedida`.`UnidMedidaAbrev`,
  `evomodadm`.`tbunidmedida`.`UnidMedidaNome`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemDtEntrDes`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemDtEntrMax`,
  `evomodmat`.`tbcomprasolicititem`.`PessoaIdentFornecSugerFkCompraSolicitItem`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprasolicititem`.`PessoaIdentFornecSugerFkCompraSolicitItem`)) AS 'PessoaCodFornecSuger',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprasolicititem`.`PessoaIdentFornecSugerFkCompraSolicitItem`)) AS 'PessoaNomeRazaoSocialFornecSuger',
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemPrecoSuger` AS 'CompraSolicitItemPrecoSugerMax',
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemFornecSugerJustif`,
  `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemDtCanc`
FROM
  `evomodmat`.`tbcomprasolicititem`,
     `evomodmat`.`tbcomprasolicit`,
     `evomodadm`.`tbprodutoempresa`,
     `evomodadm`.`tbproduto`,
     `evomodadm`.`tbunidmedida`
WHERE
  ((`evomodmat`.`tbcomprasolicititem`.`CompraSolicitIdentFkCompraSolicitItem` = `evomodmat`.`tbcomprasolicit`.`CompraSolicitIdent`)
    AND (`evomodmat`.`tbcomprasolicititem`.`ProdutoEmpresaIdentFkCompraSolicitItem` = `evomodadm`.`tbprodutoempresa`.`ProdutoEmpresaIdent`)
    AND (`evomodadm`.`tbprodutoempresa`.`ProdutoIdentFkProdutoEmpresa` = `evomodadm`.`tbproduto`.`ProdutoIdent`)
    AND (`evomodmat`.`tbcomprasolicititem`.`UnidMedidaIdentifFkCompraSolicitItem` = `evomodadm`.`tbunidmedida`.`UnidMedidaIdentif`)); ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemaprov
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititemaprov`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititemaprov` AS SELECT
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemIdentFkCompraSolicitItemAprov`,
  `evomodmat`.`tbcomprasolicititemaprov`.`PessoaIdentAprovFkCompraSolicitItemAprov`,
  `evomodadm`.`tbpessoa`.`PessoaCod` AS 'PessoaCodAprov',
  `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` AS 'PessoaNomeRazaoSocialAprov',
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovDtAprov`,
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovQtde`,
  `evomodmat`.`tbcomprasolicititemaprov`.`PessoaIdentFornecSugerFkCompraSolicitItemAprov`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprasolicititemaprov`.`PessoaIdentFornecSugerFkCompraSolicitItemAprov`)) AS 'PessoaCod',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbcomprasolicititemaprov`.`PessoaIdentFornecSugerFkCompraSolicitItemAprov`)) AS 'PessoaNomeRazaoSocial',
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovPrecoSuger`,
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovPrecoSugerMax`,
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovFornecSugerJustif`,
  `evomodmat`.`tbcomprasolicititemaprov`.`CompraSolicitItemAprovDtCanc`
FROM `evomodmat`.`tbcomprasolicititemaprov`,
    `evomodmat`.`tbcomprasolicititem`,
    `evomodadm`.`tbpessoa`
WHERE
  CompraSolicitItemIdentFkCompraSolicitItemAprov = CompraSolicitItemIdent
  AND PessoaIdentAprovFkCompraSolicitItemAprov = evomodadm.tbpessoa.PessoaIdent; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemaprovcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititemaprovcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititemaprovcount` AS SELECT Count(CompraSolicitItemIdentFkCompraSolicitItemAprov) As QtdeRegistro
From tbcomprasolicititemaprov; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemcount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititemcount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititemcount` AS SELECT Count(CompraSolicitItemIdent) As QtdeRegistro
From tbcomprasolicititem; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemmaterremessa
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititemmaterremessa`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititemmaterremessa` AS SELECT
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaSeq`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa`,
  (Select ProdutoCod From evomodadm.tbprodutoempresa, evomodadm.tbproduto Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa And 
   ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoCod,
  (Select ProdutoDescr From evomodadm.tbprodutoempresa, evomodadm.tbproduto Where ProdutoEmpresaIdent = ProdutoEmpresaIdentFkCompraSolicitItemMaterRemessa And 
   ProdutoIdentFkProdutoEmpresa = ProdutoIdent) As ProdutoDescr,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaCod`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaDescr`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaQtde`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`UnidMedidaIdentifFkCompraSolicitItemMaterRemessa`,
  `evomodadm`.`tbunidmedida`.`UnidMedidaAbrev`,
  `evomodadm`.`tbunidmedida`.`UnidMedidaNome`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaObs`,
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemMaterRemessaDtCanc`
FROM
  `evomodmat`.`tbcomprasolicititemmaterremessa`,
     `evomodmat`.`tbcomprasolicititem`,
     `evomodadm`.`tbunidmedida`
WHERE
  `evomodmat`.`tbcomprasolicititemmaterremessa`.`CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa` = `evomodmat`.`tbcomprasolicititem`.`CompraSolicitItemIdent`
  AND `evomodmat`.`tbcomprasolicititemmaterremessa`.`UnidMedidaIdentifFkCompraSolicitItemMaterRemessa` = `evomodadm`.`tbunidmedida`.`UnidMedidaIdentif`; ;

-- Copiando estrutura para view evomodmat.vwtbcomprasolicititemmaterremessacount
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcomprasolicititemmaterremessacount`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcomprasolicititemmaterremessacount` AS SELECT Count(CompraSolicitItemIdentFkCompraSolicitItemMaterRemessa) As QtdeRegistro
From tbcomprasolicititemmaterremessa; ;

-- Copiando estrutura para view evomodmat.vwtbcrt
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcrt`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcrt` AS Select CRTCod,
CRTDescr
From tbcrt
Where CRTFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbcrtcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcrtcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcrtcountativo` AS Select Count(CRTCod) As QtdeRegistro
From tbcrt
Where CRTFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbcrtcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcrtcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcrtcountinativo` AS Select Count(CRTCod) As QtdeRegistro
From tbcrt
Where CRTFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbcst
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcst`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcst` AS Select CSTIdent,
CSTCod,
CSTDescr,
CSTTribIntegral,
CSTFlagIPI,
CSTFlagICMS,
CSTFlagPIS,
CSTFlagCOFINS,
CSTFlagSimpNac
From tbcst
Where CSTFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbcstcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcstcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcstcountativo` AS Select Count(CSTIdent) As QtdeRegistro
From tbcst
Where CSTFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbcstcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbcstcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbcstcountinativo` AS Select Count(CSTIdent) As QtdeRegistro
From tbcst
Where CSTFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbctapagar
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagar`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagar` AS SELECT
  `evomodmat`.`tbctapagar`.`CtaPagarIdent`,
  `evomodmat`.`tbctapagar`.`EmpresaIdentFkCtaPagar`,
  (SELECT `evomodadm`.`tbempresa`.`EmpresaCod` FROM `evomodadm`.`tbempresa` WHERE (`evomodadm`.`tbempresa`.`EmpresaIdent` = `evomodmat`.`tbctapagar`.`EmpresaIdentFkCtaPagar`)) AS 'EmpresaCod',
  (SELECT `evomodadm`.`tbempresa`.`EmpresaRazaoSocial` FROM `evomodadm`.`tbempresa` WHERE (`evomodadm`.`tbempresa`.`EmpresaIdent` = `evomodmat`.`tbctapagar`.`EmpresaIdentFkCtaPagar`)) AS 'EmpresaRazaoSocial',
  `evomodmat`.`tbctapagar`.`PessoaIdentFkCtaPagar`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbctapagar`.`PessoaIdentFkCtaPagar`)) AS 'PessoaCod',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbctapagar`.`PessoaIdentFkCtaPagar`)) AS 'PessoaNomeRazaoSocial',
  `evomodmat`.`tbctapagar`.`CtaPagarDtIncl`,
  `evomodmat`.`tbctapagar`.`CtaPagarDtLiquidacao`,
  `evomodmat`.`tbctapagar`.`CtaPagarDtCancel`,
  `evomodmat`.`tbctapagar`.`CtaPagarDtRenegoc`,
  `evomodmat`.`tbctapagar`.`NFEEntradaIdentFkCtaPagar`,
  `evomodmat`.`tbctapagar`.`CtaPagarOrigemDocto`,
  `evomodmat`.`tbctapagar`.`CondicaoPgtoRecebIdentFkCtaPagar`,
  (Select CondicaoPgtoRecebCod from evomodadm.tbcondicaopgtoreceb where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebCod,
  (Select CondicaoPgtoRecebDescr from evomodadm.tbcondicaopgtoreceb where CondicaoPgtoRecebIdent = CondicaoPgtoRecebIdentFkCtaPagar) As CondicaoPgtoRecebDescr,  
  `evomodmat`.`tbctapagar`.`CtaPagarQtdeParc`,
  `evomodmat`.`tbctapagar`.`CtaPagarVlrParc`,
  `evomodmat`.`tbctapagar`.`CtaPagarVlrTot`,
  `evomodmat`.`tbctapagar`.`CtaPagarMultaPerc`,
  `evomodmat`.`tbctapagar`.`CtaPagarMultaVlrTot`,
  `evomodmat`.`tbctapagar`.`CtaPagarJuroPerc`,
  `evomodmat`.`tbctapagar`.`CtaPagarJuroVlrTot`,
  `evomodmat`.`tbctapagar`.`CtaPagarDescPerc`,
  `evomodmat`.`tbctapagar`.`CtaPagarDescVlrTot`,
  `evomodmat`.`tbctapagar`.`CtaPagarPgtoVlrTot`,
  `evomodmat`.`tbctapagar`.`CtaPagarFlagStatus`,
  `evomodmat`.`tbctapagar`.`CtaPagarFlagStatusAprov`,
  `evomodmat`.`tbctapagar`.`CtaPagarObs`
FROM
  `evomodmat`.`tbctapagar`
WHERE
  (`evomodmat`.`tbctapagar`.`CtaPagarFlagAtivo` = 1); ;

-- Copiando estrutura para view evomodmat.vwtbctapagarcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagarcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagarcountativo` AS Select Count(CtaPagarIdent) As QtdeRegistro
From tbctapagar
Where CtaPagarFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbctapagarcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagarcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagarcountinativo` AS Select Count(CtaPagarIdent) As QtdeRegistro
From tbctapagar
Where CtaPagarFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbctapagaritem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagaritem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagaritem` AS SELECT
  `CtaPagarIdentFkCtaPagarItem`,
  `CtaPagarItemNrParc`,
  `CtaPagarItemCodBarra`,
  `CtaPagarItemDtVcto`,
  `CtaPagarItemDtPgto`,
  `CtaPagarItemDtCancel`,
  `CtaPagarItemDtRenegoc`,
  `CtaPagarItemVlParc`,
  `CtaPagarItemMultaPerc`,
  `CtaPagarItemJuroPerc`,
  `CtaPagarItemDescPerc`,
  `CtaPagarItemDescVlrVcto`,
  `CtaPagarItemFlagStatus`,
  `CtaPagarItemObs`
FROM
  `tbctapagaritem`
WHERE
  (`CtaPagarItemFlagAtivo` = 1) ;

-- Copiando estrutura para view evomodmat.vwtbctapagaritemcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagaritemcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagaritemcountativo` AS Select Count(CtaPagarIdentFkCtaPagarItem) As QtdeRegistro
From tbctapagaritem
Where CtaPagarItemFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbctapagaritemcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbctapagaritemcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbctapagaritemcountinativo` AS Select Count(CtaPagarIdentFkCtaPagarItem) As QtdeRegistro
From tbctapagaritem
Where CtaPagarItemFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscal
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbdoctofiscal`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbdoctofiscal` AS Select DoctoFiscalIdent,
DoctoFiscalCod,
DoctoFiscalDescr
From tbdoctofiscal
Where DoctoFiscalAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscalcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbdoctofiscalcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbdoctofiscalcountativo` AS Select Count(DoctoFiscalIdent) As QtdeRegistro
From tbdoctofiscal
Where DoctoFiscalAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbdoctofiscalcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbdoctofiscalcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbdoctofiscalcountinativo` AS Select Count(DoctoFiscalIdent) As QtdeRegistro
From tbdoctofiscal
Where DoctoFiscalAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbestoquemov
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquemov`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquemov` AS select `emov`.`ProdutoEmpresaIdentFkEstoqueMov` AS `ProdutoEmpresaIdentFkEstoqueMov`,`p`.`ProdutoCod` AS `ProdutoCod`,`p`.`ProdutoDescr` AS `ProdutoDescr`,`em`.`EmpresaCod` AS `EmpresaCod`,`em`.`EmpresaRazaoSocial` AS `EmpresaRazaoSocial`,`emov`.`EstoqueTpMovCodFkEstoqueMov` AS `EstoqueTpMovCodFkEstoqueMov`,`etm`.`EstoqueTpMovDescr` AS `EstoqueTpMovDescr`,`etm`.`EstoqueTpMovEntSai` AS `EstoqueTpMovEntSai`,`etm`.`EstoqueTpMovEntSaiDet` AS `EstoqueTpMovEntSaiDet`,`emov`.`ServerIdent` AS `ServerIdent`,`emov`.`EstoqueMovData` AS `EstoqueMovData`,`emov`.`EstoqueMovQtde` AS `EstoqueMovQtde`,`emov`.`EstoqueMovVlr` AS `EstoqueMovVlr`,`emov`.`EstoqueMovDoctoOrigTp` AS `EstoqueMovDoctoOrigTp`,`emov`.`EstoqueMovDoctoOrigNr` AS `EstoqueMovDoctoOrigNr` from ((((`evomodmat`.`tbestoquemov` `emov` join `evomodmat`.`tbestoquetpmov` `etm`) join `evomodadm`.`tbprodutoempresa` `pe`) join `evomodadm`.`tbproduto` `p`) join `evomodadm`.`tbempresa` `em`) where ((`emov`.`ProdutoEmpresaIdentFkEstoqueMov` = `pe`.`ProdutoEmpresaIdent`) and (`pe`.`ProdutoIdentFkProdutoEmpresa` = `p`.`ProdutoIdent`) and (`pe`.`EmpresaIdentFkProdutoEmpresa` = `em`.`EmpresaIdent`) and (`emov`.`EstoqueTpMovCodFkEstoqueMov` = `etm`.`EstoqueTpMovCod`)) ;

-- Copiando estrutura para view evomodmat.vwtbestoquemovcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquemovcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquemovcountativo` AS select count(`tbestoquemov`.`ProdutoEmpresaIdentFkEstoqueMov`) AS `QtdeRegistro` from `tbestoquemov` ;

-- Copiando estrutura para view evomodmat.vwtbestoquesaldo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquesaldo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquesaldo` AS select `es`.`ProdutoEmpresaIdentFkEstoqueSaldo` AS `ProdutoEmpresaIdentFkEstoqueSaldo`,`es`.`EstoqueSaldoQtdeEnt` AS `EstoqueSaldoQtdeEnt`,`es`.`EstoqueSaldoQtdeSai` AS `EstoqueSaldoQtdeSai`,`es`.`EstoqueSaldoEmpenho` AS `EstoqueSaldoEmpenho`,`es`.`EstoqueSaldoReserva` AS `EstoqueSaldoReserva`,`es`.`EstoqueSaldoAtual` AS `EstoqueSaldoAtual`,`p`.`ProdutoCod` AS `ProdutoCod`,`p`.`ProdutoDescr` AS `ProdutoDescr`,`em`.`EmpresaCod` AS `EmpresaCod`,`em`.`EmpresaRazaoSocial` AS `EmpresaRazaoSocial` from (((`evomodmat`.`tbestoquesaldo` `es` join `evomodadm`.`tbprodutoempresa` `pe`) join `evomodadm`.`tbproduto` `p`) join `evomodadm`.`tbempresa` `em`) where ((`es`.`ProdutoEmpresaIdentFkEstoqueSaldo` = `pe`.`ProdutoEmpresaIdent`) and (`pe`.`ProdutoIdentFkProdutoEmpresa` = `p`.`ProdutoIdent`) and (`pe`.`EmpresaIdentFkProdutoEmpresa` = `em`.`EmpresaIdent`)) ;

-- Copiando estrutura para view evomodmat.vwtbestoquesaldocountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquesaldocountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquesaldocountativo` AS select count(`tbestoquesaldo`.`ProdutoEmpresaIdentFkEstoqueSaldo`) AS `QtdeRegistro` from `tbestoquesaldo` ;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmov
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquetpmov`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquetpmov` AS select `tbestoquetpmov`.`EstoqueTpMovCod` AS `EstoqueTpMovCod`,`tbestoquetpmov`.`EstoqueTpMovDescr` AS `EstoqueTpMovDescr`,`tbestoquetpmov`.`EstoqueTpMovEntSai` AS `EstoqueTpMovEntSai`,`tbestoquetpmov`.`EstoqueTpMovEntSaiDet` AS `EstoqueTpMovEntSaiDet`,`tbestoquetpmov`.`EstoqueTpMovFlagCusto` AS `EstoqueTpMovFlagCusto`,`tbestoquetpmov`.`EstoqueTpMovFlagSaldo` AS `EstoqueTpMovFlagSaldo`,`tbestoquetpmov`.`EstoqueTpMovFlagAutom` AS `EstoqueTpMovFlagAutom` from `tbestoquetpmov` where isnull(`tbestoquetpmov`.`EstoqueTpMovExcluido`) ;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmovcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquetpmovcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquetpmovcountativo` AS select count(`tbestoquetpmov`.`EstoqueTpMovCod`) AS `QtdeRegistro` from `tbestoquetpmov` where isnull(`tbestoquetpmov`.`EstoqueTpMovExcluido`) ;

-- Copiando estrutura para view evomodmat.vwtbestoquetpmovcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbestoquetpmovcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbestoquetpmovcountinativo` AS select count(`tbestoquetpmov`.`EstoqueTpMovCod`) AS `QtdeRegistro` from `tbestoquetpmov` where (`tbestoquetpmov`.`EstoqueTpMovExcluido` is not null) ;

-- Copiando estrutura para view evomodmat.vwtbinventario
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbinventario`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbinventario` AS select `inv`.`InventarioIdent` AS `InventarioIdent`,`inv`.`EmpresaIdentFkInventario` AS `EmpresaIdentFkInventario`,`inv`.`InventarioDescr` AS `InventarioDescr`,`em`.`EmpresaCod` AS `EmpresaCod`,`em`.`EmpresaRazaoSocial` AS `EmpresaRazaoSocial`,`inv`.`InventarioDtGeracao` AS `InventarioDtGeracao`,`inv`.`InventarioDtExecucao` AS `InventarioDtExecucao`,`inv`.`InventarioDtEfetivacao` AS `InventarioDtEfetivacao`,`inv`.`InventarioExcluido` AS `InventarioExcluido` from (`evomodmat`.`tbinventario` `inv` join `evomodadm`.`tbempresa` `em`) where (isnull(`inv`.`InventarioExcluido`) and (`inv`.`EmpresaIdentFkInventario` = `em`.`EmpresaIdent`)) ;

-- Copiando estrutura para view evomodmat.vwtbinventarioitem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbinventarioitem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbinventarioitem` AS select `invit`.`InventarioIdentFkInventarioItem` AS `InventarioIdentFkInventarioItem`,`invit`.`ProdutoEmpresaIdentFkInventarioItem` AS `ProdutoEmpresaIdentFkInventarioItem`,`inv`.`InventarioDescr` AS `InventarioDescr`,`p`.`ProdutoCod` AS `ProdutoCod`,`p`.`ProdutoDescr` AS `ProdutoDescr`,`em`.`EmpresaCod` AS `EmpresaCod`,`em`.`EmpresaRazaoSocial` AS `EmpresaRazaoSocial`,`invit`.`EstoqueSaldoAtualFkInventarioItem` AS `EstoqueSaldoAtualFkInventarioItem`,`invit`.`InventarioItemQtdeApont` AS `InventarioItemQtdeApont` from (((((`evomodmat`.`tbinventarioitem` `invit` join `evomodmat`.`tbestoquesaldo` `es`) join `evomodmat`.`tbinventario` `inv`) join `evomodadm`.`tbprodutoempresa` `pe`) join `evomodadm`.`tbproduto` `p`) join `evomodadm`.`tbempresa` `em`) where ((`invit`.`InventarioIdentFkInventarioItem` = `inv`.`InventarioIdent`) and (`invit`.`ProdutoEmpresaIdentFkInventarioItem` = `pe`.`ProdutoEmpresaIdent`) and (`pe`.`ProdutoIdentFkProdutoEmpresa` = `p`.`ProdutoIdent`) and (`pe`.`EmpresaIdentFkProdutoEmpresa` = `em`.`EmpresaIdent`) and (`invit`.`ProdutoEmpresaIdentFkInventarioItem` = `es`.`ProdutoEmpresaIdentFkEstoqueSaldo`)) ;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmat
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnaoconformentmat`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnaoconformentmat` AS Select NaoConformEntMatIdent,
TpNaoConformidadeCodFkNaoConformEntMat,
NaoConformEntMatDtOcor,
CompraOrdemCompraIdentFkNaoConformEntMat,
CompraOrdemCompraItemSeqFkNaoConformEntMat,
NFEEntradaIdentFkNaoConformEntMat,
NFEEntradaItemSeqFkNaoConformEntMat,
NaoConformEntMatObs,
NaoConformEntMatAcao
From tbnaoconformentmat
Where NaoConformEntMatFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmatcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnaoconformentmatcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnaoconformentmatcountativo` AS Select Count(NaoConformEntMatIdent) As QtdeRegistro
From tbnaoconformentmat
Where NaoConformEntMatFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbnaoconformentmatcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnaoconformentmatcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnaoconformentmatcountinativo` AS Select Count(NaoConformEntMatIdent) As QtdeRegistro
From tbnaoconformentmat
Where NaoConformEntMatFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentrada
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentrada`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentrada` AS SELECT
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIdent`,
  `evomodmat`.`tbnfeentrada`.`EmpresaIdentFkNFEEntrada`,
  (SELECT `evomodadm`.`tbempresa`.`EmpresaCod` FROM `evomodadm`.`tbempresa` WHERE (`evomodadm`.`tbempresa`.`EmpresaIdent` = `evomodmat`.`tbnfeentrada`.`EmpresaIdentFkNFEEntrada`)) AS 'EmpresaCod',
  (SELECT `evomodadm`.`tbempresa`.`EmpresaRazaoSocial` FROM `evomodadm`.`tbempresa` WHERE (`evomodadm`.`tbempresa`.`EmpresaIdent` = `evomodmat`.`tbnfeentrada`.`EmpresaIdentFkNFEEntrada`)) AS 'EmpresaRazaoSocial',
  `evomodmat`.`tbnfeentrada`.`PessoaIdentFkNFEEntrada`,
  (SELECT `evomodadm`.`tbpessoa`.`PessoaCod` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbnfeentrada`.`PessoaIdentFkNFEEntrada`)) AS 'PessoaCod',
  (SELECT `evomodadm`.`tbpessoa`.`PessoaNomeRazaoSocial` FROM `evomodadm`.`tbpessoa` WHERE (`evomodadm`.`tbpessoa`.`PessoaIdent` = `evomodmat`.`tbnfeentrada`.`PessoaIdentFkNFEEntrada`)) AS 'PessoaNomeRazaoSocial',
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaCNPJCPF`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaInscrEstad`,
  `evomodmat`.`tbnfeentrada`.`IndicInscEstadIdentFkNFEEntrada`,
  (SELECT `evomodadm`.`tbindicinscrestad`.`IndicInscEstadCod` FROM `evomodadm`.`tbindicinscrestad` WHERE (`evomodadm`.`tbindicinscrestad`.`IndicInscEstadIdent` = `evomodmat`.`tbnfeentrada`.`IndicInscEstadIdentFkNFEEntrada`)) AS 'IndicInscEstadCod',
  (SELECT `evomodadm`.`tbindicinscrestad`.`IndicInscEstadDescr` FROM `evomodadm`.`tbindicinscrestad` WHERE (`evomodadm`.`tbindicinscrestad`.`IndicInscEstadIdent` = `evomodmat`.`tbnfeentrada`.`IndicInscEstadIdentFkNFEEntrada`)) AS 'IndicInscEstadDescr',
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaInscrMunic`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaInscrSuframa`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaNomeRazaoSocial`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaEndereco`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaEnderecoNr`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaEnderecoCompl`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaFoneDDD`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPessoaNrFone`,
  `evomodmat`.`tbnfeentrada`.`CEPIdentFkNFEEntrada`,
  (SELECT `evomodadm`.`tbcep`.`CEPCod` FROM `evomodadm`.`tbcep` WHERE (`evomodadm`.`tbcep`.`CEPIdent` = `evomodmat`.`tbnfeentrada`.`CEPIdentFkNFEEntrada`)) AS 'CEPCod',
  (SELECT `evomodadm`.`tbcep`.`CEPEndereco` FROM `evomodadm`.`tbcep` WHERE (`evomodadm`.`tbcep`.`CEPIdent` = `evomodmat`.`tbnfeentrada`.`CEPIdentFkNFEEntrada`)) AS 'CEPEndereco',
  (SELECT `evomodadm`.`tbcep`.`CEPBairro` FROM `evomodadm`.`tbcep` WHERE (`evomodadm`.`tbcep`.`CEPIdent` = `evomodmat`.`tbnfeentrada`.`CEPIdentFkNFEEntrada`)) AS 'CEPBairro',
  (SELECT CONCAT(`evomodadm`.`tbcidade`.`CidadeNome`, '/', `evomodadm`.`tbcidade`.`EstadoSiglaFkCidade`) FROM (`evomodadm`.`tbcep`
      JOIN `evomodadm`.`tbcidade`) WHERE ((`evomodadm`.`tbcep`.`CEPIdent` = `evomodmat`.`tbnfeentrada`.`CEPIdentFkNFEEntrada`) AND (`evomodadm`.`tbcidade`.`CidadeIdent` = `evomodadm`.`tbcep`.`CidadeIdentFkCEP`))) AS 'Cidade/Estado',
  `evomodmat`.`tbnfeentrada`.`DoctoFiscalIdentFkNFEEntrada`,
  (SELECT `evomodmat`.`tbdoctofiscal`.`DoctoFiscalCod` FROM `evomodmat`.`tbdoctofiscal` WHERE (`evomodmat`.`tbdoctofiscal`.`DoctoFiscalIdent` = `evomodmat`.`tbnfeentrada`.`DoctoFiscalIdentFkNFEEntrada`)) AS 'DoctoFiscalCod',
  (SELECT `evomodmat`.`tbdoctofiscal`.`DoctoFiscalDescr` FROM `evomodmat`.`tbdoctofiscal` WHERE (`evomodmat`.`tbdoctofiscal`.`DoctoFiscalIdent` = `evomodmat`.`tbnfeentrada`.`DoctoFiscalIdentFkNFEEntrada`)) AS 'DoctoFiscalDescr',
  `evomodmat`.`tbnfeentrada`.`CompraOrdemCompraIdentFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaNr`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaSerie`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaChaveEletr`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaDtEmis`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaDtEntrega`,
  `evomodmat`.`tbnfeentrada`.`CFOPIdentFkNFEEntrada`,
  (SELECT `evomodadm`.`tbcfop`.`CFOPCod` FROM `evomodadm`.`tbcfop` WHERE (`evomodadm`.`tbcfop`.`CFOPIdent` = `evomodmat`.`tbnfeentrada`.`CFOPIdentFkNFEEntrada`)) AS 'CFOPCod',
  (SELECT `evomodadm`.`tbcfop`.`CFOPDescr` FROM `evomodadm`.`tbcfop` WHERE (`evomodadm`.`tbcfop`.`CFOPIdent` = `evomodmat`.`tbnfeentrada`.`CFOPIdentFkNFEEntrada`)) AS 'CFOPDescr',
  `evomodmat`.`tbnfeentrada`.`NFESaidaIdentFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPrincFkNFEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaProdutoServVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaDescontoVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaAcrescVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaOutrosVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFreteVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaImpostoVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaSeguroVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIIVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIIVlrTot`,
  `evomodmat`.`tbnfeentrada`.`CSTIdentIPIFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIPIVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIPIVlrTot`,
  `evomodmat`.`tbnfeentrada`.`CSTIdentICMSFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaICMSVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaICMSVlrTot`,
  `evomodmat`.`tbnfeentrada`.`CSTIdentICMSSTFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaICMSSTVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaICMSSTVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPSTVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPSTVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPSTRetVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPSTRetVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPDestVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFCPDestVlrTot`,
  `evomodmat`.`tbnfeentrada`.`CSTIdentPISFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPISVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPISVlrTot`,
  `evomodmat`.`tbnfeentrada`.`CSTIdentCOFINSFkNFEEntrada`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCOFINSVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCOFINSVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaISSVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaISSVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaISSFlagRetido`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPISRetVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPISRetVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCOFINSRetVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCOFINSRetVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCSLLVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaCSLLVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIRRFVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIRRFVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaIRRFFlagRetido`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaINSSVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaINSSVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaINSSRetVlrTotBase`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaINSSRetVlrTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaVolumeTot`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPesTotBruto`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaPesTotLiquido`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaParcQtde`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaParcVlrUnit`,
  `evomodmat`.`tbnfeentrada`.`NFEEntradaFreteTp`
FROM
  `evomodmat`.`tbnfeentrada`
WHERE
  (`evomodmat`.`tbnfeentrada`.`NFEEntradaFlagAtivo` = 1) ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradacountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradacountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradacountativo` AS Select Count(NFEEntradaIdent) As QtdeRegistro
From tbnfeentrada
Where NFEEntradaFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradacountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradacountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradacountinativo` AS Select Count(NFEEntradaIdent) As QtdeRegistro
From tbnfeentrada
Where NFEEntradaFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitem
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaitem`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaitem` AS SELECT
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaIdentFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemSeq`,
  `evomodmat`.`tbnfeentradaitem`.`ProdutoEmpresaIdentFkNFEEntradaItem`,
  (SELECT `evomodadm`.`tbproduto`.`ProdutoCod` FROM (`evomodadm`.`tbproduto`
      JOIN `evomodadm`.`tbprodutoempresa`) WHERE ((`evomodadm`.`tbprodutoempresa`.`ProdutoEmpresaIdent` = `evomodmat`.`tbnfeentradaitem`.`ProdutoEmpresaIdentFkNFEEntradaItem`) AND (`evomodadm`.`tbproduto`.`ProdutoIdent` = `evomodadm`.`tbprodutoempresa`.`ProdutoIdentFkProdutoEmpresa`))) AS 'ProdutoCod',
  (SELECT `evomodadm`.`tbproduto`.`ProdutoDescr` FROM (`evomodadm`.`tbproduto`
      JOIN `evomodadm`.`tbprodutoempresa`) WHERE ((`evomodadm`.`tbprodutoempresa`.`ProdutoEmpresaIdent` = `evomodmat`.`tbnfeentradaitem`.`ProdutoEmpresaIdentFkNFEEntradaItem`) AND (`evomodadm`.`tbproduto`.`ProdutoIdent` = `evomodadm`.`tbprodutoempresa`.`ProdutoIdentFkProdutoEmpresa`))) AS 'ProdutoDescr',
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemProdutoFornecCod`,
  `evomodmat`.`tbnfeentradaitem`.`ClassifServicoCodFkNFEEntradaItem`,
  (SELECT `evomodmat`.`tbclassifservico`.`ClassifServicoCod` FROM `evomodmat`.`tbclassifservico` WHERE (`evomodmat`.`tbclassifservico`.`ClassifServicoCod` = `evomodmat`.`tbnfeentradaitem`.`ClassifServicoCodFkNFEEntradaItem`)) AS 'ClassifServicoCod',
  (SELECT `evomodmat`.`tbclassifservico`.`ClassifServicoDescr` FROM `evomodmat`.`tbclassifservico` WHERE (`evomodmat`.`tbclassifservico`.`ClassifServicoCod` = `evomodmat`.`tbnfeentradaitem`.`ClassifServicoCodFkNFEEntradaItem`)) AS 'ClassifServicoDescr',
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemProdutoServicoFornecDescr`,
  `evomodmat`.`tbnfeentradaitem`.`NCMIdentFkNFEEntradaItem`,
  (SELECT `evomodadm`.`tbncm`.`NCMCod` FROM `evomodadm`.`tbncm` WHERE (`evomodadm`.`tbncm`.`NCMIdent` = `evomodmat`.`tbnfeentradaitem`.`NCMIdentFkNFEEntradaItem`)) AS 'NCMCod',
  (SELECT `evomodadm`.`tbncm`.`NCMDescr` FROM `evomodadm`.`tbncm` WHERE (`evomodadm`.`tbncm`.`NCMIdent` = `evomodmat`.`tbnfeentradaitem`.`NCMIdentFkNFEEntradaItem`)) AS 'NCMDescr',
  `evomodmat`.`tbnfeentradaitem`.`CFOPIdentFkNFEEntradaItem`,
  (SELECT `evomodadm`.`tbcfop`.`CFOPCod` FROM `evomodadm`.`tbcfop` WHERE (`evomodadm`.`tbcfop`.`CFOPIdent` = `evomodmat`.`tbnfeentradaitem`.`CFOPIdentFkNFEEntradaItem`)) AS 'CFOPCod',
  (SELECT `evomodadm`.`tbcfop`.`CFOPDescr` FROM `evomodadm`.`tbcfop` WHERE (`evomodadm`.`tbcfop`.`CFOPIdent` = `evomodmat`.`tbnfeentradaitem`.`CFOPIdentFkNFEEntradaItem`)) AS 'CFOPDescr',
  `evomodmat`.`tbnfeentradaitem`.`OrigMercadoriaCodFkNFEEntradaItem`,
  (SELECT `evomodmat`.`tborigmercadoria`.`OrigMercadoriaDescr` FROM `evomodmat`.`tborigmercadoria` WHERE (`evomodmat`.`tborigmercadoria`.`OrigMercadoriaCod` = `evomodmat`.`tbnfeentradaitem`.`OrigMercadoriaCodFkNFEEntradaItem`)) AS 'OrigMercadoriaDescr',
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`UnidMedidaIdentifFkNFEEntradaItem`,
  (SELECT `evomodadm`.`tbunidmedida`.`UnidMedidaAbrev` FROM `evomodadm`.`tbunidmedida` WHERE (`evomodadm`.`tbunidmedida`.`UnidMedidaIdentif` = `evomodmat`.`tbnfeentradaitem`.`UnidMedidaIdentifFkNFEEntradaItem`)) AS 'UnidMedidaAbrev',
  (SELECT `evomodadm`.`tbunidmedida`.`UnidMedidaNome` FROM `evomodadm`.`tbunidmedida` WHERE (`evomodadm`.`tbunidmedida`.`UnidMedidaIdentif` = `evomodmat`.`tbnfeentradaitem`.`UnidMedidaIdentifFkNFEEntradaItem`)) AS 'UnidMedidaNome',
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemUnidMedida`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemQtde`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemProdutoServVlrUnit`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemDescontoVlr`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemAcrescVlr`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemOutrosVlr`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFreteVlr`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemSeguroVlr`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemProdutoServVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIIVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIIPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIIVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentIPIFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIPIVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIPIPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIPIVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentICMSFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentICMSSTFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSSTVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSSTPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemICMSSTVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTRetVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTRetPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPSTRetVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPDestVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPDestPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFCPDestVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentPISFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`CSTIdentCOFINSFkNFEEntradaItem`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemISSVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemISSPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemISSVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemISSFlagRetido`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISRetVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISRetPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPISRetVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSRetVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSRetPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCOFINSRetVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCSLLVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCSLLPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemCSLLVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIRRFVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIRRFPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIRRFVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemIRRFFlagRetido`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSRetVlrTotBase`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSRetPerc`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemINSSRetVlrTot`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPesBruto`,
  `evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemPesLiquido`
FROM
  `evomodmat`.`tbnfeentradaitem`
WHERE
  (`evomodmat`.`tbnfeentradaitem`.`NFEEntradaItemFlagAtivo` = 1) ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitemcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaitemcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaitemcountativo` AS Select Count(NFEEntradaIdentFkNFEEntradaItem) As QtdeRegistro
From tbnfeentradaitem
Where NFEEntradaItemFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaitemcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaitemcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaitemcountinativo` AS Select Count(NFEEntradaIdentFkNFEEntradaItem) As QtdeRegistro
From tbnfeentradaitem
Where NFEEntradaItemFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxml
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaxml`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaxml` AS SELECT
  `NFEEntradaIdentFkNFEEntradaXML`, `NFEEntradaXMLConteudo`
FROM
  `tbnfeentradaxml`
WHERE
  (`NFEEntradaXMLFlagAtivo` = 1) ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxmlcountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaxmlcountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaxmlcountativo` AS Select Count(NFEEntradaIdentFkNFEEntradaXML) As QtdeRegistro
From tbnfeentradaxml
Where NFEEntradaXMLFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbnfeentradaxmlcountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbnfeentradaxmlcountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbnfeentradaxmlcountinativo` AS Select Count(NFEEntradaIdentFkNFEEntradaXML) As QtdeRegistro
From tbnfeentradaxml
Where NFEEntradaXMLFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtborigmercadoria
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtborigmercadoria`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtborigmercadoria` AS Select OrigMercadoriaCod,
OrigMercadoriaDescr
From tborigmercadoria
Where OrigMercadoriaFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtborigmercadoriacountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtborigmercadoriacountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtborigmercadoriacountativo` AS Select Count(OrigMercadoriaCod) As QtdeRegistro
From tborigmercadoria
Where OrigMercadoriaFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtborigmercadoriacountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtborigmercadoriacountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtborigmercadoriacountinativo` AS Select Count(OrigMercadoriaCod) As QtdeRegistro
From tborigmercadoria
Where OrigMercadoriaFlagAtivo = 0; ;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidade
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbtpnaoconformidade`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbtpnaoconformidade` AS SELECT
  `TpNaoConformidadeCod`, `TpNaoConformidadeDescr`
FROM
  `tbtpnaoconformidade`
WHERE
  (`TpNaoConformidadeFlagAtivo` = 1) ;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidadecountativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbtpnaoconformidadecountativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbtpnaoconformidadecountativo` AS Select Count(TpNaoConformidadeCod) As QtdeRegistro
From tbtpnaoconformidade
Where TpNaoConformidadeFlagAtivo = 1; ;

-- Copiando estrutura para view evomodmat.vwtbtpnaoconformidadecountinativo
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vwtbtpnaoconformidadecountinativo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vwtbtpnaoconformidadecountinativo` AS Select Count(TpNaoConformidadeCod) As QtdeRegistro
From tbtpnaoconformidade
Where TpNaoConformidadeFlagAtivo = 0; ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
