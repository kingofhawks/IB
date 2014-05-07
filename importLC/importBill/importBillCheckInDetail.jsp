<%--来单登记--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<script>
function switchsutp()
{
	switch ($("sutp").value)
	{
		case "0":
			//Sight(0)的时候
			$("ultp").disabled = true;
			$("tenr").value = "0";
			$("tenr").disabled = true;
			break;
			
			case "1":
			$("ultp").disabled = false;
			$("tenr").disabled = false;
			break;		
		
		default:
			//Usance(1)或者是空的时候
			$("ultp").disabled = false;
			$("tenr").value = "";
			$("tenr").disabled = false;
	}
}</script>

<body onLoad="switchsutp();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
					action="IBRG.do" onsubmit="checkForm(this)"
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
									<td height="20" align="right" valign="top">信用证金额：</td>
									<td valign="top"><html:text property="acam" readonly="true"/></td><!--用acam代替一下-->
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证余额：</td>
									<td valign="top"><html:text property="ivam"readonly="true" /></td><!--用ivam代替一下-->
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证日期：</td>
									<td valign="top"><html:text property="isdt" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*索汇币种：</td>
									<td valign="top"><div class="sele_div"><html:select styleClass="coin" title="dlcy" property="dlcy">
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
									<td height="20" align="right" valign="top">汇票金额：</td>
									<td valign="top"><html:text property="dfam" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">国外行费用：</td>
									<td valign="top"><html:text property="ngch" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*索汇金额：</td>
									<td valign="top"><html:text property="dlam" title="dlam" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">即期/远期：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="sutp" disabled="true">
										<%out.println(request.getAttribute("OPTION_SUTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">远期类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ultp">
										<%out.println(request.getAttribute("OPTION_UUTP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">期限：</td>
									<td valign="top"><html:text property="tenr" maxlength="3"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收单日期：</td>
									<td valign="top"><html:text styleClass="date" title="apdt"
										property="apdt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','apdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">最迟承兑/付款日期：</td>
									<td valign="top"><html:text styleClass="date" property="shdt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','shdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*交单日期：</td>
									<td valign="top"><html:text styleClass="date" title="bpdt"
										property="bpdt" readonly="true"/> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','bpdt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*交单行：</td>
									<td valign="top"><html:text styleClass="bank" title="ngbk"
										property="ngbk" readonly="true"/> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','ngbk,ngbknm,ngbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">交单行名称：</td>
									<td valign="top"><html:text property="ngbknm" readonly="true" styleClass="name_width"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td height="20" align="right" valign="top">交单行名址：</td>
									<td valign="top"><html:textarea property="ngbkad" readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*交单行业务编号：</td>
									<td valign="top"><html:text title="ngno" property="ngno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">发票号：</td>
									<td valign="top"><html:text property="ivno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">提单号：</td>
									<td valign="top"><html:text property="blno" maxlength="16"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">提单日期：</td>
									<td valign="top"><html:text styleClass="date" property="tddt"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','tddt');return false"></html:image></td>
								</tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top">担保提货号：</td>
									<td valign="top"><html:text property="sgno" maxlength="16" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">远期付款到期日：</td>
									<td valign="top"><html:text styleClass="date" property="bedt" readonly="true"/>
									<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','bedt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">已付款标志：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="pymk" disabled="true">
										<%out.println(request.getAttribute("OPTION_PYMK"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">电提不符点：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="drcb">
										<%out.println(request.getAttribute("OPTION_BRCB"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证项下已付款金额：</td>
									<td valign="top"><html:text property="paam" readonly="true"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">受益人名址：</td>
									<td valign="top"><html:textarea property="adl1"></html:textarea></td>
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
				<td class="innerTable_bottom_x"><html:hidden property="prid" />
					<html:hidden property="rfno" />
					<html:hidden property="brno" />
					<html:hidden property="clno" />
					<html:hidden property="fromBrno" />
					<html:hidden property="fromNo" />
                    <html:hidden property="errCode" /> 
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
		<input type="image" src='<bean:message key="common.report" />'
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="importBillCheckInDetailForm" property="rfno"/>&no=<bean:write name="importBillCheckInDetailForm" property="ibno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="importBillCheckInDetailForm" property="ibno"/>&prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('importBillManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="importBillCheckInDetailForm" property="prid"/>');return false">

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
