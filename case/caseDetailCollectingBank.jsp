<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--国际结算案例（三）--托收行、代收行业务操作--%>
<html:html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" 	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" 	src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script>	
</head>
<body onLoad="checkChc()">
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
	<html:form action="caseDetailCollectingBank.do" method="post">
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
       <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例类型：</strong></td>
        <td width="89%" align="left" valign="top">托收行与代收行业务操作</td>
      </tr>
	  <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例名称：</strong></td>
        <td width="89%" align="left" valign="top">
            <label for="detai">
                <input type="text" class="form-control"  id="detai" name="detai" size="60" required="required" autofocus="autofocus"/>
            </label>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>案例分数(分)：</strong></td>
        <td align="left" valign="top">
            <label for="grade">
                <input type="number" class="form-control"  id="grade" name="grade"/>
            </label>
        </td>
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
				<input type="checkbox" name="ocrgCheckbox" id="DC0" value="ocrg" onClick="cheinneri(this.checked,'ocrg'),che(),switchcheckbox(this.name,'icrg')" <%if(map!=null&&map.get("ocrgCheckbox")!=null&&!((String)map.get("ocrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>托收行－出口托收－出口托收业务登记</strong>
						<div id="ocrg" style="display:none">
						    托收人
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_clno" property="ocrg_clno" onclick="openWin('client',',ocrg_clno,')"/>
						        ，备齐出口托收单据后于
						        <html:text styleClass="text_red" maxlength="8" title="ocrg_psdt" property="ocrg_psdt" onclick="openWin('date','ocrg_psdt')" size="8"/>
						        向代收行
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_icbk" property="ocrg_icbk" onclick="openWin('bank1','ocrg_icbk')"/>
						        提请出口托收业务，发票号为
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_ivno" property="ocrg_ivno"/>
						        ，进行
								<span class="selectRed"><html:select styleClass="selectListRed" title="ocrg_cyno" property="ocrg_cyno">
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
								（托收币种），金额为
						        <html:text styleClass="text_red" maxlength="12" title="ocrg_amts" property="ocrg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								，<span class="selectRed"><html:select styleClass="selectListRed" title="ocrg_pstp" property="ocrg_pstp" onchange="switchpstp(this.name,'ocrg_tenr','a99','a01'),che()">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span>&nbsp;类型的托收业务，
								<span id="a99" style="display:none">期限为<html:text styleClass="text_red" maxlength="12"  property="ocrg_tenr_r"  onclick="addId(this.name,'a99')"/>天，</span>
								<span id="a01" style="display:none">期限为<html:text styleClass="text_blue" maxlength="12" property="ocrg_tenr_b" onclick="addId(this.name,'a01')"/>天，</span>付款人<html:text styleClass="text_red" maxlength="12"  property="ocrg_blpy" onclick="openWin('client',',ocrg_blpy,')"/>
								在<html:text styleClass="text_red" maxlength="12" title="ocrg_ime1" property="ocrg_ime1"/>
								（付款人所在地址）进行付款，收款人开户行是<html:text styleClass="text_red" maxlength="12" title="ocrg_ocbknm" property="ocrg_ocbknm" onclick="openWin('bank1','ocrg_ocbknm')"/>，承付日期是<html:text styleClass="text_red" maxlength="8" title="ocrg_acdt" property="ocrg_acdt" onclick="openWin('date','ocrg_acdt')" size="8"/>，销帐日期是<html:text styleClass="text_red" maxlength="8" title="ocrg_gtdt" property="ocrg_gtdt" onclick="openWin('date','ocrg_gtdt')" size="8"/>，签收日期是<html:text styleClass="text_red" maxlength="8" title="ocrg_sgdt" property="ocrg_sgdt" onclick="openWin('date','ocrg_sgdt')" size="8"/>，托收行以
								<span class="selectRedMS">
								<html:select styleClass="selectListRedMS" title="ocrg_chco" property="ocrg_chco">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
								</span>
								（收费方式）的方式向托收人收取手续费
								   <span id="a03">产生
									<span class="selectBlue"><html:select styleClass="selectListBlue" property="ocrg_tltp" onchange="addId(this.name,'a03')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
									</span>
                                &nbsp;（电报费类型）邮电费，</span><span id="a04">
						        <html:text styleClass="text_blue" maxlength="12" property="ocrg_taam" onclick="addId(this.name,'a04')" onblur="addDot(this)"/>（实收电报费金额）</span>
								<span id="a05">
								快递国别为
								<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocrg_cncd" onchange="addId(this.name,'a05')">
                                       <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty></html:select>
									</span>，</span></span>完成业务后生成&lt;&lt;出口托收指示书&gt;&gt;连同单据一起寄给代收行。						</div>			</td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
     	 <tr>
        	<td width="3%" align="center" valign="top">
	          <input type="checkbox" name="icrgCheckbox" id="DC1"  value="icrg"  disabled=true onClick="cheinneri(this.checked,'icrg'),checktitle('ocrg_','icrg'),boxicrg()" <%if(map!=null&&map.get("icrgCheckbox")!=null&&!((String)map.get("icrgCheckbox")).equals("")) out.print("checked");%>>           </td>
			   <td>
				   <strong>代收行－进口代收－进口代收登记</strong><br>
						<div id="icrg" style="display:none">代收行收到托收行寄来的进口代收单据后，进行进口代收业务录入，付款人客户
						<html:text styleClass="text_red" maxlength="12" title="icrg_clno" property="icrg_clno" onclick="openWin('client',',icrg_clno,')"/>
						 ，在
						 <html:text styleClass="text_red" maxlength="8" title="icrg_ardp" property="icrg_ardp" onclick="openWin('date','icrg_ardp')" size="8"/>
						 收到托收行
                         <html:text styleClass="text_red" maxlength="12" title="icrg_ocbk" property="icrg_ocbk" onclick="openWin('bank1','icrg_ocbk')"/>
                         于
						 <html:text styleClass="text_red" maxlength="8" title="icrg_dpdt" property="icrg_dpdt" onclick="openWin('date','icrg_dpdt')" size="8" onblur="comperDate(document.getElementById('icrg_ardp').value,document.getElementById('icrg_dpdt').value,0,'icrg_dpdt','寄单日应小于收单日')"/>
						 寄出的单据，委托代收行
                         <html:text styleClass="text_red" maxlength="12" title="icrg_icbk" property="icrg_icbk" onclick="openWin('bank1','icrg_icbk')"/>
                         做进口代收登记业务，<span id="b01">出票人/收款人名称为
						 <html:text styleClass="text_blue" maxlength="12" property="icrg_drnm" size="12" onclick="addId(this.name,'b01')"/>
						  ，</span><span id="b03">需要的托收费用为
						 <html:text styleClass="text_blue" maxlength="12" property="icrg_cgam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="12" onclick="addId(this.name,'b03')"/>
						  ，</span><span id="b04">于
						  <html:text styleClass="text_blue" maxlength="8" property="icrg_dudt" onclick="openWin('date','icrg_dudt'),addId(this.name,'b04')" size="8" onblur="comperDate(document.getElementById('icrg_dudt').value,document.getElementById('icrg_dpdt').value,0,'icrg_dudt','到期日应大于寄单日'),comperDate(document.getElementById('icrg_dudt').value,document.getElementById('icrg_ardp').value,0,'icrg_dudt','到期日应大于收单日')"/>
						  （到期日）到期，</span><span id="b05">收款人在
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icrg_gdtp" onchange="addId(this.name,'b05')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_GDTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select>
						  </span>（收款人所在地）。</span><span id="b06">代收行以
                          <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="icrg_chco" onchange="addId(this.name,'b06')">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>（收费方式）的方式向客户收取手续费</span>收取手续费，
						<span id="b09">产生
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icrg_tltp" onchange="addId(this.name,'b09')">
								 <html:option value=""></html:option>
								 <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select> </span>
						  （电报费类型）邮电费</span>，<span id="b10">
						  <html:text styleClass="text_blue" maxlength="12" property="icrg_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'b10')"/>
						  （实收电报费金额），</span><%--<span id="b11">快递国别为
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrg_cncd" onchange="addId(this.name,'b11')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty> </html:select></span>，</span>--%>业务完成后，生成确认SWIFT电文给托收行及面函&lt;&lt;单据通知书&gt;&gt;给付款人。						  </div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocupCheckbox"  id="DC2" value="ocup" disabled=true onClick="cheinneri(this.checked,'ocup'),boxocup()" <%if(map!=null&&map.get("ocupCheckbox")!=null&&!((String)map.get("ocupCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>托收行－出口托收－出口托收修改</strong><br>
								<div id="ocup" style="display:none">托收行将出口托收单据寄出后，委托人又向托收行提交修改的单据，托收行依其指示处理，需要修改出口托收内容。<br>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具体为，修改后的客户代码为
                                 <html:text styleClass="text_red" maxlength="12" title="ocup_clno" property="ocup_clno" onclick="openWin('client','ocup_clno')"/>
                                 ，托收日期为
                                 <html:text styleClass="text_red" maxlength="8" title="ocup_psdt" property="ocup_psdt" onclick="openWin('date','ocup_psdt')" size="8"/>
                                 ，<span id="c01">
								 <select name="ocup_adsn" onChange="addId(this.name,'c01')">
  <option>+</option>
  <option>-</option>
</select>
                                 （增减标准），</span><span id="c02">
                                 <html:text styleClass="text_blue" maxlength="12" property="ocup_adam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'c02')"/>
                                 （增减金额），</span>业务修改为
								 <span class="selectRed">
                                 <html:select styleClass="selectListRed" title="ocup_pstp" property="ocup_pstp" onchange="switchpstp(this.name,'ocup_tenr','c99','c03'),cheocup()">
                                     <html:option value=""></html:option>
                                     <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
								   </logic:iterate>
                                 </html:select></span>&nbsp;类型的托收业务，
								 <span id="c99" style="display:none">
								 期限为<html:text styleClass="text_red" maxlength="12"  property="ocup_tenr_r"  onclick="addId(this.name,'c99')"/>
								 天，</span>
								 <span id="c03" style="display:none">
								 期限为<html:text styleClass="text_blue" maxlength="12" property="ocup_tenr_b" onclick="addId(this.name,'c03')"/>
								天，</span>付款人
                                 <html:text styleClass="text_red" maxlength="12" title="ocup_blpy" property="ocup_blpy" onclick="openWin('client',',ocup_blpy,')"/>，<span id="c04">在
                                 <html:text styleClass="text_blue" maxlength="12" property="ocup_ime1" onclick="addId(this.name,'c04')"/>
                                 （付款人所在地址）进行付款，</span>托收行以
								  <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ocup_chco" property="ocup_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
									</logic:iterate>
								</html:select>
                          </span>（收费方式）的方式向托收人收取手续费
						<span id="c07">产生
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocup_tltp" onchange="addId(this.name,'c07')">
                              <html:option value=""></html:option>
                              <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
							</logic:iterate>
                          </html:select></span>&nbsp;
						  （电报费类型）邮电费</span>，<span id="c08">
<html:text styleClass="text_blue" maxlength="12" property="ocup_taam" onclick="addId(this.name,'c08')" onblur="addDot(this)" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" /> (实收电报费金额），</span>
						  <span id="c09">快递国别为
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocup_cncd" onchange="addId(this.name,'c09')">
                           <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
					    </html:select></span>。</span>业务录入后，生成电文发送给代收行，生成面函连同修改的单据一起寄给代收行。 </div>					</td>
				</tr>
			</table>
            <br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="iccgCheckbox" id="DC3" value="iccg" disabled=true onClick="cheinneri(this.checked,'iccg'),checktitle('ocup_','iccg'),boxiccg()" <%if(map!=null&&map.get("iccgCheckbox")!=null&&!((String)map.get("iccgCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>代收行－进口代收－进口代收修改</strong>
								<div id="iccg" style="display:none">代收行根据托收行发送的电文和寄来的修改单据后做进口代收修改操作。修改收单日为
                                 <html:text styleClass="text_red" maxlength="8" title="iccg_ardp" property="iccg_ardp" onclick="openWin('date','iccg_ardp')" size="8"/>
								，寄单日为
                                 <html:text styleClass="text_red" maxlength="8" title="iccg_dpdt" property="iccg_dpdt" onclick="openWin('date','iccg_dpdt')" size="8" onblur="comperDate(document.getElementById('iccg_ardp').value,document.getElementById('iccg_dpdt').value,0,'iccg_dpdt','寄单日应小于收单日')"/>
								，<span id="d01">付款人客户代码为
								<html:text styleClass="text_blue" maxlength="12" property="iccg_clno" onclick="addId(this.name,'d01'),openWin('client','iccg_clno')"/>
								，</span><span id="d02">出票人/收款人名址为
								<html:text styleClass="text_blue" maxlength="12" property="iccg_drnm" onclick="addId(this.name,'d02')"/>
								，</span>托收类型
								<span class="selectRed"><html:select styleClass="selectListRed" title="iccg_pstp" property="iccg_pstp" onchange="switchpstp(this.name,'iccg_tenr','d99','d03'),cheiccg(),boxiccg()">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_PSTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>
								 <span id="d99" style="display:none">，期限
                                <html:text styleClass="text_red" maxlength="12" title="iccg_tenr_r" property="iccg_tenr_r" onclick="addId(this.name,'d99')"/>天，</span>
								 <span id="d03" style="display:none">，期限
                                <html:text styleClass="text_blue" maxlength="12" property="iccg_tenr_b" onclick="addId(this.name,'d03')"/>
                                天，</span></span>代收币种为
								 <span class="selectRed"><html:select styleClass="selectListRed" title="iccg_cyno" property="iccg_cyno">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							  </html:select>
						  </span>，代收金额为
								<html:text styleClass="text_red" maxlength="12" title="iccg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="iccg_amts"/>
								，<span id="d04">代收行费用为<html:text styleClass="text_blue" maxlength="12" property="iccg_cgam" onclick="addId(this.name,'d04')"/>
								，</span><span id="d05">到期日为
                                 <html:text styleClass="text_blue" maxlength="8" property="iccg_dudt" onclick="openWin('date','iccg_dudt'),addId(this.name,'d05')" size="8" onblur="comperDate(document.getElementById('iccg_dudt').value,document.getElementById('icrg_dpdt').value,0,'iccg_dudt','到期日应大于寄单日'),comperDate(document.getElementById('iccg_dudt').value,document.getElementById('icrg_ardp').value,0,'iccg_dudt','到期日应大于收单日')"/>，</span>发票号为<html:text styleClass="text_red" maxlength="12" title="iccg_ivno" property="iccg_ivno"/>。业务录入后，生成面函&lt;&lt;单据通知书&gt;&gt;给付款人及确认电文给托收行。</div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input name="octrCheckbox" type="checkbox" id="DC4" disabled=true Onclick="cheinneri(this.checked,'octr'),checkoctr()" value="octr" <%if(map!=null&&map.get("octrCheckbox")!=null&&!((String)map.get("octrCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>托收行－出口托收－催收货款</strong>
								<div id="octr" style="display:none">
								托收行将出口托收单据寄出后，超过预计时间尚未收汇，托收行向代收行催收单据款项，根据业务需要天填写下列内容，
								<span id="e01">托收行
								<html:text styleClass="text_blue" maxlength="12" property="octr_icbk" onclick="openWin('bank1','octr_icbk'),addId(this.name,'e01')" /></span>以
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="octr_chco" property="octr_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>（收费方式）的方式向客户收取手续费，
						<span id="e04">产生
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="octr_tltp" onchange="addId(this.name,'e04')">
                              <html:option value=""></html:option>
                              <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>（电报费类型）邮电费</span>，<span id="e05">
						  <html:text styleClass="text_blue" maxlength="12" property="octr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e05')"/>
						  （实收电报费金额），</span><span id="e06">快递国别为
						  <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="octr_cncd" onchange="addId(this.name,'e06')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>                          </html:select>
						  	</span>。</span>业务录入后，生成电文发送给代收行。</div></td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="icpyCheckbox" id="DC5" value="icpy" disabled=true Onclick="cheinneri(this.checked,'icpy'),checkicpy(),switchcheckbox(this.name,'ocpy')" <%if(map!=null&&map.get("icpyCheckbox")!=null&&!((String)map.get("icpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>代收行－进口代收－付款</strong>
								<div id="icpy" style="display:none">如果是即期进口代收单据，付款人同意付款后，即将单据放给他并向托收行付款。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果是远期进口代收单据，付款人承兑到期日后，即将单据放给他并于承兑到期日付款 。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;付款人收到提货单据等相关单据后进行付款。
								<span id="f01">帐务核销号为
								<html:text styleClass="text_blue" maxlength="12" property="icpy_ckno" onclick="addId(this.name,'f01')"/>
								，</span><span id="f02">凭证核销日期为
								<html:text styleClass="text_blue" maxlength="8" property="icpy_crdt" onclick="openWin('date','icpy_crdt'),addId(this.name,'f02')" size="8"/>
								，</span>付费金额
								<html:text styleClass="text_red" maxlength="12" title="icpy_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="icpy_dlam"/>
								，<span id="f03">托收行费用
								<html:text styleClass="text_blue" maxlength="12" property="icpy_cgam" onclick="addId(this.name,'f03')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('icpy_dlam').value,document.getElementById('icpy_cgam').value,0,0,0,'icpy_cgam','托收行费用应小于付款金额')"/>
								，</span>帐户行
								<html:text styleClass="text_red" maxlength="12" title="icpy_acbk" property="icpy_acbk" onclick="openWin('bank1','icpy_acbk')"/>
								，<span id="f04">中间行
								<html:text styleClass="text_blue" maxlength="12" property="icpy_mdbk"  onclick="openWin('bank1','icpy_mdbk'),addId(this.name,'f04')"/>
								，</span>于
								<html:text styleClass="text_red" maxlength="8" title="icpy_dudt" property="icpy_dudt" onclick="openWin('date','icpy_dudt')" size="8"/>
								（起息日）日开始起息，<span id="f05">现汇支付
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc1" onclick="addId(this.name,'f05')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);comperMoney(document.getElementById('icpy_dlam').value,document.getElementById('icpy_amc1').value,0,0,0,'icpy_amc1','现汇支付应小于等于付款金额')"/>
								（现汇支付金额），</span><span id="f06">原币账号是
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc1" onclick="addId(this.name,'f06')"/>
								，</span><span id="f08">以
								<html:text styleClass="text_blue" maxlength="12" property="icpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f08')"/>
								（汇率）的汇率售出外汇</span><span id="f07">
								<html:text styleClass="text_blue" maxlength="12" property="icpy_sdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f07')"/>
								（售出外汇金额）。</span><span id="f09">汇款人人民币账号是
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc2" onclick="addId(this.name,'f09')"/>
								，</span><span id="f10">金额为
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f10')"/>
								（人民币金额），</span><span id="f11">套汇支付金额
								<html:text styleClass="text_blue" maxlength="12" property="icpy_amc7" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f11')"/>
								。</span><span id="f12">汇款人外汇账号为
								<html:text styleClass="text_blue" maxlength="12" property="icpy_acc3" onclick="addId(this.name,'f12')"/>
								，</span>以<span id="f99"><span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="icpy_fxkd" onchange="addId(this.name,'f99')">
							  <html:option value=""></html:option><logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>（外汇买卖方式）的形式进行外汇买卖，</span><span id="f15">以
								<html:text styleClass="text_blue" maxlength="12" property="icpy_dram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f15')"/>
								（套汇汇率）的汇率</span>
								<span id="f14"><html:text styleClass="text_blue" maxlength="12" property="icpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f14')"/>
								（买入价）买入，</span>
								<span id="f13">以
								<html:text styleClass="text_blue" maxlength="12" property="icpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f13')"/>
								（卖出价）卖出，</span><span id="f16">其进行的是
								   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icpy_shxz" onchange="addId(this.name,'f16')">
						                <html:option value=""></html:option>
						                <logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						                </html:select></span>
								（售汇性质）</span>
								<span class="selectRedMS">
								<html:select styleClass="selectListRedMS" title="icpy_cmpr" property="icpy_cmpr">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select></span>
								（对公对私）业务，<span id="f17">凭备案表付款：
								<span class="selectBlueYN">
								<html:select styleClass="selectListBlueYN" property="icpy_mepy" onchange="addId(this.name,'f17')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select></span>，</span><span id="f18">
								<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="icpy_ctpy" onchange="addId(this.name,'f18')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
								</span>[是/否]异地付汇，</span>代收行以
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icpy_chco" property="icpy_chco">
									<html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select>
                          </span>（收费方式）的方式向客户收取手续费<span id="f20"></span><span id="f21">产生
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="icpy_tltp" onchange="addId(this.name,'f21')">
                             <html:option value=""></html:option>
                             <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>（电报费类型）邮电费</span><span id="f22">
						  <html:text styleClass="text_blue" maxlength="12" property="icpy_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'f22')"/>（实收电报费金额），</span>申报号为<html:text styleClass="text_red"  property="icpy_sbno" title="icpy_sbno" /> 。</div>				  </td>
			</tr>
			</table>
			<br>
			<table width="98%">
                <tr>
                    <td width="3%" align="center" valign="top">
                    <input type="checkbox" name="icacCheckbox" id="DC6" value="icac" disabled=true  onClick="cheinneri(this.checked,'icac'),checkicac(),switchcheckbox(this.name,'ocac')" <%if(map!=null&&map.get("icacCheckbox")!=null&&!((String)map.get("icacCheckbox")).equals("")) out.print("checked");%>>                    </td>
                    <td> <strong>代收行－进口代收－承兑</strong>
                            <div id="icac" style="display:none">付款人产生的远期进口代收单据，付款人承兑到期日后，代收行将单据放给付款人，付款人进行承兑，承兑托收行
                             <html:text styleClass="text_red" maxlength="12" title="icac_ocbk" property="icac_ocbk" onclick="openWin('bank1','icac_ocbk')"/>
                            ，承兑币种
							<span class="selectRed"><html:select styleClass="selectListRed" title="icac_dlcy" property="icac_dlcy">
                                <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                            </html:select></span>（承兑币种）<html:text styleClass="text_red" maxlength="12" title="icac_dlam" property="icac_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>（承兑金额），所付款项
                            <html:text styleClass="text_red" maxlength="8" title="icac_dudt" property="icac_dudt" onclick="openWin('date','icac_dudt')" size="8"/>（付款到期）到期。代收行以
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icac_chco" property="icac_chco">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>（收费方式）的方式向客户收取手续费
								<span id="g03">产生
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="icac_chtp" onchange="addId(this.name,'g03')">
						<html:option value=""></html:option>
						<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
					</html:select>
					</span>（电报费类型）邮电费</span><span id="g04">
						<html:text styleClass="text_blue" maxlength="12" property="icac_taam" onclick="addId(this.name,'g04')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this);"/>
					（实收电报费金额），</span><span id="g05">快递国别为
					<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icac_cncd" onchange="addId(this.name,'g05')">
					<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
						</span></span>。</div>			</td>
                </tr>
            </table>
			<br>
			<table width="98%">
			<tr>
				<td width="3%" align="center" valign="top">
				<input type="checkbox" name="icrjCheckbox" value="icrj" id="DC7"  disabled=true onClick="cheinneri(this.checked,'icrj'),switchcheckbox(this.name,'ocrj'),boxicrj()" <%if(map!=null&&map.get("icrjCheckbox")!=null&&!((String)map.get("icrjCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>代收行－进口代收－拒付</strong>
							<div id="icrj" style="display:none">代收行以
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icrj_chco" property="icrj_chco">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>（收费方式）的方式向客户收取手续费
						<span id="h03">产生
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icrj_tltp" onchange="addId(this.name,'h03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
							</span>（电报费类型）邮电费</span><span id="h04">
							<html:text styleClass="text_blue" maxlength="12" property="icrj_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'h04')"/>
							（实收电报费金额，</span><span id="h05">快递国别为
							<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrj_cncd" onchange="addId(this.name,'h05')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
							</span></span>。</div>				</td>
			</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
                    <input type="checkbox" name="ocpyCheckbox" id="DC8" value="ocpy" disabled=true  onClick="cheinneri(this.checked,'ocpy'),boxocrt(),checktitle('icpy_','ocpy')" <%if(map!=null&&map.get("ocpyCheckbox")!=null&&!((String)map.get("ocpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>托收行－出口托收－收汇及解付</strong>
						<div id="ocpy" style="display:none">托收行收到代收行的付款电文和出口单据款项后，托收行将款项解付给委托人。<br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出口托收产生国外金额
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fnam" property="ocpy_fnam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />
						  ，我行账户行为<html:text styleClass="text_red" maxlength="12" title="ocpy_acbk" property="ocpy_acbk" onclick="openWin('bank1','ocpy_acbk')"/>。应收手续费
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fnch" property="ocpy_fnch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />，邮电费
						  <html:text styleClass="text_red" maxlength="12" title="ocpy_fntl" property="ocpy_fntl" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />。
						  <span id="i01">代收行以
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocpy_jffs" onchange="switchjffsts('ocpy_jffs'),addId(this.name,'i01')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_HKBZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>（解付方式）的方式进行收汇解付，</span>
						  <span id="i02" style="display:none">原币入帐/扣帐金额为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i02')"/>，</span><span id="i03" style="display:none">原币入帐/扣帐帐号为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_stac" onclick="addId(this.name,'i03')"/>，</span>	
						   <span id="i04" style="display:none">待结/售汇外币金额为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i04')"/>，</span><span id="i05" style="display:none">结售汇入/扣帐账号为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_rmac" onclick="addId(this.name,'i05')"/>，</span>
						   <span id="i06" style="display:none">结汇汇率为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i06')"/>，</span><span id="i07" style="display:none">售汇统计类型(融资)为
						   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocpy_shxz" onchange="addId(this.name,'i07')">
						     <html:option value=""></html:option>
						      <logic:iterate id="list" name="OPTION_SHXZ">
								<%String[] value = (String[]) list;%>
									<html:option value="<%=value[1]%>">
									<%=value[0]%>									</html:option>
										</logic:iterate>
						      </html:select></span>，</span>
						   <span id="i08" style="display:none">结售汇后金额为<html:text styleClass="text_blue" maxlength="12" property="ocpy_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i08')"/>，</span>						  
						  <span id="i09" style="display:none">待套汇外币金额为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_pdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i09')"/>
						  ，</span><span id="i10" style="display:none">套汇币种为
						  <span class="selectBlue"><html:select styleClass="selectListBlue" property="ocpy_thcy" onchange="addId(this.name,'i10')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						  </html:select></span>，</span>
						  <span id="i11" style="display:none">套汇入/扣帐帐号为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_thac" onclick="addId(this.name,'i11')"/>
						  ，</span><span id="i12" style="display:none">外汇买卖方式为
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ocpy_fxkd" onchange="waihui(this.name),addId(this.name,'i12')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate></html:select>
						  </span>，</span>
						  <span id="i13" style="display:none">汇价为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i13')"/>，</span><span id="i14" style="display:none">卖出价为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i14')"/>，</span><span id="i15" style="display:none">买入价为
						  <html:text styleClass="text_blue" maxlength="12" property="ocpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'i15')"/>，</span><span id="i17">[是/否]<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ocpy_strn" onchange="addId(this.name,'i17'),shewaitongji(this.name)">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>涉外统计，</span>
						  <span id="i18" style="display:">对公对私为
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ocpy_corp" onchange="addId(this.name,'i18')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select></span>，</span>
						  <span id="ocpy_id0" style="display:">
						  申报统计类型为<span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ocpy_natp" property="ocpy_natp">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_NATP">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate></html:select></span>，</span>收汇类型为<span class="selectRed"><html:select styleClass="selectListRed" title="ocpy_shtp" property="ocpy_shtp">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_SHTP">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate>
						  </html:select></span>，<span id="i99">申报号为<html:text styleClass="text_red" maxlength="12" title="ocpy_stno" property="ocpy_stno"/>，</span>
						  <span id="i19">交易代码为<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ocpy_tytp" onchange="addId(this.name,'i19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>，</span>
						  <span id="i20">区域性质为<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ocpy_nat" onchange="addId(this.name,'i20')">
							  <html:option value=""></html:option>
							  <logic:iterate id="list" name="OPTION_NAT">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%></html:option>
							</logic:iterate>
						    </html:select>
						  </span>。</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocacCheckbox"  id="DC9" value="ocac" disabled=true onClick="cheinneri(this.checked,'ocac'),switchcheckbox('icacCheckbox','ocac'),checktitle('icac_','ocac'),checkocac()" <%if(map!=null&&map.get("ocacCheckbox")!=null&&!((String)map.get("ocacCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
						<strong>托收行－出口托收－承兑登记</strong>
						<div id="ocac" style="display:none">在出口商远期项下的出口托收业务中，托收行收到代收行发来的进口商承兑电文，做承兑登记，所做的承兑金额为
						<html:text styleClass="text_red" maxlength="12" title="ocac_dlam" property="ocac_dlam"  size="12" onblur="addDot(this)"/>到期日为
						<html:text styleClass="text_red" maxlength="8" title="ocac_dudt" property="ocac_dudt" onclick="openWin('date','ocac_dudt')" size="8"/>
						。</div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocrjCheckbox" id="DC10" value="ocrj" disabled=true onClick="cheinneri(this.checked,'ocrj'),checkocrj(),checktitle('icrj_','ocrj')" <%if(map!=null&&map.get("ocrjCheckbox")!=null&&!((String)map.get("ocrjCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>托收行－出口托收－拒承兑/付款登记</strong>
							<div id="ocrj" style="display:none">托收行收到代收行的拒绝承兑或拒绝付款的电文，做拒承兑/付款登记业务。</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocnpCheckbox" id="DC11" value="ocnp" disabled=true onClick="cheinneri(this.checked,'ocnp'),switchcheckbox(this.name,'icnp'),checktitle('ocrj_','ocnp')" <%if(map!=null&&map.get("ocnpCheckbox")!=null&&!((String)map.get("ocnpCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>托收行－出口托收－无偿交单</strong>
							<div id="ocnp" style="display:none">托收行收到代收行拒承/付款电文后或发生其他情况后，出口商指示托收行进口商可以无偿取得托收单据的业务操作。业务录入后，生成电文发送给代收行。</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="icnpCheckbox" id="DC12" value="icnp" disabled=true  onClick="cheinneri(this.checked,'icnp'),boxocrt(),checktitle('ocnp_','icnp')" <%if(map!=null&&map.get("icnpCheckbox")!=null&&!((String)map.get("icnpCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>代收行－进口代收－无偿交单</strong>
							<div id="icnp" style="display:none">进口代收行无偿交单，代收行以
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icnp_chco" property="icnp_chco" >
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>（收费方式）的方式向客户收取手续费
						<span id="j03">产生
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icnp_tltp" onchange="addId(this.name,'j03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
							</span>（电报费类型）邮电费</span><span id="j04">
							<html:text styleClass="text_blue" maxlength="12" property="icnp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'j04')"/>
							（实收电报费金额），</span><span id="j05">快递国别为
							<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icnp_cncd" onchange="addId(this.name,'j05')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
							</span></span>。</div>				</td>
				</tr>
			</table>
			<br>
            <table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
						<input type="checkbox" name="icrtCheckbox" id="DC13" value="icrt" disabled=true onClick="cheinneri(this.checked,'icrt'),boxicrt(),switchcheckbox(this.name,'ocrt')" <%if(map!=null&&map.get("icrtCheckbox")!=null&&!((String)map.get("icrtCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>代收行－进口代收－退单</strong>
							<div id="icrt" style="display:none">进口代收行退单，代收行以
							<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="icrt_chco" property="icrt_chco" >
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>

                            </html:select>
                            </span>（收费方式）的方式向客户收取手续费<span id="k03">产生
							<span class="selectBlue"><html:select styleClass="selectListBlue" property="icrt_tltp" onchange="addId(this.name,'k03')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select></span>（电报费类型）邮电费</span><span id="k04">
							<html:text styleClass="text_blue" maxlength="12" property="icrt_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'k04')"/>
							（实收电报费金额），</span><span id="k05">快递国别为
							 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="icrt_cncd" onchange="addId(this.name,'k05')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty></html:select>
							</span></span>。</div>				</td>
				</tr>
			</table> <br>
			<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ocrtCheckbox" id="DC14" value="ocrt" disabled=true onClick="cheinneri(this.checked,'ocrt'),boxocrt(),checktitle('icrt_','ocrt')" <%if(map!=null&&map.get("ocrtCheckbox")!=null&&!((String)map.get("ocrtCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>托收行－出口托收－退单登记</strong>
							<div id="ocrt" style="display:none">进口商(即付款人)拒付托收单据，并且指示代收行将单据退回托收行，托收行收到退单后进行登记操作并生成生成电文发送给代收行。</div>				</td>
				</tr>
			</table>
			<br>
				<table width="98%">
				<tr>
					<td width="3%" align="center" valign="top">
					<input type="checkbox" name="occlCheckbox" id="DC15" value="occl"  disabled=true  onClick="cheinneri(this.checked,'occl'),switchcheckbox(this.name,'iccl'),checktitle('occl_','iccl')" <%if(map!=null&&map.get("occlCheckbox")!=null&&!((String)map.get("occlCheckbox")).equals("")) out.print("checked");%>>					</td>
				<td>
					<strong>托收行－出口托收－销卷</strong>
							<div id="occl" style="display:none">对出口托收单据已全额收汇或被代收行拒付并退单的登记操作，只是托收行内部的登记操作。</div>				</td>
				</tr>
			</table>
				<br>
	            <table width="98%">
                    <tr>
                        <td width="3%" align="center" valign="top">
                            <input type="checkbox" id="DC16" name="icclCheckbox" value="iccl" disabled=true  onClick="cheinneri(this.checked,'iccl')" <%if(map!=null&&map.get("icclCheckbox")!=null&&!((String)map.get("icclCheckbox")).equals("")) out.print("checked");%>>                        </td>
                        <td> <strong>代收行－进口代收－销卷</strong>
                                <div id="iccl" style="display:none">进口代收行销卷。</div>                        </td>
                    </tr>
                </table>
				
			
			</div></td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td align="center" class="innerTable_bottom_x"><input type="hidden" name="DCH" id="DCH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">
			<input type="hidden" name="lastprid" id="lastprid" value="">

                        <button class="btn btn-primary" onclick="checkType('DCH','DC');return false" type="submit">
                            <i class="fa fa-plus fa-2x"></i>增加
                        </button>
			&nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-primary" onclick="openReplace('cases.do?flag=list');return false">
                            <i class="fa fa-level-up fa-2x"></i>返回
                        </button>
			<html:hidden property="aveValue"/>
		    <html:hidden property="idM"/>
		    <html:hidden value="03" property="type"/>
		    <html:hidden value="托收行、代收行业务操作" property="name"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden property="id"/>	</td>
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
</body>
</html:form>
<script>
function cheinneri(cha1,cha2)
{//如果当前复选框被选，判断上一个操作中的必选项是否全填，如果是则相应的层可以显示；
	var cha11=cha1;
	var cha22=cha2;
	var prid=cha22+"_";
	if(cha11)
	{
		$(cha22).style.display="";
	}
	else
	{//否则相应层不能显示，且；
		$(cha22).style.display="none";
		cheAll(prid);//此层下的表单控件值置为空；
	}
}

function checktitle(prids,ids)
{//带有title的为必选项，没填则不能做下面的操作
/*  var iObj = document.forms[0].elements;
  var len=iObj.length;
  for (var i=0;i<len;i++)
  {
	if(iObj[i].title.substr(0,5)==prids&&iObj[i].value.Trim()=="")
	 {
		$(ids+"Checkbox").checked=""; 
		alert("请填写完整上一个操作中红色必填项！");
		iObj[i].focus();
		return false
	   }
	}
	return true;*/
}   
	
function checkType(hiddenobject,objectId)
	{
       if(checkGrade()){
 		var hiddenobjectname=hiddenobject;
		var objectSource=objectId;
		var checkboxId=document.getElementsByTagName("input");
		var loopLength=checkboxId.length;
		var idNum=0;
		var charId=new String();
		var prid;
		$(hiddenobjectname).value="";
		$("LCHVAL").value="";
		for(num=0;num<loopLength;num++)
		  {
		   if(checkboxId[num].type=="checkbox")
				{
				   if(checkboxId[num].checked)
					   {
						 $(hiddenobjectname).value+=(objectSource+idNum+",");
						 $("LCHVAL").value+=$(objectSource+idNum).value+"@";
						}
					else
					   {//如果复选框没选，则对应层的表单控件值全为空；
						  prid=checkboxId[num].name.substr(0,4);
						  cheAll(prid);
						   }
				   idNum++;
				}
		  }
		//charId=$(hiddenobjectname).value;//得到本次操作中选中的checkbox的id序列;
		//charIdVAL=$("LCHVAL").value;//得到本次操作中选中的checkboxr的value序列;
		cheId();
		//return [charId,charIdVAL];
		getAveValue($('grade').value,$('LCHVAL').value);
		document.forms[0].submit();
		}else{
		return false;
		}
	}
	
	
	function onLoadCheck(hiddenobject,objectId)
	{
		var hiddenobjectname=hiddenobject;
		var objectSource=objectId;
		var checkboxId=document.getElementsByTagName("input");
		var loopLength=checkboxId.length;
		var idNum=0;
		var charId=new String();
		var prid;
		$(hiddenobjectname).value="";
		$("LCHVAL").value="";
		for(num=0;num<loopLength;num++)
		  {
		   if(checkboxId[num].type=="checkbox")
				{
				   if(checkboxId[num].checked)
					   {
						 $(hiddenobjectname).value+=(objectSource+idNum+",");
						 $("LCHVAL").value+=$(objectSource+idNum).value+"@";
						}
					else
					   {//如果复选框没选，则对应层的表单控件值全为空；
						  prid=checkboxId[num].name.substr(0,4);
						  cheAll(prid);
						   }
				   idNum++;
				}
		  }
		charId=$(hiddenobjectname).value;//得到本次操作中选中的checkbox的id序列;
		charIdVAL=$("LCHVAL").value;//得到本次操作中选中的checkboxr的value序列;
		cheId();
		return [charId,charIdVAL];
	}

function shewaitongji(operation)
{//是否涉外统计
	var operationType=$(operation).value;
	switch(operationType)
	{
		case "0":
			$("i18").style.display="";
			$("i99").style.display="";
			break;
		case "1"://1-no
			$("i18").style.display="none";
			$("i99").style.display="none";
			$("ocpy_corp").value="";
			$("ocpy_stno").value="";
			delId("i18");
			delId("i99");
			break;
		}
}

function waihui(operation)
{//外汇买卖方式
	var operationType=operation;
	operationType=$(operationType).value;
	switch(operationType)
	{
	case "2":
		$("i13").style.display="";//汇价
		$("i14").style.display="none";
		$("i15").style.display="none";
		//$("i16").style.display="none";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "3":
		$("i13").style.display="none";
		$("ocpy_exr2").value="";
		delId("i13");
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;
	}
}
function switchjffsts(objectJffs)
{//判断解付方式为原币入帐/扣帐,结售汇入帐/扣帐,套汇入帐/扣帐(托收行-进口代收-收汇及解付)	
	var objectjffsType=objectJffs;
	objectjffsType=$(objectjffsType).value;
	switch(objectjffsType)
	{
	case "1":// "原币入帐/扣帐", "1"
		$("i02").style.display="";//结售汇入帐/扣帐
		$("i03").style.display="";
		$("i04").style.display="none";//结售汇入帐/扣帐
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		delId("i04");
		delId("i05");
		delId("i06");
		delId("i07");
		delId("i08");
		$("i09").style.display="none";//套汇入帐/扣帐
		$("i10").style.display="none";
		$("i11").style.display="none";
		$("i12").style.display="none";
		$("i13").style.display="none";
		$("i14").style.display="none";//卖出价
		$("i15").style.display="none";//买入价
		//$("i16").style.display="none";
		$("ocpy_pdam").value="";
		$("ocpy_thcy").value="";
		$("ocpy_thac").value="";
		$("ocpy_fxkd").value="";
		$("ocpy_exr2").value="";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i09");
		delId("i10");
		delId("i11");
		delId("i12");
		delId("i13");
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "2":// "结售汇入帐/扣帐", "2" 
		$("i02").style.display="none";//原币入帐/扣帐
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		delId("i02");
		delId("i03");
		$("i04").style.display="";
		$("i05").style.display="";
		$("i06").style.display="";
		$("i07").style.display="";
		$("i08").style.display="";
		$("i09").style.display="none";
		$("i10").style.display="none";
		$("i11").style.display="none";
		$("i12").style.display="none";
		$("i13").style.display="none";
		$("i14").style.display="none";
		$("i15").style.display="none";
		//$("i16").style.display="none";
		$("ocpy_pdam").value="";
		$("ocpy_thcy").value="";
		$("ocpy_thac").value="";
		$("ocpy_fxkd").value="";
		$("ocpy_exr2").value="";
		$("ocpy_slrt").value="";
		$("ocpy_byft").value="";
		//$("ocpy_blan").value="";
		delId("i09");
		delId("i10");
		delId("i11");
		delId("i12");
		delId("i13");
		delId("i14");
		delId("i15");
		//delId("i16");
		break;
	case "3"://"套汇入帐/扣帐", "3"
		$("i02").style.display="none";//原币入帐/扣帐
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		delId("i02");
		delId("i03");
		$("i04").style.display="none";//结售汇入帐/扣帐
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		delId("i04");
		delId("i05");
		delId("i06");
		delId("i07");
		delId("i08");
		$("i09").style.display="";//结售汇入帐/扣帐
		$("i10").style.display="";
		$("i11").style.display="";
		$("i12").style.display="";
		$("i13").style.display="";
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;
/*	default:// "入客户帐", "4" ,"扣客户帐", "5"
		$("i02").style.display="none";//原币入帐/扣帐
		$("i03").style.display="none";
		$("ocpy_dcam").value="";
		$("ocpy_stac").value="";
		$("i04").style.display="none";//结售汇入帐/扣帐
		$("i05").style.display="none";
		$("i06").style.display="none";
		$("i07").style.display="none";
		$("i08").style.display="none";
		$("ocpy_stam").value="";
		$("ocpy_rmac").value="";
		$("ocpy_exrt").value="";
		$("ocpy_shxz").value="";
		$("ocpy_exam").value="";
		$("i09").style.display="";//结售汇入帐/扣帐
		$("i10").style.display="";
		$("i11").style.display="";
		$("i12").style.display="";
		$("i13").style.display="";
		$("i14").style.display="";
		$("i15").style.display="";
		//$("i16").style.display="";
		break;*/
	}
}
 
function jiqiyuanqi(selevalue)
{//如果为“即期”，则可进行“付款”，如果为“远期”，则可进行“承兑”
  var c1=selevalue;
  switch(c1)
	{
	case "0"://即期
		$("icpyCheckbox").disabled=false;//付款可选
		$("icacCheckbox").disabled=true;//承兑不可选
		$("icacCheckbox").checked="";
		$('icac').style.display="none";
		$("icrjCheckbox").disabled=false;//拒付可选
		break;
	case "1"://远期
	   if($("ocpyCheckbox").checked)
	   {
		 $("icpyCheckbox").disabled=false;
		 switchcheckbox('ocacCheckbox','icpy');
	   }
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icacCheckbox").disabled=false;
		 //cheinneri('icacCheckbox'.checked,'icac');
		break;
	case "2"://远期
	   if($("ocpyCheckbox").checked)
	   {
		 $("icpyCheckbox").disabled=false;
		 switchcheckbox('ocacCheckbox','icpy');
	   }
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icacCheckbox").disabled=false;
		// cheinneri('icacCheckbox'.checked,'icac');
		break;
   case "3"://其它
		 $("icrjCheckbox").disabled=true;
		 $("icrjCheckbox").checked="";
		 $('icrj').style.display="none";
		 $("icpyCheckbox").disabled=true;
		 $("icpyCheckbox").checked="";
		 $("icpy").style.display="none";
		 $("icacCheckbox").disabled=true;
		 $("icacCheckbox").checked="";
		 $('icac').style.display="none";
		break;
	}
}
 
function boxicrg()
{//如果已做"进口代收登记icrg",则可做“出口托修改ocup”,"承兑icac",“拒付icrj”,"付款icpy","催收货款octr","退单icrt"；

if($("icrgCheckbox").checked)
   {
    boxocup();//出口托收修改
    $("ocupCheckbox").disabled=false;
	$("octrCheckbox").disabled=false;
	$("icrtCheckbox").disabled=false;
	var opt1=document.getElementById("ocrg_pstp").options[document.getElementById("ocrg_pstp").selectedIndex].value;
	jiqiyuanqi(opt1);
   } 
else
  {
	disable();
  } 
}

function boxocup()
{//如果已做"出口托收修改“且末做“进口代收修改”
//则可做“进口代收修改”且不能做"承兑",“拒付,"付款","催收货款octr","退单icrt"；
if(($("ocupCheckbox").checked)&&(!$("iccgCheckbox").checked))
   {
	$("iccgCheckbox").disabled=false;
	//$("icacCheckbox").disabled=true;
	//$("icrjCheckbox").disabled=true;
	//$("icpyCheckbox").disabled=true;
	//$("octrCheckbox").disabled=true;
	//$("icrtCheckbox").disabled=true;
	//$("icacCheckbox").checked="";
	//	$("icrjCheckbox").checked="";
	//	$("icpyCheckbox").checked="";
	//	$("octrCheckbox").checked="";
	//	$("icrtCheckbox").checked="";
	//	$('icac').style.display="none";
	//	$('icrj').style.display="none";
	//	$('icpy').style.display="none";
	//	$('octr').style.display="none";
	//	$('icrt').style.display="none";
	switchcheckbox('ocupCheckbox','iccg');
   } 
  else{
	switchcheckbox('ocupCheckbox','iccg');
  } 
}

function boxiccg()
{//如果已做“进口代收修改,则可做"承兑icac",“拒付icrj”,"付款icpy","催收货款octr","退单icrt"；
	if($("iccgCheckbox").checked&&$("ocupCheckbox").checked)
	   {
		$("octrCheckbox").disabled=false;
		$("icrtCheckbox").disabled=false;
		var opt3=document.getElementById("iccg_pstp").options[document.getElementById("iccg_pstp").selectedIndex].value;
		jiqiyuanqi(opt3);
	  }
}

function boxicrj()
{ //如果已“拒付”,1则“承兑“&“付款”&"退单"不可做，2可做“拒承兑/付款”，3如果没做“催收货款”，则“催收货款”不可选
	if($("icrjCheckbox").checked)
	 {
		$("icac").style.display="none";//承兑
		$("icacCheckbox").disabled=true;
		$("icacCheckbox").checked="";
		$("icpy").style.display="none";//付款
		$("icpyCheckbox").disabled=true;
		$("icpyCheckbox").checked="";
		$("icrt").style.display="none";//退单
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icrjCheckbox','ocrj');
		if(!$("octrCheckbox").checked)
		{
			$("octrCheckbox").disabled=true;
		}
	 }else{
		switchcheckbox('icrjCheckbox','ocrj');
		switchcheckbox('ocrjCheckbox','ocnp');
		switchcheckbox('ocnpCheckbox','icnp');
		boxocrt();//销卷
	}
}

function checkoctr()
 {//做过“催收货款”，则可“付款“,“承兑”,“拒付”
   if($("octrCheckbox").checked)
   {
	  $('icrt').style.display="none";//退单不可选
	  $("icrtCheckbox").disabled=true;
	  $("icrtCheckbox").checked="";
	  var opt1=document.getElementById("ocrg_pstp").options[document.getElementById("ocrg_pstp").selectedIndex].value;
	  var opt2=document.getElementById("iccg_pstp").options[document.getElementById("iccg_pstp").selectedIndex].value;
	  if($("ocupCheckbox").checked)
	  {
		  jiqiyuanqi(opt2);
	  }else{
		  jiqiyuanqi(opt1);
		 // $("ocupCheckbox").disabled=true;
	  }
	}
 }
 
function checkicac()
 { //如果已“承兑”，则“拒付”&"退单"不可做，可做“承兑登记”
	if($("icacCheckbox").checked)
	 {
		$("icrj").style.display="none";//拒付
		$("icrjCheckbox").disabled=true;
		$("icrjCheckbox").checked="";
		$("icrt").style.display="none";//退单
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icacCheckbox','ocac');
		if(!$("octrCheckbox").checked)
		{
			$("octrCheckbox").disabled=true;
		}
		/*if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}*/
	 }
}
 
function checkocac()
 { //如果已“承兑登记”&&“收汇解付”，则可“销卷”，否则末“付款”可“付款”
		if($("ocacCheckbox").checked)
		 {
			  boxocrt();
			  if(!$("ocpyCheckbox").checked){
				  switchcheckbox('ocacCheckbox','icpy');
			  } 
		 }
}
 
function checkicpy()
 { //如果已“付款”则“拒付”&"退单"不可做
	if($("icpyCheckbox").checked)
	 {
		$("icrj").style.display="none";//拒付
		$("icrjCheckbox").disabled=true;
		$("icrjCheckbox").checked="";
		$("icrt").style.display="none";//退单
		$("icrtCheckbox").disabled=true;
		$("icrtCheckbox").checked="";
		switchcheckbox('icpyCheckbox','ocpy');
		if(!$("octrCheckbox").checked)//催收货款末做，则催收货款不能选
		{
			$("octrCheckbox").disabled=true;
		}
		if(!$("icacCheckbox").checked)//承兑末做，则承兑不能选
		{
			$("icacCheckbox").disabled=true;
		}
	}/*else
	{
		if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}
	}*/
 }
 
function boxicrt()
 { //如果已“退单”则可“退单登记”且“付款”“承兑”“拒付”“催收货款”不可做
	if($("icrtCheckbox").checked)
	 {
		$("octrCheckbox").disabled=true;
		$("icpyCheckbox").disabled=true;
		$("icacCheckbox").disabled=true;
		$("icrjCheckbox").disabled=true;
		$("octrCheckbox").checked="";
		$("icpyCheckbox").checked="";
		$("icacCheckbox").checked="";
		$("icrjCheckbox").checked="";
		$("octr").style.display="none";
		$("icpy").style.display="none";
		$("icac").style.display="none";
		$("icrj").style.display="none";
		switchcheckbox('icrtCheckbox','ocrt');
		/*if(!$("ocupCheckbox").checked)
		{
			$("ocupCheckbox").disabled=true;
		}*/
	  }
 }

function boxocrt()
 { //如果已"无偿交单icnp"||"收汇解付"||"退单登记"||"承兑登记"，则可"销卷"
	if($("icnpCheckbox").checked||$("ocpyCheckbox").checked||$("ocrtCheckbox").checked||$("ocacCheckbox").checked)
	 {
		$("occlCheckbox").disabled=false;
		}
 }
 
function checkocrj()
{
	switchcheckbox("ocrjCheckbox","ocnp");
	switchcheckbox("ocnpCheckbox","icnp");
} 
 
function checkChc()
{//onload初始化
	cheId();//onload时如果没有调用addId();则$("idPS").value=数据库的值；如果调用addId();则$("idPS").value+=新加的id;
	cheinneri(fir("DC0"),"ocrg");
	cheLoa();//取得上次操作中，已选中的checkbox序列且把相应层设成可选；
	shewaitongji("ocpy_strn");
	switchcheckbox('ocrjCheckbox','ocnp');//做了"拒承兑/付款"，则可"无偿交单"
	switchcheckbox('ocnpCheckbox','icnp');//无偿交单
	switchcheckbox('occlCheckbox','iccl');//销卷
	switchpstp('ocrg_pstp','ocrg_tenr','a99','a01');
	switchpstp('ocup_pstp','ocup_tenr','c99','c03');
	switchpstp('iccg_pstp','iccg_tenr','d99','d03');
	switchjffsts('ocpy_jffs');
	waihui('ocpy_fxkd');
}
	
function che()
{//如果第一个复选框被选，则第一个div可显示；icrg为可选；
	if($("ocrgCheckbox").checked)
	{
		$("ocrgCheckbox").style.display="";
		$("icrgCheckbox").disabled=false;
		$("icrgCheckbox").checked="";
		$("icrg").style.display="none";
		//cheAll("icrg");
	}else
	{//如果第一个复选框没被选，则所有checkbox为不可选，相对应的div为隐藏；
		disable();
	}
}

function cheocup()
{//如果修改托收业务类型；
	$("iccgCheckbox").disabled=false;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("iccgCheckbox").checked="";
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("iccg").style.display="none";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
}

function cheiccg()
{//如果修改托收业务类型；
	$("iccgCheckbox").disabled=false;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
	boxicrg();
}

function disable()
{
	$("ocupCheckbox").disabled=true;
	$("iccgCheckbox").disabled=true;
	$("octrCheckbox").disabled=true;
	$("icpyCheckbox").disabled=true;
	$("icacCheckbox").disabled=true;
	$("icrjCheckbox").disabled=true;
	$("ocpyCheckbox").disabled=true;
	$("ocacCheckbox").disabled=true;
	$("ocrjCheckbox").disabled=true;
	$("ocnpCheckbox").disabled=true;
	$("icnpCheckbox").disabled=true;
	$("icrtCheckbox").disabled=true;
	$("ocrtCheckbox").disabled=true;
	$("occlCheckbox").disabled=true;
	$("icclCheckbox").disabled=true;
	$("ocupCheckbox").checked="";
	$("iccgCheckbox").checked="";
	$("octrCheckbox").checked="";
	$("icpyCheckbox").checked="";
	$("icacCheckbox").checked="";
	$("icrjCheckbox").checked="";
	$("ocpyCheckbox").checked="";
	$("ocacCheckbox").checked="";
	$("ocrjCheckbox").checked="";
	$("ocnpCheckbox").checked="";
	$("icnpCheckbox").checked="";
	$("icrtCheckbox").checked="";
	$("ocrtCheckbox").checked="";
	$("occlCheckbox").checked="";
	$("icclCheckbox").checked="";
	$("ocup").style.display="none";
	$("iccg").style.display="none";
	$("octr").style.display="none";
	$("icpy").style.display="none";
	$("icac").style.display="none";
	$("icrj").style.display="none";
	$("ocpy").style.display="none";
	$("ocac").style.display="none";
	$("ocrj").style.display="none";
	$("ocnp").style.display="none";
	$("icnp").style.display="none";
	$("icrt").style.display="none";
	$("ocrt").style.display="none";
	$("occl").style.display="none";
	$("iccl").style.display="none";
}	

	
function cheLoa()
{//在onLoad时，
	//che();//检查第一个复选框是否被选；决定此页中所有checkbox及对应的div状态;
	switchcheckbox('ocrgCheckbox','icrg');
	boxicrg();//进口代收登记
	
	checkoctr();//催收货款
	boxicrj();//拒付
	boxicrt();//退单
	checkicac();//承兑
	checkicpy();//付款
	boxiccg();//进口代收修改
	checkocac();//承兑登记；
	checkocrj();//拒承/付款
	boxocrt();//销卷
	var char=new Array();
		char=onLoadCheck('DCH','DC');
	var idName=new Array();
		idName=char[0].split(",");//取得上次操作中，已选中的checkbox的序列；
	var len=idName.length-1;
	for(var numR=0;numR<len;numR++)
	{
		$(idName[numR]).disabled="";
		$(idName[numR]).checked="checked";
		charDiv=$(idName[numR]).name.substr(0,4);
		$(charDiv).style.display="";//checkbox对应的div;
	}
}	
</script>
</html:html>