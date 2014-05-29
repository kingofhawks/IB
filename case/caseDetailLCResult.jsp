<%--国际结算案例（一）--开证行、通知行业务操作结果页面--%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<title></title>
    <link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/css/app.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>

<script language="javascript" type="text/javascript"    src="/IB/case/case.js"></script>
	<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
	<script>
	function displayIdResult(showId)
	{
	//根据录入页面中复选框选中的状态,得到结果页面中相应层的显示和隐藏;
		var showIdResult=showId;//录入页面中checkbox的选中状态;
		var idObject;
		var idName=new Array();
			idName=showIdResult.split(",");
		var len=idName.length-1;
		for(var numR=0;numR<len;numR++)
			  { 
				idObject=idName[numR];
				document.getElementById(idObject).style.display="";
			  }
	}
	function idSP(spanIds)
	{
	//根据录入页面中非必选项的值,得到结果页面中相应层的显示和隐藏;
		var spanIdR=spanIds;//录入页面中非必选项中已填值的数组序列;
		var lenSpan=spanIdR.length;
		var spanName=new String();
		for(var numR=0;numR<lenSpan;numR+=3)
			  { 
				spanName=spanIdR.substr(numR,3);
				document.getElementById(spanName).style.display="";
			  }
	}
	<%
	 com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
						.getAttribute("user");
	
	String id=new SessionManageBean().findByUsidAndSessionId(user.getUsid(),"caseId");
%>

	function flash()
	{
		var xmlhttp   =   new   ActiveXObject("MSXML2.XMLHTTP");  
		var url="/IB/guide/lc_flash/"+<%=id%>+".swf";
			 xmlhttp.open("get","/IB/guide/lc_flash/"+<%=id%>+".swf",false);   
		     xmlhttp.send();   
			  if(xmlhttp.readyState==4&&xmlhttp.status==200)   
			  {   
				  window.open("/IB/guide/lc_flash/"+<%=id%>+".htm");
				  return   true;   
			  }   
			  else   
			  {  
			      alert("对不起，没有找到相关演示"); 
				  return   false;   
			  }
}
	</script>
</head>
<body>
<form>
<%String names=(String)map.get("LCH");%>
<%String spanNames=(String)map.get("idPS");%>
<input type="hidden" id="showDiv" value="<%=names%>">
<input type="hidden" id="showSpan" value="<%=spanNames%>">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--内表格开始-->
		<table width="100%" height="100%" border="0" align="center"	cellpadding="0" cellspacing="0">
			<tr>
			  <td colspan="3" > <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>类型：</strong>开证行与通知行业务操作</td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>名称：</strong><%if(map.get("detai")!=null){out.print(map.get("detai"));}%></td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>分数：</strong><%if(map.get("grade")!=null){out.print(map.get("grade"));}%>分</td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle">
                        <span onClick="flash()"><strong>演示：</strong>
                            <i class="fa fa-play-circle-o fa-2x"></i>
                        </span>
                    </td>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td align="left" height="20"><strong>查询：</strong>
                        <input class="search input-case-search" type="search" name="lable" id="lable" size="15">
                        <button class="btn btn-primary" onclick="searchCase()" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                  </tr>
                  <tr>
                    <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                  </tr>
                  <tr>
                    <td height="20" align="left" valign="middle"><strong>内容：</strong><span id="tips" style="display:none;width:120px;height:20px;color:#000;text-align:center;vertical-align:middle;background-color:lightyellow;border:solid black 1px"></span></td>
                  </tr>
                </table>			    <!--内容结束--></td>
			  </tr>
               <tr><td height="100%" colspan="3"><div id="innerTable_div">
			<div id="LC0" style="display:none">
<span class="R1" id="lcop_apno"><%if(map.get("lcop_apno")!=null){out.print(map.get("lcop_apno"));}%></span> 
			于
