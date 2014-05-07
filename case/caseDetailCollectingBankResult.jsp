<%--国际结算案例（五）--汇出、汇入汇款业务操作--%>
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
<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
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
}
	</script>		
	</head>
<body>
<form>
	    <%String names=(String)map.get("DCH");%>
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
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
			  <td colspan="3" > <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                <tr>
                  <td height="20" align="left" valign="middle"><strong>类型：</strong>托收行与代收行业务</td>
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
                  <td height="20" align="left" valign="middle"><strong>分数：</strong>
                      <%if(map.get("grade")!=null){out.print(map.get("grade"));}%>
                    分</td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td height="20" align="left" valign="middle"><span onClick="flash()"><strong>演示：</strong><img src="/IB/images/demo.gif" alt="案例演示" width="16" height="16"></span></td>
                </tr>
                <tr>
                  <td height="3" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
                </tr>
                <tr>
                  <td align="left" height="20"><strong>查询：</strong>
                      <input class="search" type="text" name="lable" id="lable" size="15">
                      <img src="/IB/images/search.gif" alt="查询" onClick="searchCase()" style="cursor:hand"></td>
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
						<div id="DC0" style="display:none">
						    托收人
<span class="R1" id="ocrg_clno"><%if(map.get("ocrg_clno")!=null){out.print(map.get("ocrg_clno"));}%></span> 
							，备齐出口托收单据后于
<span class="R1" id="ocrg_psdt"><%if(map.get("ocrg_psdt")!=null){out.print(map.get("ocrg_psdt"));}%></span> 
						      ，向代收行
<span class="R1" id="ocrg_icbk"><%if(map.get("ocrg_icbk")!=null){out.print(map.get("ocrg_icbk"));}%></span> 
						      ，提请出口托收业务，并提供发票号为 
<span class="R1" id="ocrg_ivno"><%if(map.get("ocrg_ivno")!=null){out.print(map.get("ocrg_ivno"));}%></span>
						        的货物发票。托收币种为
<span class="R1" id="ocrg_cyno"><%if(map.get("ocrg_cyno")!=null){out.print(map.get("ocrg_cyno"));}%></span>
							   ，托收金额为
<span class="R1" id="ocrg_amts"><%if(map.get("ocrg_amts")!=null){out.print(map.get("ocrg_amts"));}%></span>
						        ，托收类型为
<span class="R1" id="ocrg_pstp"><%if(map.get("ocrg_pstp")!=null){out.print(map.get("ocrg_pstp"));}%></span>
							  <span id="a99" style="display:none">，期限为
<span class="R1" id="ocrg_tenr_r"><%if(map.get("ocrg_tenr_r")!=null){out.print(map.get("ocrg_tenr_r"));}%></span>						      </span><span id="a01" style="display:none">，期限为
<span class="R1" id="ocrg_tenr_b"><%if(map.get("ocrg_tenr_b")!=null){out.print(map.get("ocrg_tenr_b"));}%></span>				          </span>天，付款人名称为
<span class="R1" id="ocrg_blpy"><%if(map.get("ocrg_blpy")!=null){out.print(map.get("ocrg_blpy"));}%></span>
						       ，付款地址为
<span class="R1" id="ocrg_ime1"><%if(map.get("ocrg_ime1")!=null){out.print(map.get("ocrg_ime1"));}%></span>
<span class="R1" id="ocrg_ocbknm"><%if(map.get("ocrg_ocbknm")!=null){out.print(map.get("ocrg_ocbknm"));}%></span>，承付日期是<span class="R1"><%if(map.get("ocrg_acdt")!=null){out.print(map.get("ocrg_acdt"));}%></span>，销帐日期是
<span class="R1" id="ocrg_gtdt"><%if(map.get("ocrg_gtdt")!=null){out.print(map.get("ocrg_gtdt"));}%></span>，签收日期是
<span class="R1" id="ocrg_sgdt"><%if(map.get("ocrg_sgdt")!=null){out.print(map.get("ocrg_sgdt"));}%></span>，托收行以<span class="R1"><%if(map.get("ocrg_chco")!=null){out.print(map.get("ocrg_chco"));}%></span>
							     的方式收取手续费
						       ，<span id="a03" style="display:none">采用
