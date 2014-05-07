<%--国际结算案例（四）-光票托收行业务操作--%>
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
<script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"    src="/IB/case/case.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/xmlCase.js"></script>
	<script>
	function displayIdResult(showId)
	{
	//根据录入页面中复选框选中的状态,得到结果页面中相应层的显示和隐藏;
		var showIdResult=showId;//录入页面中checkbox的选中状态;
		var idName=new Array();
			idName=showIdResult.split(",")
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
<form>
		<%String names=(String)map.get("CDH");%>
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
                  <td height="20" align="left" valign="middle"><strong>类型：</strong>光票托收行业务操作</td>
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
						<div id="CD0" style="display:none">
						    委托人在
<span class="R1" id="ccrg_psdt"><%if(map.get("ccrg_psdt")!=null){out.print(map.get("ccrg_psdt"));}%></span>
							（托收日期）委托托收行进行光票的托收，收款人代码为
<span class="R1" id="ccrg_clno"><%if(map.get("ccrg_clno")!=null){out.print(map.get("ccrg_clno"));}%></span>
							；票据类型是
<span class="R1" id="ccrg_bitp"><%if(map.get("ccrg_bitp")!=null){out.print(map.get("ccrg_bitp"));}%></span>
					；票据张数 
<span class="R1" id="ccrg_blcn"><%if(map.get("ccrg_blcn")!=null){out.print(map.get("ccrg_blcn"));}%></span>
					；<span id="a01" style="display:none">票据号码为
<span class="R1" id="ccrg_blno"><%if(map.get("ccrg_blno")!=null){out.print(map.get("ccrg_blno"));}%></span>
					；</span>票据币种 
<span class="R1" id="ccrg_cyno"><%if(map.get("ccrg_cyno")!=null){out.print(map.get("ccrg_cyno"));}%></span>
					；票据金额
<span class="R1" id="ccrg_amts"><%if(map.get("ccrg_amts")!=null){out.print(map.get("ccrg_amts"));}%></span>
					；<span id="a02" style="display:none">托收方式 
<span class="R1" id="ccrg_ccmd"><%if(map.get("ccrg_ccmd")!=null){out.print(map.get("ccrg_ccmd"));}%></span>
					；</span>代收行是
<span class="R1" id="ccrg_icbk"><%if(map.get("ccrg_icbk")!=null){out.print(map.get("ccrg_icbk"));}%></span>
				   ；<span id="a03" style="display:none">付款人名称为
<span class="R1" id="ccrg_pre1"><%if(map.get("ccrg_pre1")!=null){out.print(map.get("ccrg_pre1"));}%></span>
				   ；</span>付款人国别及地区为
<span class="R1" id="ccrg_cncd"><%if(map.get("ccrg_cncd")!=null){out.print(map.get("ccrg_cncd"));}%></span>
					；<span id="a04" style="display:none">地区 
<span class="R1" id="ccrg_cncd2"><%if(map.get("ccrg_cncd2")!=null){out.print(map.get("ccrg_cncd2"));}%></span>
					；</span><span id="a05" style="display:none">区域属性
<span class="R1" id="ccrg_nat"><%if(map.get("ccrg_nat")!=null){out.print(map.get("ccrg_nat"));}%></span>，
					</span>申报统计类型
<span class="R1" id="ccrg_natp"><%if(map.get("ccrg_natp")!=null){out.print(map.get("ccrg_natp"));}%></span>
                   ；<span id="a06" style="display:none">核销单号码
<span class="R1" id="ccrg_dtno"><%if(map.get("ccrg_dtno")!=null){out.print(map.get("ccrg_dtno"));}%></span>
					</span>托收行收费方式为
<span class="R1" id="ccrg_chco"><%if(map.get("ccrg_chco")!=null){out.print(map.get("ccrg_chco"));}%></span>
					；</span><span id="a07" style="display:none">手续费为
<span class="R1" id="ccrg_cham"><%if(map.get("ccrg_cham")!=null){out.print(map.get("ccrg_cham"));}%></span>
					 ；</span><span id="a08" style="display:none"></span><span id="a09" style="display:none">采用
<span class="R1" id="ccrg_tltp"><%if(map.get("ccrg_tltp")!=null){out.print(map.get("ccrg_tltp"));}%></span>
					的方式发送邮件；</span><span id="a10" style="display:none">实收电报费
<span class="R1" id="ccrg_taam"><%if(map.get("ccrg_taam")!=null){out.print(map.get("ccrg_taam"));}%></span>
					。</span></div>			
	
                    <div id="CD1" style="display:none">托收行收费方式为
<span class="R1" id="cctr_chco"><%if(map.get("cctr_chco")!=null){out.print(map.get("cctr_chco"));}%></span>
                    <span id="b99" style="display:none">手续费为
<span class="R1" id="cctr_cham"><%if(map.get("cctr_cham")!=null){out.print(map.get("cctr_cham"));}%></span>
					；</span><span id="b01" style="display:none">邮电费类型为
<span class="R1" id="cctr_tltp"><%if(map.get("cctr_tltp")!=null){out.print(map.get("cctr_tltp"));}%></span>
                     ；</span><span id="b02" style="display:none">金额为
<span class="R1" id="cctr_taam"><%if(map.get("cctr_taam")!=null){out.print(map.get("cctr_taam"));}%></span>
                    。</span></div>
                  
                    <div id="CD2" style="display:none"> 收款人<span id="c01" style="display:none">（客户号）为
<span class="R1" id="ccpd_clno"><%if(map.get("ccpd_clno")!=null){out.print(map.get("ccpd_clno"));}%></span>
                        ，</span>买入利率是
<span class="R1" id="ccpd_obrt"><%if(map.get("ccpd_obrt")!=null){out.print(map.get("ccpd_obrt"));}%></span>
                        ，收款人帐号是
<span class="R1" id="ccpd_acno"><%if(map.get("ccpd_acno")!=null){out.print(map.get("ccpd_acno"));}%></span>
                        ；<span id="c02" style="display:none">结汇价是
<span class="R1" id="ccpd_exrt"><%if(map.get("ccpd_exrt")!=null){out.print(map.get("ccpd_exrt"));}%></span>
                        ；</span><span id="c03" style="display:none">人民币入帐金额是
<span class="R1" id="ccpd_exam"><%if(map.get("ccpd_exam")!=null){out.print(map.get("ccpd_exam"));}%></span>
                        。</span></div>
           
					<div id="CD3" style="display:none">
					 托收行收到代收行的付款电文和光票款项后，收汇并解付给委托人。<span id="d01" style="display:none">该解付帐务核销号为
<span class="R1" id="ccpy_ckno"><%if(map.get("ccpy_ckno")!=null){out.print(map.get("ccpy_ckno"));}%></span>
								        ，</span><span id="d02" style="display:none">凭证核销日期是
<span class="R1" id="ccpy_crdt"><%if(map.get("ccpy_crdt")!=null){out.print(map.get("ccpy_crdt"));}%></span>
								        ，</span>托收费金额是
<span class="R1" id="ccpy_caam"><%if(map.get("ccpy_caam")!=null){out.print(map.get("ccpy_caam"));}%></span>
								        ，邮电费金额是
<span class="R1" id="ccpy_tsam"><%if(map.get("ccpy_tsam")!=null){out.print(map.get("ccpy_tsam"));}%></span>
								        ，我行的帐户行为
<span class="R1" id="ccpy_acbk"><%if(map.get("ccpy_acbk")!=null){out.print(map.get("ccpy_acbk"));}%></span>
								        ，买入票据本息
<span class="R1" id="ccpy_bbam"><%if(map.get("ccpy_bbam")!=null){out.print(map.get("ccpy_bbam"));}%></span>
								        ，<span id="d03" style="display:none">原币入帐金额为
<span class="R1" id="ccpy_dcam"><%if(map.get("ccpy_dcam")!=null){out.print(map.get("ccpy_dcam"));}%></span>
                                        ，</span><span id="d04" style="display:none">原币入帐帐号为
<span class="R1" id="ccpy_thac"><%if(map.get("ccpy_stac")!=null){out.print(map.get("ccpy_stac"));}%></span>
                                        ，</span><span id="d05" style="display:none">待结汇外币金额为
<span class="R1" id="ccpy_stam"><%if(map.get("ccpy_stam")!=null){out.print(map.get("ccpy_stam"));}%></span>
                                        ，</span><span id="d06" style="display:none">结汇入帐账号为
<span class="R1" id="ccpy_rmac"><%if(map.get("ccpy_rmac")!=null){out.print(map.get("ccpy_rmac"));}%></span>
                                        ，</span><span id="d07" style="display:none">结汇汇率为
<span class="R1" id="ccpy_exrt"><%if(map.get("ccpy_exrt")!=null){out.print(map.get("ccpy_exrt"));}%></span>
                                        ，</span><span id="d08" style="display:none">待套汇外币金额为
<span class="R1" id="ccpy_pdam"><%if(map.get("ccpy_pdam")!=null){out.print(map.get("ccpy_pdam"));}%></span>
								        ，</span><span id="d09" style="display:none">套汇入帐帐号为
<span class="R1" id="ccpy_thax"><%if(map.get("ccpy_thax")!=null){out.print(map.get("ccpy_thax"));}%></span>
                                        ，</span><span id="d10" style="display:none">外汇买卖方式为
<span class="R1" id="ccpy_fxkd"><%if(map.get("ccpy_fxkd")!=null){out.print(map.get("ccpy_fxkd"));}%></span>
										，</span><span id="d11" style="display:none">汇价为
<span class="R1" id="ccpy_exr2"><%if(map.get("ccpy_exr2")!=null){out.print(map.get("ccpy_exr2"));}%></span>
										，</span><span id="d12" style="display:none">卖出价为
<span class="R1" id="ccpy_slrt"><%if(map.get("ccpy_slrt")!=null){out.print(map.get("ccpy_slrt"));}%></span>
										，</span><span id="d13" style="display:none">买入价为
<span class="R1" id="ccpy_byft"><%if(map.get("ccpy_byft")!=null){out.print(map.get("ccpy_byft"));}%></span>
										，</span><span id="d14" style="display:none">是否涉外统计为 
<span class="R1" id="ccpy_strn"><%if(map.get("ccpy_strn")!=null){out.print(map.get("ccpy_strn"));}%></span>
										，</span>对公对私为
<span class="R1" id="ccpy_corp"><%if(map.get("ccpy_corp")!=null){out.print(map.get("ccpy_corp"));}%></span>
										 ，收汇类型为 
<span class="R1" id="ccpy_shtp"><%if(map.get("ccpy_shtp")!=null){out.print(map.get("ccpy_shtp"));}%></span>
										 ，申报号为
<span class="R1" id="ccpy_stno"><%if(map.get("ccpy_stno")!=null){out.print(map.get("ccpy_stno"));}%></span>
										；<span id="d15" style="display:none">交易代码为
<span class="R1" id="ccpy_tytp"><%if(map.get("ccpy_tytp")!=null){out.print(map.get("ccpy_tytp"));}%></span>
										</span><span id="d16" style="display:none">，申报统计类型为
<span class="R1" id="ccpy_natp"><%if(map.get("ccpy_natp")!=null){out.print(map.get("ccpy_natp"));}%></span>
										，</span><span id="d17" style="display:none">交易附言为
<span class="R1" id="ccpy_trmo"><%if(map.get("ccpy_trmo")!=null){out.print(map.get("ccpy_trmo"));}%></span>。</span></div>

                            <div id="CD4" style="display:none"><span id="e01" style="display:none">收款人代码为
<span class="R1" id="ccrt_clno"><%if(map.get("ccrt_clno")!=null){out.print(map.get("ccrt_clno"));}%></span>
                                ；</span><span id="e02" style="display:none">代收行是
<span class="R1" id="ccrt_icbk"><%if(map.get("ccrt_icbk")!=null){out.print(map.get("ccrt_icbk"));}%></span>
                                ；</span><span id="e03" style="display:none">收费方式为
<span class="R1" id="ccrt_chco"><%if(map.get("ccrt_chco")!=null){out.print(map.get("ccrt_chco"));}%></span>
							    ；</span><span id="e04" style="display:none"></span><span id="e05" style="display:none">手续费金额为
<span class="R1" id="ccrt_cham"><%if(map.get("ccrt_cham")!=null){out.print(map.get("ccrt_cham"));}%></span>。</span>							</div>							
							<div id="CD5" style="display:none">收业务完成所需的交易过程后，做结清销卷登记。</div>
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