<span class="R1" id="lcop_isdt"><%if(map.get("lcop_isdt")!=null){out.print(map.get("lcop_isdt"));}%></span>
			<span id="a01" style="display:none">，向银行
<span class="R1" id="lcop_utno"><%if(map.get("lcop_utno")!=null){out.print(map.get("lcop_utno"));}%></span></span>提出开立信用证申请，<span id="a97" style="display:none">货物描述为<span class="R1"><%if(map.get("lcop_gstp")!=null){out.print(map.get("lcop_gstp"));}%></span>，</span>申请人邮编<span class="R1"><%if(map.get("lcop_appscd")!=null){out.print(map.get("lcop_appscd"));}%></span>	，并出示了单位证明及开证申请人和受益人
<span class="R1" id="lcop_adl1"><%if(map.get("lcop_adl1")!=null){out.print(map.get("lcop_adl1"));}%></span>
<span class="R1" id="lcop_clpscd"><%if(map.get("lcop_clpscd")!=null){out.print(map.get("lcop_clpscd"));}%></span><span id="a02" style="display:none">，合同号为
<span class="R1" id="lcop_crno"><%if(map.get("lcop_crno")!=null){out.print(map.get("lcop_crno"));}%></span>
			</span>；按合同内容，此信用证
<span class="R1" id="lcop_lgfg"><%if(map.get("lcop_lgfg")!=null){out.print(map.get("lcop_lgfg"));}%></span>
			开出保函，
			<span id="a99" style="display:none">保函交易类型为
<span class="R1" id="lcop_bhtp"><%if(map.get("lcop_bhtp")!=null){out.print(map.get("lcop_bhtp"));}%></span>；</span>
				<span style="display:" id="lcop_sutpY">
			此信用证为即期/远期：
<span class="R1" id="lcop_sutp"><%if(map.get("lcop_sutp")!=null){out.print(map.get("lcop_sutp"));}%></span>
			&nbsp;信用证，
				<span id="a30" style="display:none">
			远期类型为
<span class="R1" id="lcop_uutp"><%if(map.get("lcop_uutp")!=null){out.print(map.get("lcop_uutp"));}%></span>
			<span id="a03" style="display:none">，期限为
<span class="R1" id="lcop_tenr"><%if(map.get("lcop_tenr")!=null){out.print(map.get("lcop_tenr"));}%></span>
					天</span>；</span>			</span>
			
			
			信用证类型为
<span class="R1" id="lcop_lctp"><%if(map.get("lcop_lctp")!=null){out.print(map.get("lcop_lctp"));}%></span>，
			支付方式为
<span class="R1" id="lcop_ustp"><%if(map.get("lcop_ustp")!=null){out.print(map.get("lcop_ustp"));}%></span>，          
			<span id="a04" style="display:none">指定议付行银行代码
<span class="R1" id="lcop_avbk"><%if(map.get("lcop_avbk")!=null){out.print(map.get("lcop_avbk"));}%></span>；			</span>
			<span id="a05" style="display:none">转让行为
<span class="R1" id="lcop_tlbk"><%if(map.get("lcop_tlbk")!=null){out.print(map.get("lcop_tlbk"));}%></span>；</span>
			<span id="a06" style="display:none">此次信用证
<span class="R1" id="lcop_tris"><%if(map.get("lcop_tris")!=null){out.print(map.get("lcop_tris"));}%></span>
				为转开，</span>
				<span id="a07" style="display:none">
				循环次数为
<span class="R1" id="lcop_rlit"><%if(map.get("lcop_rlit")!=null){out.print(map.get("lcop_rlit"));}%></span>；</span>
			通知行为
<span class="R1" id="lcop_adbk"><%if(map.get("lcop_adbk")!=null){out.print(map.get("lcop_adbk"));}%></span>
			银行，币种为
<span class="R1" id="lcop_lccy"><%if(map.get("lcop_lccy")!=null){out.print(map.get("lcop_lccy"));}%></span>
			，信用证/保函金额为
