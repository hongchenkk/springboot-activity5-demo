/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.5.51 : Database - springboot-activity5-demo-activity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot-activity5-demo-activity` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot-activity5-demo-activity`;

/*Table structure for table `act_evt_log` */

DROP TABLE IF EXISTS `act_evt_log`;

CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_evt_log` */

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('2',1,'processes/MyProcess.bpmn','1','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"210.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"290.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"590.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"740.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"245.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"290.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"395.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"440.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"545.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"590.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"695.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"740.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2502',1,'processes/MyProcess.bpmn','2501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"210.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"290.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"590.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"740.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"245.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"290.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"395.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"440.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"545.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"590.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"695.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"740.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('2503',1,'processes/MyProcess.myProcess.png','2501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\01\0\0\0T/y\0\0IDATxÚíİMl•U\Zp.\\¸páÂ…“™…‹YÌÂ…‹Y°033ã‚rm)±FÚ`­‘‘:ÒĞP\Z!™&P‰1ÑHüÃ¤¢d€™ò%¤CP ¡‚ È´…ÖŠ¢ |¼sNímnE*ôŞ÷öş~É°·\n©ÿ{Ÿó¼_gÖ,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜FI’ÜqâÄ‰\rW¶oß´··«Ô¶mÛ’İ»wªR®”\\É•\\*±!ïÙ³\'éïïO.^¼¨RTÉÇü}hĞsäJÉ•\\É\0©èiÈ©nÌÛÛÛÈ•’+¹’+\0R#^ ù¥»BS¾$WJ®äJ®\0Hx=«Æ—ú¦œÈ•’+¹’+\0Š®)ÿø]_rbß›I×¶å#¿¦ijÊr%Wr¥\0†ˆkê‡³=Éá6$ÿùÇâq¿_Ó85e¹’+¹R†\0CÄ¸:ÕõÑ5\r9[ÿíÚ¤qjÊr%Wr¥\0†ˆñudç_&mÊñ5SS–+¹’+eˆ\00DŒ«Ãí“6åøšÆ©)Ë•\\É•*…!¢¼¼üL&óX°*ÔÎP§B%9Õjoø×Ã÷.¿¿ßJf€ÆÆÆ»[[[W455íohh¨­­7oŞØ›¿¦¦æò/¼pvùòå^}õÕ×–.]ú+C„¦¬)Ë•\\É•*í!bîÜ¹‡Áàƒ°V8?ahø¹º‡ŠPU³gÏ¾ÃJŠLssó–-[öYeeåÕ0<$7nL<8²ëéåË—“¬ÁÁÁ¤»»;Ùºuk²zõê$~*N…§f¦¾ùo¦)Ç§›LÖ”ãk\Z§¦,Wr%Wj&añÿ`¨}S&«#ñì„UE‹İÿâ‹/X°`ÁÕ\r6Œ	S1<<œttt$K—.½Z[[{ºººú¥8DëX;iS¯iœš²\\É•\\©™6D„ÿÊÑ3	cƒ@¼zaåÊ•I\\Stuu%}}}ÉùóçÇÖñàäÑ£G“¶¶¶‘ï›?şõ†‰-á¿sŸU\Z¤TCCCİ“O>yé­·ŞJ†††’[µoß¾$Ã.ÜXVVvW)\rƒ=“ÃÿZví¥ákñ5SS–+¹’+5S†ˆØãGïw[øWUU%o¿ıöÈ0qı¯~X´hÑ¸A\"“Éœ\r¿Î¶Zƒ”©¯¯íé§Ÿ¾üÉ\'Ÿ$·Ó¹sç’ÖÖÖáğaÒ>dî-•!\"Ö—û×_Ó”ã×4MMY®äJ®ÔL\"Fˆ=¹şxt<ãp+â¥Ó›7oNrïÃõC¨9Vm¢¢®®îÊTLÅ»ï¾{¥²²òûğaóë’\".\\Hı{İµ—„¯Å×4NMY®äJ®ÔL\"&ˆ—-åŞ;y«zzz’Å‹çç3™Ì#VoP`ñ¦xb:ˆ¬?üğB$zŠıŒÄÏ5å¸ÃëÑ5“^c_³¬¦,Wr%WªØ‡ˆÑ{ ÆøÓ²~ˆ÷PÄû%rÏH„?û«8(xu¼âÀI¾¼óÎ;½ó“›&mÊ.$}Çv$‡¶şyÒ†œ­ø=ñ{åÓ”åJ®äJ®ŠôÄƒ¹7QÇ3Ó)Ş„İÜÜ<n‰¸…Õ@}}ı¡xu¾=ûì³½™L¦n&\r?w4ÏQ>MY®äJ®ÔL\Z\"Bÿ,÷ˆÛy	Óî³¬®®Î½Ùú¯Vsgqˆø×Ûñ¦_p}ãåŠŠŠo‹õÂõšòÍÍ»ÑQ>TS–+¹’+¹*q#¹Ü§0İêMÔS\03áFëû­ê âFrñ™Ì…òòË/wÅk)gÊñKr¶4RMY®äJ®äªX„…û¦ìB>>Æ5ßâæ¶9ƒÄ*«:È“ÆÆÆ»ãÎÒSİHî6ŸèCÄ7ÅxoÄÍ>2QiÊr%Wr¥fZ®âUñ	IÙäòñ`–‰?>nÿˆªªª»­î Ö­[·2^¿XhO=õÔçáÃèwš²²Ø“+¹’+¹*aÑşXvŸ˜T(¹›Ñ…µÄ£VwMMMû7mÚTğ!¢¥¥¥#M—4…¿KûÍ5š²¦,Wr%WªTs/Ê×™näı÷ßwƒ5ä[CCÃÀÁƒ>Dtvvˆ›Ô¤åç’sD£=| =¤)kÊr¥äJÉÕ5ß3¶¹\\www!×¹g\"Ú­î jkk‡q\rãD§OŸî‹ÏyNÛ‡gNm¹ŞMYS–+¹’+Uª¹\n_;•}=ŸOešèë¯¿·g„ÕäA¼*Ïs¾ñÍŸâÏ±#¹¢š²¦,Wr%WªTs•ûõ¸“t¡ÄÍçrÿ.Vw§‰´(†!\"÷ˆL<½«)kÊr%Wr¥J5W¹ÿœ†5„!JøLD±•¦œş’+%Wr%WÓ_ÎD@‰IË=½)¿\'\"[û2™Ì#Ù=-\nÙ”Ãİ*–×Ù“+¹’+¹*î\\¹\'JØK/½ôMWWWZÎ´\'ÅãšqV¡›ò¾–ö×5e¹’+¹’«âÎ•§3A	‹ûDlŞ¼9ûD¤i»úœÍ½qãšÉvÓÖ”5e¹’+¹’«RÍUxmM\Zö‰ˆvÎßwÕäAkkëêæææ‚uuu‡ÃvŠ><¯{$OSÖ”åJ®äJ®äê\'a¸¨LÃÕ‹/Î\"æXİA„7Ş½?şøÕ¡¡¡BîÑ>ˆ~¬ªªº³Ø~~š²¦,Wr%WrUª¹š7oŞ}aÑ~>.ŞãƒZÎ;Wèû!Î‡õÄ=Vw\'K–,ùb×®]\"Ö®]»?“É¼^Œ?;MYS–+¹’+¹*å\\åŞÑÖÖ–÷5Äºuër‡ˆ7­ê êëëËŸşù+…xÔëĞĞĞ¥ŠŠŠoãÑC„¦¬)Ë•\\É•\\—ÜKšjkkóú¨×‘3 Ù??¬\'~kUyŞø§÷ìÙ“÷!¢©©é`1ßå‘‰™(Wr%WrUÊ¹\Z}Ôë¡ìB~ãÆy[C,_¾|l€Èd2XÍAÔÔÔü¾ººzøìÙ³y{óúé§ÇÊËË¿(++»Ë¡4e¹’+¹’«ö¢Ü(-÷lD<3ğÕW_Mû\Z\">Y2ç2¦KaˆøÕÈÂ…ÿŞÒÒr)—5õööÅË˜æÎûp1ÿÌ4eMY®äJ®T©QXÈoÊ.êŸ{î¹d:ØÒÑÑ1î2¦P­â €â)É\'xâËõë×Oç\0Ñßß¹ªªª·¼¼|Q±ÿÌ4eMY®äJ®”!bÖ¬²²²{Ãb~ »°–\"¬!ÜL\ri6şüÁ¶¶¶‹Óubt€X9~^š²¦,Wr%WÊñ“L&óP¨³Ù~¼gappğ¶^Â4áÄ–b¾$\Zfœø¤¤ÊÊÊ7Şxãôí¾\"^Â4Î@hÊš²\\É•\\)¹ºîÁÈG³{GÄŠg\r:;;où)LË–-Ëæ3aÁÿQ|jÓÉ“\'/Üêc\\ãS˜âMÔÅ~„¦¬)Ë•’+%W7{}Xäÿ»è;ZwwwOy#¹¸Ä„³#—0  å2™L]&Î¬X±âĞñãÇ§tf\"îDİÚÚº/}oøu3ñ\r¯)kÊr%Wr¥×=ù@èı§&,ş“gy&yï½÷’øXùø§ì}ñ×84Ä³6lH–,Y2qpy\n“›¨¡ˆÄÅxÓ6ÆƒšššÏ_yå•½;wîü4¼ÙOæ\rƒƒƒgÂ›ÿ@KKKG]]İáğòcÜ‰ºX7’Ó”5e¹Rr¥äêÖÖñÈ‰g%~IÅ} <ÆŠûÌÄC£Å–P_È¾ÉûBí\rµ*Ôìªªª;gúÏCSÖ”åJ®äJ\"n,Lë‚¦Ü›®o²â½oÚ‰\Z0D(MY®äJ®T‰\rYñàâèı«FFN¼Ü©¯¼¼¼=üº&Åû3­4\0C„Ò”åJ®äJ•ğ€¦¬)Ë•\\É•’+\04eMY®”\\)¹@SV{J®äJ®\0Ğ”•Å’+¹’+\0ŠØöíÛ5¾t×ùĞ”/É•’+¹’+\0Rc÷îİ}ıııš_J«§§ço¡)‘+%Wr%W\0¤Æ;ş´k×®ïÎœ9ó?M0]GôbCŞ¶mÛÉPsäJÉ•\\É\0©>ôiooßOCÇëYU**ş¿8RÌ\rY®äJ®ä\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÆÿ/æy\'ğ1½\0\0\0\0IEND®B`‚',1),('3',1,'processes/MyProcess.myProcess.png','1','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\01\0\0\0T/y\0\0IDATxÚíİMl•U\Zp.\\¸páÂ…“™…‹YÌÂ…‹Y°033ã‚rm)±FÚ`­‘‘:ÒĞP\Z!™&P‰1ÑHüÃ¤¢d€™ò%¤CP ¡‚ È´…ÖŠ¢ |¼sNímnE*ôŞ÷öş~É°·\n©ÿ{Ÿó¼_gÖ,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜FI’ÜqâÄ‰\rW¶oß´··«Ô¶mÛ’İ»wªR®”\\É•\\*±!ïÙ³\'éïïO.^¼¨RTÉÇü}hĞsäJÉ•\\É\0©èiÈ©nÌÛÛÛÈ•’+¹’+\0R#^ ù¥»BS¾$WJ®äJ®\0Hx=«Æ—ú¦œÈ•’+¹’+\0Š®)ÿø]_rbß›I×¶å#¿¦ijÊr%Wr¥\0†ˆkê‡³=Éá6$ÿùÇâq¿_Ó85e¹’+¹R†\0CÄ¸:ÕõÑ5\r9[ÿíÚ¤qjÊr%Wr¥\0†ˆñudç_&mÊñ5SS–+¹’+eˆ\00DŒ«Ãí“6åøšÆ©)Ë•\\É•*…!¢¼¼üL&óX°*ÔÎP§B%9Õjoø×Ã÷.¿¿ßJf€ÆÆÆ»[[[W455íohh¨­­7oŞØ›¿¦¦æò/¼pvùòå^}õÕ×–.]ú+C„¦¬)Ë•\\É•*í!bîÜ¹‡Áàƒ°V8?ahø¹º‡ŠPU³gÏ¾ÃJŠLssó–-[öYeeåÕ0<$7nL<8²ëéåË—“¬ÁÁÁ¤»»;Ùºuk²zõê$~*N…§f¦¾ùo¦)Ç§›LÖ”ãk\Z§¦,Wr%Wj&añÿ`¨}S&«#ñì„UE‹İÿâ‹/X°`ÁÕ\r6Œ	S1<<œttt$K—.½Z[[{ºººú¥8DëX;iS¯iœš²\\É•\\©™6D„ÿÊÑ3	cƒ@¼zaåÊ•I\\Stuu%}}}ÉùóçÇÖñàäÑ£G“¶¶¶‘ï›?şõ†‰-á¿sŸU\Z¤TCCCİ“O>yé­·ŞJ†††’[µoß¾$Ã.ÜXVVvW)\rƒ=“ÃÿZví¥ákñ5SS–+¹’+5S†ˆØãGïw[øWUU%o¿ıöÈ0qı¯~X´hÑ¸A\"“Éœ\r¿Î¶Zƒ”©¯¯íé§Ÿ¾üÉ\'Ÿ$·Ó¹sç’ÖÖÖáğaÒ>dî-•!\"Ö—û×_Ó”ã×4MMY®äJ®ÔL\"Fˆ=¹şxt<ãp+â¥Ó›7oNrïÃõC¨9Vm¢¢®®îÊTLÅ»ï¾{¥²²òûğaóë’\".\\Hı{İµ—„¯Å×4NMY®äJ®ÔL\"&ˆ—-åŞ;y«zzz’Å‹çç3™Ì#VoP`ñ¦xb:ˆ¬?üğB$zŠıŒÄÏ5å¸ÃëÑ5“^c_³¬¦,Wr%WªØ‡ˆÑ{ ÆøÓ²~ˆ÷PÄû%rÏH„?û«8(xu¼âÀI¾¼óÎ;½ó“›&mÊ.$}Çv$‡¶şyÒ†œ­ø=ñ{åÓ”åJ®äJ®ŠôÄƒ¹7QÇ3Ó)Ş„İÜÜ<n‰¸…Õ@}}ı¡xu¾=ûì³½™L¦n&\r?w4ÏQ>MY®äJ®ÔL\Z\"Bÿ,÷ˆÛy	Óî³¬®®Î½Ùú¯Vsgqˆø×Ûñ¦_p}ãåŠŠŠo‹õÂõšòÍÍ»ÑQ>TS–+¹’+¹*q#¹Ü§0İêMÔS\03áFëû­ê âFrñ™Ì…òòË/wÅk)gÊñKr¶4RMY®äJ®äªX„…û¦ìB>>Æ5ßâæ¶9ƒÄ*«:È“ÆÆÆ»ãÎÒSİHî6ŸèCÄ7ÅxoÄÍ>2QiÊr%Wr¥fZ®âUñ	IÙäòñ`–‰?>nÿˆªªª»­î Ö­[·2^¿XhO=õÔçáÃèwš²²Ø“+¹’+¹*aÑşXvŸ˜T(¹›Ñ…µÄ£VwMMMû7mÚTğ!¢¥¥¥#M—4…¿KûÍ5š²¦,Wr%WªTs/Ê×™näı÷ßwƒ5ä[CCÃÀÁƒ>Dtvvˆ›Ô¤åç’sD£=| =¤)kÊr¥äJÉÕ5ß3¶¹\\www!×¹g\"Ú­î jkk‡q\rãD§OŸî‹ÏyNÛ‡gNm¹ŞMYS–+¹’+Uª¹\n_;•}=ŸOešèë¯¿·g„ÕäA¼*Ïs¾ñÍŸâÏ±#¹¢š²¦,Wr%WªTs•ûõ¸“t¡ÄÍçrÿ.Vw§‰´(†!\"÷ˆL<½«)kÊr%Wr¥J5W¹ÿœ†5„!JøLD±•¦œş’+%Wr%WÓ_ÎD@‰IË=½)¿\'\"[û2™Ì#Ù=-\nÙ”Ãİ*–×Ù“+¹’+¹*î\\¹\'JØK/½ôMWWWZÎ´\'ÅãšqV¡›ò¾–ö×5e¹’+¹’«âÎ•§3A	‹ûDlŞ¼9ûD¤i»úœÍ½qãšÉvÓÖ”5e¹’+¹’«RÍUxmM\Zö‰ˆvÎßwÕäAkkëêæææ‚uuu‡ÃvŠ><¯{$OSÖ”åJ®äJ®äê\'a¸¨LÃÕ‹/Î\"æXİA„7Ş½?şøÕ¡¡¡BîÑ>ˆ~¬ªªº³Ø~~š²¦,Wr%WrUª¹š7oŞ}aÑ~>.ŞãƒZÎ;Wèû!Î‡õÄ=Vw\'K–,ùb×®]\"Ö®]»?“É¼^Œ?;MYS–+¹’+¹*å\\åŞÑÖÖ–÷5Äºuër‡ˆ7­ê êëëËŸşù+…xÔëĞĞĞ¥ŠŠŠoãÑC„¦¬)Ë•\\É•\\—ÜKšjkkóú¨×‘3 Ù??¬\'~kUyŞø§÷ìÙ“÷!¢©©é`1ßå‘‰™(Wr%WrUÊ¹\Z}Ôë¡ìB~ãÆy[C,_¾|l€Èd2XÍAÔÔÔü¾ººzøìÙ³y{óúé§ÇÊËË¿(++»Ë¡4e¹’+¹’«ö¢Ü(-÷lD<3ğÕW_Mû\Z\">Y2ç2¦KaˆøÕÈÂ…ÿŞÒÒr)—5õööÅË˜æÎûp1ÿÌ4eMY®äJ®T©QXÈoÊ.êŸ{î¹d:ØÒÑÑ1î2¦P­â €â)É\'xâËõë×Oç\0Ñßß¹ªªª·¼¼|Q±ÿÌ4eMY®äJ®”!bÖ¬²²²{Ãb~ »°–\"¬!ÜL\ri6şüÁ¶¶¶‹Óubt€X9~^š²¦,Wr%WÊñ“L&óP¨³Ù~¼gappğ¶^Â4áÄ–b¾$\Zfœø¤¤ÊÊÊ7Şxãôí¾\"^Â4Î@hÊš²\\É•\\)¹ºîÁÈG³{GÄŠg\r:;;où)LË–-Ëæ3aÁÿQ|jÓÉ“\'/Üêc\\ãS˜âMÔÅ~„¦¬)Ë•’+%W7{}Xäÿ»è;ZwwwOy#¹¸Ä„³#—0  å2™L]&Î¬X±âĞñãÇ§tf\"îDİÚÚº/}oøu3ñ\r¯)kÊr%Wr¥×=ù@èı§&,ş“gy&yï½÷’øXùø§ì}ñ×84Ä³6lH–,Y2qpy\n“›¨¡ˆÄÅxÓ6ÆƒšššÏ_yå•½;wîü4¼ÙOæ\rƒƒƒgÂ›ÿ@KKKG]]İáğòcÜ‰ºX7’Ó”5e¹Rr¥äêÖÖñÈ‰g%~IÅ} <ÆŠûÌÄC£Å–P_È¾ÉûBí\rµ*Ôìªªª;gúÏCSÖ”åJ®äJ\"n,Lë‚¦Ü›®o²â½oÚ‰\Z0D(MY®äJ®T‰\rYñàâèı«FFN¼Ü©¯¼¼¼=üº&Åû3­4\0C„Ò”åJ®äJ•ğ€¦¬)Ë•\\É•’+\04eMY®”\\)¹@SV{J®äJ®\0Ğ”•Å’+¹’+\0ŠØöíÛ5¾t×ùĞ”/É•’+¹’+\0Rc÷îİ}ıııš_J«§§ço¡)‘+%Wr%W\0¤Æ;ş´k×®ïÎœ9ó?M0]GôbCŞ¶mÛÉPsäJÉ•\\É\0©>ôiooßOCÇëYU**ş¿8RÌ\rY®äJ®ä\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÆÿ/æy\'ğ1½\0\0\0\0IEND®B`‚',1),('5002',1,'processes/MyProcess.bpmn','5001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"210.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"290.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"590.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"740.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"245.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"290.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"395.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"440.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"545.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"590.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"695.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"740.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('5003',1,'processes/MyProcess.myProcess.png','5001','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\01\0\0\0T/y\0\0IDATxÚíİMl•U\Zp.\\¸páÂ…“™…‹YÌÂ…‹Y°033ã‚rm)±FÚ`­‘‘:ÒĞP\Z!™&P‰1ÑHüÃ¤¢d€™ò%¤CP ¡‚ È´…ÖŠ¢ |¼sNímnE*ôŞ÷öş~É°·\n©ÿ{Ÿó¼_gÖ,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜FI’ÜqâÄ‰\rW¶oß´··«Ô¶mÛ’İ»wªR®”\\É•\\*±!ïÙ³\'éïïO.^¼¨RTÉÇü}hĞsäJÉ•\\É\0©èiÈ©nÌÛÛÛÈ•’+¹’+\0R#^ ù¥»BS¾$WJ®äJ®\0Hx=«Æ—ú¦œÈ•’+¹’+\0Š®)ÿø]_rbß›I×¶å#¿¦ijÊr%Wr¥\0†ˆkê‡³=Éá6$ÿùÇâq¿_Ó85e¹’+¹R†\0CÄ¸:ÕõÑ5\r9[ÿíÚ¤qjÊr%Wr¥\0†ˆñudç_&mÊñ5SS–+¹’+eˆ\00DŒ«Ãí“6åøšÆ©)Ë•\\É•*…!¢¼¼üL&óX°*ÔÎP§B%9Õjoø×Ã÷.¿¿ßJf€ÆÆÆ»[[[W455íohh¨­­7oŞØ›¿¦¦æò/¼pvùòå^}õÕ×–.]ú+C„¦¬)Ë•\\É•*í!bîÜ¹‡Áàƒ°V8?ahø¹º‡ŠPU³gÏ¾ÃJŠLssó–-[öYeeåÕ0<$7nL<8²ëéåË—“¬ÁÁÁ¤»»;Ùºuk²zõê$~*N…§f¦¾ùo¦)Ç§›LÖ”ãk\Z§¦,Wr%Wj&añÿ`¨}S&«#ñì„UE‹İÿâ‹/X°`ÁÕ\r6Œ	S1<<œttt$K—.½Z[[{ºººú¥8DëX;iS¯iœš²\\É•\\©™6D„ÿÊÑ3	cƒ@¼zaåÊ•I\\Stuu%}}}ÉùóçÇÖñàäÑ£G“¶¶¶‘ï›?şõ†‰-á¿sŸU\Z¤TCCCİ“O>yé­·ŞJ†††’[µoß¾$Ã.ÜXVVvW)\rƒ=“ÃÿZví¥ákñ5SS–+¹’+5S†ˆØãGïw[øWUU%o¿ıöÈ0qı¯~X´hÑ¸A\"“Éœ\r¿Î¶Zƒ”©¯¯íé§Ÿ¾üÉ\'Ÿ$·Ó¹sç’ÖÖÖáğaÒ>dî-•!\"Ö—û×_Ó”ã×4MMY®äJ®ÔL\"Fˆ=¹şxt<ãp+â¥Ó›7oNrïÃõC¨9Vm¢¢®®îÊTLÅ»ï¾{¥²²òûğaóë’\".\\Hı{İµ—„¯Å×4NMY®äJ®ÔL\"&ˆ—-åŞ;y«zzz’Å‹çç3™Ì#VoP`ñ¦xb:ˆ¬?üğB$zŠıŒÄÏ5å¸ÃëÑ5“^c_³¬¦,Wr%WªØ‡ˆÑ{ ÆøÓ²~ˆ÷PÄû%rÏH„?û«8(xu¼âÀI¾¼óÎ;½ó“›&mÊ.$}Çv$‡¶şyÒ†œ­ø=ñ{åÓ”åJ®äJ®ŠôÄƒ¹7QÇ3Ó)Ş„İÜÜ<n‰¸…Õ@}}ı¡xu¾=ûì³½™L¦n&\r?w4ÏQ>MY®äJ®ÔL\Z\"Bÿ,÷ˆÛy	Óî³¬®®Î½Ùú¯Vsgqˆø×Ûñ¦_p}ãåŠŠŠo‹õÂõšòÍÍ»ÑQ>TS–+¹’+¹*q#¹Ü§0İêMÔS\03áFëû­ê âFrñ™Ì…òòË/wÅk)gÊñKr¶4RMY®äJ®äªX„…û¦ìB>>Æ5ßâæ¶9ƒÄ*«:È“ÆÆÆ»ãÎÒSİHî6ŸèCÄ7ÅxoÄÍ>2QiÊr%Wr¥fZ®âUñ	IÙäòñ`–‰?>nÿˆªªª»­î Ö­[·2^¿XhO=õÔçáÃèwš²²Ø“+¹’+¹*aÑşXvŸ˜T(¹›Ñ…µÄ£VwMMMû7mÚTğ!¢¥¥¥#M—4…¿KûÍ5š²¦,Wr%WªTs/Ê×™näı÷ßwƒ5ä[CCÃÀÁƒ>Dtvvˆ›Ô¤åç’sD£=| =¤)kÊr¥äJÉÕ5ß3¶¹\\www!×¹g\"Ú­î jkk‡q\rãD§OŸî‹ÏyNÛ‡gNm¹ŞMYS–+¹’+Uª¹\n_;•}=ŸOešèë¯¿·g„ÕäA¼*Ïs¾ñÍŸâÏ±#¹¢š²¦,Wr%WªTs•ûõ¸“t¡ÄÍçrÿ.Vw§‰´(†!\"÷ˆL<½«)kÊr%Wr¥J5W¹ÿœ†5„!JøLD±•¦œş’+%Wr%WÓ_ÎD@‰IË=½)¿\'\"[û2™Ì#Ù=-\nÙ”Ãİ*–×Ù“+¹’+¹*î\\¹\'JØK/½ôMWWWZÎ´\'ÅãšqV¡›ò¾–ö×5e¹’+¹’«âÎ•§3A	‹ûDlŞ¼9ûD¤i»úœÍ½qãšÉvÓÖ”5e¹’+¹’«RÍUxmM\Zö‰ˆvÎßwÕäAkkëêæææ‚uuu‡ÃvŠ><¯{$OSÖ”åJ®äJ®äê\'a¸¨LÃÕ‹/Î\"æXİA„7Ş½?şøÕ¡¡¡BîÑ>ˆ~¬ªªº³Ø~~š²¦,Wr%WrUª¹š7oŞ}aÑ~>.ŞãƒZÎ;Wèû!Î‡õÄ=Vw\'K–,ùb×®]\"Ö®]»?“É¼^Œ?;MYS–+¹’+¹*å\\åŞÑÖÖ–÷5Äºuër‡ˆ7­ê êëëËŸşù+…xÔëĞĞĞ¥ŠŠŠoãÑC„¦¬)Ë•\\É•\\—ÜKšjkkóú¨×‘3 Ù??¬\'~kUyŞø§÷ìÙ“÷!¢©©é`1ßå‘‰™(Wr%WrUÊ¹\Z}Ôë¡ìB~ãÆy[C,_¾|l€Èd2XÍAÔÔÔü¾ººzøìÙ³y{óúé§ÇÊËË¿(++»Ë¡4e¹’+¹’«ö¢Ü(-÷lD<3ğÕW_Mû\Z\">Y2ç2¦KaˆøÕÈÂ…ÿŞÒÒr)—5õööÅË˜æÎûp1ÿÌ4eMY®äJ®T©QXÈoÊ.êŸ{î¹d:ØÒÑÑ1î2¦P­â €â)É\'xâËõë×Oç\0Ñßß¹ªªª·¼¼|Q±ÿÌ4eMY®äJ®”!bÖ¬²²²{Ãb~ »°–\"¬!ÜL\ri6şüÁ¶¶¶‹Óubt€X9~^š²¦,Wr%WÊñ“L&óP¨³Ù~¼gappğ¶^Â4áÄ–b¾$\Zfœø¤¤ÊÊÊ7Şxãôí¾\"^Â4Î@hÊš²\\É•\\)¹ºîÁÈG³{GÄŠg\r:;;où)LË–-Ëæ3aÁÿQ|jÓÉ“\'/Üêc\\ãS˜âMÔÅ~„¦¬)Ë•’+%W7{}Xäÿ»è;ZwwwOy#¹¸Ä„³#—0  å2™L]&Î¬X±âĞñãÇ§tf\"îDİÚÚº/}oøu3ñ\r¯)kÊr%Wr¥×=ù@èı§&,ş“gy&yï½÷’øXùø§ì}ñ×84Ä³6lH–,Y2qpy\n“›¨¡ˆÄÅxÓ6ÆƒšššÏ_yå•½;wîü4¼ÙOæ\rƒƒƒgÂ›ÿ@KKKG]]İáğòcÜ‰ºX7’Ó”5e¹Rr¥äêÖÖñÈ‰g%~IÅ} <ÆŠûÌÄC£Å–P_È¾ÉûBí\rµ*Ôìªªª;gúÏCSÖ”åJ®äJ\"n,Lë‚¦Ü›®o²â½oÚ‰\Z0D(MY®äJ®T‰\rYñàâèı«FFN¼Ü©¯¼¼¼=üº&Åû3­4\0C„Ò”åJ®äJ•ğ€¦¬)Ë•\\É•’+\04eMY®”\\)¹@SV{J®äJ®\0Ğ”•Å’+¹’+\0ŠØöíÛ5¾t×ùĞ”/É•’+¹’+\0Rc÷îİ}ıııš_J«§§ço¡)‘+%Wr%W\0¤Æ;ş´k×®ïÎœ9ó?M0]GôbCŞ¶mÛÉPsäJÉ•\\É\0©>ôiooßOCÇëYU**ş¿8RÌ\rY®äJ®ä\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÆÿ/æy\'ğ1½\0\0\0\0IEND®B`‚',1),('7502',1,'processes/MyProcess.bpmn','7501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"myProcess\" name=\"My process\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤è¯·å‡ç”³è¯·\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"é¡¹ç›®ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"éƒ¨é—¨ç»ç†å®¡æ‰¹\"></userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_myProcess\">\n    <bpmndi:BPMNPlane bpmnElement=\"myProcess\" id=\"BPMNPlane_myProcess\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"210.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"290.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"440.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"590.0\" y=\"240.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"740.0\" y=\"250.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"245.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"290.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"395.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"440.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"545.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"590.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"695.0\" y=\"267.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"740.0\" y=\"267.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('7503',1,'processes/MyProcess.myProcess.png','7501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\01\0\0\0T/y\0\0IDATxÚíİMl•U\Zp.\\¸páÂ…“™…‹YÌÂ…‹Y°033ã‚rm)±FÚ`­‘‘:ÒĞP\Z!™&P‰1ÑHüÃ¤¢d€™ò%¤CP ¡‚ È´…ÖŠ¢ |¼sNímnE*ôŞ÷öş~É°·\n©ÿ{Ÿó¼_gÖ,\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0˜FI’ÜqâÄ‰\rW¶oß´··«Ô¶mÛ’İ»wªR®”\\É•\\*±!ïÙ³\'éïïO.^¼¨RTÉÇü}hĞsäJÉ•\\É\0©èiÈ©nÌÛÛÛÈ•’+¹’+\0R#^ ù¥»BS¾$WJ®äJ®\0Hx=«Æ—ú¦œÈ•’+¹’+\0Š®)ÿø]_rbß›I×¶å#¿¦ijÊr%Wr¥\0†ˆkê‡³=Éá6$ÿùÇâq¿_Ó85e¹’+¹R†\0CÄ¸:ÕõÑ5\r9[ÿíÚ¤qjÊr%Wr¥\0†ˆñudç_&mÊñ5SS–+¹’+eˆ\00DŒ«Ãí“6åøšÆ©)Ë•\\É•*…!¢¼¼üL&óX°*ÔÎP§B%9Õjoø×Ã÷.¿¿ßJf€ÆÆÆ»[[[W455íohh¨­­7oŞØ›¿¦¦æò/¼pvùòå^}õÕ×–.]ú+C„¦¬)Ë•\\É•*í!bîÜ¹‡Áàƒ°V8?ahø¹º‡ŠPU³gÏ¾ÃJŠLssó–-[öYeeåÕ0<$7nL<8²ëéåË—“¬ÁÁÁ¤»»;Ùºuk²zõê$~*N…§f¦¾ùo¦)Ç§›LÖ”ãk\Z§¦,Wr%Wj&añÿ`¨}S&«#ñì„UE‹İÿâ‹/X°`ÁÕ\r6Œ	S1<<œttt$K—.½Z[[{ºººú¥8DëX;iS¯iœš²\\É•\\©™6D„ÿÊÑ3	cƒ@¼zaåÊ•I\\Stuu%}}}ÉùóçÇÖñàäÑ£G“¶¶¶‘ï›?şõ†‰-á¿sŸU\Z¤TCCCİ“O>yé­·ŞJ†††’[µoß¾$Ã.ÜXVVvW)\rƒ=“ÃÿZví¥ákñ5SS–+¹’+5S†ˆØãGïw[øWUU%o¿ıöÈ0qı¯~X´hÑ¸A\"“Éœ\r¿Î¶Zƒ”©¯¯íé§Ÿ¾üÉ\'Ÿ$·Ó¹sç’ÖÖÖáğaÒ>dî-•!\"Ö—û×_Ó”ã×4MMY®äJ®ÔL\"Fˆ=¹şxt<ãp+â¥Ó›7oNrïÃõC¨9Vm¢¢®®îÊTLÅ»ï¾{¥²²òûğaóë’\".\\Hı{İµ—„¯Å×4NMY®äJ®ÔL\"&ˆ—-åŞ;y«zzz’Å‹çç3™Ì#VoP`ñ¦xb:ˆ¬?üğB$zŠıŒÄÏ5å¸ÃëÑ5“^c_³¬¦,Wr%WªØ‡ˆÑ{ ÆøÓ²~ˆ÷PÄû%rÏH„?û«8(xu¼âÀI¾¼óÎ;½ó“›&mÊ.$}Çv$‡¶şyÒ†œ­ø=ñ{åÓ”åJ®äJ®ŠôÄƒ¹7QÇ3Ó)Ş„İÜÜ<n‰¸…Õ@}}ı¡xu¾=ûì³½™L¦n&\r?w4ÏQ>MY®äJ®ÔL\Z\"Bÿ,÷ˆÛy	Óî³¬®®Î½Ùú¯Vsgqˆø×Ûñ¦_p}ãåŠŠŠo‹õÂõšòÍÍ»ÑQ>TS–+¹’+¹*q#¹Ü§0İêMÔS\03áFëû­ê âFrñ™Ì…òòË/wÅk)gÊñKr¶4RMY®äJ®äªX„…û¦ìB>>Æ5ßâæ¶9ƒÄ*«:È“ÆÆÆ»ãÎÒSİHî6ŸèCÄ7ÅxoÄÍ>2QiÊr%Wr¥fZ®âUñ	IÙäòñ`–‰?>nÿˆªªª»­î Ö­[·2^¿XhO=õÔçáÃèwš²²Ø“+¹’+¹*aÑşXvŸ˜T(¹›Ñ…µÄ£VwMMMû7mÚTğ!¢¥¥¥#M—4…¿KûÍ5š²¦,Wr%WªTs/Ê×™näı÷ßwƒ5ä[CCÃÀÁƒ>Dtvvˆ›Ô¤åç’sD£=| =¤)kÊr¥äJÉÕ5ß3¶¹\\www!×¹g\"Ú­î jkk‡q\rãD§OŸî‹ÏyNÛ‡gNm¹ŞMYS–+¹’+Uª¹\n_;•}=ŸOešèë¯¿·g„ÕäA¼*Ïs¾ñÍŸâÏ±#¹¢š²¦,Wr%WªTs•ûõ¸“t¡ÄÍçrÿ.Vw§‰´(†!\"÷ˆL<½«)kÊr%Wr¥J5W¹ÿœ†5„!JøLD±•¦œş’+%Wr%WÓ_ÎD@‰IË=½)¿\'\"[û2™Ì#Ù=-\nÙ”Ãİ*–×Ù“+¹’+¹*î\\¹\'JØK/½ôMWWWZÎ´\'ÅãšqV¡›ò¾–ö×5e¹’+¹’«âÎ•§3A	‹ûDlŞ¼9ûD¤i»úœÍ½qãšÉvÓÖ”5e¹’+¹’«RÍUxmM\Zö‰ˆvÎßwÕäAkkëêæææ‚uuu‡ÃvŠ><¯{$OSÖ”åJ®äJ®äê\'a¸¨LÃÕ‹/Î\"æXİA„7Ş½?şøÕ¡¡¡BîÑ>ˆ~¬ªªº³Ø~~š²¦,Wr%WrUª¹š7oŞ}aÑ~>.ŞãƒZÎ;Wèû!Î‡õÄ=Vw\'K–,ùb×®]\"Ö®]»?“É¼^Œ?;MYS–+¹’+¹*å\\åŞÑÖÖ–÷5Äºuër‡ˆ7­ê êëëËŸşù+…xÔëĞĞĞ¥ŠŠŠoãÑC„¦¬)Ë•\\É•\\—ÜKšjkkóú¨×‘3 Ù??¬\'~kUyŞø§÷ìÙ“÷!¢©©é`1ßå‘‰™(Wr%WrUÊ¹\Z}Ôë¡ìB~ãÆy[C,_¾|l€Èd2XÍAÔÔÔü¾ººzøìÙ³y{óúé§ÇÊËË¿(++»Ë¡4e¹’+¹’«ö¢Ü(-÷lD<3ğÕW_Mû\Z\">Y2ç2¦KaˆøÕÈÂ…ÿŞÒÒr)—5õööÅË˜æÎûp1ÿÌ4eMY®äJ®T©QXÈoÊ.êŸ{î¹d:ØÒÑÑ1î2¦P­â €â)É\'xâËõë×Oç\0Ñßß¹ªªª·¼¼|Q±ÿÌ4eMY®äJ®”!bÖ¬²²²{Ãb~ »°–\"¬!ÜL\ri6şüÁ¶¶¶‹Óubt€X9~^š²¦,Wr%WÊñ“L&óP¨³Ù~¼gappğ¶^Â4áÄ–b¾$\Zfœø¤¤ÊÊÊ7Şxãôí¾\"^Â4Î@hÊš²\\É•\\)¹ºîÁÈG³{GÄŠg\r:;;où)LË–-Ëæ3aÁÿQ|jÓÉ“\'/Üêc\\ãS˜âMÔÅ~„¦¬)Ë•’+%W7{}Xäÿ»è;ZwwwOy#¹¸Ä„³#—0  å2™L]&Î¬X±âĞñãÇ§tf\"îDİÚÚº/}oøu3ñ\r¯)kÊr%Wr¥×=ù@èı§&,ş“gy&yï½÷’øXùø§ì}ñ×84Ä³6lH–,Y2qpy\n“›¨¡ˆÄÅxÓ6ÆƒšššÏ_yå•½;wîü4¼ÙOæ\rƒƒƒgÂ›ÿ@KKKG]]İáğòcÜ‰ºX7’Ó”5e¹Rr¥äêÖÖñÈ‰g%~IÅ} <ÆŠûÌÄC£Å–P_È¾ÉûBí\rµ*Ôìªªª;gúÏCSÖ”åJ®äJ\"n,Lë‚¦Ü›®o²â½oÚ‰\Z0D(MY®äJ®T‰\rYñàâèı«FFN¼Ü©¯¼¼¼=üº&Åû3­4\0C„Ò”åJ®äJ•ğ€¦¬)Ë•\\É•’+\04eMY®”\\)¹@SV{J®äJ®\0Ğ”•Å’+¹’+\0ŠØöíÛ5¾t×ùĞ”/É•’+¹’+\0Rc÷îİ}ıııš_J«§§ço¡)‘+%Wr%W\0¤Æ;ş´k×®ïÎœ9ó?M0]GôbCŞ¶mÛÉPsäJÉ•\\É\0©>ôiooßOCÇëYU**ş¿8RÌ\rY®äJ®ä\n\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0JÆÿ/æy\'ğ1½\0\0\0\0IEND®B`‚',1);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','10001',5),('schema.history','create(5.23.0.0)',1),('schema.version','5.23.0.0',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

