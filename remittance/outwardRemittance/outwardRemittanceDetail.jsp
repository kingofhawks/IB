<%@ include file="/common/header.jsp"%>
<%--汇出汇款登记--%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算</title>
<style>.name_widthfy{width:190px; font-size:10px;}</style>
</head>
<body onLoad="switchfxkd();switchchco(false);switchstfg();switchtlfr();switchfhtp();moveOption(document.forms[0].tgtype);readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent">
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y">&nbsp;</td>
				<td align="center" valign="middle" class="innerTable_main">
				<div id="innerTable_div"  class="kuangScroll"><!--录入信息表格开始-->
				<html:form action="ORRG.do" onsubmit="checkForm(this)" method="post">
				<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="38%" align="left" valign="top">
							<table width="370" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="right" valign="top">机构号：</td>
									<td width="261" align="left" valign="middle"><html:text
										readonly="true" maxlength="16" property="brno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">汇入汇款编号：</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="16" property="orno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">帐务核销号：</td>
									<td align="left" valign="middle"><html:text maxlength="10"
										property="ckno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">凭证核销日期：</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="8"
										property="crdt" size="8" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
										<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','crdt');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款类型：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="ortp" property="ortp">
										<%out.println(request.getAttribute("OPTION_ORTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款人代码：</td>
									<td align="left" valign="middle">
									<html:text readonly="true" maxlength="13" title="clno" property="clno" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno,clnonm,clnoad');return false"></html:image>
                                     </td>
								</tr>
								<tr>
									<td align="right" valign="top">汇款人名称：</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_width" readonly="true" maxlength="30"
										property="clnonm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">汇款人名址：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										readonly="true" rows="4" property="clnoad"></html:textarea>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款日期：</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="8"
										title="apdt" property="apdt" size="8" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
										<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','apdt');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*收款人名址：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="4" title="rve1" property="rve1"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top">收款人账号：</td>
									<td align="left" valign="middle">
									<html:text readonly="true" maxlength="35" property="rvac" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('accountNum','rvac');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*收款人国别：</td>
									<td align="left" valign="middle">										
										<div class="sele_div"><html:select styleClass="coin" property="cncd">
                                    <logic:notEmpty name="OPTION_CNTY">
              						<logic:iterate id="list" name="OPTION_CNTY" type="com.witsoft.hibernate.Country">
									<html:option value="<%=list.getSwcd()%>"><bean:write name="list" property="ctnm"/></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select>
									</div>
								  </td>
								</tr>
								<tr>
									<td align="right" valign="top"  class="font_red">*收款银行：</td>
									<td align="left" valign="middle">
									<html:text readonly="true" maxlength="11" title="irbk"
										property="irbk" size="11" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','irbk,irbknm,irbkad');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">收款银行名称：</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_width" readonly="true" maxlength="35"
										property="irbknm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">收款银行名址：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										readonly="true" rows="4" property="irbkad"></html:textarea>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">收款行SWIFT编码：</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="11" property="rswift" size="11"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">收款行的帐户行：</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="11"
										property="mdbk" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','mdbk,mdbknm,mdbkad');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">帐户行名称：</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_width" readonly="true" maxlength="35"
										property="mdbknm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">帐户行名址：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										readonly="true" rows="4" property="mdbkad"></html:textarea>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">帐户行SWIFT代码：</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="11" property="aswift" size="11" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">附言类型：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="tgtype" onchange="moveOption(document.forms[0].tgtype)">
										<html:option value="/REC/">/REC/</html:option>
										<html:option value="/INT/">/INT/</html:option>
										<html:option value="/ACC/">/ACC/</html:option>
										<html:option value="/BNF/">/BNF/</html:option>
										<html:option value="/INS/">/INS/</html:option>
										<html:option value="/RCB/">/RCB/</html:option>
										<html:option value="/BENONOTY/">/BENONOTY/</html:option>
										<html:option value="/CHEQUE/">/CHEQUE/</html:option>
										<html:option value="/HOLD/">/HOLD/</html:option>
										<html:option value="/PHONBEN/">/PHONBEN/</html:option>
										<html:option value="/TELEBEN/">/TELEBEN/</html:option>
										<html:option value="/TELEIBK/">/TELEIBK/</html:option>
										<html:option value="/PHONIBK/">/PHONIBK/</html:option>
										<html:option value="/TELE/">/TELE/</html:option>
										<html:option value="/PHON/">/PHON/</html:option>
										<html:option value="/INTRACOM/">/INTRACOM/</html:option>
										<html:option value="/CORPTRAD/">/CORPTRAD/</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">72项附言：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="6" property="tg72"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款币种：</td>
									<td align="left" valign="middle">
									<div class="sele_div">
									<html:select styleClass="coin" title="cyno" property="cyno" onchange="getCharge('caam',$('cyno').value,$('amts').value,$('prid').value)">
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select>
									</div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款金额：</td>
									<td align="left" valign="middle">
									<html:text maxlength="15" title="amts" property="amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"size="15" onchange="getCharge('caam',$('cyno').value,$('amts').value,$('prid').value)"/></td>
								</tr>
							</table>
						  </td>
							<td width="62%" align="left" valign="top">
							<table width="380" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="185" align="right" valign="top" class="font_red">*起息日：</td>
									<td width="195" align="left" valign="middle"><html:text readonly="true" maxlength="8"
										title="vldt" property="vldt" size="8" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
										<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">汇票号码：</td>
									<td align="left" valign="middle"><html:text maxlength="16"
										property="dfno" /></td>
								</tr>

								<tr>
									<td align="right" valign="top" class="font_red">*我行的账户行：</td>
									<td align="left" valign="middle"><html:text readonly="true" maxlength="11"
										title="acbk" property="acbk" size="11" />
										<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbknm');return false"></html:image>
										</td>
								</tr>
								<tr>
									<td align="right" valign="top">我行的账户行名址：</td>
									<td align="left" valign="middle"><html:textarea cols="35"
										rows="4" property="acbknm"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top">实际汇出金额：</td>
									<td align="left" valign="middle"><html:text readonly="true"
										maxlength="15" property="acam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">现汇支付金额：</td>
									<td align="left" valign="middle" ><html:text maxlength="15"
										property="amc1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">原币账号：</td>
									<td align="left" valign="middle">
									<html:text maxlength="15"	property="acc1" />
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">售出外汇金额：</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="sdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">汇率：</td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="exrt" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">人民币账号：</td>
									<td align="left" valign="middle">
									<html:text maxlength="15" property="acc2" />
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">人民币金额：</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">套汇支付金额：</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="tham" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">外汇账号：</td>
									<td align="left" valign="middle">
									<html:text maxlength="15" property="acc3" />
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">外汇买卖方式：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="fxkd" onchange="switchfxkd()">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_FXKD"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="mairujia" style="font-size:12px; color:#808080">买入价：</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="maichujia" style="font-size:12px; color:#808080">卖出价：</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top" ><span id="huijia" style="font-size:12px; color:#08346B">汇价：</span></td>
									<td align="left" valign="middle"><html:text maxlength="12"
										property="exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">外汇金额：</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="amc3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">售汇统计类型：</td>
									<td align="left" valign="middle">
									<div class="sele_div_198"><html:select styleClass="select_198"
										property="shxz">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_SHXZ"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*是否申报：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="stfg" property="stfg" onchange="switchstfg()" >
										 <%out.println(request.getAttribute("OPTION_YNFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">交易附言（用于申报）：</td>
									<td align="left" valign="middle"><html:text
										styleClass="name_widthfy" maxlength="60" property="trmo" /></td>
								</tr>
								
								<tr>
									<td rowspan="3" align="right" valign="top">
									<div id="star">
								        <table width="50%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td align="right" valign="top" class="font_red">*付汇类型：</td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top" class="font_red">*对公对私：</td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top" class="font_red">*交易代码：</td>
                                            </tr>
                                        </table>
									  </div>
								  </td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="fhtp" onchange="switchfhtp()">
										<%out.println(request.getAttribute("OPTION_FHTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="cmpr">
										<%out.println(request.getAttribute("OPTION_CMPR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="left" valign="middle">
									<div class="sele_div_198"><html:select styleClass="select_198"
										property="tytp">
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">申报号：</td>
									<td align="left" valign="middle"><html:text maxlength="22"
										property="sbno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*代理行费用由付/收款人支付：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="obfg" property="obfg">
										<%out.println(request.getAttribute("OPTION_OBFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">手续费收取对象：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="tlfr" onchange="switchtlfr()">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TLFR"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red"><span id="chargeWay" style="color:#FF0000;font-size:12px">*收费方式：</span></td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="chco" property="chco" onchange="switchchco(true)">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="shoufeibizhong" style="color:#08346B">收费币种：</span></td>
									<td align="left" valign="middle">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">实收手续费金额：</td>
									<td align="left" valign="middle">
                                    <div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div>
                                    </td>
								</tr>
								<tr>
									<td align="right" valign="top">电报费类型：</td>
									<td align="left" valign="middle">
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="chtp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_CHTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">实收电报费金额：</td>
									<td align="left" valign="middle"><html:text maxlength="15"
										property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"   style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td colspan="2" align="left" valign="top"><html:hidden
										property="prid" /> <html:hidden property="rfno" /><html:hidden
										property="errCode" /></td>
								</tr>
							</table>
						  </td>
						</tr>
						
					</table>
				</div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td valign="top" class="innerTable_bottom_x"><table width="100%" height="75" border="0" cellpadding="0" cellspacing="0" valign="middle" class="Scrollbg">
  <tr>
                    <td  colspan="2" height="15" class="space"></td>
                  </tr>
						    <td height="30" colspan="2" align="center" valign="middle"> 
						        
						    <%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//电文
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录
		if(letterFlag){
		%>
						        <input	type="image" src='<bean:message key="common.addLett" />' onClick="submitKind(0,'letter');return false">
						        &nbsp;&nbsp;
						        <%}
      if(draftFlag){%>
						        <input	type="image" src='<bean:message key="common.addTele" />'>
						        &nbsp;&nbsp;
						        <%}%>
						        <input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
						        &nbsp;&nbsp;
						        <%}else{//复核、授权、已生效目录
	   if(letterFlag){
	    %>
						        <input	type="image" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">
						        &nbsp;&nbsp;
						        <%}
      if(draftFlag){%>
						        <input	type="image" src='<bean:message key="common.viewTele" />'>
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
		%>
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name='outwardRemittanceDetailActionForm' property='prid'/>&step=<%=step%>&flag=flag&rfno=<bean:write name='outwardRemittanceDetailActionForm'  property='rfno'/>&no=<bean:write name='outwardRemittanceDetailActionForm' property='orno'/>');return false">&nbsp;&nbsp;
		
						        <%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
								<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='outwardRemittanceDetailActionForm' property='orno'/>&prid=<bean:write name='outwardRemittanceDetailActionForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
						        <%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
						        <input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">
						        &nbsp;&nbsp;
						        <%}%>
								<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('outwardManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='outwardRemittanceDetailActionForm' property='prid'/>');return false">

						        <%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
					          </td>
                  </tr>
                  <tr>
                    <td height="30" colspan="2" align="center" valign="middle">
						        <input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
						        <%}%>
</td></tr>
</table>
</td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body></html:form>
<script language="javascript">
function switchfxkd()
{
	switch ($("fxkd").value)
	{
		case "2":
			$("byrt").disabled=true;
			$("slrt").disabled=true;
			$("exr2").disabled=false;
			document.getElementById("mairujia").style.color="#808080";
			document.getElementById("maichujia").style.color="#808080";
			document.getElementById("huijia").style.color="#08346B";
			break;
		default:
			$("byrt").disabled=false;
			$("slrt").disabled=false;
			$("exr2").disabled=true;
			document.getElementById("mairujia").style.color="#08346B";
			document.getElementById("maichujia").style.color="#08346B";
			document.getElementById("huijia").style.color="#808080";
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
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
			if(flag)//在页面导入的时候不加载ajax
            getCharge("caam",$("cyno").value,$("amts").value,$("prid").value);
	}
}

function switchstfg()
{
	switch ($("stfg").value)
	{
		case "Y":
			showTableStar();
		    break;
		case "N":
     		hiddenTableStar();
			break;
	}
}

function showTableStar()
{
var starDiv = document.getElementById("star");
starDiv.innerHTML="<table width='50%' border='0' cellpadding='0' cellspacing='0'><tr><td align='right' valign='top' style='color:#FF0000; font-size:12px'>*付汇类型：</td></tr><tr><td align='right' style='color:#FF0000; font-size:12px'>*对公对私：</td></tr><tr><td align='right' style='color:#FF0000; font-size:12px'>*交易代码：</td></tr></table>";
}

function hiddenTableStar()
{
var starDiv = document.getElementById("star");
starDiv.innerHTML="<table width='50%' border='0' cellpadding='0' cellspacing='0'><tr><td align='right' valign='top' style='color:#08346B; font-size:12px'>付汇类型：</td></tr><tr><td align='right' style='color:#08346B; font-size:12px'>对公对私：</td></tr><tr><td align='right' style='color:#08346B; font-size:12px'>交易代码：</td></tr></table>";
}

function switchtlfr()
{
	switch ($("tlfr").value)
	{
		case "I":
			$("chco").disabled=false;
			$("chcy").disabled=false;
			document.getElementById("chargeWay").style.color="#FF0000";
			document.getElementById("shoufeibizhong").style.color="#08346B";
			break;
		default:
			$("chco").disabled=true;
			$("chcy").disabled=true;
			document.getElementById("chargeWay").style.color="#808080";
			document.getElementById("shoufeibizhong").style.color="#808080";
			break;
	}
}

function switchfhtp()
{
	switch ($("fhtp").value)
	{
		case "F":
			$("cmpr").value="0";
			break;
		case "J":
			$("cmpr").value="1";
			break;
	}
}
function moveOption(tg1)
{
    for(var i=0;i<tg1.options.length;i++)
	{
        if(tg1.options[i].selected)
		{
		  document.forms[0].tg72.value+=tg1.options[i].value+("\n");
        }
    }
}
</script>
</html:html>