<span class="R1" id="lcop_lcam"><%if(map.get("lcop_lcam")!=null){out.print(map.get("lcop_lcam"));}%></span>
			，<span id="a08" style="display:none">信用证
<span class="R1" id="lcop_mksb"><%if(map.get("lcop_mksb")!=null){out.print(map.get("lcop_mksb"));}%></span>
			 保兑，</span>开证方式为
<span class="R1" id="lcop_ammd"><%if(map.get("lcop_ammd")!=null){out.print(map.get("lcop_ammd"));}%></span>
			，<span id="a09" style="display:none">到期日
<span class="R1" id="lcop_epdt"><%if(map.get("lcop_epdt")!=null){out.print(map.get("lcop_epdt"));}%></span>
			，</span>到期地点在
<span class="R1" id="lcop_pcep"><%if(map.get("lcop_pcep")!=null){out.print(map.get("lcop_pcep"));}%></span>
			，<span id="a10" style="display:none">最迟装运期为
<span class="R1" id="lcop_shdt"><%if(map.get("lcop_shdt")!=null){out.print(map.get("lcop_shdt"));}%></span>
			，</span>交单期
<span class="R1" id="lcop_psbl"><%if(map.get("lcop_psbl")!=null){out.print(map.get("lcop_psbl"));}%></span>
			天；<span id="a11" style="display:none">信用证项下的货物
<span class="R1" id="lcop_part"><%if(map.get("lcop_part")!=null){out.print(map.get("lcop_part"));}%></span>
			分批装运，</span><span id="a12" style="display:none">
<span class="R1" id="lcop_tras"><%if(map.get("lcop_tras")!=null){out.print(map.get("lcop_tras"));}%></span>转运，</span>
<span id="a13" style="display:none"><span class="R1" id="lcop_mkis"><%if(map.get("lcop_mkis")!=null){out.print(map.get("lcop_mkis"));}%></span>有装运期限；</span>运输地从<span class="R1"><%if(map.get("lcop_shfm")!=null){out.print(map.get("lcop_shfm"));}%></span>到<span class="R1" id="lcop_shto"><%if(map.get("lcop_shto")!=null){out.print(map.get("lcop_shto"));}%></span>
			<span id="a14" style="display:none">，信用证的付款行为
<span class="R1" id="lcop_dwbk"><%if(map.get("lcop_dwbk")!=null){out.print(map.get("lcop_dwbk"));}%></span>
			，</span><span id="a15" style="display:none">偿付行为
<span class="R1" id="lcop_rmbk"><%if(map.get("lcop_rmbk")!=null){out.print(map.get("lcop_rmbk"));}%></span>
			；</span>信用证为是/否为额度开证
<span class="R1" id="lcop_qlfg"><%if(map.get("lcop_qlfg")!=null){out.print(map.get("lcop_qlfg"));}%></span>
			，<span id="a16" style="display:none">客户帐户一为
<span class="R1" id="lcop_mgcltact"><%if(map.get("lcop_mgcltact")!=null){out.print(map.get("lcop_mgcltact"));}%></span>
			，</span><span id="a17" style="display:none">币种
<span class="R1" id="lcop_mgclcur"><%if(map.get("lcop_mgclcur")!=null){out.print(map.get("lcop_mgclcur"));}%></span>
			，</span><span id="a18" style="display:none">金额
<span class="R1" id="lcop_mgcltamt"><%if(map.get("lcop_mgcltamt")!=null){out.print(map.get("lcop_mgcltamt"));}%></span>
			；</span><span id="a19" style="display:none">保证金账号一为
<span class="R1" id="lcop_mgac"><%if(map.get("lcop_mgac")!=null){out.print(map.get("lcop_mgac"));}%></span>
			，</span><span id="a20" style="display:none">币种
<span class="R1" id="lcop_accy"><%if(map.get("lcop_accy")!=null){out.print(map.get("lcop_accy"));}%></span>
			，</span><span id="a21" style="display:none">金额
