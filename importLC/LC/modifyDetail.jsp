<%--修改--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>
<html:html>
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
			$("tltp").disabled=true;
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			$("tltp").disabled=false;
			if(flag)
            getCharge("caam",$("lccy").value,$("lcam").value,$("prid").value);
	}
}

function adds(){
var f = document.forms[0];
var lcam=parseInt(f.lcam.value);//原证金额
var zen = f.adsn.value;//增减金额标记

if(f.adam.value==''||f.adam.value==null){
var temp =parseInt("0");
}else{
var temp = parseInt(f.adam.value);//增加金额
}
<%--if(f.lcam2.value==''||f.lcam2.value==null){--%>
<%--document.forms[0].lcam2.value = 0;--%>
<%--}--%>
var last= parseInt("0");
//var last = parseInt(f.lcam2.value);

if(zen=='+'){
last =lcam+ temp;
document.forms[0].lcam2.value=last;
}else{
if(lcam<temp){
alert("增减的金额过大！");
document.forms[0].adam.value='';
}else{
last =lcam- temp;
document.forms[0].lcam2.value=last;
 }
}
}

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
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
				<div id="innerTable_div" class="kuangScroll"><!--内容开始--> 
				<html:form action="LCUP.do" onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<%--操作码 --%>
								<html:hidden property="prid" />
								<%--机构号
								<html:hidden property="brno" /> --%>
								<%--流水号 --%>
								<html:hidden property="rfno" />
								<%--报表Id号 --%> <html:hidden property="bussinessId"/>
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">修改次数：</td>
									<td valign="top"><html:text property="adno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证号码：</td>
									<td valign="top"><html:text property="lcno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开立日期：</td>
									<td valign="top"><html:text property="isdt" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原证币别：</td>
									<td valign="top">
									<div class="sele_div">
									<html:select styleClass="coin" property="lccy" disabled="true">
										<option></option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select>
									</div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原证金额：</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人代码：</td>
									<td valign="top"><html:text property="apno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人名称：</td>
									<td valign="top"><html:text property="apnm" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人地址：</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">增减金额标记：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="adsn">
										<%out.println(request.getAttribute("OPTION_ADSN"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">增加金额：</td>
									<td valign="top"><html:text property="adam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"  onblur="adds()" onfocus="javascript:this.value=''"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">修改后金额：</td>
									<td valign="top"><html:text property="lcam2" maxlength="15" readonly="true" onclick="adds()"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">即期/远期：</td>
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
									<td height="20" align="right" valign="top">收益人名址：</td>
									<td valign="top"><html:textarea property="adl1"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收报行代码：</td>
									<td valign="top"><html:text styleClass="bank" property="adbk" readonly="true"/>
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','adbk,adbknm,adbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收报行名称：</td>
									<td valign="top"><html:text property="adbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收报行地址：</td>
									<td valign="top"><html:textarea property="adbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Advise Bank swift：</td>
									<td valign="top"><html:text property="swift" readonly="true"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">分批装运：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="part">
										<%out.println(request.getAttribute("OPTION_PART"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">转运：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tras">
										<%out.println(request.getAttribute("OPTION_TRAS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">装运期限：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkis">
										<%out.println(request.getAttribute("OPTION_MKIS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">最迟装期：</td>
									<td valign="top"><html:text styleClass="date" property="shdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证到期日：</td>
									<td valign="top"><html:text styleClass="date" property="epdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">到期地点：</td>
									<td valign="top"><html:text property="pcep" maxlength="29"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">费用收取对象：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tlfr">
										<%out.println(request.getAttribute("OPTION_TLFR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收费方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true)">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费币别：</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证修改实际费用：</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">邮电费类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tltp">
										<%out.println(request.getAttribute("OPTION_TLTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">实收开证邮电费：</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"  maxlength="15" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否额度开证：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="qlfg">
										<%out.println(request.getAttribute("OPTION_QLFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户账户一：</td>
									<td valign="top"><html:text property="mgcltact" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="mgcltcur">
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
									<td height="20" align="right" valign="top">金额：</td>
									<td valign="top"><html:text property="mgcltamt" maxlength="15"onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保证金帐号一：</td>
									<td valign="top"><html:text property="mgac" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="accy">
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
									<td height="20" align="right" valign="top">金额：</td>
									<td valign="top"><html:text property="mgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户账户二：</td>
									<td valign="top"><html:text property="mgcltact2" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="mgcltcur2">
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
									<td height="20" align="right" valign="top">金额：</td>
									<td valign="top"><html:text property="mgcltamt2" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保证金帐号二：</td>
									<td valign="top"><html:text property="mgc2" maxlength="36" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="acy2">
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
									<td height="20" align="right" valign="top">金额：</td>
									<td valign="top"><html:text property="mam2" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
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
                    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle" width="100%">
					<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
                  <tr>
                   <td width="100%" height="30" align="center" valign="middle">
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
<input	type="image" src='<bean:message key="common.report" />'	
onClick="openReplace('/IB/voucher.do?prid=<bean:write name="modifyDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="modifyDetailForm" property="rfno"/>&no=<bean:write name="modifyDetailForm" property="lcno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="modifyDetailForm" property="lcno"/>&prid=<bean:write name="modifyDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
<input type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

<input type="image" src="<bean:message key="common.returnList" />"
onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="modifyDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
<input	type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%></td>
                  </tr>
                  </table>
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