<span class="R1" id="ocrg_tltp"><%if(map.get("ocrg_tltp")!=null){out.print(map.get("ocrg_tltp"));}%></span>
								的方式发送邮件，</span><span id="a04" style="display:none">收取邮电费
<span class="R1" id="ocrg_taam"><%if(map.get("ocrg_taam")!=null){out.print(map.get("ocrg_taam"));}%></span>
						       ，</span><span id="a05" style="display:none">
								快递国别为
<span class="R1" id="ocrg_cncd"><%if(map.get("ocrg_cncd")!=null){out.print(map.get("ocrg_cncd"));}%></span>
								，</span>完成业务后生成&lt;&lt;出口托收指示书&gt;&gt;连同单据一起寄给代收行。						</div>
		
						<div id="DC1" style="display:none">代收行收到托收行寄来的进口代收单据后，进行进口代收业务录入，付款人客户
<span class="R1" id="icrg_clno"><%if(map.get("icrg_clno")!=null){out.print(map.get("icrg_clno"));}%></span>
						，在
<span class="R1" id="icrg_ardp"><%if(map.get("icrg_ardp")!=null){out.print(map.get("icrg_ardp"));}%></span>
						 ，收到托收行
<span class="R1" id="icrg_ocbk"><%if(map.get("icrg_ocbk")!=null){out.print(map.get("icrg_ocbk"));}%></span>
                         ，于
<span class="R1" id="icrg_dpdt"><%if(map.get("icrg_dpdt")!=null){out.print(map.get("icrg_dpdt"));}%></span>
						 寄出的单据，委托代收行
<span class="R1" id="icrg_icbk"><%if(map.get("icrg_icbk")!=null){out.print(map.get("icrg_icbk"));}%></span>
                         做进口代收登记业务，<span id="b01" style="display:none">出票人/收款人名称为
<span class="R1" id="icrg_drnm"><%if(map.get("icrg_drnm")!=null){out.print(map.get("icrg_drnm"));}%></span>
						 ，</span><span id="b03" style="display:none">需要的托收费用为
<span class="R1" id="icrg_cgam"><%if(map.get("icrg_cgam")!=null){out.print(map.get("icrg_cgam"));}%></span>
						 ，</span><span id="b04" style="display:none">于
<span class="R1" id="icrg_dudt"><%if(map.get("icrg_dudt")!=null){out.print(map.get("icrg_dudt"));}%></span>
						 （到期日）到期，</span><span id="b05" style="display:none">收款人所在地是
<span class="R1" id="icrg_gdtp"><%if(map.get("icrg_gdtp")!=null){out.print(map.get("icrg_gdtp"));}%></span>
						。</span><span id="b06" style="display:none">代收行以
<span class="R1" id="icrg_chco"><%if(map.get("icrg_chco")!=null){out.print(map.get("icrg_chco"));}%></span>
                      （收费方式）的方式向客户收取手续费，</span><span id="b09" style="display:none">采用
<span class="R1" id="icrg_tltp"><%if(map.get("icrg_tltp")!=null){out.print(map.get("icrg_tltp"));}%></span>
						 的方式发送邮件，</span><span id="b10" style="display:none">收取邮电费
<span class="R1" id="icrg_taam"><%if(map.get("icrg_taam")!=null){out.print(map.get("icrg_taam"));}%></span>
						  ，</span><span id="b11" style="display:none"></span>业务完成后，生成确认SWIFT电文给托收行及面函&lt;&lt;单据通知书&gt;&gt;给付款人。			  </div>
				
								<div id="DC2" style="display:none">托收行将出口托收单据寄出后，委托人又向托收行提交修改的单据，托收行依其指示处理，需要修改出口托收内容。<br>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具体为，修改后的客户代码为