<span class="R1" id="lcop_mgam"><%if(map.get("lcop_mgam")!=null){out.print(map.get("lcop_mgam"));}%></span>
			；</span><span id="a22" style="display:none">客户帐户二为
<span class="R1" id="lcop_mgcltact2"><%if(map.get("lcop_mgcltact2")!=null){out.print(map.get("lcop_mgcltact2"));}%></span>
			，</span><span id="a23" style="display:none">币种
<span class="R1" id="lcop_mgclcur2"><%if(map.get("lcop_mgclcur2")!=null){out.print(map.get("lcop_mgclcur2"));}%></span>
			，</span><span id="a24" style="display:none">金额
<span class="R1" id="lcop_mgcltamt2"><%if(map.get("lcop_mgcltamt2")!=null){out.print(map.get("lcop_mgcltamt2"));}%></span>
			；</span><span id="a25" style="display:none">保证金账号二为
<span class="R1" id="lcop_mgc2"><%if(map.get("lcop_mgc2")!=null){out.print(map.get("lcop_mgc2"));}%></span>
			，</span><span id="a26" style="display:none">币种
<span class="R1" id="lcop_acy2"><%if(map.get("lcop_acy2")!=null){out.print(map.get("lcop_acy2"));}%></span>
			，</span><span id="a27" style="display:none">金额
<span class="R1" id="lcop_mam2"><%if(map.get("lcop_mam2")!=null){out.print(map.get("lcop_mam2"));}%></span>
			；</span>
<span class="R1" id="lcop_gdtp"><%if(map.get("lcop_gdtp")!=null){out.print(map.get("lcop_gdtp"));}%></span>
<span class="R1" id="lcop_chco"><%if(map.get("lcop_chco")!=null){out.print(map.get("lcop_chco"));}%></span>
			，<span id="a28" style="display:none">
			<span id="lcop_tltpY" style="display:">
			邮电费类型为
<span class="R1" id="lcop_tltp"><%if(map.get("lcop_tltp")!=null){out.print(map.get("lcop_tltp"));}%></span>
			，</span></span><span id="a29" style="display:none">实收开证邮电费金额
<span class="R1" id="lcop_taam"><%if(map.get("lcop_taam")!=null){out.print(map.get("lcop_taam"));}%></span>
			；</span>开证行最终产生信用证和电文发往通知行。		</div>
		
		<div id="LC1" style="display:none">
		  根据信用证及电文内容，通知行在本行做业务登记，内容如下：<br>
			 <span id="b02" style="display:none">此信用证
<span class="R1" id="elad_mksb"><%if(map.get("elad_mksb")!=null){out.print(map.get("elad_mksb"));}%></span>
			为备用信用证，</span><span id="b03" style="display:none">
<span class="R1" id="elad_mkan"><%if(map.get("elad_mkan")!=null){out.print(map.get("elad_mkan"));}%></span>
			为红条款信用证，</span>
			    <span id="b04" style="display:none">
<span class="R1" id="elad_mkrv"><%if(map.get("elad_mkrv")!=null){out.print(map.get("elad_mkrv"));}%></span>
			循环信用证，</span>
			通知行来证通知登记操作收费方式为
<span class="R1" id="elad_chco"><%if(map.get("elad_chco")!=null){out.print(map.get("elad_chco"));}%></span>
			，<span id="b99" style="display:none">快递国别
<span class="R1" id="elad_cncd"><%if(map.get("elad_cncd")!=null){out.print(map.get("elad_cncd"));}%></span>
					；</span><span id="elad_tltpY" style="display:"><span id="b07"  style="display:none">邮电费类型为
<span class="R1" id="elad_tltp"><%if(map.get("elad_tltp")!=null){out.print(map.get("elad_tltp"));}%></span>
			，</span></span>
			<span id="b08" style="display:none">实收开证邮电费金额
