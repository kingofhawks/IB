<%--银行列表(新建)--%>
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
<style>
.textwidth{width:250px;}
</style>	
	
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
					action="/bankListNew.do?brno=****" method="post" onsubmit="checkForm(this)">
					<div id="errMsgDiv"><html:errors /></div><br>
					<%--					<script language="javascript" type="text/javascript">showErrorMsg(" <html:errors/>")</script>--%>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" align="center" valign="top">
							<table width="80%" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
								<tr>
								  <td colspan="2" align="center" valign="middle" class="innertitle">新建银行</td>
							  </tr>
								<tr>
									<td width="40%" height="20" align="right" valign="top" class="attR">*机构编号/Swift No：</td>
									<td valign="top"><html:text property="bkno" title="bkno" maxlength="12"/></td>
								</tr>
							
								<tr>
									<td height="20" align="right" valign="top" class="attR">*银行名称：</td>
									<td valign="top"><html:text property="bknm" title="bknm" maxlength="35" styleClass="textwidth"/></td>
								</tr>
								
								<tr>
									<td height="20" align="right" valign="top">银行地址：</td>
									<td valign="top"><html:textarea property="add1"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">传真：</td>
									<td valign="top"><html:text property="cmfa" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Telex：</td>
									<td valign="top"><html:text property="cmtx" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">电话：</td>
									<td valign="top"><html:text property="cmtl" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">国家：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="cncd">
										<logic:notEmpty name="OPTION_CNTY">
										<option></option>
											<logic:iterate id="list" name="OPTION_CNTY"
												type="com.witsoft.hibernate.Country">
												<html:option value="<%=list.getSwcd()%>">
													<bean:write name="list" property="ctnm" />
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
								</html:select></div>								</tr>

								<tr>
									<td height="20" align="right" valign="top">是否为帐户行：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="acmk">
										<html:option value="Y">YES</html:option>
										<html:option value="N">NO</html:option>
									</html:select></div>									</td>
								</tr>
							</table>							</td>
						</tr>
					</table>
					

					<div class="footer"><html:hidden property="errCode" /> 
                    <html:hidden property="brno" />
                    <html:hidden property="swno" />
					<input type="image" name="save" onclick="submitKind(0,'save')" src="/IB/images/saveTele.gif">&nbsp;&nbsp;	
					<input type="image" name="button" onclick="openReplace('/IB/bankListActon.do');return false" src="<bean:message key="common.cancel" />"></div>
				</html:form> <!--内容结束--></div>
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
</body>
</html:html>
