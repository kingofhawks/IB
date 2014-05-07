<%@ page contentType="text/html; charset=GB2312"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--国际结算案例（一）--开证行、通知行业务操作--%>
<html:html>
<head>
<title><bean:message key="common.systemName"/></title>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script>
</head>
<body onLoad="checkChc()">	
<html:form action="caseDetailLC.do"  method="post">
<script language="javascript" for="document" event="onkeydown">
  if(event.keyCode==13)
     event.keyCode=9;
</script>
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
                    <td class="innerTable_left_y"></td>
                    <td align="center" valign="middle" class="innerTable_main">
	<div id="innerTable_div">
		<!--录入信息表格开始-->
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>案例类型：</strong></td>
        <td align="left" valign="top">开证行与通知行业务操作</td>
      </tr>
      <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例名称：</strong></td>
        <td width="89%" align="left" valign="top"><label>
        <html:text styleClass="kuang"  property="detai" size="30"  maxlength="30"/>
        </label></td>
        </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>案例分数：</strong></td>
        <td align="left" valign="top">
        <html:text property="grade" size="3" maxlength="3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" styleClass="kuang"/>
        分</td>
      </tr>
      <tr>
        <td height="3" colspan="2" align="left" valign="top" background="/IB/images/case_bg.gif"></td>
        </tr>
      <tr>
        <td height="10" colspan="2" align="left" valign="top" ></td>
      </tr>
    </table>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="3%" align="center" valign="top">
				<input type="checkbox" name="lcopCheckbox" id="LC0" value="lcop" onClick="cheinner(this.checked,'lcop','0')" <%if(map!=null&&map.get("lcopCheckbox")!=null&&!((String)map.get("lcopCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>开证行－信用证－开立</strong><br>
						<div id="lcop" style="display:none">开证申请人<html:text styleClass="text_red" maxlength="12" title="lcop_apno" property="lcop_apno" size="12"  onclick="openWin('client',',lcop_apno,')"/>
							于
							<html:text styleClass="text_red" maxlength="8" title="lcop_isdt" property="lcop_isdt" onclick="openWin('date','lcop_isdt')" size="8"/>
							<span id="a01" style="display:">
							向银行<html:text styleClass="text_blue" maxlength="30" property="lcop_utno"  onclick="openWin('bank1','lcop_utno'),addId(this.name,'a01')"/>
							</span>提出开立信用证申请，<span id="a97">货物描述为<html:text styleClass="text_blue" maxlength="18"  size="18" title="text_blue" property="lcop_gstp" onclick="addId(this.name,'a97')" />，</span>申请人邮编<html:text styleClass="text_red" title="lcop_appscd" property="lcop_appscd" size="15"/>，并出示了单位证明及受益人
							<html:text styleClass="text_red" maxlength="12" title="lcop_adl1" property="lcop_adl1"  onclick="openWin('client',',lcop_adl1,')"/>
							共同签署的买卖双方合同，受益人邮编<html:text styleClass="text_red" title="lcop_clpscd" property="lcop_clpscd" size="15"/>，<span id="a02">合同号为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_crno" 
							onclick="addId(this.name,'a02')"/></span>；按合同内容，此信用证[是/否]
							<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="lcop_lgfg" property="lcop_lgfg" onchange="baohan('lcop_lgfg')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select></span>
							开出保函，<span style="display:none" id="a99">保函交易类型为
							<span class="selectRedBH">
							<html:select styleClass="selectListRedBH"  property="lcop_bhtp" onchange="addId(this.name,'a99')">
								<html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_BHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
						</html:select>
							</span>；</span>
								<span style="display:" id="lcop_sutpY">
								此信用证为即期/远期：
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="lcop_sutp" property="lcop_sutp" onchange="jiqiyuanqi()">
								<html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_SUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
                                </html:select>
							    </span>&nbsp;信用证，<span id="a30">远期类型为
								<span class="selectRedL"><html:select styleClass="selectListRedL" property="lcop_uutp" onchange="addId(this.name,'a30');">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_UUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select></span>，</span><span id="a03">期限为
								<html:text styleClass="text_blue" maxlength="4" property="lcop_tenr" size="4" onclick="addId(this.name,'a03')"/>天；</span><span id="lcop_id2" style="display:">信用证类型为
								<span class="selectRedL" id="lcop_lgfgY">
								<html:select styleClass="selectListRedL" title="lcop_lctp" property="lcop_lctp" onchange="lctype('lcop',this.name)">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_LCTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select></span>，</span>支付方式为
								<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_ustp" property="lcop_ustp">
                               <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_USTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
							    </html:select>
                                </span>，</span>
								<span id="a04">指定议付行银行为
							    <html:text styleClass="text_blue" maxlength="12" property="lcop_avbk" size="12"  onclick="openWin('bank1','lcop_avbk'),addId(this.name,'a04')"/>；</span>
								<span id="a05" style="display:none">
								转让行银行为
								<html:text styleClass="text_blue" maxlength="12" property="lcop_tlbk" size="12" onclick="openWin('bank1','lcop_tlbk'),addId(this.name,'a05')"/>；</span>
								<span id="a06" style="display:none">此次信用证[是/否]
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="lcop_tris" onchange="addId(this.name,'a06')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_YNFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>
								&nbsp;为转开，</span>
							<span id="a07" style="display:none">循环次数为
							<html:text styleClass="text_blue" maxlength="4" property="lcop_rlit" size="4" onclick="addId(this.name,'a07')"/>；</span>	
                            通知行银行为
							<html:text styleClass="text_red" maxlength="12" title="lcop_adbk" property="lcop_adbk" size="12" onclick="openWin('bank1','lcop_adbk')"/>，币种为
									<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_lccy" property="lcop_lccy">
										<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
									</html:select>
									</span>，信用证/保函金额为
									<html:text styleClass="text_red" maxlength="12" title="lcop_lcam" property="lcop_lcam" size="12" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									，<span id="a08">信用证[是/否]
									<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="lcop_mksb" onchange="addId(this.name,'a08')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span>&nbsp;保兑，</span>开证方式为
									<span class="selectRed">
									<html:select styleClass="selectListRed" title="lcop_ammd" property="lcop_ammd">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_ISMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
						    </html:select></span>
							，<span id="a09">到期日
							<html:text styleClass="text_blue" maxlength="8" property="lcop_epdt" onclick="openWin('date','lcop_epdt'),addId(this.name,'a09')" size="8" onblur="comperDate(document.getElementById('lcop_epdt').value,document.getElementById('lcop_isdt').value,document.getElementById('lcop_tenr').value,'lcop_epdt','到期日应大于开立日期+远期天数')"/>
							，</span>到期地点在
							<html:text styleClass="text_red" maxlength="12" title="lcop_pcep" property="lcop_pcep" size="12"/>
							，<span id="a10">最迟装运期为
							<html:text styleClass="text_blue" maxlength="8" property="lcop_shdt" onclick="openWin('date','lcop_shdt'),addId(this.name,'a10')" size="8"/>
							，</span>交单期
							<html:text styleClass="text_red" maxlength="4" title="lcop_psbl" property="lcop_psbl" size="4"/>
							天；<span id="a11">信用证项下的货物
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_part" onchange="addId(this.name,'a11')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
		
                            </html:select>
							</span>&nbsp;分批装运</span>和</span id="a12">
							<span class="selectBlue">
							<html:select styleClass="selectListBlue" property="lcop_tras" onchange="addId(this.name,'a12')">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>&nbsp;
							转运，</span><span id="a13">
[是/否] <span class="selectBlueYN"><html:select styleClass="selectListBlueYN" title="lcop_mkis" property="lcop_mkis" onchange="addId(this.name,'a13')">
								<html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_OKFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
								  </logic:iterate>
                                </html:select>
							    </span>有装运期限；</span>运输地从<html:text styleClass="text_red"  title="lcop_shfm" property="lcop_shfm"/>到<html:text styleClass="text_red"  title="lcop_shto" property="lcop_shto"/>；<span id="a14">信用证付款行银行为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_dwbk"  onclick="openWin('bank1','lcop_dwbk'),addId(this.name,'a14')"/>
							，</span><span id="a15">偿付行银行为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_rmbk" onclick="openWin('bank1','lcop_rmbk'),addId(this.name,'a15')"/>；</span>信用证[是/否]额度开证为
<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_qlfg" property="lcop_qlfg">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_LOFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
						  </span>，<span id="a16">客户帐户一为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltact" onclick="addId(this.name,'a16')"/>，</span>
							<span id="a17">币种&nbsp;<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_mgclcur" onchange="addId(this.name,'a17')" >
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>，</span>
							<span id="a18">金额
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltamt" onclick="addId(this.name,'a18')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							；</span><span id="a19">保证金账号一为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgac" onclick="addId(this.name,'a19')"/>，</span>
							<span id="a20">币种
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_accy" onchange="addId(this.name,'a20')">
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>，</span>
							<span id="a21">金额<html:text styleClass="text_blue" maxlength="12" property="lcop_mgam" onclick="addId(this.name,'a21')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							；</span>
							<span id="a22">客户帐户二为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltact2" onclick="addId(this.name,'a22')"/>，</span>
							<span id="a23">币种
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_mgclcur2" onchange="addId(this.name,'a23')">
                                <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>，</span>
							<span id="a24">金额
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgcltamt2" onclick="addId(this.name,'a24')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>；</span>
							<span id="a25">保证金账号二为
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mgc2" onclick="addId(this.name,'a25')"/>
							，</span>
							<span id="a26">币种
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_acy2" onchange="addId(this.name,'a26')">
										<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select>
							</span>，</span>
							<span id="a27">金额
							<html:text styleClass="text_blue" maxlength="12" property="lcop_mam2" onclick="addId(this.name,'a27')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							；</span>受益人所在地为
							<span class="selectRed"><html:select styleClass="selectListRed" title="lcop_gdtp" property="lcop_gdtp">
                            <html:option value=""></html:option>
                             <logic:iterate id="list" name="OPTION_GDTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>；信用证开立操作收费方式为
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="lcop_chco" property="lcop_chco">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span>，<span id="lcop_tltpY" style="display:"><span id="a28">邮电费类型为
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcop_tltp" onchange="addId(this.name,'a28')">
                               <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select>
							</span></span>，</span>
							<span id="a29">实收开证邮电费金额
							<html:text styleClass="text_blue" maxlength="12" property="lcop_taam" onclick="addId(this.name,'a29')"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('lcop_lcam').value,document.getElementById('lcop_taam').value,0,0,0,'lcop_taam','实收开证邮电费不能超过信用证/保函金额！')" />
							；</span>开证行最终产生信用证和电文发往通知行。<br>
						</div></td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0" id="">
     	 <tr>
        	<td width="3%" align="center" valign="top">
	          <input type="checkbox" name="eladCheckbox" id="LC1" value="elad" disabled="disabled" onClick="cheinner(this.checked,'elad','0')" <%if(map!=null&&map.get("eladCheckbox")!=null&&!((String)map.get("eladCheckbox")).equals("")) out.print("checked");%>> </td>
			   <td>
				   <strong>通知行－出口信用证－来证通知/登记</strong><br>
						<div id="elad" style="display:none">
							根据信用证及电文内容，通知行在本行做业务登记，内容如下：<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="b02">此信用证[是/否]&nbsp;
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mksb" onchange="addId(this.name,'b02')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>&nbsp;为备用信用证，</span>
							<span id="b03">
							[是/否]&nbsp;<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mkan" onchange="addId(this.name,'b03')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                                </html:select>
								</span>&nbsp;为红条款信用证，</span>
							<span id="b04">
							[是/否]&nbsp;<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="elad_mkrv" onchange="addId(this.name,'b04')">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_BRFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                                </html:select>
								</span>
							&nbsp;为循环信用证，</span>
							<span id="elad_id0" style="display:">							</span>
							通知行来证通知登记操作收费方式为
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="elad_chco" property="elad_chco">
                                <html:option value=""></html:option>
                                 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
                            </html:select></span>
							<span id="b99">，快递国别
									<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="elad_cncd" onchange="addId(this.name,'b99')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span>
									；</span><span id="elad_tltpY" style="display:">
							<span id="b07">邮电费类型为
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="elad_tltp" onchange="addId(this.name,'b07')">
							<html:option value=""></html:option>
							 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							  </logic:iterate>
							</html:select>
							</span>，</span></span>
							<span id="b08">实收开证邮电费金额
							<html:text styleClass="text_blue" maxlength="12" property="elad_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'b08')"/>；</span>
							登记完后，系统产生面函并信用证通知受益人。</div></td>
			</tr>
			</table>
			<br>
			<table width="98%" id=lcModify>
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="lcupCheckbox" id="LC2" value="lcup" disabled="disabled" onClick="cheinnerL('LC2','lcup'),switchcheckbox('lcupCheckbox','elup'),switchcheckbox('lcupCheckbox','eluk');" <%if(map!=null&&map.get("lcupCheckbox")!=null&&!((String)map.get("lcupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>开证行－信用证－修改</strong><br>
								<div id="lcup" style="display:none">开证行开出信用证后，开证申请人因为金额、货运方式等变动向开证行提出修改申请，填写信用证修改申请书，其中通知方式为<span class="selectRed"><html:select styleClass="selectListRed" title="lcup_ammd" property="lcup_ammd" >
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_ISMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
							</html:select>
							</span>；<span id="c97">我单位业务编号为<html:text styleClass="text_blue" size="18" maxlength="30" property="lcup_trno" onclick="addId(this.name,'c97')" />，</span><span id="c98">我单位合同号为<html:text styleClass="text_blue"  size="18" maxlength="30"  property="lcup_crno" onclick="addId(this.name,'c98')" />，</span><span id="c99">修改内容为<html:text styleClass="text_blue" title="lcup_mdcont" property="lcup_mdcont" onclick="addId(this.name,'c99')" />，</span>具体修改如下：<span id="c01">客户于(申请日期)<html:text styleClass="text_red" title="lcup_apdt" property="lcup_apdt" onclick="openWin('date','lcup_apdt')"/>发起信用证修改申请，申请书编号为<html:text styleClass="text_red" title="lcup_applnno" property="lcup_applnno" />，信用证项下
								   <span class="selectBlueS"><html:select styleClass="selectListBlueS"  property="lcup_adsn" onchange="addId(this.name,'c01')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_AASG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									 </logic:iterate>

									</html:select>
								   </span>&nbsp;</span>
									<span id="c02">金额
									<html:text styleClass="text_blue" maxlength="12" property="lcup_adam" onclick="addId(this.name,'c02')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									，</span>修改为[即期/远期]
									<span class="selectRedS"><html:select styleClass="selectListRedS" title="lcup_sutp" property="lcup_sutp">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_SUTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span>&nbsp;信用证，
									<span id="lcup_id0" style="display:none">
									<span id="c03">期限为
									<html:text styleClass="text_blue" maxlength="4" property="lcup_tenr" size="4" onclick="addId(this.name,'c03')"/>
									天</span>，</span><span id="c04">受益人名称为
									<html:text styleClass="text_blue" maxlength="12" property="lcup_adl1"  onclick="openWin('client',',lcup_adl1,'),addId(this.name,'c04')"/>
									，</span><span id="c06">信用证项下的货物
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_part" onchange="addId(this.name,'c06')">
                                        <html:option value=""></html:option>
                                        <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select></span></span>&nbsp;分批装运和<span id="c07">
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_tras" onchange="addId(this.name,'c07')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_YNAL">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select>
									</span></span><span id="c08">
									&nbsp;转运，装运期限为
									<html:text styleClass="text_blue" maxlength="3" size="3" property="lcup_mkis" onclick="addId(this.name,'c08')" />天，
                                    </span><span id="c09">最迟装期
									<html:text styleClass="text_blue" maxlength="8" property="lcup_shdt" onclick="openWin('date','lcup_shdt'),addId(this.name,'c09')" size="8"/>
									；</span><span id="c10">信用证到期日
									<html:text styleClass="text_blue" maxlength="8" property="lcup_epdt" onclick="openWin('date','lcup_epdt'),addId(this.name,'c10')" size="8" onblur="comperDate(document.getElementById('lcup_epdt').value,document.getElementById('lcup_shdt').value,'0','lcup_epdt','信用证到期日要在最迟装期之后')"/>
									，</span><span id="c11">到期地点
									<html:text styleClass="text_blue" maxlength="12" property="lcup_pcep" onclick="addId(this.name,'c11')"/>
									；</span><span id="c12">客户帐户一为
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltact" onclick="addId(this.name,'c12')"/>
									，</span><span id="c13">币种
									<span class="selectBlue">
									<html:select styleClass="selectListBlue" property="lcup_mgclcur" onchange="addId(this.name,'c13')">
                                       <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span></span><span id="c14">
									，金额
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltamt" onclick="addId(this.name,'c14')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									；</span>
									
									<span id="c15">保证金账号一为
							<html:text styleClass="text_blue" maxlength="12" property="lcup_mgac" onclick="addId(this.name,'c15')"/>，</span>
							<span id="c16">币种
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_accy" onchange="addId(this.name,'c16')">
                              <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>，</span>
							<span id="c17">金额<html:text styleClass="text_blue" maxlength="12" property="lcup_mgam" onclick="addId(this.name,'c17')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							；</span><span id="c18">客户帐户二为
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mbcltact2" onclick="addId(this.name,'c18')"/>
									，</span><span id="c19">币种
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_mgclcur2" onchange="addId(this.name,'c19')">
                                        <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select></span>
									，</span><span id="c20">金额
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgcltamt2" onclick="addId(this.name,'c20')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									；</span><span id="c21">保证金账号二为
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mgac2" onclick="addId(this.name,'c21')"/>
									，</span><span id="c22">币种
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_acy2" onchange="addId(this.name,'c22')">
                                       <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span>
									，</span><span id="c23">金额
									<html:text styleClass="text_blue" maxlength="12" property="lcup_mam2" onclick="addId(this.name,'c23')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									；</span>信用证开立操作收费方式为
							        <span class="selectRedMS">
							        <html:select styleClass="selectListRedMS" title="lcup_chco" property="lcup_chco" >
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select></span>，
									<span id="lcup_tltpY" style="display:"></span><span id="c24">邮电费类型为
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcup_tltp" onchange="addId(this.name,'c24')">
									<html:option value=""></html:option>
									 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
								</html:select>
								</span>，</span>
								</span><span id="c25">
									<span id="lcup_chamY" style="display:">实收开证邮电费金额
									<html:text styleClass="text_blue" maxlength="8" property="lcup_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="8" onclick="addId(this.name,'c26')"/>
									</span>；</span>开证行最终产生707电文发往通知行。</div>					</td>
				</tr>
			</table>
            <br>
            <table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="elupCheckbox" id="LC3" value="elup" disabled="disabled" onClick="cheinner(this.checked,'elup','0')" <%if(map!=null&&map.get("elupCheckbox")!=null&&!((String)map.get("elupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
								<strong>通知行－出口信用证－修改通知</strong>
								<div id="elup" style="display:none">通知行收到开证行的修改电文后，根据修改内容产生面函通知受益人，<span id="d01">转让行业务编号为<html:text styleClass="text_blue" size="16" maxlength="16" property="elup_tlrf" onclick="addId(this.name,'d01')"/>；</span>此次修改方式为
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="elup_aemd" property="elup_aemd">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_AEMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                    </html:select>
								</span>
								，修改日期
								<html:text styleClass="text_red" maxlength="8" title="elup_aedt" property="elup_aedt" onclick="openWin('date','elup_aedt')" size="8"/>
								；该操作收费方式为
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="elup_chco" property="elup_chco" >
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
							</html:select>
							</span>。</div></td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="elukCheckbox" id="LC4" value="eluk" disabled="disabled" onClick="cheinner(this.checked,'eluk','0')" <%if(map!=null&&map.get("elukCheckbox")!=null&&!((String)map.get("elukCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>通知行－出口信用证－拒绝/授受修改</strong>
								<div id="eluk" style="display:none">受益人接到开证行的修改面函后，选择[拒绝/接受]
								<span class="selectRedS"><html:select styleClass="selectListRedS" title="eluk_rvst" property="eluk_rvst" onchange="switchcheckboxValueRej(this.options[this.selectedIndex].value,'lcuk')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_ARMK">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                    </html:select>
								</span>&nbsp;修改信用证；该操作收费方式为
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="eluk_chco" property="eluk_chco">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span><span id="e03">，快递国别
									<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="eluk_cncd" onchange="addId(this.name,'e03')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                    </html:select>
									</span>
									；</span><span id="e04">费用类型为
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="eluk_tltp" onchange="addId(this.name,'e04')">
                                        <html:option value=""></html:option>
                                         <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
                                    </html:select>
									</span></span>，<span id="e06">邮电费币种
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="eluk_tlcy" onchange="addId(this.name,'e06')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
								</html:select></span></span><span id="e05">
									，实收邮电费
									<html:text styleClass="text_blue" maxlength="12" property="eluk_taam"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'e05')"/>
									；</span>操作完成后生成电文发往开证行。					  </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="lcukCheckbox" id="LC5" value="lcuk" disabled="disabled" onClick="cheinnerL('LC5','lcuk')" <%if(map!=null&&map.get("lcukCheckbox")!=null&&!((String)map.get("lcukCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
								<strong>开证行－信用证－拒绝修改</strong>
								<div id="lcuk" style="display:none">开证行收到通知行拒绝接受信用证修改的电文后，登记拒绝内容，此操作的保证金账号一为
									<span id="f01"><html:text styleClass="text_blue" maxlength="12" property="lcuk_mgac" onclick="addId(this.name,'f01')"/>
									，</span><span id="f02">币种
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcuk_accy" onchange="addId(this.name,'f02')">
									<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
								</html:select></span>，
									</span><span id="f03">金额
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mgam" onclick="addId(this.name,'f03')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									；</span><span id="f04">保证金账号二为
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mgc2" onclick="addId(this.name,'f04')"/>
									，</span><span id="f05">币种<span class="selectBlue"><html:select styleClass="selectListBlue" property="lcuk_acy2" onchange="addId(this.name,'f05')">
                                        <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>，
									</span><span id="f06">金额
									<html:text styleClass="text_blue" maxlength="12" property="lcuk_mam2" onclick="addId(this.name,'f06')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									。</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
			    <tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="lccnCheckbox" id="LC6" value="lccn" disabled="disabled"  onClick="cheinner(this.checked,'lccn','0')" <%if(map!=null&&map.get("lccnCheckbox")!=null&&!((String)map.get("lccnCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td align="left" valign="top">
						<strong>开证行－信用证－撤证</strong>
							<div id="lccn" style="display:none">开证行信用证开立后，信用证议付前，开证申请人向开证行提出撤证申请，撤消此信用证；该操作收费方式为
								<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="lccn_chco" property="lccn_chco">
                                    <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								  </logic:iterate>
                                </html:select>
								</span>，操作完成后生成电文发往通知行。此信用证作废。 </div>				  </td>
			</tr>
			</table>
			<br>
			<table width="98%" id="">
			<tr>
				<td width="3%" align="center" valign="top">
				<input type="checkbox" name="elcnCheckbox" id="LC7" value="elcn" disabled="disabled" onClick="cheinnerL('LC7','elcn')" <%if(map!=null&&map.get("elcnCheckbox")!=null&&!((String)map.get("elcnCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>通知行－出口信用证－撤证登记 </strong>
							<div id="elcn" style="display:none">收到开证行的撤证电文，通知行做撤证登记并发电文回开证行。</div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="sgrgCheckbox" id="LC8" value="sgrg" disabled="disabled" onClick="cheinner(this.checked,'sgrg','0')" <%if(map!=null&&map.get("sgrgCheckbox")!=null&&!((String)map.get("sgrgCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>开证行－提货担保－登记</strong>
								<div id="sgrg" style="display:none">进口商(开证申请人)因未收到正本提单而货物已到港向开证行申请做提货担保，登记担保内容，担保提货申请日期
								    <html:text styleClass="text_red" maxlength="8" title="sgrg_apdt" property="sgrg_apdt" onclick="openWin('date','sgrg_apdt')" size="8"/>
									，<span id="h01">发票号
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_ivno" onclick="addId(this.name,'h01')"/>
									，</span>担保提货币种
									<span class="selectRed"><html:select styleClass="selectListRed" title="sgrg_gucy" property="sgrg_gucy">
                                   <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                                </html:select>
								</span>
									，担保提货金额
									<html:text styleClass="text_red" maxlength="12" title="sgrg_guam" property="sgrg_guam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
									，<span id="h02">装运日期
								    <html:text styleClass="text_blue" maxlength="8" property="sgrg_shdt" onclick="openWin('date','sgrg_shdt'),addId(this.name,'h02')" size="8" onblur="comperDate(document.getElementById('sgrg_shdt').value,document.getElementById('lcop_isdt').value,'0','sgrg_shdt','到期日超过了开立日期后的远期天数')"/>
									，</span>提单号码
									<html:text styleClass="text_red" maxlength="12" title="sgrg_blno" property="sgrg_blno"/>
									，货物描述
									<html:text styleClass="text_red" maxlength="12" title="sgrg_gsds" property="sgrg_gsds"/>
									，<span id="h03">保兑行
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_gubk" onclick="openWin('bank1','sgrg_gubk'),addId(this.name,'h03')"/>
									，</span>该操作收费方式为<span id="h04">
										<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="sgrg_chco" property="sgrg_chco" onchange="addId(this.name,'h04')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
										  </logic:iterate>
									</html:select>
									</span>，</span>
									<span id="h06">邮电费类型为
									<span class="selectBlue">
									<html:select styleClass="selectListBlue" property="sgrg_tltp" onchange="addId(this.name,'h06')">
										<html:option value=""></html:option>
										 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									  </logic:iterate>
									</html:select>
									</span></span>，</span>
									实收邮电费金额<span id="h07">
									<html:text styleClass="text_blue" maxlength="12" property="sgrg_taam" onclick="addId(this.name,'h07')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);"/></span>
									，登记完成后，银行向船务公司出具一份&lt;&lt;无正本提单提货担保书&gt;&gt;，为进口商担保在无正本提单的情况下提货，同时开证申请人授权开证行无条件支付该项货款。 </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top" id="">
					<input name="sgtrCheckbox" type="checkbox" id="LC9" value="sgtr" disabled="disabled" onClick="cheinner(this.checked,'sgtr','0')" <%if(map!=null&&map.get("sgtrCheckbox")!=null&&!((String)map.get("sgtrCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>开证行－提货担保－催销保</strong>
						<div id="sgtr" style="display:none">提货担保办理后，银行会根据提货担保的期限对开证申请人进行催保。生成&lt;&lt;催销保函面函&gt;&gt;给开证申请人。 </div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="sgclCheckbox" id="LC10" value="sgcl" disabled="disabled"  onClick="cheinnerL('LC10','sgcl')" <%if(map!=null&&map.get("sgclCheckbox")!=null&&!((String)map.get("sgclCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>开证行－提货担保－销保</strong>
							<div id="sgcl" style="display:none">开证行收到正本提单后，通知开证人，将正本提单及生成面函&lt;&lt;寄提单销保面函&gt;&gt;一并寄给船务公司换回&lt;&lt;无正本提单提货面函&gt;&gt;。</div>				</td>
				</tr>
			</table>
            
            
</div>
</td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="center"><input type="hidden" name="LCH" id="LCH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS"  id="idPS" value="">
			<input type="image"  src="/IB/images/submit.gif"  onClick="checkType('0');return false">
&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="/IB/images/returnInto.gif"  onClick="openReplace('cases.do?flag=list');return false" >
			<html:hidden property="aveValue"/>
			<html:hidden value="01" property="type"/>
			<html:hidden property="idM"/>
			<html:hidden value="开证行、通知行业务操作" property="name"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden property="id"/>	</td>
                    <td></td>
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
</table></html:form>
</body>

<script>
//是否开出保函，如果为“是”，则信用证为“即期”
function baohan(operation)
{
	var operationType=operation;
	var operationType=$(operationType).value;
	switch(operationType)
		{
			case "0"://是开出保函
			 $("lcop_sutp").value="0"; //默认为即期
             $("lcop_sutp").readonly=true;
			 $("a99").style.display=""; //保函交易类型可选
		     $("a30").style.display="none"; //远期类型隐藏
			 $("lcop_uutp").value="";//远期值设为空
		     $("a03").style.display="none"; //期限隐藏
			 $("lcop_tenr").value="";//期限为空
				break;
			case "1":
				$("a99").style.display="none";
				$("lcop_bhtp").value="";
				$("lcop_sutp").readonly=false;
				jiqiyuanqi();
				break;
			default: 
				$("a99").style.display="none";
				$("lcop_bhtp").value="";
				$("lcop_sutp").readonly=false;
				$("lcop_sutp").value=""; //即期/远期为空
				jiqiyuanqi();
				break;
			}
}
function jiqiyuanqi()
{
	if($("lcop_sutp").value==0){
		$("a03").style.display="none"; //期限隐藏
		$("lcop_tenr").value="";//期限为空
		$("a30").style.display="none"; //远期类型隐藏
		$("lcop_uutp").value="";//远期值设为空
	}else{
		if($("lcop_sutp").value==1){
			$("a03").style.display=""; 
			$("a30").style.display=""; 
			}
	}

}

function lctype(operation,objectLc)
{
	//信用证类型判断
	var operationType=operation;
	var objectLcType=objectLc;
	objectLcType=document.getElementById(objectLcType).value;
	switch(objectLcType)
	{
		case "1"://可撤销型信用证
			$("a05").style.display=""; //转让行可填
			$("a06").style.display="none"; //是否为转开
			$("lcop_tris").value="";//
			delId("a06");
			$("a07").style.display="none"; //循环次数为
			$("lcop_rlit").value="";//
			delId("a07");
			break;
			
		case "2"://不可撤销转让型信用证
			$("a05").style.display="none";
			$("lcop_tlbk").value="";
			delId("a05");
			$("a06").style.display=""; 
			$("a07").style.display=""; 
			break;
			
		case "4"://不可撤销型信用证
			$("a05").style.display="none"; 
			delId("a05");
			$("lcop_tlbk").value="";
			$("a06").style.display="";
			$("a07").style.display="none"; 
			$("lcop_rlit").value="";
			delId("a07");
			break;
			
	   default://0,3,5
			$("a05").style.display="none"; 
			$("lcop_tlbk").value="";
			$("a06").style.display="none"; 
			$("lcop_tris").value="";
			$("a07").style.display="none"; 
			$("lcop_rlit").value="";
			delId("a05");
			delId("a06");
			delId("a07");
	}
}

</script>

<script>	
/*----------------拒绝接受/修改---------------------*/
function switchcheckboxValueRej(selectValue,showId)
{
	var selectValueState=selectValue;
	var showIdName=showId;
	var divInn=showIdName.substr(0,4);
	if(selectValueState=="N")
	 { 
		$(showIdName+"Checkbox").disabled=false;
	   }
	else
	{
		if(selectValueState=="Y")	
		 { 
			$(divInn).style.display="none";
			$(showIdName+"Checkbox").checked="";
			$(showIdName+"Checkbox").disabled=true;
		   }
	}		   
}   
/*function chezhen()
{
	if($("lcopCheckbox").checked){
		$("lccnCheckbox").disabled=false;
		cheinnerL('LC6','lccn')	;
	}else{
		$("lccnCheckbox").checked="";
		$("lccnCheckbox").disabled=true;
		$("lccn").style.display="none";
	}

}
*/
</script>
<script>
//初始化
function checkChc()
{
	cheId();//调出非必选项的id串；
	cheLoa(11,"0","LCH");
	if($("lcopCheckbox").checked){
		cheinner($("lcopCheckbox").checked,"lcop","0");
    }
	//cheLoa("0");
	jiqiyuanqi();
	var opt1=$("eluk_rvst").options[$("eluk_rvst").selectedIndex].value;
	baohan('lcop_lgfg');
	lctype('lcop','lcop_lctp');
	                  //switchId('lcop','lcop_lgfg');
	                  // switchcheckbox('lcupCheckbox','elup');
	                  //switchcheckbox('lcupCheckbox','eluk');
	switchcheckboxValueRej(opt1,'lcuk');
}
</script>	
</html:html>