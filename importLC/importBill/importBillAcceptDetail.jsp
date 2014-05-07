<%--承兑--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
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
</script>

<html:html>
<body onLoad="switchchco(false);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
				<div id="innerTable_div"><!--内容开始--> <html:form
					action="IBAC.do" onsubmit="checkForm(this)"
					method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">进口来单号：</td>
									<td valign="top"><html:text property="ibno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证号：</td>
									<td valign="top"><html:text property="lcno" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">承兑币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin" property="dlcy" disabled="true">
									<option></option>
										<logic:notEmpty name="OPTION_CYNO">
              						<logic:iterate id="list" name="OPTION_CYNO">
									<%String[] cyno = (String[])list;%>
									<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select>
									</div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*承兑金额：</td>
									<td valign="top"><html:text title="dlam" property="dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15" onchange="getCharge('caam',$('dlcy').value,$('dlam').value,$('prid').value)"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*承兑日：</td>
									<td valign="top"><html:text styleClass="date" title="dudt"
										property="dudt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','dudt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*付款到期日：</td>
									<td valign="top"><html:text styleClass="date" title="apdt"
										property="apdt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','apdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*交单行：</td>
									<td valign="top"><html:text styleClass="bank" title="ngbk"
										property="ngbk" readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','ngbk,ngbknm,ngbkad');return false"></html:image>
</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">交单行名称：</td>
									<td valign="top"><html:text property="ngbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">交单行名址：</td>
									<td valign="top"><html:textarea property="ngbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">费用收取对象：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chfr">
										<%out.println(request.getAttribute("OPTION_CHFR"));%>
									</html:select></div>
									</td>
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
									<td height="20" align="right" valign="top">收费币别：</td>
									<td valign="top"><div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">实收承兑费金额：</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
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
									<td height="20" align="right" valign="top">实收邮费金额：</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
                   
				 <!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"> <html:hidden property="errCode" />
					<html:hidden property="prid" />
					<html:hidden  property="rfno" />
					<html:hidden property="clno" />
					<html:hidden  property="brno" /> 
					<table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td align="center" valign="middle" width="100%">
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
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="importBillAcceptDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="importBillAcceptDetailForm" property="rfno"/>&no=<bean:write name="importBillAcceptDetailForm" property="ibno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input	type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="importBillAcceptDetailForm" property="ibno"/>&prid=<bean:write name="importBillAcceptDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input	type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('importBillManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="importBillAcceptDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		<br><br>
		<input	type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
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
