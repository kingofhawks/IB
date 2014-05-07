<%@ include file="/common/header.jsp"%>
<%--退汇--%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算</title>
 
</head>

<body onLoad="readOnlyForm(<%=(String)request.getAttribute("tabID")%>);">
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
                        <div id="innerTable_div" class="kuangScroll">
                            <!--录入信息表格开始-->
                             <html:form action="IRRT.do"  onsubmit="checkForm(this)" method="post">
							 <div id="errMsgDiv"><html:errors /></div>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="50%" valign="top">
                                            <table width="400" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td align="right" valign="top">帐务核销号：</td>
                                                    <td width="261">
                                                        <html:text readonly="true" maxlength="10" property="ckno"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">凭证核销日期：</td>
                                                    <td>
                                                        <html:text readonly="true" maxlength="8" property="crdt" size="8"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">汇入汇款编号：</td>
                                                    <td>
                                                        <html:text readonly="true" maxlength="16" property="irno"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >汇入款币种：</td>
                                                    <td><div class="sele_div">
                                                        <html:select styleClass="coin" property="cyno"  disabled="true">
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
                                                    <td align="right" valign="top" >原汇入金额：</td>
                                                    <td>
                                                        <html:text readonly="true" maxlength="15" property="amts"  readonly="true"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >手续费：</td>
                                                    <td>
                                                        <html:text maxlength="15" property="caam"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" class="font_red">*退汇金额：</td>
                                                    <td>
                                                        <html:text maxlength="15" title="rjam" property="rjam"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" class="font_red">*账户行：</td>
                                                    <td>
                                                        <html:text readonly="true" maxlength="11" title="acbk" property="acbk"/>
                                                        <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbknm');return false"></html:image>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >账户行名址：</td>
                                                    <td>
                                                        <html:textarea cols="35" readonly="true" rows="4" property="acbknm"></html:textarea>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >我行在账户行的账号：</td>
                                                    <td>
                                                        <html:text maxlength="35" property="stac" size="35" onclick="openWin('accountNum','stac');return false"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">账户行原贷记编号：</td>
                                                    <td>
                                                        <html:text maxlength="16" property="acrf"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >报文类型：</td>
                                                    <td>
                                                        <html:text maxlength="5" property="mstp" size="5"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top">原汇入汇款起息日：</td>
                                                    <td>
                                                        <html:text readonly="true" maxlength="8" property="vldt" size="8"/>
                                                        <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image>
                                                </td>
                                                </tr>
                                                <tr>
                                                    <td align="right" valign="top" >退汇原因：</td>
                                                    <td>
                                                        <html:textarea cols="35" rows="4" property="rjrs"></html:textarea>
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
                                    <tr>
                                        
                                        </tr>
                                </table>
                            
                        </div>
                    </td>
                    <td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"><table width="100%" height="75" border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
  <tr>
                    <td  colspan="2" height="15" class="space"></td>
                  </tr>
  <tr>
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
						        <input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
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
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name='returnRemittanceActionForm' property='prid'/>&step=<%=step%>&flag=flag&rfno=<bean:write name='returnRemittanceActionForm' property='rfno'/>&no=<bean:write name='returnRemittanceActionForm' property='irno'/>');return false">
&nbsp;&nbsp;
         <%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='returnRemittanceActionForm' property='irno'/>&prid=<bean:write name='returnRemittanceActionForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
						        <%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
						        <input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">
						        &nbsp;&nbsp;
						        <%}%>
			<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('inwardManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='returnRemittanceActionForm' property='prid'/>');return false">
						        <%if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		        </td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
						        <input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
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
