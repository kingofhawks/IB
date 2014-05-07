<%@ include file="/common/header.jsp"%>
<%--汇入汇款登记--%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算</title>
</head>
<body onLoad="switchcorp();switchjffs();switchnat();readOnlyForm(<%=(String)request.getAttribute("tabID")%>);">
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
				<div id="innerTable_div" class="kuangScroll"><!--录入信息表格开始--> 
				<html:form action="IRRG.do" onsubmit="checkForm(this)" method="post">
				<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="126" align="right" valign="top">机构号：</td>
									<td width="249"><html:text maxlength="16" property="brno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">汇入汇款编号：</td>
									<td><html:text readonly="true" maxlength="16" property="irno" />
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">是否同业转入：</td>
									<td>
									<div class="sele_div">
									<html:select property="mkty">
									<%out.println(request.getAttribute("OPTION_YNFG"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*处理方式：</td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="pctp" property="pctp">
										<html:option value="0">立即解付</html:option>
										<html:option value="1">挂帐</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇入款币种：</td>
									<td>
									<div class="sele_div"><html:select styleClass="coin"
										property="cyno">
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇入款金额：</td>
									<td><html:text maxlength="15" title="amts" property="amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">国外扣费币种：</td>
									<td>
									<div class="sele_div"><html:select styleClass="coin"
										property="fncy">
										<logic:notEmpty name="OPTION_CYNO">
											<html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[0]%>"><%=cyno[1]%></html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
                                    </td>
								</tr>
								<tr>
									<td align="right" valign="top">国外扣费金额：</td>
									<td><html:text maxlength="15" property="fnam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*起息日：</td>
									<td><html:text readonly="true" styleClass="date" maxlength="8" title="vldt"
										property="vldt" size="8" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/>
										<html:image src="/IB/images/date.gif" tabindex="1" property="more_btn" onclick="openWin('date','vldt');return false"></html:image> 
										</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款方式：</td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="irtp" property="irtp">
										<html:option value="0">T/T</html:option>
										<html:option value="1">M/T</html:option>
										<html:option value="2">D/D</html:option>
										<html:option value="3">Other</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">汇票号码：</td>
									<td><html:text maxlength="11" property="dfno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*我行的账户行：</td>
									<td><html:text readonly="true" title="acbk" property="acbk" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','acbk,acbkad');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">账户行名称和地址：</td>
									<td><html:textarea cols="35" readonly="true" rows="4"
										property="acbkad"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*账户行业务编号：</td>
									<td><html:text maxlength="16" title="acrf" property="acrf" /></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款行业务编号：</td>
									<td>
                                    <div class="sele_div"><html:select title="orno" property="orno">
										<logic:notEmpty name="OPTION_ORNO">
										<%String orno;%>
											<logic:iterate id="list" name="OPTION_ORNO">
												<% orno= (String) list;%>
												<html:option value="<%=orno%>"><%=orno%></html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select></div>
                                </td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款人国别：</td>
									<td>
									<div class="sele_div">
									<html:select styleClass="coin" property="cncd">
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
									<td align="right" valign="top">汇款行：</td>
									<td><html:text readonly="true" property="orbk" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','orbk,orbknm,orbkad');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">汇款行名称：</td>
									<td><html:text styleClass="name_width" readonly="true"
										maxlength="15" property="orbknm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">汇款行名址：</td>
									<td><html:textarea cols="35" readonly="true" rows="4"
										property="orbkad"></html:textarea></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*汇款人名称：</td>
									<td><html:textarea cols="35" rows="4" title="pre1"
										property="pre1"></html:textarea></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">
							<table width="375" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="132" align="right" valign="top" class="font_red">*对公/对私：</td>
									<td width="243">
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="corp" property="corp" onchange="switchcorp()">
										<html:option value="0">对公</html:option>
										<html:option value="1">对私</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">电文中收汇人名址：</td>
									<td><html:textarea cols="35" rows="4" property="yhnm"></html:textarea>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" id="shoukuanrendaima"><div class="font_red">*收款人代码：</div></td>
									<td><html:text readonly="true" maxlength="13" title="clno" property="clno" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('clientNum','clno,clnm,clad');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">收款人名称：</td>
									<td><html:text styleClass="name_width" maxlength="16"
										property="clnm" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">收款人名址：</td>
									<td><html:textarea cols="35" rows="4" property="clad"></html:textarea>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*解付方式：</td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										title="jffs" property="jffs" onchange="switchjffs()">
										<html:option value="XH">现汇入账</html:option>
										<html:option value="JH">结汇入账</html:option>
										<html:option value="TH">套汇入账</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top" id="shoukaunrenzhanghao"><div class="font_red">*收款人帐号：</div></td>
									<td><html:text readonly="true" maxlength="15" title="stac" property="stac" />
									<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('accountNum','stac');return false"></html:image>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">无兑换手续费：</td>
									<td><html:text maxlength="15" property="caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top" class="font_red">*解付金额：</td>
									<td><html:text maxlength="15" title="exam" property="exam" /></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="waihuimaimaifangshi" style="#08346B">外汇买卖方式：</span></td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="dkth">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_DKTH"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="mairujia" style="color:#08346B">买入价：</span></td>
									<td><html:text maxlength="16" property="slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="maichujia" style="color:#08346B">买出价：</span></td>
									<td><html:text maxlength="16" property="byrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="jiehuihuinu" style="color:08346B">结汇汇率：</span></td>
									<td><html:text maxlength="16" property="exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
								</tr>
								<tr>
									<td align="right" valign="top">是否涉外统计：</td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="strn">
										<html:option value=""></html:option>
										<html:option value="Y">YES</html:option>
										<html:option value="N">NO</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">收汇类型：</td>
									<td>
									<div class="sele_div_122"><html:select styleClass="select_122"
										property="shtp">
										<html:option value=""></html:option>
										<html:option value="N">对公单位(N)</html:option>
										<html:option value="U">对私(U)</html:option>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">申报号：</td>
									<td><html:text maxlength="22" property="sbno" /></td>
								</tr>
								<tr>
									<td align="right" valign="top">交易代码：</td>
									<td>
									<div class="sele_div_198">
									<html:select styleClass="select_198" property="tytp">
									<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_TYTP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><span id="quyushuxing" style="color:#08346B">区域属性：</span></td>
									<td>
									<div class="sele_div_122">
									<html:select styleClass="select_122" property="nat" onchange="switchnat()">
									<html:option value=""></html:option>
									<%out.println(request.getAttribute("OPTION_NAT"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top"><div id="shenbaotongjineixing" style="color:#08346B">申报统计类型：</div></td>
									<td>
									<div class="sele_div_198"><html:select styleClass="select_198"
										property="natp">
										<html:option value=""></html:option>
										<%out.println(request.getAttribute("OPTION_NATP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td align="right" valign="top">交易附言：</td>
									<td><html:textarea cols="35" rows="4" property="trmo"></html:textarea>
									</td>
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
				<td class="innerTable_bottom_x"><table width="100%" height="75" border="0" cellpadding="0" cellspacing="0"  class="Scrollbg">
                    <tr>
                    <td height="15" class="space"></td>
                  </tr>

  <tr>
							<td height="30" colspan="2" align="center" valign="middle"> 
						        
							<html:hidden property="prid" />
							<html:hidden property="rfno" />
							<html:hidden property="errCode" />
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
		<input type="image" src='<bean:message key="common.report" />' onClick="openReplace('/IB/voucher.do?prid=<bean:write name='inwardRemittanceDetailActionForm' property='prid'/>&step=<%=step%>&flag=flag&rfno=<bean:write name='inwardRemittanceDetailActionForm' property='rfno'/>&no=<bean:write name='inwardRemittanceDetailActionForm' property='irno'/>');return false">
        &nbsp;&nbsp;
						        <%if(tabID!=null&&tabID.equals("6")){//流程图，只能在以生效里面看到%>
								<input type="image" src='<bean:message key="common.svg" />' onClick="window.open('/IB/flowchart.do?id=<bean:write name='inwardRemittanceDetailActionForm' property='irno'/>&prid=<bean:write name='inwardRemittanceDetailActionForm' property='prid'/>','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no');return false">
&nbsp;&nbsp;
						        <%}
          }
		if(tabID!=null&&Integer.parseInt(tabID)>3&&Integer.parseInt(tabID)<6){//在复核、授权显示返回经办按钮%>
						        <input type="image" src='<bean:message key="common.returnUpdate" />' onClick="submitKind(0,'back');return false">
						        &nbsp;&nbsp;
						        <%}%>
								<input type="image" src='<bean:message key="common.returnList" />' onClick="openReplace('inwardManageAction.do?tabID=<%=tabID%>&prid=<bean:write name='inwardRemittanceDetailActionForm' property='prid'/>');return false">
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
<script language="javascript">
function switchcorp()
{
	switch ($("corp").value)
	{
		case "0":
			var shoukuanrendaimaDiv = document.getElementById("shoukuanrendaima");
			var shoukaunrenzhanghaoDiv = document.getElementById("shoukaunrenzhanghao");
			shoukuanrendaimaDiv.innerHTML="<div class='font_red'>*收款人代码：</div>";
			shoukaunrenzhanghaoDiv.innerHTML="<div class='font_red'>*收款人帐号：</div>";
			break;
		case "1":
			var shoukuanrendaimaDiv = document.getElementById("shoukuanrendaima");
			var shoukaunrenzhanghaoDiv = document.getElementById("shoukaunrenzhanghao");
			shoukuanrendaimaDiv.innerHTML="<div>收款人代码：</div>";
			shoukaunrenzhanghaoDiv.innerHTML="<div>收款人帐号：</div>";
			break;
	}
}

function switchjffs()
{
    var shenbaotongjineixingDiv = document.getElementById("shenbaotongjineixing");
	var swaihuimaimaifangshiDiv = document.getElementById("waihuimaimaifangshi");
	switch ($("jffs").value)
	{
		case "JH":
			$("natp").disabled=false;
			$("exrt").disabled=false;
			$("dkth").disabled=true;
			$("slrt").disabled=true;
			$("byrt").disabled=true;
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#FF0000">*申报统计类型：</div>';
			swaihuimaimaifangshiDiv.innerHTML='<div id="waihuimaimaifangshi" style="color:#808080">外汇买卖方式：</div>';
			document.getElementById("jiehuihuinu").style.color="#08346B";
			document.getElementById("mairujia").style.color="#808080";
			document.getElementById("maichujia").style.color="#808080";
			break;
		case "XH":
			$("natp").disabled=true;
			$("exrt").disabled=true;
			$("dkth").disabled=true;
			$("slrt").disabled=true;
			$("byrt").disabled=true;
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#808080">申报统计类型：</div>';
			swaihuimaimaifangshiDiv.innerHTML='<div id="waihuimaimaifangshi" style="color:#808080">外汇买卖方式：</div>';
			document.getElementById("jiehuihuinu").style.color="#808080";
			document.getElementById("mairujia").style.color="#808080";
			document.getElementById("maichujia").style.color="#808080";
			break;
		case "TH":	
			$("natp").disabled=true;
			$("exrt").disabled=true;
			$("dkth").disabled=false;
			$("slrt").disabled=false;
			$("byrt").disabled=false;
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#808080">申报统计类型：</div>';
			swaihuimaimaifangshiDiv.innerHTML='<div id="waihuimaimaifangshi" style="color:#ff0000">*外汇买卖方式：</div>';
			document.getElementById("jiehuihuinu").style.color="#808080";
			document.getElementById("mairujia").style.color="#08346B";
			document.getElementById("maichujia").style.color="#08346B";
			break;
	}
}
function switchnat()
{
	switch ($("nat").value)
	{
		case "0":
			var shenbaotongjineixingDiv = document.getElementById("shenbaotongjineixing");
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#ff0000">*申报统计类型：</div>';
			$("natp").disabled=false;
			break;
		default:
			var shenbaotongjineixingDiv = document.getElementById("shenbaotongjineixing");
			shenbaotongjineixingDiv.innerHTML='<div id="shenbaotongjineixing" style="color:#808080">*申报统计类型：</div>';
			$("natp").disabled=true;
			break;
	}
}
</script>
</html:html>
