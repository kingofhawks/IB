<%--销卷--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
</head>

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
				<div id="innerTable_div" class="kuangScroll"><!--内容开始--> <html:form
					action="LCCL.do" onsubmit="checkForm(this)"
					method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<%--操作码 --%>
						<html:hidden property="prid" />
						<%--机构号 --%>
						<html:hidden property="brno" />
						<%--流水号 --%>
						<html:hidden property="rfno" />
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">信用证号：</td>
									<td valign="top"><html:text property="lcno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人代码：</td>
									<td valign="top"><html:text property="apno" readonly="true" />
									<td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人名称：</td>
									<td valign="top"><html:text property="apnm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">开证申请人名址：</td>
									<td valign="top"><html:textarea property="apad" readonly="true"></html:textarea>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户账户一：</td>
									<td valign="top"><html:text property="mgcltact" maxlength="36"  /></td>
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
									<td valign="top"><html:text property="mgcltamt2" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
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
								<tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
					<html:hidden property="errCode" />
				</html:form> 
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
                    <td width="100%" height="30" align="center" valign="middle" ><br>
<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//电文
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录
		if(letterFlag){
		%>
                        <input type="image" src="<bean:message key="common.addLett" />" name="letter" onclick="submitKind(0,'letter');return false" />
                      &nbsp;&nbsp;
                        <%}
      if(draftFlag){%>
	                    <input type="image" src="<bean:message key="common.addTele" />" />
                      &nbsp;&nbsp;
                        <%}%>
                       
					   <input type="image" src="<bean:message key="common.save" />" name="save" onclick="submitKind(0,'save')" />
                      &nbsp;&nbsp;
                        <%}else{//复核、授权、已生效目录
	   if(letterFlag){
	    %>
		                <input type="image" src="<bean:message key="common.viewLett" />" name="letter" onclick="submitKind(0,'letter');return false" />
                      &nbsp;&nbsp;
                        <%}
      if(draftFlag){%>
		                <input type="image" src="<bean:message key="common.viewTele" />" />
                      &nbsp;&nbsp;
                        <%}
	    }
		
		if(tabID!=null&&(Integer.parseInt(tabID)>3)){//报表列表。在经办(经办角色)里面看不到
		String step=null;
		if(tabID.equals("6")){
		step="3";//已生效的报表
		}else{
		step="2";//过了经办但是没有到已生效的报表
		}
		%><input name="button"	type="image" src="<bean:message key="common.report" />" 
		 onClick="openReplace('/IB/voucher.do?prid=<bean:write name="lcAnnulDossierDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="lcAnnulDossierDetailForm" property="rfno"/>&no=<bean:write name="lcAnnulDossierDetailForm" property="lcno"/>');return false">&nbsp;&nbsp;
              <%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
              <input name="button2"	type="image" src="<bean:message key="common.svg" />" onClick="window.open('/IB/flowchart.do?id=<bean:write name="lcAnnulDossierDetailForm" property="lcno"/>&prid=<bean:write name="lcAnnulDossierDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
              <%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
             
            <input type="image" src='<bean:message key="common.returnUpdate" />' name="back" onClick="submitKind(0,'back');return false">
                      &nbsp;&nbsp;
              <%}%>
              <input name="button2"	type="image" src="<bean:message key="common.returnList" />" onClick="openReplace('lcManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="lcAnnulDossierDetailForm" property="prid"/>');return false">
                    </td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle"> <%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
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
</body>
</html:html>
