<%--客户资料(新建)--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"    	type="text/css">
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" 	src="/IB/common/list.js"></script>

    <style>

    </style>
    <script language="javascript">

    </script>
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
				<div id="innerTable_div"><!--内容开始-->
                    <html:form   action="clientInfoNew.do" method="post" >
                        <p><h2><strong>客户资料填写</strong></h2></p>
					 <table width="80%"  class="table table-bordered">

						<tr>
							<td width="50%" valign="top">
							<table width="405" border="0" cellpadding="0" cellspacing="0" class="table table-bordered">
								<tr>
									<td width="40%" height="20" align="right" valign="top">客户号：</td>
									<td valign="top">
                                        <html:text property="clno" disabled="true"  styleClass="form-control"/>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top"  class="attR">*单位代码：</td>
									<td valign="top">
                                        <div class="sele_div_280">
                                            <html:select property="brno" title="brno" styleClass="select_280" >
                                                <%out.println(request.getAttribute("OPTION_BRNO"));%>
                                            </html:select>
                                        </div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">营销机构：</td>
									<td valign="top"><html:text property="mkno" maxlength="12"  styleClass="form-control"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户经理：</td>
									<td valign="top"><html:text property="clmn" maxlength="12"  styleClass="form-control"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户类型：</td>
									<td valign="top">
                                        <div class="sele_div_122">
                                            <html:select property="cltp" styleClass="select_122">
                                                <%out.println(request.getAttribute("OPTION_CLTP"));%>
                                            </html:select>
                                        </div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否见汇即结：</td>
									<td valign="top">
                                        <div class="sele_div_122">
                                                <html:select property="tmfg" styleClass="select_122">
                                                    <%out.println(request.getAttribute("OPTION_TMFG"));%>
                                                </html:select>
                                        </div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">见汇即结帐号：</td>
									<td valign="top">
                                        <html:text property="jhac" disabled="true" styleClass="form-control" />
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收费币种：</td>
									<td valign="top">
									<div class="sele_div_122">
                                        <html:select styleClass="select_122 form-control"
										property="chcy" styleId="chcy">
										<logic:notEmpty name="OPTION_CYNO">
                                         <option></option>
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
									<td height="20" align="right" valign="top">收费帐号：</td>
									<td valign="top"><html:text property="chac" maxlength="36"  styleClass="form-control"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户中文名称：</td>
									<td valign="top">
                                        <input type="text"  name="clnm"  id="clnm"  maxlength="60" class="form-control" required="required">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">客户中文名称及地址：</td>
									<td valign="top"><html:textarea property="adl1"  styleClass="form-control"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户英文名称：</td>
									<td valign="top">
                                        <input type="text"  name="egnm"  id="egnm"  maxlength="60" class="form-control" required="required">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*客户英文名称及地址：</td>
									<td valign="top">
                                        <textarea  name="ega1"  id="ega1"  class="form-control" required="required"></textarea>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否为临时客户：</td>
									<td valign="top">
                                        <div class="sele_div_122">
                                                <html:select property="mkjh" disabled="true" styleClass="select_122">
                                                   <%out.println(request.getAttribute("OPTION_MKJH"));%>
                                                </html:select>
                                        </div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">电话：</td>
									<td valign="top">
                                        <input type="tel"  name="tlno"  id="tlno"  maxlength="60" class="form-control">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">Telex. No.：</td>
									<td valign="top"><html:text property="txno" maxlength="20"  styleClass="form-control"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">传真：</td>
									<td valign="top"><html:text property="fxno" maxlength="20"  styleClass="form-control"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">历史交易纪录：</td>
									<td valign="top"><html:textarea property="trhs"  styleClass="form-control"></html:textarea>									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口开证额度币种：</td>
									<td valign="top">
									<div class="sele_div_122">
                                        <html:select styleClass="select_122 form-control"
										property="lcobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
							</table>
                            </td>
							<td width="50%" valign="top">
							<table width="280" border="0" cellpadding="0" cellspacing="0" class="table table-bordered">
								<tr>
									<td width="51%" height="20" align="right" valign="top">进口开证额度：</td>
									<td width="49%" valign="top">
                                        <input type="number"   name="lcam" id="lcam"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口开证额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="lcamblan" id="lcamblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口押汇额度币种：</td>
									<td valign="top">
									<div class="sele_div_122" >
                                        <html:select styleClass="select_122"
										property="lcmbcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">进口押汇额度：</td>
									<td valign="top">
                                        <input type="number"   name="lcob" id="lcob"  class="form-control"  maxlength="15">

                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口押汇额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="lcobblan" id="lcobblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款额度币种：</td>
									<td valign="top">

									<div class="sele_div_122">
                                        <html:select styleClass="select_122"
										property="lcdkcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">垫款额度：</td>
									<td valign="top">
                                        <input type="number"   name="lcdk" id="lcdk"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="lcdkblan" id="lcdkblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口议付押汇额度币种：</td>
									<td valign="top">

									<div class="sele_div_122">
                                        <html:select styleClass="select_122"
										property="beobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">出口议付押汇额度：</td>
									<td valign="top">
                                        <input type="number"   name="ebob" id="ebob"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口议付押汇额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="ebobblan" id="ebobblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口托收押汇额度币种：</td>
									<td valign="top">
									<div class="sele_div_122">
                                        <html:select styleClass="select_122"
										property="ocobcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">出口托收押汇额度：</td>
									<td valign="top">
                                        <input type="number"   name="ocob" id="ocob"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">出口托收押汇额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="ocobblan" id="ocobblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入票据额度币种：</td>
									<td valign="top">
									<div class="sele_div_122">
                                        <html:select styleClass="select_122"
										property="ccpdcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">买入票据额度：</td>
									<td valign="top">
                                        <input type="number"   name="ccpd" id="ccpd"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入票据额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="ccdblan" id="ccdblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">打包额度币种：</td>
									<td valign="top">
									<div class="sele_div_122">
                                        <html:select styleClass="select_122"
										property="eldbcyno">
										<logic:notEmpty name="OPTION_CYNO">
										<option></option>
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
									<td height="20" align="right" valign="top">打包额度：</td>
									<td valign="top">
                                        <input type="number"   name="eldb" id="eldb"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">打包额度余额：</td>
									<td valign="top">
                                        <input type="number"   name="eldbblan" id="eldbblan"  class="form-control"  maxlength="15">
                                    </td>
								</tr>
							</table>
                            </td>
						</tr>
					</table>

			<!--内容结束--></div>				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td align="center" class="innerTable_bottom_x"><div class="footer"><html:hidden property="errCode" />
                    <button class="btn btn-primary">
                        保 存 <i class="fa fa-save fa-2x"></i>
                    </button>
                    <a href="#" class="btn btn-primary" onclick="openReplace('clientInfoAction.do');return false">
                        返回<i class="fa fa-level-up fa-2x"></i>
                    </a>

				</div></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
			<tr>
			  <td class="innerTable_bottom_left"></td>
			  <td class="innerTable_bottom_x"></td>
			  <td class="innerTable_bottom_right"></td>
		  </tr>
		</table>
        </html:form>
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
