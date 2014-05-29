<%--国际结算案例（二）--议付行业务操作--%>
<%--本页操作需从caseDetailLC.jsp获取即期("0")/远期("1")值:sutpvalue(),还缺少'...已经到承兑到期日'，则可进行"开证行－进口来单－付款"的判断--%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%@ page import="com.witsoft.bean.common.SessionManageBean" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<title></title>
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
}	</script>	
	</head>
<body>
		<%String caseLcId=(String)map.get("caseId");%>
		<input type="hidden" id="caseLcIdN" value="<%=caseLcId%>">



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
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
			  <td colspan="3" > <table width="100%" border="0" cellspacing="0" cellpadding="0" >
              <tr>
                <td height="20" align="left" valign="middle"><strong>类型：</strong>开证行与议付行业务操作</td>
              </tr>
              <tr>
                <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
              </tr>
              <tr>
                <td height="20" align="left" valign="middle"><strong>名称：</strong>
                    <%if(map.get("detai")!=null){out.print(map.get("detai"));}%></td>
              </tr>
              <tr>
                <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
              </tr>
              <tr>
                <td height="20" align="left" valign="middle"><strong>备注：</strong>此议付案例对应的开证行和通知行的案例编号为：
                  <script>document.write(document.getElementById("caseLcIdN").value)</script></td>
              </tr>
              <tr>
                <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
              </tr>
              <tr>
                <td height="20" align="left" valign="middle"><strong>分数：</strong>
                    <%if(map.get("grade")!=null){out.print(map.get("grade"));}%>
                  分</td>
              </tr>
              <tr>
                <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
              </tr>
              <tr>
                <td height="20" align="left" valign="middle"><span onClick="flash()"><strong>演示：</strong>
                  <i class="fa fa-play-circle-o fa-2x"></i>
                </span></td>
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
                    </table></td>
			  </tr>
               <tr><td height="100%" colspan="3"><div id="innerTable_div">
						<div id="innerTable_div">
              <div id="NE0" style="display:none">受益人收到信用证后，开始备货，发货后于 <span class="R1" id="ebrg_apdt">
                <%if(map.get("ebrg_apdt")!=null){out.print(map.get("ebrg_apdt"));}%>
                </span>携信用证和单据到（银行名称）<span class="R1">
                <%if(map.get("ebrg_bknm")!=null){out.print(map.get("ebrg_bknm"));}%>
                </span>议付行议付，此次议付开证行是<span class="R1">
                <%if(map.get("ebrg_isbknm")!=null){out.print(map.get("ebrg_isbknm"));}%>
                </span> <span class="R1" id="ebrg_adbknm">
                <%if(map.get("ebrg_adbknm")!=null){out.print(map.get("ebrg_adbknm"));}%>
                </span>，此次议付是/否 <span class="R1" id="ebrg_mkts">
                <%if(map.get("ebrg_mkts")!=null){out.print(map.get("ebrg_mkts"));}%>
                </span> 押印核符，议付日期 <span class="R1" id="ebrg_rvdt">
                <%if(map.get("ebrg_rvdt")!=null){out.print(map.get("ebrg_rvdt"));}%>
                </span> ，币种 <span class="R1" id="ebrg_dlcy">
                <%if(map.get("ebrg_dlcy")!=null){out.print(map.get("ebrg_dlcy"));}%>
                </span> ，金额 <span class="R1" id="ebrg_dlam">
                <%if(map.get("ebrg_dlam")!=null){out.print(map.get("ebrg_dlam"));}%>
                </span> <span id="a08" style="display:none">，B/L Date <span class="R1" id="ebrg_bldt">
                <%if(map.get("ebrg_bldt")!=null){out.print(map.get("ebrg_bldt"));}%>
                </span></span> ，发票号 <span class="R1" id="ebrg_ivno">
                <%if(map.get("ebrg_ivno")!=null){out.print(map.get("ebrg_ivno"));}%>
                </span> ，<span id="a01" style="display:none">核销单 <span class="R1" id="ebrg_dtno">
                <%if(map.get("ebrg_dtno")!=null){out.print(map.get("ebrg_dtno"));}%>
                </span> ， </span><span id="a02" style="display:none">转让号 <span class="R1" id="ebrg_tlrf">
                <%if(map.get("ebrg_tlrf")!=null){out.print(map.get("ebrg_tlrf"));}%>
                </span> ，</span><span id="a03" style="display:none">是否不符点出单为 <span class="R1" id="ebrg_drmk">
                <%if(map.get("ebrg_drmk")!=null){out.print(map.get("ebrg_drmk"));}%>
                </span>；</span>该业务有效期为<span class="R1" id="ebrg_epdt">
                <%if(map.get("ebrg_epdt")!=null){out.print(map.get("ebrg_epdt"));}%>
                </span>，交单期限为<span class="R1" id="ebrg_psbl">
                <%if(map.get("ebrg_psbl")!=null){out.print(map.get("ebrg_psbl"));}%>
                </span>天，此操作费用收取对象<span class="R1" id="ebrg_chfr">
                <%if(map.get("ebrg_chfr")!=null){out.print(map.get("ebrg_chfr"));}%>
                </span> <span id="a99">；收费方式为<span class="R1" id="ebrg_chco">
                <%if(map.get("ebrg_chco")!=null){out.print(map.get("ebrg_chco"));}%>
                </span></span> <span id="a04" style="display:none">，邮电费类型为 <span class="R1" id="ebrg_tltp">
                <%if(map.get("ebrg_tltp")!=null){out.print(map.get("ebrg_tltp"));}%>
                </span></span><span id="a09" style="display:none">，TLX Charges Currency为 <span class="R1" id="ebrg_tlcy">
                <%if(map.get("ebrg_tlcy")!=null){out.print(map.get("ebrg_tlcy"));}%>
                </span> </span><span id="a05" style="display:none">，邮电费金额 <span class="R1">
                <%if(map.get("ebrg_taam")!=null){out.print(map.get("ebrg_taam"));}%>
                </span> </span><span id="a06" style="display:none"></span><span id="a07" style="display:none">；快递国别 <span class="R1" id="ebrg_cncd" >
                <%if(map.get("ebrg_cncd")!=null){out.print(map.get("ebrg_cncd"));}%>
              </span> ；</span>完成此登记后，产生电文和面函发往开证行。 </div>
            <div id="NE1" style="display:none">开证行收到从交单行交来单证后，进行来单登记，如果开证行已经做过提货担保，那么开证行可以不经过开证申请人同意，验证单证一致后即付款； <span id="i01" style="display:none">国外行费用<span class="R1" id="ibrg_ngch">
                <%if(map.get("ibrg_ngch")!=null){out.print(map.get("ibrg_ngch"));}%>
                </span>，</span>索汇金额<span class="R1" id="ibrg_dlam">
                <%if(map.get("ibrg_dlam")!=null){out.print(map.get("ibrg_dlam"));}%>
                </span>，收单日期<span class="R1" id="ibrg_apdt">
                <%if(map.get("ibrg_apdt")!=null){out.print(map.get("ibrg_apdt"));}%>
                </span>，<span id="i02" style="display:none">最迟承兑/付款日期<span class="R1" id="ibrg_shdt">
                <%if(map.get("ibrg_shdt")!=null){out.print(map.get("ibrg_shdt"));}%>
                </span>，</span><span id="i99" style="display:none">提单号<span class="R1" id="ibrg_blno">
                <%if(map.get("ibrg_blno")!=null){out.print(map.get("ibrg_blno"));}%>
              </span>，</span>此操作最终产生面函通知开证申请人。</div>
            <div id="NE2" style="display:none">议付行对已出口寄单未付款的单据进行修改的登记，此次修改议付是否押印核符为 <span class="R1" id="ebup_mkts">
                <%if(map.get("ebup_mkts")!=null){out.print(map.get("ebup_mkts"));}%>
                </span> <span id="b03" style="display:none">，是否不符点出单为 <span class="R1" id="ebup_drmk">
                <%if(map.get("ebup_drmk")!=null){out.print(map.get("ebup_drmk"));}%>
                </span></span> <span id="b08" style="display:none">，是否凭保函出单为 <span class="R1" id="ebup_ckgt">
                <%if(map.get("ebup_ckgt")!=null){out.print(map.get("ebup_ckgt"));}%>
                </span></span> ，议付日期 <span class="R1" id="ebup_rvdt">
                <%if(map.get("ebup_rvdt")!=null){out.print(map.get("ebup_rvdt"));}%>
                </span> ，币种 <span class="R1" id="ebup_dlcy">
                <%if(map.get("ebup_dlcy")!=null){out.print(map.get("ebup_dlcy"));}%>
                </span> ，金额 <span class="R1" id="ebup_dlam">
                <%if(map.get("ebup_dlam")!=null){out.print(map.get("ebup_dlam"));}%>
                </span> ，发票号 <span class="R1" id="ebup_ivno">
                <%if(map.get("ebup_ivno")!=null){out.print(map.get("ebup_ivno"));}%>
                </span> ，<span id="b01" style="display:none">核销单 <span class="R1" id="ebup_dtno">
                <%if(map.get("ebup_dtno")!=null){out.print(map.get("ebup_dtno"));}%>
                </span> ，</span><span id="b02" style="display:none">转让号 <span class="R1" id="ebup_tlrf">
                <%if(map.get("ebup_tlrf")!=null){out.print(map.get("ebup_tlrf"));}%>
                </span> ，</span>此操作费用收取对象 <span class="R1" id="ebup_chfr">
                <%if(map.get("ebup_chfr")!=null){out.print(map.get("ebup_chfr"));}%>
                </span> ，<span id="b99" style="display:"> 收费方式为 <span class="R1" id="ebup_chco">
                <%if(map.get("ebup_chco")!=null){out.print(map.get("ebup_chco"));}%>
                </span> </span><span id="b04" style="display:none">，邮电费类型为 <span class="R1" id="ebup_tltp">
                <%if(map.get("ebup_tltp")!=null){out.print(map.get("ebup_tltp"));}%>
                </span> </span><span id="b05" style="display:none">，邮电费金额 <span class="R1" id="ebup_taam">
                <%if(map.get("ebup_taam")!=null){out.print(map.get("ebup_taam"));}%>
                </span> ；</span><span id="b06" style="display:none"></span><span id="b07" style="display:none">快递国别 <span class="R1" id="ebup_cncd">
                <%if(map.get("ebup_cncd")!=null){out.print(map.get("ebup_cncd"));}%>
              </span> ；</span>完成此修改后，生成SWIFT电文发给开证行，生成面函连同修改单据一起寄给开证行。</div>
            <div id="NE3" style="display:none">开证行进口单据收到后，受益人提交给议付行的单据可能有误(如金额增减，替换某单据)，会重新提交新单据给议付行，开证行收到议付行寄来的新单据后，替换掉旧单据并产生&lt;&lt;来单付款通知书&gt;&gt;通知开证申请人，换单内容为：发票号 <span class="R1" id="ibub_ivno">
                <%if(map.get("ibub_ivno")!=null){out.print(map.get("ibub_ivno"));}%>
                </span> ，提单号 <span class="R1" id="ibub_ivno">
                <%if(map.get("ibub_blno")!=null){out.print(map.get("ibub_blno"));}%>
                </span> ，汇票金额 <span class="R1" id="ibub_dfam">
                <%if(map.get("ibub_dfam")!=null){out.print(map.get("ibub_dfam"));}%>
                </span> ，到期日 <span class="R1" id="ibub_dudt">
                <%if(map.get("ibub_dudt")!=null){out.print(map.get("ibub_dudt"));}%>
              </span> 。</div>
            <div id="NE4" style="display:none">开证申请人拿到单据后，没有在信用证项下发现不符点、不符点被接受、已经做过提货担保业务，即承兑，承兑日 <span class="R1" id="ibac_dudt">
                <%if(map.get("ibac_dudt")!=null){out.print(map.get("ibac_dudt"));}%>
                </span> ，付款到期日 <span class="R1" id="ibac_apdt">
                <%if(map.get("ibac_apdt")!=null){out.print(map.get("ibac_apdt"));}%>
                </span> ；此操作收费方式为 <span class="R1" id="ibac_chco">
                <%if(map.get("ibac_chco")!=null){out.print(map.get("ibac_chco"));}%>
                </span> ，<span id="c01" style="display:none"></span><span id="c02" style="display:none"></span><span id="c03" style="display:none">邮电费类型为 <span class="R1" id="ibac_tltp">
                <%if(map.get("ibac_tltp")!=null){out.print(map.get("ibac_tltp"));}%>
                </span> ，</span><span id="c04" style="display:none">实收邮费金额 <span class="R1" id="ibac_taam">
                <%if(map.get("ibac_taam")!=null){out.print(map.get("ibac_taam"));}%>
              </span> ；</span>操作完成后，产生电文发往议付行。</div>
            <div id="NE5" style="display:none">议付行将出口单据寄出后，超过预计时间尚未收汇，议付行会向开证行催收单据款项。
              即期一般掌握在15天之后，远期的未承兑的会催开证行尽快承兑，已承兑到期日未付款的催开证行付款。业务录入后，
              生成SWIFT电文(420\799\999)发送给开证行，此操作收费方式为 <span class="R1" id="ebtr_chco">
                        <%if(map.get("ebtr_chco")!=null){out.print(map.get("ebtr_chco"));}%>
                        </span> ，<span id="d01" style="display:none"></span><span id="d02" style="display:none">实收手续费 <span class="R1" id="ebtr_cham">
                        <%if(map.get("ebtr_cham")!=null){out.print(map.get("ebtr_cham"));}%>
                        </span> ，</span><span id="d03" style="display:none">快递国别 <span class="R1" id="ebtr_cncd">
                        <%if(map.get("ebtr_cncd")!=null){out.print(map.get("ebtr_cncd"));}%>
                        </span> ，</span><span id="d04" style="display:none">邮电费类型为 <span class="R1" id="ebtr_tltp">
                        <%if(map.get("ebtr_tltp")!=null){out.print(map.get("ebtr_tltp"));}%>
                        </span> </span><span id="d05" style="display:none">实收邮电费币种为 <span class="R1" id="ebtr_tlcy">
                        <%if(map.get("ebtr_tlcy")!=null){out.print(map.get("ebtr_tlcy"));}%>
                        </span> </span><span id="d06" style="display:none">实收邮费金额 <span class="R1" id="ebtr_taam">
                        <%if(map.get("ebtr_taam")!=null){out.print(map.get("ebtr_taam"));}%>
                      </span> ；</span>完成此登记后，产生电文发往开证行。</div>
            <div id="NE6" style="display:none">开证行收到议付行发来的索汇电文后，先不付款，要等议付行的单据寄到以后，审核无不符点之后，再通知偿付行向议付行付款；起息日 <span class="R1" id="ibpp_vldt">
                <%if(map.get("ibpp_vldt")!=null){out.print(map.get("ibpp_vldt"));}%>
                </span> ，收款行为 <span class="R1" id="ibpp_rvbk">
                <%if(map.get("ibpp_rvbk")!=null){out.print(map.get("ibpp_rvbk"));}%>
                </span> ，<span id="e01" style="display:none">收款行之帐户行 <span class="R1" id="ibpp_rabk">
                <%if(map.get("ibpp_rabk")!=null){out.print(map.get("ibpp_rabk"));}%>
                </span> ，</span><span id="e02" style="display:none">收款行帐号 <span class="R1" id="ibpp_raac">
                <%if(map.get("ibpp_raac")!=null){out.print(map.get("ibpp_raac"));}%>
                </span> ，</span><span id="e03" style="display:none">国外行费用 <span class="R1" id="ibpp_ngch">
                <%if(map.get("ibpp_ngch")!=null){out.print(map.get("ibpp_ngch"));}%>
                </span> ，</span>我行帐户行 <span class="R1" id="ibpp_acbk">
                <%if(map.get("ibpp_acbk")!=null){out.print(map.get("ibpp_acbk"));}%>
                </span> ，<span id="e04" style="display:none">押汇金额 <span class="R1" id="ibpp_amc1">
                <%if(map.get("ibpp_amc1")!=null){out.print(map.get("ibpp_amc1"));}%>
                </span> ，</span><span id="e05" style="display:none">保证金金额 <span class="R1" id="ibpp_amc2">
                <%if(map.get("ibpp_amc2")!=null){out.print(map.get("ibpp_amc2"));}%>
                </span> ，</span><span id="e06" style="display:none">3140科目帐号 <span class="R1" id="ibpp_acc1">
                <%if(map.get("ibpp_acc1")!=null){out.print(map.get("ibpp_acc1"));}%>
                </span> ，</span><span id="e07" style="display:none">原币汇出金额 <span class="R1" id="ibpp_amc4">
                <%if(map.get("ibpp_amc4")!=null){out.print(map.get("ibpp_amc4"));}%>
                </span> ，</span><span id="e08" style="display:none">原币帐号 <span class="R1" id="ibpp_acc4">
                <%if(map.get("ibpp_acc4")!=null){out.print(map.get("ibpp_acc4"));}%>
                </span> ，</span><span id="e09" style="display:none">售汇汇出金额 <span class="R1" id="ibpp_amc5">
                <%if(map.get("ibpp_amc5")!=null){out.print(map.get("ibpp_amc5"));}%>
                </span> ，</span><span id="e10" style="display:none">售汇帐号 <span class="R1" id="ibpp_acc5">
                <%if(map.get("ibpp_acc5")!=null){out.print(map.get("ibpp_acc5"));}%>
                </span> ，</span><span id="e11" style="display:none">实际汇率 <span class="R1" id="ibpp_exrt">
                <%if(map.get("ibpp_exrt")!=null){out.print(map.get("ibpp_exrt"));}%>
                </span> ，</span><span id="e99" style="display:none">售汇后金额 <span class="R1" id="ibpp_exam">
                <%if(map.get("ibpp_exam")!=null){out.print(map.get("ibpp_exam"));}%>
                </span> ，</span><span id="e12" style="display:none">套汇汇出金额 <span class="R1" id="ibpp_amc6">
                <%if(map.get("ibpp_amc6")!=null){out.print(map.get("ibpp_amc6"));}%>
                </span> ，</span><span id="e13" style="display:none">外汇买卖方式 <span class="R1" id="ibpp_fxkd">
                <%if(map.get("ibpp_fxkd")!=null){out.print(map.get("ibpp_fxkd"));}%>
                </span> ，</span><span id="e14" style="display:none">套汇帐号 <span class="R1" id="ibpp_acc6">
                <%if(map.get("ibpp_acc6")!=null){out.print(map.get("ibpp_acc6"));}%>
                </span> ，</span><span id="e15" style="display:none">买入价 <span class="R1" id="ibpp_byft">
                <%if(map.get("ibpp_byft")!=null){out.print(map.get("ibpp_byft"));}%>
                </span> ，</span><span id="e16" style="display:none">卖出价 <span class="R1" id="ibpp_slrt">
                <%if(map.get("ibpp_slrt")!=null){out.print(map.get("ibpp_slrt"));}%>
                </span> ，</span><span id="e98" style="display:none">套汇后金额 <span class="R1" id="ibpp_dram">
                <%if(map.get("ibpp_dram")!=null){out.print(map.get("ibpp_dram"));}%>
                </span> ，</span><span id="e17" style="display:none">售汇性质是 <span class="R1" id="ibpp_shxz">
                <%if(map.get("ibpp_shxz")!=null){out.print(map.get("ibpp_shxz"));}%>
                </span> ，</span><span id="e18" style="display:none">对公/对私是 <span class="R1" id="ibpp_cmpr">
                <%if(map.get("ibpp_cmpr")!=null){out.print(map.get("ibpp_cmpr"));}%>
                </span> ，</span><span id="e19" style="display:none">是否凭备案表付款 <span class="R1" id="ibpp_mepy">
                <%if(map.get("ibpp_mepy")!=null){out.print(map.get("ibpp_mepy"));}%>
                </span> ，</span><span id="e20" style="display:none">是否异地付汇 <span class="R1" id="ibpp_ctpy">
                <%if(map.get("ibpp_ctpy")!=null){out.print(map.get("ibpp_ctpy"));}%>
                </span> ，</span>申报号是 <span class="R1" id="ibpp_sbno">
                <%if(map.get("ibpp_sbno")!=null){out.print(map.get("ibpp_sbno"));}%>
                </span> ，<span id="e21" style="display:none">交易代码 <span class="R1" id="ibpp_tytp">
                <%if(map.get("ibpp_tytp")!=null){out.print(map.get("ibpp_tytp"));}%>
                </span> ，</span>此操作费用收取对象 <span class="R1" id="ibpp_chfr">
                <%if(map.get("ibpp_chfr")!=null){out.print(map.get("ibpp_chfr"));}%>
                </span> ，<span id="e22" style="display:">收费方式为 <span class="R1" id="ibpp_chco">
                <%if(map.get("ibpp_chco")!=null){out.print(map.get("ibpp_chco"));}%>
                </span> ，</span><span id="e23" style="display:none"></span><span id="e24" style="display:none"></span><span id="e25" style="display:none">邮电费类型为 <span class="R1" id="ibpp_tltp">
                <%if(map.get("ibpp_tltp")!=null){out.print(map.get("ibpp_tltp"));}%>
                </span> ，</span><span id="e26" style="display:none">我行邮电费 <span class="R1" id="ibpp_taam">
                <%if(map.get("ibpp_taam")!=null){out.print(map.get("ibpp_taam"));}%>
                </span> ，</span>帐务核销号为 <span class="R1" id="ibpp_ckno">
                <%if(map.get("ibpp_ckno")!=null){out.print(map.get("ibpp_ckno"));}%>
                </span> ，<span id="e27" style="display:none">凭证核销日期 <span class="R1" id="ibpp_crdt">
                <%if(map.get("ibpp_crdt")!=null){out.print(map.get("ibpp_crdt"));}%>
              </span> ；</span>完成此操作后，产生电文发往议付行。</div>
            <div id="NE7" style="display:none">退单属于单据带有不符点的情况下，开证人拒绝承兑或付款，并指示开证行将单据退回议付行；此项功能用于开证申请人要求开证行将议付行提交的进口单据退回的操作。生成SWIFT报文(799\999)发送给议付行，生成&lt;&lt;退单面函&gt;&gt;连同退回的单据一起寄给议付行。</div>
            <div id="NE8" style="display:none">收到开证行的退单电文和退回的单据，议付行做退单登记。</div>
            <div id="NE9" style="display:none">单据带有不符点的情况下，议付行根据受益人的要求先不寄单据，将单据不符点以电报形式发送给开证行。此功能用于开证行登记来自议付行的单据的电提不符点。通知日期 <span class="R1" id="ibdr_ardt">
                <%if(map.get("ibdr_ardt")!=null){out.print(map.get("ibdr_ardt"));}%>
              </span>，业务录入后，生成面函&lt;&lt;电提不符点通知&gt;&gt;通知开证人。</div>
            <div id="NE10" style="display:none">开证行完成电提不符点登记后，对议付行电提的不符点进行回复。生成SWIFT电文(752\799\999)给议付行，通知其[是/否]<span class="R1" id="ibdk_drrv">
                <%if(map.get("ibdk_drrv")!=null){out.print(map.get("ibdk_drrv"));}%>
              </span>接受该单据的不符点。</div>
            <div id="NE11" style="display:none">议付行收到开证行的承兑电文后，按电文内容做承兑登记。</div>
            <div id="NE12" style="display:none">开证行做了承兑后，开证申请人申请更改承兑到期日，更改到期日为 <span class="R1" id="ibum_dudt">
                <%if(map.get("ibum_dudt")!=null){out.print(map.get("ibum_dudt"));}%>
              </span> ；操作完成后产生电文发往议付行。</div>
            <div id="NE13" style="display:none">已经做了来单登记的信用证业务，检查有不符点时，开证申请人授权开证行做拒承/付款操作，操作完成后发电文给议付行。</div>
            <div id="NE14" style="display:none">议付行收到开证行的拒承/付款电文后，做拒承兑/付款登记</div>
            <div id="NE15" style="display:none">议付行收到开证行拒付/承兑电文后或其他条件下，受益人(出口商)指示议付行开证申请人(进口商)可以无偿取得单据，在此功能项下做登记， <span id="f01" style="display:none">此操作费用收取对象 <span class="R1" id="ebnp_tlfr">
                <%if(map.get("ebnp_tlfr")!=null){out.print(map.get("ebnp_tlfr"));}%>
                </span> ；</span><span id="f02" style="display:">收费方式为 <span class="R1" id="ebnp_chco">
                <%if(map.get("ebnp_chco")!=null){out.print(map.get("ebnp_chco"));}%>
                </span> ；</span><span id="f03" style="display:none"></span><span id="f04" style="display:none">实收手续费金额为 <span class="R1" id="ebnp_cham">
                <%if(map.get("ebnp_cham")!=null){out.print(map.get("ebnp_cham"));}%>
                </span> ；</span><span id="f05" style="display:none">快递国别 <span class="R1" id="ebnp_cncd">
                <%if(map.get("ebnp_cncd")!=null){out.print(map.get("ebnp_cncd"));}%>
                </span> ；</span><span id="f06" style="display:none">邮电费类型为 <span class="R1" id="ebnp_tltp">
                <%if(map.get("ebnp_tltp")!=null){out.print(map.get("ebnp_tltp"));}%>
                </span> ；</span><span id="f07" style="display:none">邮电费币种 <span class="R1" id="ebnp_tlcy">
                <%if(map.get("ebnp_tlcy")!=null){out.print(map.get("ebnp_tlcy"));}%>
                </span> ；</span><span id="f08" style="display:none">实收邮电费金额 <span class="R1" id="ebnp_taam">
                <%if(map.get("ebnp_taam")!=null){out.print(map.get("ebnp_taam"));}%>
                  。</span></span></div>
            <div id="NE16" style="display:none">开证行根据议付行的指示，在开证申请人不付款的情况下将进口单据放给开证人。</div>
            <div id="NE17" style="display:none">议付行收到开证行的更改承兑到期日电文后，按电文内容做修改承兑内容操作。</div>
            <div id="NE18" style="display:none">开证行验证单证一致或信用证项下有不符点但开证申请人同意付款的情况下，开证行做付款操作，起息日 <span class="R1" id="ibpy_vldt">
                <%if(map.get("ibpy_vldt")!=null){out.print(map.get("ibpy_vldt"));}%>
                </span> ，<span id="g01" style="display:none">收款行之帐户行 <span class="R1" id="ibpy_rabk">
                <%if(map.get("ibpy_rabk")!=null){out.print(map.get("ibpy_rabk"));}%>
                </span> ，</span><span id="g02" style="display:none">收款行帐号 <span class="R1" id="ibpy_raac">
                <%if(map.get("ibpy_raac")!=null){out.print(map.get("ibpy_raac"));}%>
                </span> ，</span><span id="g03" style="display:none">国外行费用 <span class="R1" id="ibpy_ngch">
                <%if(map.get("ibpy_ngch")!=null){out.print(map.get("ibpy_ngch"));}%>
                </span> ，</span>我行帐户行 <span class="R1" id="ibpy_acbk">
                <%if(map.get("ibpy_acbk")!=null){out.print(map.get("ibpy_acbk"));}%>
                </span> ，<span id="g04" style="display:none">押汇金额 <span class="R1" id="ibpy_amc1">
                <%if(map.get("ibpy_amc1")!=null){out.print(map.get("ibpy_amc1"));}%>
                </span> ，</span><span id="g05" style="display:none">原币汇出金额 <span class="R1" id="ibpy_amc4">
                <%if(map.get("ibpy_amc4")!=null){out.print(map.get("ibpy_amc4"));}%>
                </span> ，</span><span id="g06" style="display:none">原币帐号 <span class="R1" id="ibpy_acc4">
                <%if(map.get("ibpy_acc4")!=null){out.print(map.get("ibpy_acc4"));}%>
                </span> ，</span><span id="g07" style="display:none">售汇汇出金额 <span class="R1" id="ibpy_amc5">
                <%if(map.get("ibpy_amc5")!=null){out.print(map.get("ibpy_amc5"));}%>
                </span> ，</span><span id="g08" style="display:none">售汇帐号 <span class="R1" id="ibpy_acc5">
                <%if(map.get("ibpy_acc5")!=null){out.print(map.get("ibpy_acc5"));}%>
                </span> ，</span><span id="g09" style="display:none">实际汇率 <span class="R1" id="ibpy_exrt">
                <%if(map.get("ibpy_exrt")!=null){out.print(map.get("ibpy_exrt"));}%>
                </span> ，</span><span id="g10" style="display:none">套汇汇出金额 <span class="R1" id="ibpy_amc6">
                <%if(map.get("ibpy_amc6")!=null){out.print(map.get("ibpy_amc6"));}%>
                </span> ，</span><span id="g11" style="display:none">套汇帐号 <span class="R1" id="ibpy_acc6">
                <%if(map.get("ibpy_acc6")!=null){out.print(map.get("ibpy_acc6"));}%>
                </span> ，</span><span id="g12" style="display:none">外汇买卖方式 <span class="R1" id="ibpy_fxkd2">
                <%if(map.get("ibpy_fxkd2")!=null){out.print(map.get("ibpy_fxkd2"));}%>
                </span> ，</span><span id="g13" style="display:none">买入价 <span class="R1" id="ibpy_byft">
                <%if(map.get("ibpy_byft")!=null){out.print(map.get("ibpy_byft"));}%>
                </span> ，</span><span id="g14" style="display:none">卖出价 <span class="R1" id="ibpy_slrt">
                <%if(map.get("ibpy_slrt")!=null){out.print(map.get("ibpy_slrt"));}%>
                </span> ，</span><span id="g15" style="display:none">套汇汇率 <span class="R1" id="ibpy_exr1">
                <%if(map.get("ibpy_exr1")!=null){out.print(map.get("ibpy_exr1"));}%>
                </span> ，</span><span id="g16" style="display:none">售汇性质 <span class="R1" id="ibpy_shxz">
                <%if(map.get("ibpy_shxz")!=null){out.print(map.get("ibpy_shxz"));}%>
                </span> ，</span><span id="g17" style="display:none">对公/对私是 <span class="R1" id="ibpy_cmpr">
                <%if(map.get("ibpy_cmpr")!=null){out.print(map.get("ibpy_cmpr"));}%>
                </span> ，</span><span id="g18" style="display:none">是否凭备案表付款 <span class="R1" id="ibpy_mepy">
                <%if(map.get("ibpy_mepy")!=null){out.print(map.get("ibpy_mepy"));}%>
                </span> ，</span><span id="g19" style="display:none">是否异地付汇 <span class="R1" id="ibpy_ctpy">
                <%if(map.get("ibpy_ctpy")!=null){out.print(map.get("ibpy_ctpy"));}%>
                </span> ，</span>申报号是 <span class="R1" id="ibpy_sbno">
                <%if(map.get("ibpy_sbno")!=null){out.print(map.get("ibpy_sbno"));}%>
                </span> ，<span id="g20" style="display:none">交易代码 <span class="R1" id="ibpy_tytp">
                <%if(map.get("ibpy_tytp")!=null){out.print(map.get("ibpy_tytp"));}%>
                </span> ，</span>此操作费用收取对象 <span class="R1" id="ibpy_chfr">
                <%if(map.get("ibpy_chfr")!=null){out.print(map.get("ibpy_chfr"));}%>
                </span> ，收费方式为 <span class="R1" id="ibpy_chco">
                <%if(map.get("ibpy_chco")!=null){out.print(map.get("ibpy_chco"));}%>
                </span> ，<span id="g21" style="display:none"></span><span id="g22" style="display:none"></span><span id="g23" style="display:none">邮电费类型为 <span class="R1" id="ibpy_tltp">
                <%if(map.get("ibpy_tltp")!=null){out.print(map.get("ibpy_tltp"));}%>
                </span> ，</span><span id="g24" style="display:none">我行邮电费 <span class="R1" id="ibpy_taam">
                <%if(map.get("ibpy_taam")!=null){out.print(map.get("ibpy_taam"));}%>
                </span> ，</span><span id="g25" style="display:none">帐务核销号为 <span class="R1" id="ibpy_ckno">
                <%if(map.get("ibpy_ckno")!=null){out.print(map.get("ibpy_ckno"));}%>
                </span> ，</span><span id="g26" style="display:none">凭证核销日期 <span class="R1" id="ibpy_crdt">
                <%if(map.get("ibpy_crdt")!=null){out.print(map.get("ibpy_crdt"));}%>
              </span> ；</span>完成此操作后，产生电文发往议付行。</div>
            <div id="NE19" style="display:none">议付行收到开证行的付款电文后，做收汇解付，国外收费金额 <span id="h01" style="display:none"><span class="R1" id="ebpy_fnam">
                <%if(map.get("ebpy_fnam")!=null){out.print(map.get("ebpy_fnam"));}%>
                </span>，</span><span id="h02" style="display:none"></span>应收手续费 <span class="R1" id="ebpy_fnch">
                <%if(map.get("ebpy_fnch")!=null){out.print(map.get("ebpy_fnch"));}%>
                </span>，应收邮电费 <span class="R1" id="ebpy_fntl">
                <%if(map.get("ebpy_fntl")!=null){out.print(map.get("ebpy_fntl"));}%>
                </span> ，帐户行 <span class="R1" id="ebpy_acbk">
                <%if(map.get("ebpy_acbk")!=null){out.print(map.get("ebpy_acbk"));}%>
                </span> ，<span id="h03" style="display:none">解付方式的方式为 <span class="R1" id="ebpy_jffs">
                <%if(map.get("ebpy_jffs")!=null){out.print(map.get("ebpy_jffs"));}%>
                </span> ，</span><span id="h04" style="display:none">原币入帐/扣帐金额为 <span class="R1" id="ebpy_dcam">
                <%if(map.get("ebpy_dcam")!=null){out.print(map.get("ebpy_dcam"));}%>
                </span> ，</span><span id="h05" style="display:none">原币入帐/扣帐帐号为 <span class="R1" id="ebpy_stac">
                <%if(map.get("ebpy_stac")!=null){out.print(map.get("ebpy_stac"));}%>
                </span> ，</span><span id="h06" style="display:none">待结/售汇外币金额为 <span class="R1" id="ebpy_stam">
                <%if(map.get("ebpy_stam")!=null){out.print(map.get("ebpy_stam"));}%>
                </span> ，</span><span id="h07" style="display:none">人民币入/扣帐帐号为 <span class="R1" id="ebpy_rmac">
                <%if(map.get("ebpy_rmac")!=null){out.print(map.get("ebpy_rmac"));}%>
                </span> ，</span><span id="h08" style="display:none">结汇汇率为 <span class="R1" id="ebpy_exrt">
                <%if(map.get("ebpy_exrt")!=null){out.print(map.get("ebpy_exrt"));}%>
                </span> ，</span><span id="h09" style="display:none">售汇统计类型(融资)为 <span class="R1" id="ebpy_shxz">
                <%if(map.get("ebpy_shxz")!=null){out.print(map.get("ebpy_shxz"));}%>
                </span> ，</span><span id="h10" style="display:none">待套汇外币金额为 <span class="R1" id="ebpy_pdam">
                <%if(map.get("ebpy_pdam")!=null){out.print(map.get("ebpy_pdam"));}%>
                </span> ，</span><span id="h11" style="display:none">套汇币种为 <span class="R1" id="ebpy_thcy">
                <%if(map.get("ebpy_thcy")!=null){out.print(map.get("ebpy_thcy"));}%>
                </span> ，</span><span id="h12" style="display:none">套汇入/扣帐帐号为 <span class="R1" id="ebpy_thac">
                <%if(map.get("ebpy_thac")!=null){out.print(map.get("ebpy_thac"));}%>
                </span> ，</span><span id="h13" style="display:none">外汇买卖方式为 <span class="R1" id="ebpy_fxkd">
                <%if(map.get("ebpy_fxkd")!=null){out.print(map.get("ebpy_fxkd"));}%>
                </span> ，</span><span id="h14" style="display:none">汇价为 <span class="R1" id="ebpy_exr2">
                <%if(map.get("ebpy_exr2")!=null){out.print(map.get("ebpy_exr2"));}%>
                </span> ，</span><span id="h15" style="display:none">卖出价为 <span class="R1" id="ebpy_slrt">
                <%if(map.get("ebpy_slrt")!=null){out.print(map.get("ebpy_slrt"));}%>
                </span> ，</span><span id="h16" style="display:none">买入价为 <span class="R1" id="ebpy_byft">
                <%if(map.get("ebpy_byft")!=null){out.print(map.get("ebpy_byft"));}%>
                </span> ，</span><span id="h17" style="display:none">涉外统计 <span class="R1" id="ebpy_strn">
                <%if(map.get("ebpy_strn")!=null){out.print(map.get("ebpy_strn"));}%>
                </span> ，</span><span id="h18" style="display:none">对公对私为 <span class="R1" id="ebpy_corp">
                <%if(map.get("ebpy_corp")!=null){out.print(map.get("ebpy_corp"));}%>
                </span> ，</span><span id="h19" style="display:none">区域性质为 <span class="R1" id="ebpy_nat">
                <%if(map.get("ebpy_nat")!=null){out.print(map.get("ebpy_nat"));}%>
                </span> ，</span>申报统计类型为 <span class="R1" id="ebpy_natp">
                <%if(map.get("ebpy_natp")!=null){out.print(map.get("ebpy_natp"));}%>
                </span> ，<span id="h20" style="display:none">国家代码 <span class="R1" id="ebpy_cncd">
                <%if(map.get("ebpy_cncd")!=null){out.print(map.get("ebpy_cncd"));}%>
                </span> ，</span> 收汇类型为 <span class="R1" id="ebpy_shtp">
                <%if(map.get("ebpy_shtp")!=null){out.print(map.get("ebpy_shtp"));}%>
                </span> ，申报号为 <span class="R1" id="ebpy_stno">
                <%if(map.get("ebpy_stno")!=null){out.print(map.get("ebpy_stno"));}%>
                </span> <span id="h21" style="display:none">，交易代码为 <span class="R1" id="ebpy_tytp">
                <%if(map.get("ebpy_tytp")!=null){out.print(map.get("ebpy_tytp"));}%>
              </span></span> 。</div>
            <div id="NE20" style="display:none">开证行将开证申请人同意付款或已承兑或无偿交单的单据交给开证申请人并登记。</div>
          </div></td>
			   </tr> 
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><div class="footer">
                        <button class="btn btn-primary" onclick="self.print();return false">
                            <i class="fa fa-print fa-2x"></i> 打印
                        </button>
                    </div></td>
                  </tr>
                  </table></td>
				<td class="innerTable_bottom_right"></td>
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
</table><form>
	<%String names=(String)map.get("NEH");%>
		<%String spanNames=(String)map.get("idPS");%>
		<input type="hidden" id="showDiv" value="<%=names%>">
		<input type="hidden" id="showSpan" value="<%=spanNames%>">
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
