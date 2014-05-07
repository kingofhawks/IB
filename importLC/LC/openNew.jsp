<%--开立--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>

<html:html>
<script>
function switchlgfg()
{
	switch($("lgfg").value)
	{
		case "0":
			//当lgfg为Yes时
			$("bhtp").disabled = true;
			$("sutp").disabled = true;
			$("sutp").selectedIndex = 1;
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
	
			break;

		case "1":
		    $("bhtp").disabled = false;
		    $("bhtp").value = "4";
			$("sutp").disabled = false;
			$("uutp").disabled = false;
			$("tenr").disabled = false;
		
		
			switchsutp();
			break;
			

		default:
			$("bhtp").disabled = false;
			$("bhtp").value = "4";
			$("sutp").disabled = true;
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = false;
			switchsutp();
			
	}
}
function switchsutp()
{
	switch ($("sutp").value)
	{
		case "0":
			//Sight(0)的时候
			$("uutp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
			break;
			
			case "1":
			$("uutp").disabled = false;
			$("tenr").disabled = false;
			break;		
		
		default:
			//Usance(1)或者是空的时候
			$("uutp").disabled = false;
			$("tenr").value = "";
			$("tenr").disabled = false;
	}
}
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
			if(flag)//在页面导入的时候不加载ajax
            getCharge("caam",$("lccy").value,$("lcam").value,$("prid").value);
	}
}


