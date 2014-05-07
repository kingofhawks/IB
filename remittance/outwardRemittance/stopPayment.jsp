<%@ include file="/common/header.jsp"%>
<%--止付--%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算</title>
</head>
<script>
function switchchco()
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
			$("chcy").disabled = true;
			$("caam").disabled=true;
			break;
		default:
			$("chcy").disabled = false;
			$("caam").disabled=false;
	}
}

</script>
<body onLoad="switchchco();readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
                <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="innerTable_top_left"></td>
                        <td class="innerTable_top_x"></td>
                        <td class="innerTable_top_right"></td>
                    </tr>
                    <tr>
                        <td class="innerTable_left_y">&nbsp;</td>
                        <td align="center" valign="middle" class="innerTable_main">
                            <div id="innerTable_div">
                               <!--录入信息表格开始-->
						        <html:form action="ORST.do" onsubmit="checkForm(this)" method="post">
								<div id="errMsgDiv"><html:errors /></div>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="50%" valign="top">
                                            <table width="375" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="126" align="right" valign="top">汇出汇款编号：</td>
                                                    <td width="249">
                                                        <html:text readonly="true" maxlength="16" property="orno"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">Charges  For：</td>
                                                    <td><html:text maxlength="16" property="tpnm"/></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top"><span class="font_red">*收费方式：</span></td>
                                                    <td>
                                                        <div class="sele_div_122">
                                                        <html:select styleClass="select_122" title="chco" property="chco" onchange="switchchco()">
                                                            <%out.println(request.getAttribute("OPTION_CHCO"));%>
                                                        </html:select>
														</div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">扣费币种：</td>
                                                    <td>
                                                     <div class="sele_div">
                                                        <html:select styleClass="coin" property="chcy">
                                                        <html:option value=""></html:option>
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
                                                    <td align="right" valign="top">实收手续费金额：</td>
                                                    <td>
                                                        <html:text maxlength="15" property="caam" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">电报费类型：</td>
                                                    <td><div class="sele_div_122">
                                                        <html:select styleClass="select_122"  property="chtp">
                                                            <%out.println(request.getAttribute("OPTION_CHTP"));%>
                                                        </html:select>
														</div></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">实收电报费金额：</td>
                                                    <td>
                                                        <html:text maxlength="15" property="taam"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2" align="left" valign="top">
                                                        <html:hidden property="prid"/>
                                                        <html:hidden property="brno"/>
                                                        <html:hidden property="rfno"/>
                                                        <html:hidden property="errCode"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td width="50%" valign="top">&nbsp;</td>
                                    </tr>
                                  
                                </table>
								
                            </div>
                        </td>
                        <td class="innerTable_right_y">
                        </td>
                    </tr>
                    <tr>
                        <td class="innerTable_bottom_left"></td>
                        <td class="innerTable_bottom_x"><table width="100%" border="0">
    <tr>
                                        <td colspan="2" align="center" valign="top">
                                           
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
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name='stopPaymentActionForm' property='prid'/>&step=<%=step%>&flag=flag&rfno=<bean:write name='stopPaymentActionForm' property='rfno'/>&no=<bean:write name='stopPaymentActionForm' property='orno'/>');return false">&nbsp;&nbsp;
						        <%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
								<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='stopPaymentActionForm' property='orno'/>&prid=<bean:write name='stopPaymentActionForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
						        <%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
						        <input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">
						        &nbsp;&nbsp;
						        <%}%>
								<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('outwardManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='stopPaymentActionForm' property='prid'/>');return false">
						        <%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
						        <br>
						        <br>
						        <input type="image" src='<bean:message key="common.submit" />' onclick="submitKind(0,'submit');return false">
						        <%}%>
</td>
                                        </tr>
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
</html:html>