<span class="R1" id="elad_taam"><%if(map.get("elad_taam")!=null){out.print(map.get("elad_taam"));}%></span>；
			登记完后，</span>系统产生面函并信用证通知受益人。</div>
			
<div id="LC2" style="display:none">开证行开出信用证后，开证申请人因为金额、货运方式等变动向开证行提出修改申请，填写信用证修改申请书，其中通知方式为		
<span class="R1" id="lcup_ammd"><%if(map.get("lcup_ammd")!=null){out.print(map.get("lcup_ammd"));}%></span><span id="c97" style="display:none">，我单位业务编号为<span class="R1" id="lcup_trno"><%if(map.get("lcup_trno")!=null){out.print(map.get("lcup_trno"));}%></span></span><span id="c98" style="display:none">，我单位合同号为
<span class="R1" id="lcup_crno"><%if(map.get("lcup_crno")!=null){out.print(map.get("lcup_crno"));}%></span>
					</span><span id="c99" style="display:none">，修改内容为
						<span class="R1" id="lcup_mdcont"><%if(map.get("lcup_mdcont")!=null){out.print(map.get("lcup_mdcont"));}%></span>，</span>客户于(申请日期)<span class="R1" id="lcup_apdt"><%if(map.get("lcup_apdt")!=null){out.print(map.get("lcup_apdt"));}%></span>发起信用证修改申请，申请书编号为<span class="R1"><%if(map.get("lcup_applnno")!=null){out.print(map.get("lcup_applnno"));}%></span>，<span id="c01" style="display:none">信用证项下<span class="R1" id="lcup_adsn"><%if(map.get("lcup_adsn")!=null){out.print(map.get("lcup_adsn"));}%></span></span>
					金额<span id="c02" style="display:none">
<span class="R1" id="lcup_adam"><%if(map.get("lcup_adam")!=null){out.print(map.get("lcup_adam"));}%></span>，
					</span>修改为[即期/远期]
<span class="R1" id="lcup_sutp"><%if(map.get("lcup_sutp")!=null){out.print(map.get("lcup_sutp"));}%></span>
					信用证，<span id="c03" style="display:none">期限为
<span class="R1" id="lcup_tenr"><%if(map.get("lcup_tenr")!=null){out.print(map.get("lcup_tenr"));}%></span></span>
<span id="c04" style="display:none" id="lcup_adl1"><span class="R1" id="lcup_adl1"><%if(map.get("lcup_adl1")!=null){out.print(map.get("lcup_adl1"));}%></span>，</span>
					
					<span id="c06" style="display:none">信用证项下的货物<span class="R1" id="lcup_part"><%if(map.get("lcup_part")!=null){out.print(map.get("lcup_part"));}%></span>
                    分批装运</span><span id="c07" style="display:none"><span class="R1" id="lcup_tras"><%if(map.get("lcup_tras")!=null){out.print(map.get("lcup_tras"));}%></span>
					转运，</span><span id="c08" style="display:none">装运期限为<span class="R1"  id="lcup_mkis"><%if(map.get("lcup_mkis")!=null){out.print(map.get("lcup_mkis"));}%></span>天，
					</span><span id="c09" style="display:none">最迟装期<span class="R1" id="lcup_shdt"><%if(map.get("lcup_shdt")!=null){out.print(map.get("lcup_shdt"));}%></span>
					；</span><span id="c10" style="display:none">信用证到期日<span class="R1" id="lcup_epdt"><%if(map.get("lcup_epdt")!=null){out.print(map.get("lcup_epdt"));}%></span>，</span><span id="c11" style="display:none">到期地点
<span class="R1" id="lcup_pcep"><%if(map.get("lcup_pcep")!=null){out.print(map.get("lcup_pcep"));}%></span>
					；</span><span id="c12" style="display:none">客户帐户一为
