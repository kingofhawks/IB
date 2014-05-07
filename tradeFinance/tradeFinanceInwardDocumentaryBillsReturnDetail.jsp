<%--进口押汇返还--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

<body onLoad="readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
					action="IBFH.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">客户号：</td>
									<td valign="top"><html:text styleClass="clientNum"
										property="clno"  readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno');return false"></html:image>></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户名：</td>
									<td valign="top"><html:text property="clnonm"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户地址：</td>
									<td valign="top"><html:text property="clnoad"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">议付号：</td>
									<td valign="top"><html:text property="bpno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证号：</td>
									<td valign="top"><html:text property="lcno"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">发票号：</td>
									<td valign="top"><html:text property="ivno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">借据号：</td>
									<td valign="top"><html:text property="evno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">合同号：</td>
									<td valign="top"><html:text property="cono"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">融资编号：</td>
									<td valign="top"><html:text property="neno"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">起息日：</td>
									<td valign="top"><html:text styleClass="date" property="vldt"  readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*到期日：</td>
									<td valign="top"><html:text styleClass="date" title="madt"
										property="madt"  readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','madt');return false"></html:image>
</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">执行利率：</td>
									<td valign="top"><html:text property="inrt" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">融资币种：</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" property="cyno" disabled="true">
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
									<td height="20" align="right" valign="top">融资金额：</td>
									<td valign="top"><html:text property="gvvl" readonly="true"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">融资天数：</td>
									<td valign="top"><html:text property="dbts"  readonly="true" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*本次还融资本金：</td>
									<td valign="top"><html:text title="dbam" property="dbam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">利息收入：</td>
									<td valign="top"><html:text property="ngin"  readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">返还融资帐号：</td>
									<td valign="top"><html:text property="leac" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">借客户帐金额：</td>
									<td valign="top"><html:text property="cltamt"  readonly="true" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">售汇统计类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="natp">
										<%out.println(request.getAttribute("OPTION_NATP"));%>
									</html:select></div>
									</td>
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
				<td class="innerTable_bottom_x">
                    <html:hidden property="errCode" />
					<html:hidden property="prid" />
					<html:hidden property="rfno" />
					<html:hidden property="brno" />
					<html:hidden property="ibno" />
						<table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
		 <td align="center" valign="bottom" width="100%">
	      <%
		String tabID=(String)request.getAttribute("tabID");
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录%>
		<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%
		}else {//报表列表。在经办(经办角色)里面看不到

		if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src="<bean:message key="common.svg" />"
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="tradeFinanceInwardDocumentaryBillsReturnDetailForm" property="evno"/>&prid=<bean:write name="tradeFinanceInwardDocumentaryBillsReturnDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src="<bean:message key="common.returnList" />"
		onClick="openReplace('tradeFinanceIbManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="tradeFinanceInwardDocumentaryBillsReturnDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		<br><br>
		<input type="image" name="go" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">

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
