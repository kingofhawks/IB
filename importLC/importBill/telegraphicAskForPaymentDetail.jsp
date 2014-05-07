<%--电索付款--%>
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
			break;
		default:
			$("chcy").selectedIndex = 1;
			$("caam").disabled=false;
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
				<div id="innerTable_div" class="kuangScroll"><!--内容开始--> <html:form action="IBPP.do"
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
									<td height="20" align="right" valign="top">客户号：</td>
									<td valign="top"><html:text property="clno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">进口来单号：</td>
									<td valign="top"><html:text property="ibno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">信用证号：</td>
									<td valign="top"><html:text property="lcno" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">付款币种：</td>
									<td valign="top">
									<div class="sele_div"><html:select styleClass="coin"
										property="dlcy" >
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
									<td valign="top"><html:text title="dlam" property="dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*起息日：</td>
									<td valign="top"><html:text styleClass="date" title="vldt"
										property="vldt" readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收款行：</td>
									<td valign="top"><html:text styleClass="bank" title="rvbk"
										property="rvbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','rvbk,rvbknm,rvbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行名称：</td>
									<td valign="top"><html:text property="rvbknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行名址：</td>
									<td valign="top"><html:textarea property="rvbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行之帐户行：</td>
									<td valign="top"><html:text styleClass="bank" property="rabk"
										readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','rabk,rabknm,rabkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行之帐户行名称：</td>
									<td valign="top"><html:text property="rabknm" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行之帐户行名址：</td>
									<td valign="top"><html:textarea property="rabkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">收款行帐号：</td>
									<td valign="top"><html:text property="raac" maxlength="35"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">国外行费用：</td>
									<td valign="top"><html:text property="ngch" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">实际付款金额：</td>
									<td valign="top"><html:text property="paam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*我行帐户行：</td>
									<td valign="top"><html:text styleClass="bank" title="acbk"
										property="acbk" readonly="true" /> <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbkad,acbkad');return false"></html:image></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">帐户行名址：</td>
									<td valign="top"><html:textarea property="acbkad"
										readonly="true"></html:textarea></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">我行在帐户行帐号：</td>
									<td valign="top"><html:text property="acbkac" readonly="true" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">押汇金额：</td>
									<td valign="top"><html:text property="amc1" maxlength="15"/></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="40%" height="20" align="right" valign="top">保证金金额：</td>
									<td valign="top"><html:text property="amc2" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">垫款金额：</td>
									<td valign="top"><input type="text" name="xxx" readonly="readonly">
									<%--constant.java中没有该项
                                     <html:text property="dkam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                     --%>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">3140科目帐号：</td>
									<td valign="top"><html:text property="acc1" maxlength="36"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原币汇出金额：</td>
									<td valign="top"><html:text property="amc4" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">原币帐号：</td>
									<td valign="top"><html:text property="acc4" maxlength="36"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">售汇汇出金额：</td>
									<td valign="top"><html:text property="amc5" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">售汇帐号：</td>
									<td valign="top"><html:text property="acc5" maxlength="36"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">实际汇率：</td>
									<td valign="top"><html:text property="exrt" maxlength="12"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">售汇后金额：</td>
									<td valign="top"><html:text property="exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">套汇汇出金额：</td>
									<td valign="top"><html:text property="amc6" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">外汇买卖方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="fxkd">
										<%out.println(request.getAttribute("OPTION_FXKD"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">套汇帐号：</td>
									<td valign="top">
									<html:text property="acc6" maxlength="35"/>
									<%-- 没有该项
                                                <html:text property="drac"/></td>
                                                --%>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">买入价：</td>
									<td valign="top"><html:text property="byrt" maxlength="12"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">卖出价：</td>
									<td valign="top"><html:text property="slrt" maxlength="12"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">套汇后金额：</td>
									<td valign="top"><html:text property="dram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">售汇性质：</td>
									<td valign="top"><div class="sele_div"><html:select property="shxz">
										<%out.println(request.getAttribute("OPTION_SHXZ"));%>
									</html:select>
									<div>
                                      </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">对公对私：</td>
									<td valign="top">

									<div class="sele_div"><html:select property="cmpr">
										<%out.println(request.getAttribute("OPTION_CMPR"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否凭备案表付费：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="mepy">
										<%out.println(request.getAttribute("OPTION_CTPY"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">是否异地付汇：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="ctpy">
										<%out.println(request.getAttribute("OPTION_CTPY"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*申报号：</td>
									<td valign="top"><html:text property="sbno" maxlength="22" title="sbno" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">交易代码：</td>
									<td valign="top">
									<div class="sele_div_198"><html:select styleClass="select_198"
										property="tytp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div>
                                    </td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*费用收取对象：</td>
									<td valign="top">
									<div class="sele_div"><html:select title="chfr" property="chfr">
										<%out.println(request.getAttribute("OPTION_CHFR"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top" class="attR">*收费方式：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="chco" title="chco" onchange="switchchco(true);">
										<%out.println(request.getAttribute("OPTION_CHCO"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">费用货币：</td>
									<td valign="top">
									<div class="sele_div" id="2"><html:select styleClass="coin"
										property="chcy" disabled="true">
										<option></option>
										<option value="01">CNY 人民币</option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">我行手续费：</td>
									<td valign="top"><div id="3"><html:text property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></div></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">邮电费类型：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="tltp">
									    <option></option>
										<%out.println(request.getAttribute("OPTION_TLTP"));%>
									</html:select>
									<div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">我行邮电费：</td>
									<td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">帐务核销号：</td>
									<td valign="top"><html:text property="ckno" maxlength="10"/></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="top">凭证核销日期：</td>
									<td valign="top"><html:text styleClass="date" property="crdt"
										readonly="true" /> <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','crdt');return false"></html:image></td>
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
				<td class="innerTable_bottom_x"><html:hidden property="errCode" />
					<html:hidden property="prid" />
					<html:hidden property="rfno" />
					<html:hidden property="fromBrno" />
					<html:hidden property="fromNo" /> 
					<table width="100%"  border="0" cellspacing="0" cellpadding="0"  class="Scrollbg">
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
		onClick="openReplace('/IB/voucher.do?prid=<bean:write name="telegraphicAskForPaymentDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="telegraphicAskForPaymentDetailForm" property="rfno"/>&no=<bean:write name="telegraphicAskForPaymentDetailForm" property="ibno"/>');return false">&nbsp;&nbsp;
		
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input	type="image" src='<bean:message key="common.svg" />'
		onClick="window.open('/IB/flowchart.do?id=<bean:write name="telegraphicAskForPaymentDetailForm" property="ibno"/>&prid=<bean:write name="telegraphicAskForPaymentDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input	type="image" src='<bean:message key="common.returnUpdate" />' property="back" onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>

		<input	type="image" src='<bean:message key="common.returnList" />'
		onClick="openReplace('importBillManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="telegraphicAskForPaymentDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
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