<span class="R1" id="lcup_mgcltact"><%if(map.get("lcup_mgcltact")!=null){out.print(map.get("lcup_mgcltact"));}%></span>
					，</span><span id="c13" style="display:none">币种
<span class="R1" id="lcup_mgclcur"><%if(map.get("lcup_mgclcur")!=null){out.print(map.get("lcup_mgclcur"));}%></span>
					，</span><span id="c14" style="display:none">金额
<span class="R1" id="lcup_mgcltamt"><%if(map.get("lcup_mgcltamt")!=null){out.print(map.get("lcup_mgcltamt"));}%></span>
					；</span><span id="c15" style="display:none">保证金账号一为
<span class="R1" id="lcup_mgac"><%if(map.get("lcup_mgac")!=null){out.print(map.get("lcup_mgac"));}%></span>
					，</span><span id="c16" style="display:none">币种
<span class="R1" id="lcup_accy"><%if(map.get("lcup_accy")!=null){out.print(map.get("lcup_accy"));}%></span>，</span>
<span id="c17" style="display:none">金额<span class="R1" id="lcup_mgam"><%if(map.get("lcup_mgam")!=null){out.print(map.get("lcup_mgam"));}%></span>；</span><span id="c18" style="display:none">客户帐户二为<span class="R1" id="lcup_mbcltact2"><%if(map.get("lcup_mbcltact2")!=null){out.print(map.get("lcup_mbcltact2"));}%></span>
					，</span><span id="c19" style="display:none">币种<span class="R1"  id="lcup_mgclcur2"><%if(map.get("lcup_mgclcur2")!=null){out.print(map.get("lcup_mgclcur2"));}%></span>
					，</span><span id="c20" style="display:none">金额<span class="R1" id="lcup_mgcltamt2"><%if(map.get("lcup_mgcltamt2")!=null){out.print(map.get("lcup_mgcltamt2"));}%></span>
					；</span><span id="c21" style="display:none">保证金账号二为<span class="R1" id="lcup_mgac2"><%if(map.get("lcup_mgac2")!=null){out.print(map.get("lcup_mgac2"));}%></span>
					，</span><span id="c22" style="display:none">币种<span class="R1" id="lcup_acy2"><%if(map.get("lcup_acy2")!=null){out.print(map.get("lcup_acy2"));}%></span>
					，</span><span id="c23" style="display:none">金额<span class="R1"  id="lcup_mam2"><%if(map.get("lcup_mam2")!=null){out.print(map.get("lcup_mam2"));}%></span>
					；</span>信用证开立操作收费方式为
					<span class="R1" id="lcup_chco"><%if(map.get("lcup_chco")!=null){out.print(map.get("lcup_chco"));}%></span>
					，<span id="c24" style="display:none">邮电费类型为<span class="R1" id="lcup_tltp"><%if(map.get("lcup_tltp")!=null){out.print(map.get("lcup_tltp"));}%></span>，
					</span><span id="c26" style="display:none">实收开证邮电费金额<span class="R1" id="lcup_taam"><%if(map.get("lcup_taam")!=null){out.print(map.get("lcup_taam"));}%></span>；</span>开证行最终产生707电文发往通知行。</div>
					
<div id="LC3" style="display:none">
				通知行收到开证行的修改电文后，根据修改内容产生面函通知受益人，<span id="d01" style="display:none">转让行业务编号为<span class="R1" id="elup_tlrf"><%if(map.get("elup_tlrf")!=null){out.print(map.get("elup_tlrf"));}%></span>；</span>此次修改方式为
					<span class="R1" id="elup_aemd"><%if(map.get("elup_aemd")!=null){out.print(map.get("elup_aemd"));}%></span>
				，修改日期
					<span class="R1" id="elup_aedt"><%if(map.get("elup_aedt")!=null){out.print(map.get("elup_aedt"));}%></span>
				；该操作收费方式为
					<span class="R1" id="elup_chco"><%if(map.get("elup_chco")!=null){out.print(map.get("elup_chco"));}%></span>
			     。<span id="d01" style="display:none"></span>
				<span id="d02" style="display:none">
				实收手续费<span class="R1" id="elup_cham"><%if(map.get("elup_cham")!=null){out.print(map.get("elup_cham"));}%></span>。				 </span></div>
				 
				<div id="LC4" style="display:none" >受益人接到开证行的修改面函后，选择