<span class="R1" id="ocup_clno"><%if(map.get("ocup_clno")!=null){out.print(map.get("ocup_clno"));}%></span>
                                ，托收日期为
<span class="R1" id="ocup_psdt"><%if(map.get("ocup_psdt")!=null){out.print(map.get("ocup_psdt"));}%></span>，<span id="c01" style="display:none">增减标准为
<span class="R1" id="ocup_adsn"><%if(map.get("ocup_adsn")!=null){out.print(map.get("ocup_adsn"));}%></span>
                                ，</span><span id="c02" style="display:none">增减金额为
<span class="R1" id="ocup_adam"><%if(map.get("ocup_adam")!=null){out.print(map.get("ocup_adam"));}%></span>
                               ，</span>托收类型为
<span class="R1" id="ocup_pstp"><%if(map.get("ocup_pstp")!=null){out.print(map.get("ocup_pstp"));}%></span>
								 ，<span id="c99" style="display:none">期限为
<span class="R1" id="ocup_tenr_r"><%if(map.get("ocup_tenr_r")!=null){out.print(map.get("ocup_tenr_r"));}%></span>
								 天，</span><span id="c03" style="display:none">期限为
<span class="R1" id="ocup_tenr_b"><%if(map.get("ocup_tenr_b")!=null){out.print(map.get("ocup_tenr_b"));}%></span>
								  天，</span>付款人名称为
<span class="R1" id="ocup_blpy"><%if(map.get("ocup_blpy")!=null){out.print(map.get("ocup_blpy"));}%></span>
                                 ，<span id="c04" style="display:none">付款地址为
<span class="R1" id="ocup_ime1"><%if(map.get("ocup_ime1")!=null){out.print(map.get("ocup_ime1"));}%></span>
                                 ，</span>以
<span class="R1" id="ocup_chco"><%if(map.get("ocup_chco")!=null){out.print(map.get("ocup_chco"));}%></span>
								 的方式收取手续费，<span id="c07" style="display:none">采用
<span class="R1" id="ocup_tltp"><%if(map.get("ocup_tltp")!=null){out.print(map.get("ocup_tltp"));}%></span></span><span id="c08" style="display:none">，收取邮电费<span class="R1" id="ocup_taam"><%if(map.get("ocup_taam")!=null){out.print(map.get("ocup_taam"));}%></span>，</span><span id="c09" style="display:none">快递国别为<span class="R1" id="ocup_cncd"><%if(map.get("ocup_cncd")!=null){out.print(map.get("ocup_cncd"));}%></span>。</span>业务录入后，生成电文发送给代收行，生成面函连同修改的单据一起寄给代收行。</div>
					
					
								<div id="DC3" style="display:none">代收行根据托收行发送的电文和寄来的修改单据后做进口代收修改操作。修改收单日为
<span class="R1" id="iccg_ardp"><%if(map.get("iccg_ardp")!=null){out.print(map.get("iccg_ardp"));}%></span>
                                 ，寄单日为
<span class="R1" id="iccg_dpdt"><%if(map.get("iccg_dpdt")!=null){out.print(map.get("iccg_dpdt"));}%></span>
                                 ，<span id="d01">付款人客户代码为
<span class="R1" id="iccg_clno"><%if(map.get("iccg_clno")!=null){out.print(map.get("iccg_clno"));}%></span>
								，</span><span id="d02">出票人/收款人名称为
<span class="R1" id="iccg_drnm"><%if(map.get("iccg_drnm")!=null){out.print(map.get("iccg_drnm"));}%></span>
								，</span>托收类型
<span class="R1" id="iccg_pstp"><%if(map.get("iccg_pstp")!=null){out.print(map.get("iccg_pstp"));}%></span>
<span class="R1" id="iccg_tenr_r"><%if(map.get("iccg_tenr_r")!=null){out.print(map.get("iccg_tenr_r"));}%></span>天，</span>
								<span id="d03" style="display:none">期限