insert  into `act_hi_actinst`(`ID_`,`PROC_DEF_ID_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`ACT_ID_`,`TASK_ID_`,`CALL_PROC_INST_ID_`,`ACT_NAME_`,`ACT_TYPE_`,`ASSIGNEE_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`TENANT_ID_`) values ('11','myProcess:1:4','5','5','usertask3','12',NULL,'éƒ¨é—¨ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-28 14:08:45','2021-09-28 14:08:45',459,''),('13','myProcess:1:4','5','5','endevent1',NULL,NULL,'End','endEvent',NULL,'2021-09-28 14:08:45','2021-09-28 14:08:45',0,''),('2506','myProcess:2:2504','2505','2505','startevent1',NULL,NULL,'Start','startEvent',NULL,'2021-09-28 14:14:41','2021-09-28 14:14:41',10,''),('2507','myProcess:2:2504','2505','2505','usertask1','2508',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask',NULL,'2021-09-28 14:14:41','2021-09-28 14:14:41',612,''),('2509','myProcess:2:2504','2505','2505','usertask2','2510',NULL,'é¡¹ç›®ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-28 14:14:41','2021-09-28 14:14:41',644,''),('2511','myProcess:2:2504','2505','2505','usertask3','2512',NULL,'éƒ¨é—¨ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-28 14:14:41','2021-09-28 14:14:41',672,''),('2513','myProcess:2:2504','2505','2505','endevent1',NULL,NULL,'End','endEvent',NULL,'2021-09-28 14:14:41','2021-09-28 14:14:41',0,''),('5006','myProcess:3:5004','5005','5005','startevent1',NULL,NULL,'Start','startEvent',NULL,'2021-09-29 10:03:58','2021-09-29 10:03:58',9,''),('5007','myProcess:3:5004','5005','5005','usertask1','5008',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask',NULL,'2021-09-29 10:03:58','2021-09-29 10:03:58',720,''),('5009','myProcess:3:5004','5005','5005','usertask2','5010',NULL,'é¡¹ç›®ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-29 10:03:58','2021-09-29 10:03:58',743,''),('5011','myProcess:3:5004','5005','5005','usertask3','5012',NULL,'éƒ¨é—¨ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-29 10:03:58','2021-09-29 10:03:58',761,''),('5013','myProcess:3:5004','5005','5005','endevent1',NULL,NULL,'End','endEvent',NULL,'2021-09-29 10:03:58','2021-09-29 10:03:58',0,''),('6','myProcess:1:4','5','5','startevent1',NULL,NULL,'Start','startEvent',NULL,'2021-09-28 14:08:45','2021-09-28 14:08:45',8,''),('7','myProcess:1:4','5','5','usertask1','8',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask',NULL,'2021-09-28 14:08:45','2021-09-28 14:08:45',425,''),('7506','myProcess:4:7504','7505','7505','startevent1',NULL,NULL,'Start','startEvent',NULL,'2021-09-29 14:36:29','2021-09-29 14:36:29',16,''),('7507','myProcess:4:7504','7505','7505','usertask1','7508',NULL,'æäº¤è¯·å‡ç”³è¯·','userTask',NULL,'2021-09-29 14:36:29','2021-09-29 14:36:29',230,''),('7509','myProcess:4:7504','7505','7505','usertask2','7510',NULL,'é¡¹ç›®ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-29 14:36:29','2021-09-29 14:36:29',258,''),('7511','myProcess:4:7504','7505','7505','usertask3','7512',NULL,'éƒ¨é—¨ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-29 14:36:29','2021-09-29 14:36:29',343,''),('7513','myProcess:4:7504','7505','7505','endevent1',NULL,NULL,'End','endEvent',NULL,'2021-09-29 14:36:29','2021-09-29 14:36:29',0,''),('9','myProcess:1:4','5','5','usertask2','10',NULL,'é¡¹ç›®ç»ç†å®¡æ‰¹','userTask',NULL,'2021-09-28 14:08:45','2021-09-28 14:08:45',442,'');

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

insert  into `act_hi_procinst`(`ID_`,`PROC_INST_ID_`,`BUSINESS_KEY_`,`PROC_DEF_ID_`,`START_TIME_`,`END_TIME_`,`DURATION_`,`START_USER_ID_`,`START_ACT_ID_`,`END_ACT_ID_`,`SUPER_PROCESS_INSTANCE_ID_`,`DELETE_REASON_`,`TENANT_ID_`,`NAME_`) values ('2505','2505',NULL,'myProcess:2:2504','2021-09-28 14:14:41','2021-09-28 14:14:41',673,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('5','5',NULL,'myProcess:1:4','2021-09-28 14:08:45','2021-09-28 14:08:45',459,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('5005','5005',NULL,'myProcess:3:5004','2021-09-29 10:03:58','2021-09-29 10:03:58',763,NULL,'startevent1','endevent1',NULL,NULL,'',NULL),('7505','7505',NULL,'myProcess:4:7504','2021-09-29 14:36:29','2021-09-29 14:36:29',345,NULL,'startevent1','endevent1',NULL,NULL,'',NULL);

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

insert  into `act_hi_taskinst`(`ID_`,`PROC_DEF_ID_`,`TASK_DEF_KEY_`,`PROC_INST_ID_`,`EXECUTION_ID_`,`NAME_`,`PARENT_TASK_ID_`,`DESCRIPTION_`,`OWNER_`,`ASSIGNEE_`,`START_TIME_`,`CLAIM_TIME_`,`END_TIME_`,`DURATION_`,`DELETE_REASON_`,`PRIORITY_`,`DUE_DATE_`,`FORM_KEY_`,`CATEGORY_`,`TENANT_ID_`) values ('10','myProcess:1:4','usertask2','5','5','é¡¹ç›®ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-28 14:08:45',NULL,'2021-09-28 14:08:45',440,'completed',50,NULL,NULL,NULL,''),('12','myProcess:1:4','usertask3','5','5','éƒ¨é—¨ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-28 14:08:45',NULL,'2021-09-28 14:08:45',457,'completed',50,NULL,NULL,NULL,''),('2508','myProcess:2:2504','usertask1','2505','2505','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2021-09-28 14:14:41',NULL,'2021-09-28 14:14:41',605,'completed',50,NULL,NULL,NULL,''),('2510','myProcess:2:2504','usertask2','2505','2505','é¡¹ç›®ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-28 14:14:41',NULL,'2021-09-28 14:14:41',637,'completed',50,NULL,NULL,NULL,''),('2512','myProcess:2:2504','usertask3','2505','2505','éƒ¨é—¨ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-28 14:14:41',NULL,'2021-09-28 14:14:41',667,'completed',50,NULL,NULL,NULL,''),('5008','myProcess:3:5004','usertask1','5005','5005','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2021-09-29 10:03:58',NULL,'2021-09-29 10:03:58',713,'completed',50,NULL,NULL,NULL,''),('5010','myProcess:3:5004','usertask2','5005','5005','é¡¹ç›®ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-29 10:03:58',NULL,'2021-09-29 10:03:58',739,'completed',50,NULL,NULL,NULL,''),('5012','myProcess:3:5004','usertask3','5005','5005','éƒ¨é—¨ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-29 10:03:58',NULL,'2021-09-29 10:03:58',759,'completed',50,NULL,NULL,NULL,''),('7508','myProcess:4:7504','usertask1','7505','7505','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2021-09-29 14:36:29',NULL,'2021-09-29 14:36:29',197,'completed',50,NULL,NULL,NULL,''),('7510','myProcess:4:7504','usertask2','7505','7505','é¡¹ç›®ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-29 14:36:29',NULL,'2021-09-29 14:36:29',254,'completed',50,NULL,NULL,NULL,''),('7512','myProcess:4:7504','usertask3','7505','7505','éƒ¨é—¨ç»ç†å®¡æ‰¹',NULL,NULL,NULL,NULL,'2021-09-29 14:36:29',NULL,'2021-09-29 14:36:29',340,'completed',50,NULL,NULL,NULL,''),('8','myProcess:1:4','usertask1','5','5','æäº¤è¯·å‡ç”³è¯·',NULL,NULL,NULL,NULL,'2021-09-28 14:08:45',NULL,'2021-09-28 14:08:45',401,'completed',50,NULL,NULL,NULL,'');

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_procdef_info` */

DROP TABLE IF EXISTS `act_procdef_info`;

CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_procdef_info` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`TENANT_ID_`,`DEPLOY_TIME_`) values ('1',NULL,NULL,'','2021-09-28 14:08:44'),('2501',NULL,NULL,'','2021-09-28 14:14:40'),('5001',NULL,NULL,'','2021-09-29 10:03:57'),('7501',NULL,NULL,'','2021-09-29 14:36:28');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`HAS_GRAPHICAL_NOTATION_`,`SUSPENSION_STATE_`,`TENANT_ID_`) values ('myProcess:1:4',1,'http://www.activiti.org/test','My process','myProcess',1,'1','processes/MyProcess.bpmn','processes/MyProcess.myProcess.png',NULL,0,1,1,''),('myProcess:2:2504',1,'http://www.activiti.org/test','My process','myProcess',2,'2501','processes/MyProcess.bpmn','processes/MyProcess.myProcess.png',NULL,0,1,1,''),('myProcess:3:5004',1,'http://www.activiti.org/test','My process','myProcess',3,'5001','processes/MyProcess.bpmn','processes/MyProcess.myProcess.png',NULL,0,1,1,''),('myProcess:4:7504',1,'http://www.activiti.org/test','My process','myProcess',4,'7501','processes/MyProcess.bpmn','processes/MyProcess.myProcess.png',NULL,0,1,1,'');

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