<span class="R1" id="eluk_rvst"><%if(map.get("eluk_rvst")!=null){out.print(map.get("eluk_rvst"));}%></span>
				修改信用证；该操作收费方式为
<span class="R1" id="eluk_chco"><%if(map.get("eluk_chco")!=null){out.print(map.get("eluk_chco"));}%></span>
				，<span id="e01" style="display:none"></span><span id="e02" style="display:none">
					 实收手续费
					<span id="eluk_chamY">
<span class="R1" id="eluk_cham"><%if(map.get("eluk_cham")!=null){out.print(map.get("eluk_cham"));}%></span>
					，</span></span><span id="e03" style="display:none">快递国别
<span class="R1" id="eluk_cncd"><%if(map.get("eluk_cncd")!=null){out.print(map.get("eluk_cncd"));}%></span>
					；</span><span id="e04" style="display:none">费用类型为
<span class="R1" id="eluk_tltp"><%if(map.get("eluk_tltp")!=null){out.print(map.get("eluk_tltp"));}%></span>
					，</span><span id="e06" style="display:none">邮电费币种
<span class="R1" id="eluk_tlcy"><%if(map.get("eluk_tlcy")!=null){out.print(map.get("eluk_tlcy"));}%></span>，</span><span id="e05" style="display:none">实收邮电费
<span class="R1" id="eluk_taam"><%if(map.get("eluk_taam")!=null){out.print(map.get("eluk_taam"));}%></span>
					；</span>操作完成后生成电文发往开证行。				</div>
	
				<div id="LC5" style="display:none">开证行收到通知行拒绝接受信用证修改的电文后，登记拒绝内容。
				<span id="f01" style="display:none">此操作的保证金账号一为
<span class="R1" id="lcuk_mgac"><%if(map.get("lcuk_mgac")!=null){out.print(map.get("lcuk_mgac"));}%></span>
					；</span><span id="f02" style="display:none">币种
<span class="R1" id="lcuk_accy"><%if(map.get("lcuk_accy")!=null){out.print(map.get("lcuk_accy"));}%></span>
					；</span><span id="f03" style="display:none">金额
<span class="R1" id="lcuk_mgam"><%if(map.get("lcuk_mgam")!=null){out.print(map.get("lcuk_mgam"));}%></span>
					；</span><span id="f04" style="display:none">保证金账号二为
<span class="R1" id="lcuk_mgc2"><%if(map.get("lcuk_mgc2")!=null){out.print(map.get("lcuk_mgc2"));}%></span>
					；</span><span id="f05" style="display:none">币种
<span class="R1" id="lcuk_acy2"><%if(map.get("lcuk_acy2")!=null){out.print(map.get("lcuk_acy2"));}%></span>
					；</span><span id="f06" style="display:none">金额
<span class="R1" id="lcuk_mam2"><%if(map.get("lcuk_mam2")!=null){out.print(map.get("lcuk_mam2"));}%></span>
					。</span></div>
					
				<div id="LC6" style="display:none">开证行信用证开立后，信用证议付前，开证申请人向开证行提出撤证申请，撤消此信用证；该操作收费方式为
<span class="R1" id="lccn_chco"><%if(map.get("lccn_chco")!=null){out.print(map.get("lccn_chco"));}%></span>，				操作完成后生成电文发往通知行，此信用证作废。</div>
	
			<div id="LC7" style="display:none">收到开证行的撤证电文，通知行做撤证登记并发电文回开证行。</div>
			
			<div id="LC8" style="display:none">进口商(开证申请人)因未收到正本提单而货物已到港向开证行申请做提货担保，登记担保内容，担保提货申请日期
