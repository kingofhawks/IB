<%--出口寄单修改--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
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
			if(flag)//在页面导入的时候不加载ajax
            getCharge("caam",$("dlcy").value,$("dlam").value,$("prid").value);
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
</script>

<body onLoad="switchchco(false);switchsutp();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0" >
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
				<div id="innerTable_div" class="kuangScroll"><!--内容开始--> <html:form action="EBUP.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
									<td valign="top"><html:text property="brno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">议付编号：</td>
									<td valign="top"><html:text property="bpno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">来证通知号：</td>
									<td valign="top"><html:text property="adno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*受益人代码：</td>
									<td valign="top"><html:text styleClass="clientNum" title="clno"
										property="clno" readonly="true" /> <html:image src="/IB/images/winsearch.gif"
										tabindex="1" property="more_btn"
										onclick="openWin('clientNum','clno,clnonm,clnoad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人名称：</td>
									<td valign="top"><html:text property="clnonm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人地址：</td>
									<td valign="top"><html:textarea property="clnoad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">通知行：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="isad"
										disabled="true">
										<%out.println(request.getAttribute("OPTION_ISAD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">指定议付行：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mkeb"
										disabled="true">
										<%out.println(request.getAttribute("OPTION_MKEB"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*开证行：</td>
									<td valign="top"><html:text styleClass="bank" title="isbk"
										property="isbk" readonly="true" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('bank','isbk,isbknm,isbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证行名称：</td>
									<td valign="top"><html:text property="isbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证行名址：</td>
									<td valign="top"><html:textarea property="isbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证号：</td>
									<td valign="top"><html:text title="lcno" property="lcno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人：</td>
									<td valign="top"><html:text property="apno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证日期：</td>
									<td valign="top"><html:text styleClass="date" property="isdt"
										readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">修改次数：</td>
									<td valign="top"><html:text property="aeno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*是否押印核符：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="mkts" title="mkts">
										<%out.println(request.getAttribute("OPTION_MKTS"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否凭保函出单：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="ckgt">
										<%out.println(request.getAttribute("OPTION_CKGT"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="lccy" title="lccy">
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
									<td height="20" align="right" valign="top">信用证金额：</td>
									<td valign="top"><html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*信用证余额：</td>
									<td valign="top"><html:text title="blav" property="blav" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top" class="attR">*议付日期：</td>
									<td valign="top"><html:text styleClass="date" title="rvdt"
										property="rvdt" readonly="true" /> <html:image src="/IB/images/date.gif"
										tabindex="1" property="more_btn" onclick="openWin('date','rvdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*议付币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="dlcy" title="dlcy" onchange="getCharge('caam',$('dlcy').value,$('dlam').value,$('prid').value)">
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
									<td height="20" align="right" valign="top" class="attR">*金额：</td>
									<td valign="top"><html:text title="dlam" property="dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" onchange="getCharge('caam',$('dlcy').value,$('dlam').value,$('prid').value)"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*即期/远期：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" title="true" onchange="switchsutp()">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">远期类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="uutp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">期限：</td>
									<td valign="top"><html:text property="tenr" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" maxlength="3" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">B/L Date：</td>
									<td valign="top">
									<html:text styleClass="date" property="bldt" maxlength="8"/>
									<html:image src="/IB/images/date.gif"
										tabindex="1" property="more_btn" onclick="openWin('date','bldt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*发票号：</td>
									<td valign="top"><html:text title="ivno" property="ivno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">核销单：</td>
									<td valign="top"><html:text property="dtno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">转让号：</td>
									<td valign="top"><html:text property="tlrf" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行/付款行：</td>
									<td valign="top"><html:text styleClass="bank" readonly="true"
										property="rmbk" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('bank','rmbk,rmbknm,rmbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行/付款行名称：</td>
									<td valign="top"><html:text property="rmbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">偿付行/付款行地址：</td>
									<td valign="top"><html:textarea property="rmbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收单行：</td>
									<td valign="top"><html:text styleClass="bank" property="mtbk"
										readonly="true" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('bank','mtbk,mtbknm,mtbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收单行名称：</td>
									<td valign="top"><html:text property="mtbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收单行名址：</td>
									<td valign="top"><html:textarea property="mtbkad"
										readonly="true"></html:textarea></td>
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
									<td height="20" align="right" valign="top">保兑行：</td>
									<td valign="top"><html:text styleClass="bank" property="cfbk"
										readonly="true" /> <html:image
										src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
										onclick="openWin('bank','cfbk,cfbknm,cfbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保兑行名称：</td>
									<td valign="top"><html:text property="cfbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">保兑行名址：</td>
									<td valign="top"><html:textarea property="cfbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否不符点出单：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="drmk">
										<%out.println(request.getAttribute("OPTION_DRMK"));%>
									</html:select></div>
									</td>
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
									<td height="20" align="right" valign="top">收费方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" onchange="switchchco(true);">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">费用币种：</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>

									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">议付费：</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">快递国别：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="cncd">
										<logic:notEmpty name="OPTION_CNTY">
											<logic:iterate id="list" name="OPTION_CNTY"
												type="com.witsoft.hibernate.Country">
												<html:option value="<%=list.getSwcd()%>">
													<bean:write name="list" property="ctnm" />
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">邮费类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tltp">
										<%out.println(request.getAttribute("OPTION_TLTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">TLX Charges
									Currency：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="tlcy">
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
									<td height="20" align="right" valign="top">邮电费：</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
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
				<td class="innerTable_bottom_x">	
                    <html:hidden property="errCode" /> 
					<html:hidden property="prid" />
					<html:hidden property="rfno" />
					<table width="100%" height="75"  border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
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
		<input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
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
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="invoiceModifyDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="invoiceModifyDetailForm" property="rfno"/>&no=<bean:write name="invoiceModifyDetailForm" property="bpno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input	type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="invoiceModifyDetailForm" property="bpno"/>&prid=<bean:write name="invoiceModifyDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('invoiceGatheringManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="invoiceModifyDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
                  </tr>
                  </table>
				</td>
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
