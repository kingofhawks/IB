<%--催收货款--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<script>
function switchchco()
{
	switch ($("chco").value)
	{
		case "MS":
		case "":
			$("chcy").selectedIndex = 0;
			$("chcy").disabled = true;
			$("tltp").disabled=true;
			break;
		default:
			$("chcy").disabled = false;
			$("tltp").disabled=false;
	}
}
</script>
<html:html>

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
    
            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div">

                            <!--内容开始-->
                            <html:form action="OCTR.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">出口托收编号：</td>
                                                <td valign="top"><html:text property="ocno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">托收行：</td>
                                                <td valign="top">
													<html:text styleClass="bank" property="icbk" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','icbk,icbknm,icbkad');return false"></html:image>
    											</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">托收行名称：</td>
                                                <td valign="top"><html:text property="icbknm" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">托收行名址：</td>
                                                <td valign="top"><html:textarea property="icbkad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Swift：</td>
                                                <td valign="top"><html:text property="swift" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付款人名称：</td>
                                                <td valign="top"><html:text property="blpy" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付款人地址：</td>
                                                <td valign="top"><html:text property="ime1" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*收费方式：</td>
                                                <td valign="top">
                                                   <div class="sele_div"><html:select
                                        property="chco" onchange="switchchco();">
                                        <%out.println(request.getAttribute("OPTION_CHCO"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">收费货币：</td>
                                                <td valign="top">
                                                	<div class="sele_div"><html:select styleClass="coin" property="chcy">
									<option></option>
										<logic:notEmpty name="OPTION_CYNO">
              						<logic:iterate id="list" name="OPTION_CYNO">
									<%String[] cyno = (String[])list;%>
									<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>	
                					</logic:iterate>
                 					</logic:notEmpty>
									</html:select>
									</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">快递国别：</td>
                                                <td valign="top">
													<div class="sele_div"><html:select styleClass="coin"
										property="cncd">
										<logic:notEmpty name="OPTION_CNTY">
											<logic:iterate id="list" name="OPTION_CNTY"
												type="com.witsoft.hibernate.Country">
												<html:option value="<%=list.getSwcd()%>">
													<bean:write name="list" property="ctnm" />
												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">邮电费类型：</td>
                                                <td valign="top">
                                                    <div class="sele_div"><html:select
                                        property="tltp">
                                        <%out.println(request.getAttribute("OPTION_TLTP"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">实收邮电费金额：</td>
                                                <td valign="top"><html:text property="taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            
							
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"><html:hidden property="errCode" /> 
								<html:hidden  property="prid"/>
								<html:hidden  property="rfno"/>
								<html:hidden  property="brno"/>
								<html:hidden  property="clno" /> 
								 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                   <td align="center" valign="bottom" width="100%">
					<%
		String tabID=(String)request.getAttribute("tabID");
		boolean draftFlag=((Boolean)request.getAttribute("draftFlag")).booleanValue();//电文
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录
		if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}
      if(draftFlag){%>
	    <input type="image" src='<bean:message key="common.addTele" />'>&nbsp;&nbsp;
        <%}%>
		<input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//复核、授权、已生效目录
	   if(letterFlag){
	    %>
		<input type="image" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
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
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="rfno"/>&no=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="ocno"/>');return false">
		&nbsp;&nbsp;
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="ocno"/>&prid=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
		&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		<input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>
		<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('outwardCollectionManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="outwardCollectionHastenCollectionDetailForm" property="prid"/>');return false">

		<%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		<br><br>
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
                  </tr>
                  </table>
                          </td>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
            <!--内表结束-->
    
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</body>  </html:form>
</html:html>
