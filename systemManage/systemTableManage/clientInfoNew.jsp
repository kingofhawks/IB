<%--客户资料(新建)--%>
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
					action="clientInfoNew.do" method="post" onsubmit="checkForm(this)">
				<div id="errMsgDiv"><html:errors /></div>
					 <table width="80%" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
						<tr>
							   <td colspan="2" align="center" valign="middle" class="innertitle">客户资料填写</td>
							 </tr>
						<tr>
							<td width="50%" valign="top">
							<table width="405" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">客户号：</td>
									<td valign="top"><html:text property="clno" disabled="true" />									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top"  class="attR">*单位代码：</td>
									<td valign="top">
                                    <div class="sele_div_280">
                                                        <html:select property="brno" title="brno" styleClass="select_280">
                                                            <%out.println(request.getAttribute("OPTION_BRNO"));%>
                                                        </html:select>
                                                    </div>                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">营销机构：</td>
									<td valign="top"><html:text property="mkno" maxlength="12"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户经理：</td>
									<td valign="top"><html:text property="clmn" maxlength="12" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户类型：</td>
									<td valign="top"><div class="sele_div_122">
                                                        <html:select property="cltp" styleClass="select_122">
                                                            <%out.println(request.getAttribute("OPTION_CLTP"));%>
                                                        </html:select>
                                                    </div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否见汇即结：</td>
									<td valign="top"><div class="sele_div_122">
                                                        <html:select property="tmfg" styleClass="select_122">
                                                            <%out.println(request.getAttribute("OPTION_TMFG"));%>
                                                        </html:select>
                                                    </div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">见汇即结帐号：</td>
									<td valign="top"><html:text property="jhac" disabled="true" />									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="chcy">
										<logic:notEmpty name="OPTION_CYNO">
                                         <option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
											  
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费帐号：</td>
									<td valign="top"><html:text property="chac" maxlength="36"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户中文名称：</td>
									<td valign="top"><html:text property="clnm" maxlength="60"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户中文名称及地址：</td>
									<td valign="top"><html:textarea property="adl1"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户英文名称：</td>
									<td valign="top"><html:text property="egnm" title="egnm" maxlength="60"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户英文名称及地址：</td>
									<td valign="top"><html:textarea property="ega1" title="ega1"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否为临时客户：</td>
									<td valign="top"><div class="sele_div_122">
                                                        <html:select property="mkjh" disabled="true" styleClass="select_122">
                                                           <%out.println(request.getAttribute("OPTION_MKJH"));%>
                                                        </html:select>
                                                    </div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">电话：</td>
									<td valign="top"><html:text property="tlno" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Telex. No.：</td>
									<td valign="top"><html:text property="txno" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">传真：</td>
									<td valign="top"><html:text property="fxno" maxlength="20"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">历史交易纪录：</td>
									<td valign="top"><html:textarea property="trhs"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口开证额度币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="lcobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
							</table>							</td>
							<td width="50%" valign="top">
							<table width="280" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="51%" height="20" align="right" valign="top">进口开证额度：</td>
									<td width="49%" valign="top">
									    <html:text property="lcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口开证额度余额：</td>
									<td valign="top"><html:text property="lcamblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口押汇额度币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="lcmbcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口押汇额度：</td>
									<td valign="top"><html:text property="lcob" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口押汇额度余额：</td>
									<td valign="top"><html:text property="lcobblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款额度币种：</td>
									<td valign="top">

									<div class="sele_div_122"><html:select styleClass="select_122"
										property="lcdkcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款额度：</td>
									<td valign="top"><html:text property="lcdk" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款额度余额：</td>
									<td valign="top"><html:text property="lcdkblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口议付押汇额度币种：</td>
									<td valign="top">

									<div class="sele_div_122"><html:select styleClass="select_122"
										property="beobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口议付押汇额度：</td>
									<td valign="top"><html:text property="ebob" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口议付押汇额度余额：</td>
									<td valign="top"><html:text property="ebobblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口托收押汇额度币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="ocobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口托收押汇额度：</td>
									<td valign="top"><html:text property="ocob" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口托收押汇额度余额：</td>
									<td valign="top"><html:text property="ocobblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入票据额度币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="ccpdcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入票据额度：</td>
									<td valign="top"><html:text property="ccpd" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入票据额度余额：</td>
									<td valign="top"><html:text property="ccdblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">打包额度币种：</td>
									<td valign="top">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="eldbcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>">
													<%=cyno[1]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">打包额度：</td>
									<td valign="top"><html:text property="eldb" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">打包额度余额：</td>
									<td valign="top"><html:text property="eldbblan" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
							</table>							</td>
						</tr>
					</table>
					
			<!--内容结束--></div>				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td align="center" class="innerTable_bottom_x"><div class="footer"><html:hidden property="errCode" /> 
				
				<input type="image" name="save" onclick="submitKind(0,'save')" src="/IB/images/saveTele.gif">&nbsp;&nbsp;
				<input type="image" name="button" onclick="openReplace('clientInfoAction.do');return false" src="<bean:message key="common.cancel" />">		
				</div></td>
				<td class="innerTable_bottom_right"></td>
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
</body>	</html:form> 
</html:html>