<span class="R1" id="iccg_tenr_b"><%if(map.get("iccg_tenr_b")!=null){out.print(map.get("iccg_tenr_b"));}%></span>天，</span>代收币种为<span class="R1"><%if(map.get("iccg_cyno")!=null){out.print(map.get("iccg_cyno"));}%></span>
<span class="R1" id="iccg_amts"><%if(map.get("iccg_amts")!=null){out.print(map.get("iccg_amts"));}%></span><span id="d04" style="display:none">，代收行费用为<span class="R1" id="iccg_cgam"><%if(map.get("iccg_cgam")!=null){out.print(map.get("iccg_cgam"));}%></span></span><span id="d05" style="display:none">，到期日为
<span class="R1" id="iccg_dudt"><%if(map.get("iccg_dudt")!=null){out.print(map.get("iccg_dudt"));}%></span>
                                ，</span>发票号为
<span class="R1" id="iccg_ivno"><%if(map.get("iccg_ivno")!=null){out.print(map.get("iccg_ivno"));}%></span>。</div>
								
				
								<div id="DC4" style="display:none">								托收行将出口托收单据寄出后，超过预计时间尚未收汇，托收行向代收行催收单据款项，根据业务需要天填写下列内容，
								<span id="e01" style="display:none">托收行为
<span class="R1" id="octr_icbk"><%if(map.get("octr_icbk")!=null){out.print(map.get("octr_icbk"));}%></span>
								，</span>以
<span class="R1" id="octr_chco"><%if(map.get("octr_chco")!=null){out.print(map.get("octr_chco"));}%></span>
						 的方式收取手续费，<span id="e04" style="display:none">采用
<span class="R1" id="octr_tltp"><%if(map.get("octr_tltp")!=null){out.print(map.get("octr_tltp"));}%></span>
<span class="R1" id="octr_taam"><%if(map.get("octr_taam")!=null){out.print(map.get("octr_taam"));}%></span>，</span>
						 <span id="e06" style="display:none">快递国别为
<span class="R1" id="octr_cncd"><%if(map.get("octr_cncd")!=null){out.print(map.get("octr_cncd"));}%></span>
						  。</span>业务录入后，生成电文发送给代收行。</div>
					
								<div id="DC5" style="display:none">如果是即期进口代收单据，付款人同意付款后，即将单据放给他并向托收行付款。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果是远期进口代收单据，付款人承兑到期日后，即将单据放给他并于承兑到期日付款 。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;付款人收到提货单据等相关单据后进行付款。
								<span id="f01" style="display:none">帐务核销号为
<span class="R1" id="icpy_ckno"><%if(map.get("icpy_ckno")!=null){out.print(map.get("icpy_ckno"));}%></span>
								，</span><span id="f02" style="display:none">凭证核销日期为
<span class="R1" id="icpy_crdt"><%if(map.get("icpy_crdt")!=null){out.print(map.get("icpy_crdt"));}%></span>
								，</span>付费金额为
<span class="R1" id="icpy_dlam"><%if(map.get("icpy_dlam")!=null){out.print(map.get("icpy_dlam"));}%></span>
								，<span id="f03" style="display:none">托收行费用为
<span class="R1" id="icpy_cgam"><%if(map.get("icpy_cgam")!=null){out.print(map.get("icpy_cgam"));}%></span>
								，</span>帐户行为
<span class="R1" id="icpy_acbk"><%if(map.get("icpy_acbk")!=null){out.print(map.get("icpy_acbk"));}%></span>
								，<span id="f04" style="display:none">中间行为
<span class="R1" id="icpy_mdbk"><%if(map.get("icpy_mdbk")!=null){out.print(map.get("icpy_mdbk"));}%></span>
<span class="R1" id="icpy_dudt"><%if(map.get("icpy_dudt")!=null){out.print(map.get("icpy_dudt"));}%></span>，<span id="f05" style="display:none">现汇支付金额是
<span class="R1" id="icpy_amc1"><%if(map.get("icpy_amc1")!=null){out.print(map.get("icpy_amc1"));}%></span>，</span>
								<span id="f06" style="display:none">原币账号是
