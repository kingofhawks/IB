<%--收汇解付--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

<body onLoad="readOnlyForm(<%=(String)request.getAttribute("tabID")%>)">
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
                    <td class="innerTable_main">
                        <div id="innerTable_div" class="kuangScroll">

                            <!--内容开始-->
                            <html:form action="CCPY.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">帐务核销号：</td>
                                                <td valign="top"><html:text property="ckno" maxlength="10"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">凭证核销日期：</td>
                                                <td valign="top">
													<html:text styleClass="date" property="crdt"  readonly="true"/>
<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','crdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">收款人代码：</td>
                                                <td valign="top">
													<html:text styleClass="clientNum" property="clno" readonly="true"/>
                                                   <html:image src="/IB/images/date.gif"
										tabindex="1" property="more_btn" onclick="openWin('clientNum','clno');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">光票托收编号：</td>
                                                <td valign="top"><html:text property="ccno"  readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">收汇币种：</td>
                                                <td valign="top">
													<div class="sele_div"><html:select styleClass="coin" property="cyno" disabled="true">
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
                                                <td height="20" align="right" valign="top">收汇金额：</td>
                                                <td valign="top"><html:text property="amts"  readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*托收费金额：</td>
                                                <td valign="top"><html:text title="caam" property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*邮电费金额：</td>
                                                <td valign="top"><html:text title="tsam" property="tsam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">扣费后金额：</td>
                                                <td valign="top"><html:text property="paam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*我行的帐户行：</td>
                                                <td valign="top">
													<html:text styleClass="bank" title="acbk" property="acbk" readonly="true"/>
       <html:image	src="/IB/images/winsearch.gif" tabindex="1" property="more_btn"
	   		onclick="openWin('bank','acbk,acbkad');return false"></html:image>
										</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">帐户行名址：</td>
                                                <td valign="top"><html:textarea property="acbkad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">我行的内部帐号：</td>
                                                <td valign="top"><html:text property="inac" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">买入票据本息：</td>
                                                <td valign="top"><html:text property="bbam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">解付客户金额：</td>
                                                <td valign="top"><html:text property="ream" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">原币入帐金额：</td>
                                                <td valign="top"><html:text property="dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">原币入帐帐号：</td>
                                                <td valign="top"><html:text property="stac" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">待结汇外币金额：</td>
                                                <td valign="top"><html:text property="stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结汇入帐帐号：</td>
                                                <td valign="top"><html:text property="rmac" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结汇汇率：</td>
                                                <td valign="top"><html:text property="exrt" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结汇后金额：</td>
                                                <td valign="top"><html:text property="exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">待套汇外币金额：</td>
                                                <td valign="top"><html:text property="pdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">套汇入帐帐号：</td>
                                                <td valign="top"><html:text property="thac" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">外汇买卖方式：</td>
                                                <td valign="top">
                                                
                                                <div class="sele_div"><html:select
                                        property="dkth">
                                        <%out.println(request.getAttribute("OPTION_FXKD"));%>


                                    </html:select></div>
                                                </td>
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
                                                <td height="20" align="right" valign="top">汇价：</td>
                                                <td valign="top"><html:text property="exr2" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">套汇后金额：</td>
                                                <td valign="top"><html:text property="blan" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">是否涉外统计：</td>
                                                <td valign="top">
                                                   
                                                    <div class="sele_div"><html:select
                                        property="strn">
                                        <%out.println(request.getAttribute("OPTION_STRN"));%>


                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*对公/对私：</td>
                                                <td valign="top">
                                                   
                                                     <div class="sele_div"><html:select
                                        property="corp" title="corp">
                                        <%out.println(request.getAttribute("OPTION_CORP"));%>


                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*收汇类型：</td>
                                                <td valign="top">
                                                
                                                    <div class="sele_div"><html:select
                                        property="shtp" title="shtp">
                                        <%out.println(request.getAttribute("OPTION_SHTP"));%>


                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*申报号：</td>
                                                <td valign="top"><html:text title="sbno" property="sbno" maxlength="22"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">交易代码：</td>
                                                <td valign="top">
                                        <div class="sele_div_198"><html:select styleClass="select_198"
										property="tytp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*申报统计类型：</td>
                                                <td valign="top">
                                                    <div class="sele_div"><html:select
                                        property="natp" title="natp">
                                        <%out.println(request.getAttribute("OPTION_NATP"));%>
                                    </html:select></div>
                                                 </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">交易附言：</td>
                                                <td valign="top"><html:text property="trmo" maxlength="60"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
							    <html:hidden property="errCode" /> 
								<html:hidden  property="prid"/>
								<html:hidden  property="rfno"/>
								<html:hidden  property="brno"/>

                            
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x">	<table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
                  <tr>
                   <td width="100%" height="30" align="center" valign="middle">
					<%
		String tabID=(String)request.getAttribute("tabID");
		boolean letterFlag=((Boolean)request.getAttribute("letterFlag")).booleanValue();//面函
		
		if(tabID!=null&&Integer.parseInt(tabID)<4){//在电文、经办、暂存、待修改目录

       if(letterFlag){
		%>
		<input type="image" src='<bean:message key="common.addLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
       <%}%>
		
		<input type="image" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">&nbsp;&nbsp;
		<%}else{//复核、授权、已生效目录
		if(letterFlag){
	    %>
		<input type="image" src='<bean:message key="common.viewLett" />' onClick="submitKind(0,'letter');return false">&nbsp;&nbsp;
        <%}}
		
       if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
       <input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='cleanDraftGatheringFundPaymentDetailForm' property='ccno'/>&prid=<bean:write name='cleanDraftGatheringFundPaymentDetailForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
		&nbsp;&nbsp;
        <%}%>
        
        <input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('cleanDraftCollectionManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='cleanDraftGatheringFundPaymentDetailForm' property='prid'/>');return false">
		<%
		if(tabID!=null&&!tabID.equals("6")){//非已生效提交按钮显示%>
		</td>
                  </tr>
                  <tr>
                    <td height="30" align="center" valign="middle">
		<input type="image" src='<bean:message key="common.submit" />' onClick="submitKind(0,'submit');return false">
		<%}%>
		</td>
                  </tr>
                  </table></td>
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
</body></html:form>
</html:html>
