<%--来证修改通知--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<script>
function switchchco(flag)
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
            $("caam").value = "";
			$("caam").disabled=true;
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			if(flag)//在页面导入的时候不加载ajax
            getCharge("caam","01","100",$("prid").value);
	}
}

function adds(){
var f = document.forms[0];
var blav=parseInt(f.blav.value);//信用证余额
var zen = f.adsn.value;//增减金额标记

if(f.adam.value==''||f.adam.value==null){
var temp =parseInt("0");
}else{
var temp = parseInt(f.adam.value);//增加金额
}

var last= parseInt("0");

if(zen=='+'){
last =blav+ temp;
document.forms[0].aaam.value=last;
}else{
if(blav<temp){
alert("增减的金额大于信用证余额！");
document.forms[0].adam.value='';
}else{
last =blav- temp;
document.forms[0].aaam.value=last;
 }
}
}

</script>
</head>

<body onLoad="switchchco(false);adds();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_div" class="kuangScroll"><!--内容开始--> <html:form action="ELUP.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<%--操作码 --%>
						<html:hidden property="prid" />
						<%--流水号 --%>
						<html:hidden property="rfno" />
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证号：</td>
									<td valign="top"><html:text property="lcno" title="lcno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证通知号：</td>
									<td valign="top"><html:text property="adno" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*修改次数：</td>
									<td valign="top"><html:text property="aeno" title="aeno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否印押核符：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkts">
										<%out.println(request.getAttribute("OPTION_MKTS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*开证行：</td>
									<td valign="top"><html:text styleClass="bank" property="isbk" title="isbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','isbk,isbknm,isbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证行名称：</td>
									<td valign="top"><html:text styleClass="name_width" property="isbknm" readonly="true" />
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证行名址：</td>
									<td valign="top"><html:textarea property="isbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证日期：</td>
									<td valign="top"><html:text styleClass="date" property="isdt"
										readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人代码：</td>
									<td valign="top"><html:text styleClass="clientNum"
										property="clno" readonly="true" /> <html:image src="/IB/images/winsearch.gif"
										tabindex="1" property="more_btn"
										onclick="openWin('clientNum','clno,clnonm,clnoad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人名称：</td>
									<td valign="top"><html:text property="clnonm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人名址：</td>
									<td valign="top"><html:textarea property="clnoad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">最迟装运期：</td>
									<td valign="top"><html:text styleClass="date" property="shdt"
										readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*修改日期：</td>
									<td valign="top"><html:text styleClass="date" property="aedt"
										readonly="true" title="aedt"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','aedt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原证币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" disabled="true">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原证金额：</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">信用证余额：</td>
									<td valign="top"><html:text property="blav" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*修改方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="aemd" title="aemd">
										<%out.println(request.getAttribute("OPTION_AEMD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">增减额标识：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="adsn" onchange="adds()">
										<%out.println(request.getAttribute("OPTION_ADSN"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">修改后币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" >
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">增减金额：</td>
									<td valign="top"><html:text property="adam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"  onblur="adds()" onfocus="javascript:this.value=''"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">修改后余额：</td>
									<td valign="top"><html:text property="aaam" onclick="adds()" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">修改后付款条件：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">期限：</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">新到期日：</td>
									<td valign="top"><html:text styleClass="date" property="epdt"
										readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否保兑：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkcf">
										<%out.println(request.getAttribute("OPTION_MKSB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否转让：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mktr">
										<%out.println(request.getAttribute("OPTION_MKTR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行：</td>
									<td valign="top"><html:text styleClass="bank" property="tlbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tlbk,tlbknm,tlbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行名称：</td>
									<td valign="top"><html:text styleClass="name_width" property="tlbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行名址：</td>
									<td valign="top"><html:textarea property="tlbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行业务编号：</td>
									<td valign="top"><html:text property="tlrf" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收费方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true);">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费币种：</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">实收手续费：</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					
                  
				<!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x">  <html:hidden property="errCode" />
					<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
				  <tr>
                     <td align="center" valign="bottom" width="100%">
					<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//电文
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录
		if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' name="letter" onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp;
        <%}%>
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//复核、授权、已生效目录
	   if(letterFlag){
	    %>
		<input type="image" name="letter" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
        <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.viewTele" />'>&nbsp;&nbsp;
	    <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//报表列表。在经办(经办角色)里面看不到
		String step=null;
		if(tabID.equals("6")){
		step="3";//已生效的报表
		}else{
		step="2";//过了经办但是没有到已生效的报表
		}
		%>
		<input	type="image" src="<bean:message key="common.report" />"
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="incomeLCModificationInformDetailForm" property="rfno"/>&no=<bean:write name="incomeLCModificationInformDetailForm" property="adno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input	type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="incomeLCModificationInformDetailForm" property="adno"/>&prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('exportLCManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="incomeLCModificationInformDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
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
</table>
</body></html:form> 
</html:html>