<span class="R1" id="icpy_acc1"><%if(map.get("icpy_acc1")!=null){out.print(map.get("icpy_acc1"));}%></span>
								，</span><span id="f07" style="display:none">售出外汇金额是
<span class="R1" id="icpy_sdam"><%if(map.get("icpy_sdam")!=null){out.print(map.get("icpy_sdam"));}%></span>
								，</span><span id="f08" style="display:none">汇率为
<span class="R1" id="icpy_exrt"><%if(map.get("icpy_exrt")!=null){out.print(map.get("icpy_exrt"));}%></span>
								，</span><span id="f09" style="display:none">人民币账号为
<span class="R1" id="icpy_acc2"><%if(map.get("icpy_acc2")!=null){out.print(map.get("icpy_acc2"));}%></span>
								，</span><span id="f10" style="display:none">金额为
<span class="R1" id="icpy_amc2"><%if(map.get("icpy_amc2")!=null){out.print(map.get("icpy_amc2"));}%></span>
								，</span><span id="f11" style="display:none">套汇支付金额为
<span class="R1" id="icpy_amc7"><%if(map.get("icpy_amc7")!=null){out.print(map.get("icpy_amc7"));}%></span>，<span id="f12" style="display:none">外汇帐号是<span class="R1" id="icpy_acc3"><%if(map.get("icpy_acc3")!=null){out.print(map.get("icpy_acc3"));}%></span>，</span><span id="f99" style="display:none">外汇买卖方式为
<span class="R1" id="icpy_fxkd"><%if(map.get("icpy_fxkd")!=null){out.print(map.get("icpy_fxkd"));}%></span>
								</span><span id="f13" style="display:none">卖出价是
<span class="R1" id="icpy_slrt"><%if(map.get("icpy_slrt")!=null){out.print(map.get("icpy_slrt"));}%></span>		
							，</span><span id="f14" style="display:none">买入价是
<span class="R1" id="icpy_byft"><%if(map.get("icpy_byft")!=null){out.print(map.get("icpy_byft"));}%></span>		
								，</span><span id="f15" style="display:none">套汇汇率是
<span class="R1" id="icpy_dram"><%if(map.get("icpy_dram")!=null){out.print(map.get("icpy_dram"));}%></span>	
								，</span><span id="f16" style="display:none">售汇性质是
<span class="R1" id="icpy_shxz"><%if(map.get("icpy_shxz")!=null){out.print(map.get("icpy_shxz"));}%></span>	
								，</span>对公对私是
<span class="R1" id="icpy_cmpr"><%if(map.get("icpy_cmpr")!=null){out.print(map.get("icpy_cmpr"));}%></span>
								，<span id="f17" style="display:none">是否凭备案表付款为
<span class="R1" id="icpy_mepy"><%if(map.get("icpy_mepy")!=null){out.print(map.get("icpy_mepy"));}%></span>
								，</span><span id="f18" style="display:none">是否异地付汇
<span class="R1" id="icpy_ctpy"><%if(map.get("icpy_ctpy")!=null){out.print(map.get("icpy_ctpy"));}%></span>，</span>代收行以<span class="R1"><%if(map.get("icpy_chco")!=null){out.print(map.get("icpy_chco"));}%></span>
						 的方式收取手续费，<span id="f20" style="display:none"></span><span id="f21" style="display:none">
<span class="R1" id="icpy_tltp"><%if(map.get("icpy_tltp")!=null){out.print(map.get("icpy_tltp"));}%></span>
						 的方式发送邮件，</span><span id="f22" style="display:none">实收电报费
<span class="R1" id="icpy_taam"><%if(map.get("icpy_taam")!=null){out.print(map.get("icpy_taam"));}%></span> ，</span>
						申报号为
