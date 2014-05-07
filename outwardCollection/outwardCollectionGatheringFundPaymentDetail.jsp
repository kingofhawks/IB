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
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div" class="kuangScroll">

                            <!--内容开始-->
                            <html:form action="OCPY.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
                                                <td valign="top"><html:text property="brno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><span class="sele_div">出口托收编号：</span></td>
                                                <td valign="top"><html:text property="ocno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">客户代码：</td>
                                                <td valign="top"><html:text styleClass="clientNum" property="clno" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">托收币种：</td>
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
                                                <td height="20" align="right" valign="top">托收金额：</td>
                                                <td valign="top"><html:text property="amts" readonly="true" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*国外收费金额：</td>
                                                <td valign="top"><html:text title="fnam" property="fnam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">此次收汇金额：</td>
                                                <td valign="top"><html:text property="nkam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*我行帐户行：</td>
                                                <td valign="top">
													<html:text styleClass="bank" title="acbk" property="acbk" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbkad');return false"></html:image>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">帐户行名址：</td>
                                                <td valign="top"><html:textarea property="acbkad" readonly="true"></html:textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">我行在帐户行帐号：</td>
                                                <td valign="top"><html:text property="acbkac" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*应收手续费：</td>
                                                <td valign="top"><html:text title="fnch" property="fnch" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*应收邮电费：</td>
                                                <td valign="top"><html:text title="fntl" property="fntl" maxlength="15" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">扣费后金额：</td>
                                                <td valign="top"><html:text property="paam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" readonly="true"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">融资币种：</td>
                                                <td valign="top">
                                                <input type="text" name="text1" value="" readonly="readonly">
													<%--html:text styleClass="coin" property="" readonly="true"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','')"/--%></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">融资本金：</td>
                                                <td valign="top">
                                                <input type="text" name="text2" value="" readonly="readonly">
                                                <%--html:text property="textfield" readonly="true"/--%></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">融资利息：</td>
                                                <td valign="top">
                                                <input type="text" name="text3" value="" readonly="readonly">
                                                <%--html:text property="textfield" readonly="true"/--%></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">扣款标志：</td>
                                                <td valign="top">
                                              <input type="text" name="text4" value="" readonly="readonly">
                                                          <%--div class="sele_div"><html:select
                                        property="pstp" disabled="true">
                                        <%out.println(request.getAttribute("OPTION_PSTP"));%>
                                    </html:select></div--%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">解付客户帐金额：</td>
                                                <td valign="top">
                                                <input type="text" name="text5" value="" readonly="readonly" onKeyPress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled">
                                                <%--html:text property="textfield" readonly="true"/--%></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">解付方式：</td>
                                                <td valign="top">
                                                
                                                          <div class="sele_div"><html:select
                                        property="hkbz">
                                        <%out.println(request.getAttribute("OPTION_HKBZ"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">原币入帐/扣帐金额：</td>
                                                <td valign="top"><html:text property="dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">原币入帐/扣帐帐号：</td>
                                                <td valign="top"><html:text property="stac" maxlength="36"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">待结售汇外币金额：</td>
                                                <td valign="top"><html:text property="stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结售汇入帐/扣帐帐号：</td>
                                                <td valign="top"><html:text property="rmac" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结/售汇汇率：</td>
                                                <td valign="top"><html:text property="exrt" maxlength="12"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">售汇统计类型(融资)：</td>
                                                <td valign="top"><div class="sele_div"><html:select property="shxz">
										<%out.println(request.getAttribute("OPTION_SHXZ"));%>
									</html:select>
									<div></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">结售汇后金额：</td>
                                                <td valign="top"><html:text property="exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">待套汇外币金额：</td>
                                                <td valign="top"><html:text property="pram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled" maxlength="15"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">套汇币种：</td>
                                                <td valign="top">
													<div class="sele_div"><html:select styleClass="coin" property="thcy">
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
                                                <td height="20" align="right" valign="top">套汇入帐/扣帐帐号：</td>
                                                <td valign="top"><html:text property="thac" maxlength="36"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">外汇买卖方式：</td>
                                                <td valign="top">
                                                    
                                                          <div class="sele_div"><html:select
                                        property="fxkd">
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
                                                <td valign="top"><html:text property="blan" readonly="true" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
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
                                                <td height="20" align="right" valign="top">对公/对私：</td>
                                                <td valign="top">
                                                   
                                                          <div class="sele_div"><html:select
                                        property="corp">
                                        <%out.println(request.getAttribute("OPTION_CORP"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*收汇类型：</td>
                                                <td valign="top">
                                                   
                                                          <div class="sele_div"><html:select
                                        property="shtp">
                                        <%out.println(request.getAttribute("OPTION_SHTP"));%>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">申报统计类型：</td>
                                                <td valign="top">
                                            
                                                          <div class="sele_div"><html:select
                                        property="natp">
                                        <%out.println(request.getAttribute("OPTION_NATP"));%>
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
                                                <div class="sele_div_198">
                                                <html:select styleClass="select_198" property="tytp">
										        <html:option value=""></html:option>
										        <%out.println(request.getAttribute("OPTION_TYTP"));%>
									            </html:select>
									            </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">区域属性：</td>
                                                <td valign="top">
                                                <div class="sele_div"><html:select property="nat">
                                                <%out.println(request.getAttribute("OPTION_NAT"));%>
                                               </html:select></div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
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
								 <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                 <tr>
                    <td height="15" class="space"></td>
                  </tr>
				  <tr>
                    <td align="center" valign="center" width="100%">
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
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="prid"/>&step=<%=step%>&flag=flag&rfno=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="rfno"/>&no=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="ocno"/>');return false">
		&nbsp;&nbsp;
		<%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
		<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="ocno"/>&prid=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="prid"/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
		&nbsp;&nbsp;
		<%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
		
		<input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">&nbsp;&nbsp;
		<%}%>
		<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('outwardCollectionManageAction.do?tabID=<%=tabID%>&prid=<bean:write name="outwardCollectionGatheringFundPaymentDetailForm" property="prid"/>');return false">
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