</script>
<body onLoad="switchlgfg();switchchco(false);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">

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
				<td class="innerTable_main">
				<div id="innerTable_div" class="kuangScroll"><!--内容开始-->
				 <html:form action="LCOP.do" onsubmit="checkForm(this)">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="43%" align="left" valign="top">
							<%--操作码 --%> 	
							<html:hidden property="prid" /> 
							<%--机构号 --%> <html:hidden property="brno" />
							<%--流水号 --%> <html:hidden property="rfno" />
							<%--报表Id号 --%> <html:hidden property="bussinessId"/>
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="35%" height="20" align="right" valign="top">
									    <bean:message key="system.bank.number" /></td>
									<td valign="top">
									    <html:text property="utno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*是否开出保函：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="lgfg" title="lgfg" onchange="switchlgfg()">
										<%out.println(request.getAttribute("OPTION_LGFG"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证/保函号：</td>
									<td valign="top"><html:text property="lcno" title="lcno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*开立日期：</td>
									<td valign="top"><html:text styleClass="date" property="isdt"
										title="isdt" readonly="true" /> <html:image src="/IB/images/date.gif"
										tabindex="1" property="more_btn" onclick="openWin('date','isdt');return false"></html:image></td>
						        </tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*申请人代码：</td>
									<td valign="top"><html:text 
										property="apno" title="apno" readonly="true" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('clientNum','apno,apnm,apad');return false"></html:image></td>
							    </tr>
								<tr>
									<td height="20" align="right" valign="top">申请人名称：</td>
									<td valign="top"><html:text  property="apnm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">申请人名址：</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口合同号：</td>
									<td valign="top"><html:text property="crno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*受益人名址：</td>
									<td valign="top"><html:textarea property="adl1" title="adl1"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收报行代码：</td>
									<td valign="top"><html:text styleClass="bank" property="adbk"
										title="adbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','adbk,adbknm,adbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收报行名称：</td>
									<td valign="top"><html:text property="adbknm" styleClass="name_width"  readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收报行名址：</td>
									<td valign="top"><html:textarea property="adbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*币别：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy"  onchange="getCharge('caam',$('lccy').value,$('lcam').value,$('prid').value)">
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证/保函金额：</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" title="lcam" onchange="getCharge('caam',$('lccy').value,$('lcam').value,$('prid').value)"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*即期/远期：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" title="sutp" onchange="switchsutp()">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">远期类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="uutp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">期限：</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保函交易类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="bhtp">
										<%out.println(request.getAttribute("OPTION_BHTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="lctp" title="lctp">
										<%out.println(request.getAttribute("OPTION_LCTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证的支付方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ustp" title="ustp">
										<%out.println(request.getAttribute("OPTION_USTP"));%>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">指定银行代码：</td>
									<td valign="top"><html:text styleClass="bank" property="avbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','avbk,avbknm,avbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">指定银行名称：</td>
									<td valign="top"><html:text styleClass="name_width" property="avbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">指定银行名址：</td>
									<td valign="top"><html:textarea property="avbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行代码：</td>
									<td valign="top"><html:text styleClass="bank" property="tfbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tfbk,tfbknm,tfbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行名称：</td>
									<td valign="top"><html:text property="tfbknm" styleClass="name_width" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让行名址：</td>
									<td valign="top"><html:textarea property="tfbkad" 
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否为转开：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tris">
										<%out.println(request.getAttribute("OPTION_TRIS"));%>
									</html:select></div>									</td>
								</tr>
							</table>
							</td>
							<td width="57%" align="left" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">循环次数：</td>
									<td width="68%" valign="top">
									    <html:text property="rlit" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否要保兑：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mksb">
										<%out.println(request.getAttribute("OPTION_MKSB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*开证方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ammd">
										<%out.println(request.getAttribute("OPTION_AMMD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*到期日：</td>
									<td valign="top"><html:text styleClass="date" property="epdt"
										title="epdt" readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1"
										property="more_btn" onclick="openWin('date','epdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*到期地点：</td>
									<td valign="top"><html:text property="pcep" title="pcep" /></td>
								</tr>
								<tr>
									<td width="32%" height="20" align="right" valign="top">最迟装运期：</td>
									<td valign="top"><html:text styleClass="date" property="shdt"
										readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1"
										property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*交单期：</td>
									<td valign="top"><html:text property="psbl" maxlength="3" title="psb1" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">分批装运：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="part">
										<%out.println(request.getAttribute("OPTION_PART"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转运：</td>
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
									<%out.println(request.getAttribute("OPTION_OKFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">付款代码(42a)：</td>
									<td valign="top"><html:text styleClass="bank" property="dwbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" 
										property="more_btn" onclick="openWin('bank','dwbk,dwbknm,dwbkad');return false">
										</html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">付款行名称：</td>
									<td valign="top"><html:text property="dwbknm" styleClass="name_width" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">付款行名址：</td>
									<td valign="top"><html:textarea property="dwbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行代码：</td>
									<td valign="top"><html:text styleClass="bank" property="rmbk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1"
										 property="more_btn" onclick="openWin('bank','rmbk,rmbknm,rmbkad');return false">
										 </html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行名称：</td>
									<td valign="top"><html:text property="rmbknm" styleClass="name_width"  readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行名址：</td>
									<td valign="top"><html:textarea property="rmbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*是否额度开证：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="qlfg">
										<%out.println(request.getAttribute("OPTION_QLFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户账户一：</td>
									<td valign="top"><html:text property="mgcltact" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"  /></td>
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
									<td valign="top"><html:text property="mgcltamt" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保证金账号一：</td>
									<td valign="top"><html:text property="mgac" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
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
									<td valign="top"><html:text property="mgcltact2" maxlength="36" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
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
									<td valign="top"><html:text property="mgcltamt2" maxlength="15"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保证金帐号二：</td>
									<td valign="top"><html:text property="mgc2" maxlength="36"  onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
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
								<tr>
									<td height="20" align="right" valign="top" class="attR">*受益人所在地：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="gdtp">
										<%out.println(request.getAttribute("OPTION_GDTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">费用收取对象：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tlfr"  disabled="true" >
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
									<td height="20" align="right" valign="top">实收开证手续费：</td>
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
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" /></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					
					<html:hidden property="errCode" />
					
				 <!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"><table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
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
		<!--<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">-->
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
		
		&nbsp;&nbsp;
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
		<input type="image" src='<bean:message key="common.report" />'
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="openNewForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="openNewForm" property="rfno"/>&no=<bean:write name="openNewForm" property="lcno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="openNewForm" property="lcno"/>&prid=<bean:write name="openNewForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="openNewForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%></td>
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