<span class="R1" id="icpy_sbno"><%if(map.get("icpy_sbno")!=null){out.print(map.get("icpy_sbno"));}%></span>。</div>
				  
                            <div id="DC6" style="display:none">付款人产生的远期进口代收单据，付款人承兑到期日后，代收行将单据放给付款人，付款人进行承兑，承兑托收行为
<span class="R1" id="icac_ocbk"><%if(map.get("icac_ocbk")!=null){out.print(map.get("icac_ocbk"));}%></span>
							，承兑币种为
<span class="R1" id="icac_dlcy"><%if(map.get("icac_dlcy")!=null){out.print(map.get("icac_dlcy"));}%></span>
							，承兑金额为
<span class="R1" id="icac_dlam"><%if(map.get("icac_dlam")!=null){out.print(map.get("icac_dlam"));}%></span>
                            ，它的付款到期日是
<span class="R1" id="icac_dudt"><%if(map.get("icac_dudt")!=null){out.print(map.get("icac_dudt"));}%></span>
<span class="R1" id="icac_chco"><%if(map.get("icac_chco")!=null){out.print(map.get("icac_chco"));}%></span>的方式收取手续费，<span id="g03" style="display:none">采用 
<span class="R1" id="icac_tltp"><%if(map.get("icac_tltp")!=null){out.print(map.get("icac_tltp"));}%></span> 
							的方式发送邮件，</span><span id="g04" style="display:none">实收电报费
<span class="R1" id="icac_taam"><%if(map.get("icac_taam")!=null){out.print(map.get("icac_taam"));}%></span>
						，</span><span id="g05" style="display:none">快递国别为
<span class="R1" id="icac_cncd"><%if(map.get("icac_cncd")!=null){out.print(map.get("icac_cncd"));}%></span></span>。</div>
			
							<div id="DC7" style="display:none">代收行以
<span class="R1" id="icrj_chco"><%if(map.get("icrj_chco")!=null){out.print(map.get("icrj_chco"));}%></span> 
							的方式收取手续费，<span id="h03" style="display:none">采用 
<span class="R1" id="icrj_tltp"><%if(map.get("icrj_tltp")!=null){out.print(map.get("icrj_tltp"));}%></span> 
							的方式发送邮件，</span><span id="h04" style="display:none">实收电报费
<span class="R1" id="icrj_taam"><%if(map.get("icrj_taam")!=null){out.print(map.get("icrj_taam"));}%></span> 
							，</span><span id="h05" style="display:none">快递国别为 
<span class="R1" id="icrj_cncd"><%if(map.get("icrj_cncd")!=null){out.print(map.get("icrj_cncd"));}%></span>
							。</span></div>						
				
						<div id="DC8" style="display:none">托收行收到代收行的付款电文和出口单据款项后，托收行将款项解付给委托人。<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;代收行扣除了国外收费金额
<span class="R1" id="ocpy_fnam"><%if(map.get("ocpy_fnam")!=null){out.print(map.get("ocpy_fnam"));}%></span>
						 ，我行账户行为
<span class="R1" id="ocpy_acbk"><%if(map.get("ocpy_acbk")!=null){out.print(map.get("ocpy_acbk"));}%></span>
						 。应收手续费
<span class="R1" id="ocpy_fnch"><%if(map.get("ocpy_fnch")!=null){out.print(map.get("ocpy_fnch"));}%></span>
						  ，应收邮电费
<span class="R1" id="ocpy_fntl"><%if(map.get("ocpy_fntl")!=null){out.print(map.get("ocpy_fntl"));}%></span>
						 。<span id="i01" style="display:none">解付方式的方式为
<span class="R1" id="ocpy_jffs"><%if(map.get("ocpy_jffs")!=null){out.print(map.get("ocpy_jffs"));}%></span>
						</span><span id="i02" style="display:none"> ，原币入帐/扣帐金额为 
<span class="R1" id="ocpy_dcam"><%if(map.get("ocpy_dcam")!=null){out.print(map.get("ocpy_dcam"));}%></span>
						</span><span id="i03" style="display:none"> ，原币入帐/扣帐帐号为
