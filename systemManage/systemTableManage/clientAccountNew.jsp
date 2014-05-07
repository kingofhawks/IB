<%--客户帐号(新建)--%>
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

<body>
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
					action="clientAccountNew.do" method="post"
					onsubmit="checkForm(this)">
					   <div id="errMsgDiv"><html:errors /></div>
                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="99%" align="center" valign="top">
							 <div style="height:80px"></div><table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
								<tr>
								  <td height="20" colspan="2" align="center" valign="top" class="innertitle">客户帐号资料填写</td>
							  </tr>
								<tr>
									<td width="38%" align="right" valign="middle" bgcolor="#EBEBEB">客户所在银行编号：</td>
									<td valign="middle"> <div class="sele_div_280">
                                                        <html:select property="brno" title="brno" styleClass="select_280">
                                                            <%out.println(request.getAttribute("OPTION_BRNO"));%>
                                                        </html:select>
                                                    </div>									</td>
								</tr>
								 <tr>
                                    <td align="right" valign="middle" bgcolor="#EBEBEB">客户帐号：</td>
                                    <td valign="middle"><html:text property="acno" readonly="true"/></td>
                                </tr>
								<tr>
									<td align="right" valign="middle" bgcolor="#EBEBEB">客户号：</td>
									<td valign="middle"><html:text 
										property="clno" title="clno" readonly="true"/>
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno,clnona,clnoad');return false"></html:image>
                                     </td>
								</tr>
								<tr>
									<td align="right" valign="middle" bgcolor="#EBEBEB">客户中文名称：</td>
									<td valign="middle"><html:text property="clnona" /></td>
								</tr>
								<tr>
									<td align="right" valign="middle" bgcolor="#EBEBEB">客户中文名称及地址：</td>
									<td valign="middle"><html:text property="clnoad" /></td>
								</tr>
								<tr>
									<td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*帐号币种：</td>
									<td valign="middle">
									    <div class="sele_div_122">
									        <html:select styleClass="select_122" property="cyno">
                                                <logic:notEmpty name="OPTION_CYNO">
                                                    <logic:iterate id="list" name="OPTION_CYNO">
                                                        <%String[] cyno = (String[]) list;%>
                                                        <html:option value="<%=cyno[0]%>"> <%=cyno[1]%> </html:option>
                                                    </logic:iterate>
                                                </logic:notEmpty>
                                            </html:select>
							          </div>									</td>
								</tr>
								<tr>
									<td align="right" valign="middle" bgcolor="#EBEBEB">业务代码：</td>
									<td valign="middle"><html:text property="itcd" maxlength="3"/></td>
								</tr>
							</table><div class="footer"><html:hidden property="errCode" />
					<input type="image" name="save" onclick="submitKind(0,'save')" src="/IB/images/saveTele.gif">&nbsp;&nbsp;
					<input type="image" name="button" onclick="openReplace('clientAccountAction.do');return false" src="<bean:message key="common.cancel" />"></div>
						  </td>
							<td width="1%" valign="top">&nbsp;</td>
						</tr>
					</table>
					
				 <!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
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