<span class="R1" id="sgrg_apdt"><%if(map.get("sgrg_apdt")!=null){out.print(map.get("sgrg_apdt"));}%></span>
					，<span id="h01" style="display:none">发票号
<span class="R1" id="sgrg_ivno"><%if(map.get("sgrg_ivno")!=null){out.print(map.get("sgrg_ivno"));}%></span>
					，</span>担保提货币种
<span class="R1" id="sgrg_gucy"><%if(map.get("sgrg_gucy")!=null){out.print(map.get("sgrg_gucy"));}%></span>
					，担保提货金额
<span class="R1" id="sgrg_guam"><%if(map.get("sgrg_guam")!=null){out.print(map.get("sgrg_guam"));}%></span>
					，<span id="h02" style="display:none">装运日期
<span class="R1" id="sgrg_shdt"><%if(map.get("sgrg_shdt")!=null){out.print(map.get("sgrg_shdt"));}%></span>
					，</span>提单号码
<span class="R1" id="sgrg_blno"><%if(map.get("sgrg_blno")!=null){out.print(map.get("sgrg_blno"));}%></span>
					，货物描述
<span class="R1" id="sgrg_gsds"><%if(map.get("sgrg_gsds")!=null){out.print(map.get("sgrg_gsds"));}%></span>
					，<span id="h03" style="display:none">保兑行
<span class="R1" id="sgrg_gubk"><%if(map.get("sgrg_gubk")!=null){out.print(map.get("sgrg_gubk"));}%></span>
					，</span>
					<span id="h04" style="display:none">该操作收费方式为
<span class="R1" id="sgrg_chco"><%if(map.get("sgrg_chco")!=null){out.print(map.get("sgrg_chco"));}%></span>
                     ，</span>
					<span id="h05" style="display:none">实收担保提货手续费金额
<span class="R1" id="sgrg_cham"><%if(map.get("sgrg_cham")!=null){out.print(map.get("sgrg_cham"));}%></span>
					；</span><span id="h06" style="display:none">邮电费类型为
<span class="R1" id="sgrg_tltp"><%if(map.get("sgrg_tltp")!=null){out.print(map.get("sgrg_tltp"));}%></span>
					</span><span id="h07" style="display:none">
					；实收邮电费金额
<span class="R1" id="sgrg_taam"><%if(map.get("sgrg_taam")!=null){out.print(map.get("sgrg_taam"));}%></span>
					，</span>登记完成后，银行向船务公司出具一份&lt;&lt;无正本提单提货担保书&gt;&gt;，为进口商担保在无正本提单的情况下提货，同时开证申请人授权开证行无条件支付该项货款。</div>
		
		<div id="LC9" style="display:none">提货担保办理后，银行会根据提货担保的期限对开证申请人进行催保。生成&lt;&lt;催销保函面函&gt;&gt;给开证申请人。 </div>
		<div id="LC10" style="display:none">开证行收到正本提单后，通知开证人，将正本提单及生成面函&lt;&lt;寄提单销保面函&gt;&gt;一并寄给船务公司换回&lt;&lt;无正本提单提货面函&gt;&gt;。</div></div></td>
			   </tr> 
			<tr>
				<td colspan="3"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle">
                        <div class="footer">
                            <button class="btn btn-primary" onclick="self.print();return false">
                                <i class="fa fa-print fa-2x"></i> 打印
                            </button>
                        </div>
                    </td>
                  </tr>
                </table></td>
			</tr>
		</table>
		<!--内表结束--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
<script>
var ids=new String();
var spans=new String();
ids=document.getElementById("showDiv").value;//复选框中选中的id名串
displayIdResult(ids);
spans=document.getElementById("showSpan").value;//非必选项中选中的id名串
idSP(spans);
</script>
</form>
</body>
</html>