<span class="R1" id="ocpy_stac"><%if(map.get("ocpy_stac")!=null){out.print(map.get("ocpy_stac"));}%></span>
						</span><span id="i04" style="display:none">，待结/售汇外币金额为 
<span class="R1" id="ocpy_stam"><%if(map.get("ocpy_stam")!=null){out.print(map.get("ocpy_stam"));}%></span>
						</span><span id="i05" style="display:none"> ，结售汇入/扣帐账号为 
<span class="R1" id="ocpy_rmac"><%if(map.get("ocpy_rmac")!=null){out.print(map.get("ocpy_rmac"));}%></span>
						  </span><span id="i06" style="display:none">，结汇汇率为 
<span class="R1" id="ocpy_exrt"><%if(map.get("ocpy_exrt")!=null){out.print(map.get("ocpy_exrt"));}%></span>
						  </span><span id="i07" style="display:none">，售汇统计类型(融资)为 
<span class="R1" id="ocpy_shxz"><%if(map.get("ocpy_shxz")!=null){out.print(map.get("ocpy_shxz"));}%></span>
						   </span><span id="i08" style="display:none">，结售汇后金额为
<span class="R1" id="ocpy_exam"><%if(map.get("ocpy_exam")!=null){out.print(map.get("ocpy_exam"));}%></span>
						 </span><span id="i09" style="display:none"> ，待套汇外币金额为
<span class="R1" id="ocpy_pdam"><%if(map.get("ocpy_pdam")!=null){out.print(map.get("ocpy_pdam"));}%></span>
						 </span><span id="i10" style="display:none"> ，套汇币种为
<span class="R1" id="ocpy_thcy"><%if(map.get("ocpy_thcy")!=null){out.print(map.get("ocpy_thcy"));}%></span>
						</span><span id="i11" style="display:none"> ，套汇入/扣帐帐号为
<span class="R1" id="ocpy_thac"><%if(map.get("ocpy_thac")!=null){out.print(map.get("ocpy_thac"));}%></span>
						</span><span id="i12" style="display:none">，外汇买卖方式为
<span class="R1" id="ocpy_fxkd"><%if(map.get("ocpy_fxkd")!=null){out.print(map.get("ocpy_fxkd"));}%></span>
						  </span><span id="i13" style="display:none">，汇价为
<span class="R1" id="ocpy_exr2"><%if(map.get("ocpy_exr2")!=null){out.print(map.get("ocpy_exr2"));}%></span>
						</span><span id="i14" style="display:none"> ，卖出价为
<span class="R1" id="ocpy_slrt"><%if(map.get("ocpy_slrt")!=null){out.print(map.get("ocpy_slrt"));}%></span>
						 </span><span id="i15" style="display:none">，买入价为
<span class="R1" id="ocpy_byft"><%if(map.get("ocpy_byft")!=null){out.print(map.get("ocpy_byft"));}%></span>
						</span><span id="i16" style="display:none"></span><span id="i17" style="display:none"> ，另外是否涉外统计为
<span class="R1" id="ocpy_strn"><%if(map.get("ocpy_strn")!=null){out.print(map.get("ocpy_strn"));}%></span>
						 </span><span id="i18" style="display:none"> ，对公对私为 
<span class="R1" id="ocpy_corp"><%if(map.get("ocpy_corp")!=null){out.print(map.get("ocpy_corp"));}%></span>
						  ，申报统计类型为
<span class="R1" id="ocpy_natp"><%if(map.get("ocpy_natp")!=null){out.print(map.get("ocpy_natp"));}%></span>
						  ，收汇类型为
<span class="R1" id="ocpy_shtp"><%if(map.get("ocpy_shtp")!=null){out.print(map.get("ocpy_shtp"));}%></span>
						  </span>，申报号为
<span class="R1" id="ocpy_stno"><%if(map.get("ocpy_stno")!=null){out.print(map.get("ocpy_stno"));}%></span>
						 <span id="i19" style="display:none"> ，交易代码为
<span class="R1" id="ocpy_tytp"><%if(map.get("ocpy_tytp")!=null){out.print(map.get("ocpy_tytp"));}%></span>						</span><span id="i20" style="display:none"> ，区域性质为
<span class="R1" id="ocpy_nat"><%if(map.get("ocpy_nat")!=null){out.print(map.get("ocpy_nat"));}%></span>
						  。</span></div>
					
						<div id="DC9" style="display:none">在出口商远期项下的出口托收业务中，托收行收到代收行发来的进口商承兑电文，做承兑登记，所做的承兑金额为
<span class="R1" id="ocac_dlam"><%if(map.get("ocac_dlam")!=null){out.print(map.get("ocac_dlam"));}%></span>
						，到期日为
<span class="R1" id="ocac_dudt"><%if(map.get("ocac_dudt")!=null){out.print(map.get("ocac_dudt"));}%></span>
						。</div>
					
							<div id="DC10" style="display:none">托收行收到代收行的拒绝承兑或拒绝付款的电文，做拒承兑/付款登记业务。</div>
				
							<div id="DC11" style="display:none">托收行收到代收行拒承/付款电文后或发生其他情况后，出口商指示托收行进口商可以无偿取得托收单据的业务操作。业务录入后，生成电文发送给代收行。</div>
				
							<div id="DC12" style="display:none">进口代收行无偿交单，银行以
<span class="R1" id="icnp_chco"><%if(map.get("icnp_chco")!=null){out.print(map.get("icnp_chco"));}%></span>
							的方式收取手续费<span id="j03" style="display:none">采用 
<span class="R1" id="icnp_tltp"><%if(map.get("icnp_tltp")!=null){out.print(map.get("icnp_tltp"));}%></span>
							的方式发送邮件，</span><span id="j04" style="display:none">实收电报费
<span class="R1" id="icnp_taam"><%if(map.get("icnp_taam")!=null){out.print(map.get("icnp_taam"));}%></span></span><span id="j05">快递国别为<span class="R1" id="icnp_cncd"><%if(map.get("icnp_cncd")!=null){out.print(map.get("icnp_cncd"));}%></span></span>。</div>							
				
							<div id="DC13" style="display:none">进口代收行退单，银行以 
<span class="R1" id="icrt_chco"><%if(map.get("icrt_chco")!=null){out.print(map.get("icrt_chco"));}%></span>
							的方式收取手续费<span id="k03" style="display:none">采用 
<span class="R1" id="icrt_tltp"><%if(map.get("icrt_tltp")!=null){out.print(map.get("icrt_tltp"));}%></span>
							的方式发送邮件，</span><span id="k04" style="display:none">实收电报费
<span class="R1" id="icrt_taam"><%if(map.get("icrt_taam")!=null){out.print(map.get("icrt_taam"));}%></span>
							，</span><span id="k05" style="display:none">快递国别为
<span class="R1" id="icrt_cncd"><%if(map.get("icrt_cncd")!=null){out.print(map.get("icrt_cncd"));}%></span>
							</span>。</div>
				
							<div id="DC14" style="display:none">进口商(即付款人)拒付托收单据，并且指示代收行将单据退回托收行，托收行收到退单后进行登记操作并生成生成电文发送给代收行。</div>
				
							<div id="DC15" style="display:none">对出口托收单据已全额收汇或被代收行拒付并退单的登记操作，只是托收行内部的登记操作。</div>
				
                            <div id="DC16" style="display:none">进口代收行销卷。</div>
               </div></td>
			   </tr> 
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle"><div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false"></div></td>
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
</table><script>
var ids=new String();var spans=new String();ids=document.getElementById("showDiv").value;//复选框中选中的id名串
		displayIdResult(ids);
		spans=document.getElementById("showSpan").value;//非必选项中选中的id名串
		idSP(spans);
		</script>
</form>
</body>
</html>
