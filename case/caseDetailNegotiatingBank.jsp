<%@ page contentType="text/html; charset=GB2312"%>
<%@ page language="java"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
    prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>

<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--国际结算案例（二）--议付行业务操作--%>
<%--本页操作需从caseDetailLC.jsp获取即期("0")/远期("1")值--%>
<html:html>
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript" src="/IB/case/case.js"></script></head>
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
        <td valign="top" class="outerTable_mainContent">
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
	<html:form action="caseDetailNegotiatingBank.do"  method="post">
	
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例类型：</strong></td>
        <td width="89%" align="left" valign="top">开证行与议付行业务操作</td>
      </tr><tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例备注：</strong></td>
        <td width="89%" align="left" valign="top">
          此议付案例对应的开证行和通知行的案例编号为：<bean:write name="caseDetailNegotiatingBankActionForm" property="caseId"/>
        </td>
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
			<input type="checkbox" name="ebrgCheckbox" id="NE0"  value="ebrg"  onClick="cheinneri(this.checked,'ebrg'),switchcheckbox(this.name,'ibrg'),ebrgtlrf(),disable(),boxebrg()" <%if(map!=null&&map.get("ebrgCheckbox")!=null&&!((String)map.get("ebrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>议付行－出口寄单收汇－出口寄单登记</strong><br>
						<div id="ebrg" style="display:none">受益人收到信用证后，开始备货，发货后于<html:text styleClass="text_red" maxlength="8" title="ebrg_apdt" property="ebrg_apdt" onclick="openWin('date','ebrg_apdt')" size="8"/>携信用证和单据到（银行名称）<html:text styleClass="text_red" maxlength="30" property="ebrg_bknm" title="ebrg_bknm"  onclick="openWin('bank1','ebrg_bknm')"/>议付行议付，此次议付开证行是<html:text styleClass="text_red" maxlength="30" property="ebrg_isbknm" title="ebrg_isbknm"  onclick="openWin('bank1','ebrg_isbknm')"/>，通知行是<html:text styleClass="text_red" maxlength="30" property="ebrg_adbknm" title="ebrg_adbknm"  onclick="openWin('bank1','ebrg_adbknm')"/>，[是/否]
						<span class="selectRedYN">
						<html:select styleClass="selectListRedYN" title="ebrg_mkts" property="ebrg_mkts">
                                <html:option value=""></html:option>
                                <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
						</span>
						&nbsp;押印核符，议付日期
						<html:text styleClass="text_red" maxlength="8" title="ebrg_rvdt" property="ebrg_rvdt" onclick="openWin('date','ebrg_rvdt')" size="8"/>
						，币种
						<span class="selectRed"><html:select styleClass="selectListRed" title="ebrg_dlcy" property="ebrg_dlcy">
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
						，金额
						<html:text styleClass="text_red" maxlength="12" title="ebrg_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="ebrg_dlam" size="12"/>
						，<span id="a08">B/L Date
						<html:text styleClass="text_blue" property="ebrg_bldt" onclick="openWin('date','ebrg_bldt'),addId(this.name,'a08')" maxlength="12" size="12"/>
						，</span>发票号
						<html:text styleClass="text_red" maxlength="12" title="ebrg_ivno" property="ebrg_ivno" size="12"/>
						，<span id="a01">核销单
						<html:text styleClass="text_blue" maxlength="12" property="ebrg_dtno" size="12" onclick="addId(this.name,'a01')"/>，</span>
						<span id="a02" style="display:none">转让号
						<html:text styleClass="text_blue" maxlength="12" property="ebrg_tlrf" size="12" onclick="addId(this.name,'a02')"/>，</span>
						<span id="a03">[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebrg_drmk" onchange="addId(this.name,'a03')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>不符点出单</span>
						；该业务有效期为<html:text styleClass="text_red" maxlength="8" title="ebrg_epdt" property="ebrg_epdt" onclick="openWin('date','ebrg_epdt')" size="8"/>，交单期限为<html:text styleClass="text_red" maxlength="8" title="ebrg_psbl" property="ebrg_psbl"/>，此操作费用收取对象
				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ebrg_chfr" property="ebrg_chfr">
                                    <html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						<span id="ebrg_id0">
						；收费方式为
							<span id="a99"><span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebrg_chco" property="ebrg_chco" onchange="addId(this.name,'a99')">
                               <html:option value=""></html:option>
							    <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select>
                            </span>，</span></span>
							邮电费类型为
							<span id="a04"><span class="selectBlue"><html:select styleClass="selectListBlue" property="ebrg_tltp" onchange="addId(this.name,'a04')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
                            </span>，</span><span id="a09">TLX Charges Currency为
						<span class="selectBlue">
                        <html:select styleClass="selectListBlue" property="ebrg_tlcy" onchange="addId(this.name,'a09')">
                             <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
                        </span>，</span><span id="a05">邮电费金额
                            <html:text styleClass="text_blue" maxlength="12" property="ebrg_taam" onclick="addId(this.name,'a05')" onblur="addDot(this)"/>
							；</span></span><span id="a07">快递国别
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebrg_cncd" onchange="addId(this.name,'a07')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                           </html:select></span></span></span>
						；完成此登记后，产生电文和面函发往开证行。						</div>              </td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
            <input type="checkbox" name="ibrgCheckbox" id="NE1" value="ibrg" disabled="disabled"  onClick="cheinneri(this.checked,'ibrg'),checktitle('ebrg_','ibrg'),boxibrg()" <%if(map!=null&&map.get("ibrgCheckbox")!=null&&!((String)map.get("ibrgCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－来单登记</strong><br>
                    <div id="ibrg" style="display:none">开证行收到从交单行交来单证后，进行来单登记，如果开证行已经做过提货担保，那么开证行可以不经过开证申请人同意，验证单证一致后即付款；<span id="i01">国外行费用<html:text styleClass="text_blue" maxlength="12" property="ibrg_ngch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'i01')"/>，</span>
						索汇金额<html:text styleClass="text_red" property="ibrg_dlam" title="ibrg_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" maxlength="12" size="12"/>，收单日期<html:text styleClass="text_red" size="8" maxlength="8" property="ibrg_apdt" onclick="openWin('date','ibrg_apdt')"/>，<span id="i02">最迟承兑/付款日期<html:text styleClass="text_blue" size="8" maxlength="8" property="ibrg_shdt" onclick="openWin('date','ibrg_shdt'),addId(this.name,'i02')"/></span>，<span id="i99">提单号<html:text styleClass="text_blue" maxlength="12" property="ibrg_blno" size="12" onclick="addId(this.name,'i99')"/></span>，此操作最终产生面函通知开证申请人。</div> </td>
        </tr>
    </table>
	<br>
	
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ebupCheckbox" id="NE2" value="ebup" disabled="disabled" onClick="cheinneri(this.checked,'ebup'),switchcheckbox(this.name,'ibub'),ebrgtlrf(),checktitle('ibrg_','ebup')" <%if(map!=null&&map.get("ebupCheckbox")!=null&&!((String)map.get("ebupCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－出口寄单修改</strong><br>
                    <div id="ebup" style="display:none">议付行对已出口寄单未付款的单据进行修改的登记，此次修改议付[是/否]
						<span class="selectRedYN"><html:select styleClass="selectListRedYN" title="ebup_mkts" property="ebup_mkts">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>&nbsp;押印核符，
						<span id="b03">是否不符点出单为 
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebup_drmk" onchange="addId(this.name,'b03')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span></span>
						<span id="b08">，[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebup_ckgt" onchange="addId(this.name,'b08')">
                            <html:option value=""></html:option>
                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>凭保函出单</span>
						；议付日期
						<html:text styleClass="text_red" maxlength="8" title="ebup_rvdt" property="ebup_rvdt" onclick="openWin('date','ebup_rvdt')" size="8"/>
						，币种
						<span class="selectRed"><html:select styleClass="selectListRed" title="ebup_dlcy" property="ebup_dlcy">
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
						，金额
						<html:text styleClass="text_red" maxlength="12" title="ebup_dlam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" property="ebup_dlam" size="12"/>
						，发票号
						<html:text styleClass="text_red" maxlength="12" title="ebup_ivno" property="ebup_ivno" size="12"/>
						<span id="b01">，核销单
						<html:text styleClass="text_blue" maxlength="12" property="ebup_dtno" size="12" onclick="addId(this.name,'b01')"/>
						</span><span id="b02">，转让号
						<html:text styleClass="text_blue" maxlength="12" property="ebup_tlrf" size="12" onclick="addId(this.name,'b02')"/>
						</span>
						，此操作费用收取对象
					<span class="selectRedS"><html:select styleClass="selectListRedS" title="ebup_chfr" property="ebup_chfr">
                                    <logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						<span id="ebup_id0">
						<span id="b99">，收费方式为
                            <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebup_chco" property="ebup_chco">
                                <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
                            </html:select>
                        </span></span></span>
						<span id="b04">，邮电费类型为
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebup_tltp" onchange="addId(this.name,'b04')">
						<html:option value=""></html:option>
						<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span></span><span id="b05">，邮电费金额
                        <html:text styleClass="text_blue" maxlength="12" property="ebup_taam" onclick="addId(this.name,'b05')" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
						</span><span id="b07">；快递国别
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebup_cncd" onchange="addId(this.name,'b07')">
								<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						</html:select></span>
					</span>；完成此修改后，生成SWIFT电文发给开证行，生成面函连同修改单据一起寄给开证行。</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibubCheckbox" id="NE3" value="ibub" disabled="disabled"  onClick="cheinneri(this.checked,'ibub'),checktitle('ebup_','ibub')" <%if(map!=null&&map.get("ibubCheckbox")!=null&&!((String)map.get("ibubCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－换单</strong><br>
                    <div id="ibub" style="display:none">开证行进口单据收到后，受益人提交给议付行的单据可能有误[如金额增减，替换某单据]，会重新提交新单据给议付行，开证行收到议付行寄来的新单据后，替换掉旧单据并产生&lt;&lt;来单付款通知书&gt;&gt;通知开证申请人，换单内容为：发票号
                        <html:text styleClass="text_red" maxlength="12" title="ibub_ivno" property="ibub_ivno" size="12"/>
                        ，提单号
                        <html:text styleClass="text_red" maxlength="12" title="ibub_blno" property="ibub_blno" size="12"/>
                        ，汇票金额
                        <html:text styleClass="text_red" maxlength="12" title="ibub_dfam" property="ibub_dfam"  onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" size="12"/>
                        ，到期日
						<html:text styleClass="text_red" maxlength="8" title="ibub_dudt" property="ibub_dudt" onclick="openWin('date','ibub_dudt')" size="8"/>
						。</div>            </td>
        </tr>
    </table>
	<br>
	
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
             <input type="checkbox" name="ibacCheckbox" id="NE4" value="ibac" disabled="disabled" onClick="cheinneri(this.checked,'ibac'),switchcheckbox(this.name,'ebac'),checktitle('ibrg_','ibac'),boxibac()" <%if(map!=null&&map.get("ibacCheckbox")!=null&&!((String)map.get("ibacCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－承兑</strong><br>
                    <div id="ibac" style="display:none">开证申请人拿到单据后，没有在信用证项下发现不符点、不符点被接受、已经做过提货担保业务，即承兑，承兑日
						<html:text styleClass="text_red" maxlength="8" title="ibac_dudt" property="ibac_dudt" onclick="openWin('date','ibac_dudt')" size="8"/>
						，付款到期日
						<html:text styleClass="text_red" maxlength="8" title="ibac_apdt" property="ibac_apdt" onclick="openWin('date','ibac_apdt')" size="8" onblur="comperDate(document.getElementById('ibac_apdt').value,document.getElementById('ibac_dudt').value,0,'ibac_apdt','付款到期日要大于承兑日')"/>
						；此操作收费方式为
						<span id="ibac_id0"><span class="selectRedMS">
						<html:select styleClass="selectListRedMS" title="ibac_chco" property="ibac_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>，</span>
						<span id="ibac_tltpY" style="display:">
						邮电费类型为<span id="c03">
						<span class="selectBlue">
						<html:select styleClass="selectListBlue" property="ibac_tltp" onchange="addId(this.name,'c03')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
					    </html:select>
                        </span>，</span></span><span id="c04">实收邮费金额
                        <html:text styleClass="text_blue" maxlength="12" property="ibac_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c04')"/>
                        ；</span></span>操作完成后，产生电文发往议付行。</div>            </td>
        </tr>
    </table><br>
<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebtrCheckbox" id="NE5" value="ebtr" disabled="disabled" onClick="cheinneri(this.checked,'ebtr'),switchcheckbox(this.name,'ibpp'),boxebtr()" <%if(map!=null&&map.get("ebtrCheckbox")!=null&&!((String)map.get("ebtrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－催收货款</strong><br>
                    <div id="ebtr" style="display:none">议付行将出口单据寄出后，超过预计时间尚未收汇，议付行会向开证行催收单据款项。
                        即期一般掌握在15天之后，远期的未承兑的会催开证行尽快承兑，已承兑到期日未付款的催开证行付款。业务录入后，
                        生成SWIFT电文(420\799\999)发送给开证行，此操作收费方式为
						<span id="ebtr_id0">
						<span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ebtr_chco" property="ebtr_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>，</span>
						<span id="d03">快递国别
						<span class="selectBlueCountry">
						<html:select styleClass="selectListBlueCountry" property="ebtr_cncd" onchange="addId(this.name,'d03')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select></span></span>，
					<span id="ebtr_tltpY" style="display:">
						邮电费类型为
						<span id="d04"><span class="selectBlue"><html:select styleClass="selectListBlue" property="ebtr_tltp" onchange="addId(this.name,'d04')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
                        </span>，</span><span id="d05">实收邮电费币种为
						<span class="selectBlue">
                        <html:select styleClass="selectListBlue" property="ebtr_tlcy" onchange="addId(this.name,'d05')">
                             <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
                        </span>，</span></span><span id="d06">实收邮费金额
                        <html:text styleClass="text_blue" maxlength="12" property="ebtr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d06')"/>
                        </span></span>
					；完成此登记后，产生电文发往开证行。</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibppCheckbox" id="NE6" value="ibpp" disabled="disabled" onClick="cheinneri(this.checked,'ibpp'),switchcheckbox(this.name,'ebpy'),checktitle('ebtr_','ibpp')" <%if(map!=null&&map.get("ibppCheckbox")!=null&&!((String)map.get("ibppCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－电索付款</strong><br>
                    <div id="ibpp" style="display:none">开证行收到议付行发来的索汇电文后，先不付款，要等议付行的单据寄到以后，审核无不符点之后，再通知偿付行向议付行付款；起息日
						<html:text styleClass="text_red" maxlength="8" title="ibpp_vldt" property="ibpp_vldt" onclick="openWin('date','ibpp_vldt')" size="8"/>
						，收款行为
						<html:text styleClass="text_red" maxlength="12" title="ibpp_rvbk" property="ibpp_rvbk" onclick="openWin('bank1','ibpp_rvbk')"/>
						，<span id="e01">收款行之帐户行
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_rabk" onclick="openWin('bank1','ibpp_rabk'),addId(this.name,'e01')"/>
						，</span><span id="e02">收款行帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_raac" onclick="openWinNum('accountNum','ibpp_raac','PCBCCNBJBJX'),addId(this.name,'e02')"/>
						，</span><span id="e03">国外行费用
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_ngch" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'e03')"/>
						，</span>我行帐户行
						<html:text styleClass="text_red" maxlength="12" title="ibpp_acbk" property="ibpp_acbk" onclick="openWin('bank1','ibpp_acbk')"/>
						，<span id="e04">押汇金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e04')"/>
						，</span><span id="e05">保证金金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e05')"/>
						，</span><span id="e06">3140科目帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc1" onclick="addId(this.name,'e06')"/>
						，</span><span id="e07">原币汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc4" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e07')"/>
						，</span><span id="e08">原币帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc4" onclick="addId(this.name,'e08')"/>
						，</span><span id="e09">售汇汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc5" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e09')"/>
						，</span><span id="e10">售汇帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc5" onclick="addId(this.name,'e10')"/>
						，</span><span id="e11">实际汇率
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e11')"/>
						，</span><span id="e99">售汇后金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e99')"/>
						，</span><span id="e12">套汇汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_amc6" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e12')"/>
						，</span><span id="e13">外汇买卖方式
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpp_fxkd" onchange="addId(this.name,'e13')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>，<span id="e14">套汇帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_acc6" onclick="addId(this.name,'e14')"/>
						，</span><span id="e15">买入价
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e15')"/>
						，</span><span id="e16">卖出价
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e16')"/>
						，</span><span id="e98">套汇后金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpp_dram" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e98')"/>
						，</span><span id="e17">售汇性质是
						   <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpp_shxz" onchange="addId(this.name,'e17')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select></span>
						，</span><span id="e18">对公/对私是
						<span class="selectBlueMS">
						<html:select styleClass="selectListBlueMS" property="ibpp_cmpr" onchange="addId(this.name,'e18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						，</span><span id="e19">[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpp_mepy" onchange="addId(this.name,'e19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						凭备案表付款，</span><span id="e20">[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpp_ctpy" onchange="addId(this.name,'e20')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						 异地付汇，申报号是
						 <html:text styleClass="text_red" maxlength="12" title="ibpp_sbno" property="ibpp_sbno"/>
						，<span id="e21">交易代码为
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpp_tytp" onchange="addId(this.name,'e21')">
                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
							</html:select>
						 </span>，</span>
						此操作费用收取对象
				<span class="selectRedS">
				<html:select styleClass="selectListRedS" title="ibpp_chfr" property="ibpp_chfr">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>，
				<span id="ibpp_id0">
				收费方式为</span><span id="e22"> <span class="selectBlueMS">
				<html:select styleClass="selectListBlueMS" property="ibpp_chco" onchange="addId(this.name,'e22')">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span></span>
				，</span>
				 <span id="ibpp_tltpY" style="display:">
				 <span id="e24"></span><span id="e25">邮电费类型为
				<span class="selectBlue">
				<html:select styleClass="selectListBlue" property="ibpp_tltp" onchange="addId(this.name,'e25')">
					<html:option value=""></html:option>
					<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select>
                 </span>，</span></span><span id="e26">
				 我行邮电费
                 <html:text styleClass="text_blue" maxlength="12" property="ibpp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'e26')"/>
				，</span>帐务核销号为
				<html:text styleClass="text_red" maxlength="12" title="ibpp_ckno" property="ibpp_ckno"/>
				，<span id="e27">凭证核销日期
				<html:text styleClass="text_blue" maxlength="12" property="ibpp_crdt" onclick="openWin('date','ibpp_crdt'),addId(this.name,'e27')" onblur="comperDate(document.getElementById('ibpp_crdt').value,document.getElementById('ibpp_vldt').value,0,'ibpp_crdt','凭证核销日期不能在起息日之前')"/>
				；</span>完成此操作后，产生电文发往议付行。</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
             <input type="checkbox" name="ibrtCheckbox" id="NE7" value="ibrt" disabled="disabled" onClick="cheinneri(this.checked,'ibrt'),switchcheckbox(this.name,'ebrt'),checktitle('ebrj_','ibrt')" <%if(map!=null&&map.get("ibrtCheckbox")!=null&&!((String)map.get("ibrtCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－退单</strong><br>
                    <div id="ibrt" style="display:none">退单属于单据带有不符点的情况下，开证人拒绝承兑或付款，并指示开证行将单据退回议付行；此项功能用于开证申请人要求开证行将议付行提交的进口单据退回的操作。生成SWIFT报文(799\999)发送给议付行，生成&lt;&lt;退单面函&gt;&gt;连同退回的单据一起寄给议付行。</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebrtCheckbox" id="NE8" value="ebrt" onClick="cheinneri(this.checked,'ebrt'),checktitle('ibrt_','ebrt')" disabled="disabled" <%if(map!=null&&map.get("ebrtCheckbox")!=null&&!((String)map.get("ebrtCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－退单登记</strong><br>
                    <div id="ebrt" style="display:none">收到开证行的退单电文和退回的单据，议付行做退单登记。</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibdrCheckbox" id="NE9" value="ibdr" disabled="disabled" onClick="cheinneri(this.checked,'ibdr'),switchcheckbox(this.name,'ibdk')" <%if(map!=null&&map.get("ibdrCheckbox")!=null&&!((String)map.get("ibdrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－电提不符点登记</strong><br>
                    <div id="ibdr" style="display:none">单据带有不符点的情况下，议付行根据受益人的要求先不寄单据，将单据不符点以电报形式发送给开证行。此功能用于开证行登记来自议付行的单据的电提不符点。通知日期 <html:text styleClass="text_red" title="ibdr_ardt" property="ibdr_ardt" size="8" maxlength="8" onclick="openWin('date','ibdr_ardt')" />，业务录入后生成面函&lt;&lt;电提不符点通知&gt;&gt;通知开证人。</div></td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibdkCheckbox" id="NE10" value="ibdk" disabled="disabled" onClick="cheinneri(this.checked,'ibdk'),checktitle('ibdr_','ebup')" <%if(map!=null&&map.get("ibdkCheckbox")!=null&&!((String)map.get("ibdkCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－电提不符点接受/拒绝</strong><br>
                   <div id="ibdk" style="display:none">开证行完成电提不符点登记后，对议付行电提的不符点进行回复。生成SWIFT电文(752\799\999)给议付行，通知其<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibdk_drrv" property="ibdk_drrv" onchange="drrv(this.options[this.selectedIndex].value)">
				     <html:option value=""></html:option>
									<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>接受该单据的不符点。</div>                        </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebacCheckbox" id="NE11" value="ebac" disabled="disabled"  onClick="cheinneri(this.checked,'ebac'),boxebac()" <%if(map!=null&&map.get("ebacCheckbox")!=null&&!((String)map.get("ebacCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－承兑登记</strong><br>
                    <div id="ebac" style="display:none">议付行收到开证行的承兑电文后，按电文内容做承兑登记。</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
            <input type="checkbox" name="ibumCheckbox" id="NE12" value="ibum" disabled="disabled"  onClick="cheinneri(this.checked,'ibum'),switchcheckbox(this.name,'ebum')" <%if(map!=null&&map.get("ibumCheckbox")!=null&&!((String)map.get("ibumCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－更改承兑到期日</strong><br>
                    <div id="ibum" style="display:none">开证行做了承兑后，开证申请人申请更改承兑到期日，更改到期日为
                        <html:text styleClass="text_red" maxlength="8" title="ibum_dudt" property="ibum_dudt" onclick="openWin('date','ibum_dudt')" size="8"/>
                        ；操作完成后产生电文发往议付行。</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                   <input type="checkbox" name="ibrjCheckbox" id="NE13" value="ibrj" disabled="disabled" onClick="cheinneri(this.checked,'ibrj'),switchcheckbox(this.name,'ebrj'),boxibrj()" <%if(map!=null&&map.get("ibrjCheckbox")!=null&&!((String)map.get("ibrjCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－拒承/付款</strong><br>
                    <div id="ibrj" style="display:none">已经做了来单登记的信用证业务，检查有不符点时，开证申请人授权开证行做拒承/付款操作，操作完成后发电文给议付行。</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
              <input type="checkbox" name="ebrjCheckbox" id="NE14" value="ebrj" disabled="disabled" onClick="cheinneri(this.checked,'ebrj'),checktitle('ibrj_','ebrj'),switchcheckbox(this.name,'ibrt')" <%if(map!=null&&map.get("ebrjCheckbox")!=null&&!((String)map.get("ebrjCheckbox")).equals("")) out.print("checked");%>></td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－拒承兑/付款登记</strong><br>
                    <div id="ebrj" style="display:none">议付行收到开证行的拒承/付款电文后，做拒承兑/付款登记</div>            </td>
        </tr>
    </table>
		<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ebnpCheckbox" id="NE15" value="ebnp" disabled="disabled" onClick="cheinneri(this.checked,'ebnp'),checktitle('ibnp_','ebnp')" <%if(map!=null&&map.get("ebnpCheckbox")!=null&&!((String)map.get("ebnpCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－无偿交单</strong><br>
                    <div id="ebnp" style="display:none">议付行收到开证行拒付/承兑电文后或其他条件下，受益人(出口商)指示议付行开证申请人(进口商)可以无偿取得单据，在此功能项下做登记，此操作费用收取对象
<%--				        <span id="f01"><span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebnp_tlfr" onchange="switchIdfk('ebnp',this.name),addId(this.name,'f01')">--%>
       				        <span id="f01"><span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebnp_tlfr">
                            <logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span></span>，
						<span id="f02">收费方式为
						  <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebnp_chco">
                            <logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span> </span>，
						<span id="f05">快递国别
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebnp_cncd" onchange="addId(this.name,'f05')">
                           <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
						</span></span><span id="f06">
						，邮电费类型为
						<span id="ebnp_tltpY" style="display:">
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebnp_tltp" onchange="addId(this.name,'f06')">
                                    <html:option value=""></html:option>
                                    <logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
									</html:select>
						</span>，</span></span><span id="f07">
						邮电费币种
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebnp_cncd" onchange="addId(this.name,'f07')">
							<html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
                        </html:select>
						</span></span><span id="f08">
						，实收邮电费金额
						<html:text styleClass="text_blue" maxlength="12" property="ebnp_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'f08')"/></span>。					</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ibnpCheckbox" id="NE16" value="ibnp" disabled="disabled" onClick="cheinneri(this.checked,'ibnp'),switchcheckbox(this.name,'ebnp')" <%if(map!=null&&map.get("ibnpCheckbox")!=null&&!((String)map.get("ibnpCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－无偿交单</strong><br>
                <div id="ibnp" style="display:none">开证行根据议付行的指示，在开证申请人不付款的情况下将进口单据放给开证人。</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ebumCheckbox" id="NE17" value="ebum" disabled="disabled"  onClick="cheinneri(this.checked,'ebum'),checktitle('ibum_','ebum'),boxebum()" <%if(map!=null&&map.get("ebumCheckbox")!=null&&!((String)map.get("ebumCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－修改承兑内容</strong><br>
                <div id="ebum" style="display:none">议付行收到开证行的更改承兑到期日电文后，按电文内容做修改承兑内容操作。</div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input name="ibpyCheckbox" type="checkbox" disabled="disabled" id="NE18" onClick="cheinneri(this.checked,'ibpy'),switchcheckbox(this.name,'ebpy'),boxibpy()" value="ibpy" <%if(map!=null&&map.get("ibpyCheckbox")!=null&&!((String)map.get("ibpyCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－付款</strong><br>
                <div id="ibpy" style="display:none">开证行验证单证一致或信用证项下有不符点但开证申请人同意付款的情况下，开证行做付款操作，起息日
						<html:text styleClass="text_red" maxlength="8" title="ibpy_vldt" property="ibpy_vldt" onclick="openWin('date','ibpy_vldt')" size="8"/>
						，<span id="g01">收款行之帐户行
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_rabk" onclick="openWin('bank1','ibpy_rabk'),addId(this.name,'g01')" />
						，</span><span id="g02">收款行帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_raac" onclick="openWinNum('accountNum','ibpy_raac','PCBCCNBJBJX'),addId(this.name,'g02')"/>
						，</span><span id="g03">国外行费用
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_ngch" onclick="addId(this.name,'g03')" onblur="addDot(this)"/>
						，</span>我行帐户行
						<html:text styleClass="text_red" maxlength="12" title="ibpy_acbk" property="ibpy_acbk" onclick="openWin('bank1','ibpy_acbk')"/>
						，<span id="g04">押汇金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g04')"/>
						，</span><span id="g05">原币汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc4" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g05')"/>
						，</span><span id="g06">原币帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc4" onclick="addId(this.name,'g06')"/>
						，</span><span id="g07">售汇汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc5" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g07')"/>
						，</span><span id="g08">售汇帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc5" onclick="addId(this.name,'g08')"/>
						，</span><span id="g09">实际汇率
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g09')"/>
						，</span><span id="g10">套汇汇出金额
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_amc6" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g10')"/>
						，</span><span id="g11">套汇帐号
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_acc6" onclick="addId(this.name,'g11')"/>
						，</span><span id="g12">外汇买卖方式
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpy_fxkd2" onchange="addId(this.name,'g12')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span>
						，</span><span id="g13">买入价
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g13')"/>
						，</span><span id="g14">卖出价
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g14')"/>
						，</span><span id="g15">套汇汇率
						<html:text styleClass="text_blue" maxlength="12" property="ibpy_exr1" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g15')"/>
						，</span><span id="g16">售汇性质
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpy_shxz" onchange="addId(this.name,'g16')">
								<html:option value=""></html:option>
								<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
								</html:select></span>
						，</span><span id="g17">对公/对私是
						<span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ibpy_cmpr" onchange="addId(this.name,'g17')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						，</span><span id="g18">[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpy_mepy" onchange="addId(this.name,'g18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>凭备案表付款</span><span id="g19">
						，[是/否]
						<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ibpy_ctpy" onchange="addId(this.name,'g19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>
						 异地付汇，</span>申报号是
						 <html:text styleClass="text_red" maxlength="12" title="ibpy_sbno" property="ibpy_sbno"/>
						<span id="g20">，交易代码
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ibpy_tytp" onchange="addId(this.name,'g20')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
						</html:select>
						</span></span>
				，</span>此操作费用收取对象
<%--				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibpy_chfr" property="ibpy_chfr" onchange="switchIdfk('ibpy',this.name),addId(this.name,'g20')">--%>
				<span class="selectRedS"><html:select styleClass="selectListRedS" title="ibpy_chfr" property="ibpy_chfr">
					<logic:iterate id="list" name="OPTION_TLFR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>，
				<span id="ibpy_id0">
				收费方式为
				 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ibpy_chco" property="ibpy_chco">
					<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
				</span>
				，<span id="ibpy_tltpY" style="display:"><span id="23">邮电费类型为
				<span class="selectBlue"><html:select styleClass="selectListBlue" property="ibpy_tltp" onchange="addId(this.name,'g23')">
				<html:option value=""></html:option>
				<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
				</html:select>
                 </span>，</span></span></span><span id="g24">
				 我行邮电费
                 <html:text styleClass="text_blue" maxlength="12" property="ibpy_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'g24')"/>
				，</span><span id="g25">帐务核销号为
				<html:text styleClass="text_blue" maxlength="12" property="ibpy_ckno" onclick="addId(this.name,'g25')"/>
				，</span><span id="g26">凭证核销日期<html:text styleClass="text_blue" maxlength="12" property="ibpy_crdt" onclick="openWin('date','ibpy_crdt'),addId(this.name,'g26')"/>；</span>完成此操作后，产生电文发往议付行。</div> </td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                <input name="ebpyCheckbox" type="checkbox" disabled="disabled" id="NE19" onClick="cheinneri(this.checked,'ebpy')" value="ebpy" <%if(map!=null&&map.get("ebpyCheckbox")!=null&&!((String)map.get("ebpyCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>议付行－出口寄单收汇－收汇解付</strong><br>
                <div id="ebpy" style="display:none">议付行收到开证行的付款电文后，做收汇解付，国外收费金额
						  <span id="h01"><html:text styleClass="text_blue" maxlength="12" property="ebpy_fnam" onclick="addId(this.name,'h01')" onblur="addDot(this)"/>
						，</span>
						 应收手续费
						<html:text styleClass="text_red" maxlength="12" title="ebpy_fnch" 
						onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  property="ebpy_fnch" onblur="addDot(this)"/>，
						 应收邮电费
						<html:text styleClass="text_red" maxlength="12" title="ebpy_fntl" 
						onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)"  property="ebpy_fntl" onblur="addDot(this)"/>
						，帐户行
						<html:text styleClass="text_red" maxlength="12" title="ebpy_acbk" property="ebpy_acbk" onclick="openWin('bank1','ebpy_acbk')"/>
						，解付方式<span id="h03">
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebpy_jffs" onchange="switchjffsts('ebpy_jffs'),addId(this.name,'h03')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_HKBZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
							</html:select>
						</span>，</span>
						 <span id="h04" style="display:none">原币入帐/扣帐金额为
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h04')"/>
						，</span><span id="h05" style="display:none">原币入帐/扣帐帐号为
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_stac" onclick="addId(this.name,'h05')"/>
						，</span>				
						<span id="h06" style="display:none">待结/售汇外币金额为<html:text styleClass="text_blue" maxlength="12" property="ebpy_stam" onclick="addId(this.name,'h06')" onblur="addDot(this)"/>
						，</span><span id="h07" style="display:none">人民币入/扣帐帐号为
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_rmac" onclick="addId(this.name,'h07')"/>
						，</span><span id="h08" style="display:none">结汇汇率为
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h08')"/>
						，</span><span id="h09" style="display:none">售汇统计类型(融资)为
						 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_shxz" onchange="addId(this.name,'h09')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_SHXZ">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
										</html:select></span>，</span>
					<span id="h10" style="display:none">待套汇外币金额为
					<html:text styleClass="text_blue" maxlength="12" property="ebpy_pdam" onclick="addId(this.name,'h10')" onblur="addDot(this)"/>
						，</span><span id="h11" style="display:none">套汇币种为
						<span class="selectBlue"><html:select styleClass="selectListBlue" property="ebpy_thcy" onchange="addId(this.name,'h11')">
							 <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CYNO">
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
						</html:select>
						</span></span><span id="h12" style="display:none">
						，套汇入/扣帐帐号为
						<html:text styleClass="text_blue" maxlength="12" property="ebpy_thac" onclick="addId(this.name,'h12')"/>
						，</span>
						<span id="h13" style="display:none">外汇买卖方式为
						 <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebpy_fxkd" onchange="swiftIdYNXJ(this.name),addId(this.name,'h13')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>，</span>
						<span id="h14" style="display:none">汇价为<html:text styleClass="text_blue" maxlength="12" property="ebpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h14')"/>，</span><span id="h15" style="display:none">卖出价为<html:text styleClass="text_blue" maxlength="12" property="ebpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h15')"/>，</span>
						<span id="h16" style="display:none">买入价为<html:text styleClass="text_blue" maxlength="12" property="ebpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'h16')"/>，</span>						
						<span id="h17">[是/否]<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ebpy_strn" onchange="addId(this.name,'h17'),shewaitongji(this.name)">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_LGFG">
								<%String[] value = (String[]) list;%>
								<html:option value="<%=value[1]%>">
									<%=value[0]%>								</html:option>
							</logic:iterate>
						</html:select></span>涉外统计，</span>
						<span id="h18" style="display:none">对公对私为
						 <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" property="ebpy_corp" onchange="addId(this.name,'h18')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select>
						</span>，</span>
						<span id="h19">区域性质为
						<span class="selectBlueS"><html:select styleClass="selectListBlueS" property="ebpy_nat" onchange="addId(this.name,'h19')">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>，</span>
					   <span id="ebpy_id0" style="display:">申报统计类型为
					   <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ebpy_natp" property="ebpy_natp">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						</html:select></span>，</span></span>
						<span id="h20">国家代码<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_cncd" onchange="addId(this.name,'h20')">
                            <html:option value=""></html:option>
										<logic:notEmpty name="OPTION_CNCD">
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
										</logic:notEmpty>
							</html:select>
						 </span></span>，收汇类型为<span class="selectRed"><html:select styleClass="selectListRed" title="ebpy_shtp" property="ebpy_shtp">
							<html:option value=""></html:option>
							<logic:iterate id="list" name="OPTION_SHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate></html:select>
						</span>，申报号为<html:text styleClass="text_red" maxlength="12" title="ebpy_stno" property="ebpy_stno"/>，<span id="h21">交易代码为
						<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ebpy_tytp" onchange="addId(this.name,'h21')">
                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_TYTP">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%></html:option>
											</logic:iterate>
							</html:select>
						 </span>。</span></div></td>
        </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
               <input type="checkbox" name="ibrbCheckbox" id="NE20" value="ibrb" disabled="disabled" onClick="cheinneri(this.checked,'ibrb')" <%if(map!=null&&map.get("ibrbCheckbox")!=null&&!((String)map.get("ibrbCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td align="left" valign="top"><strong>开证行－进口来单－放单</strong><br>
     <div id="ibrb" style="display:none">开证行将开证申请人同意付款或已承兑或无偿交单的单据交给开证申请人并登记。</div>            </td>
        </tr>
    </table>
            
           
	</div>
</td>
<td class="innerTable_right_y"> </td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td align="center" class="innerTable_bottom_x"> <input type="hidden" name="NEH" id="NEH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">

            <button class="btn btn-primary" onclick="checkType('NEH','NE');return false" type="submit">
                <i class="fa fa-plus fa-2x"></i>增加
            </button>
			&nbsp;&nbsp;&nbsp;&nbsp;
            <button class="btn btn-primary" onclick="openReplace('cases.do?flag=list');return false">
                <i class="fa fa-level-up fa-2x"></i>返回
            </button>

			<html:hidden property="aveValue"/>
			<html:hidden value="02" property="type"/>
			<html:hidden property="idM"/>
			<html:hidden value="议付行业务操作" property="name"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden property="lc_lcupsutp"/>
			<html:hidden property="lc_lctp"/>
			<html:hidden property="lc_tlbk"/>
			<html:hidden property="caseId"/>
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
function shewaitongji(operation)
{//是否涉外统计
var operationType=operation;
var operationType=$(operationType).value;
switch(operationType)
{
	case "0":
		$("h18").style.display="";
		break;
	case "1"://1-no
		$("h18").style.display="none";
		$("ebpy_corp").value="";
		delId("h18");
		break;
	}
}

function swiftIdYNXJ(operation)
{//询价牌价
	var operationType=document.getElementById(operation).value;
	switch(operationType)
	{
		case "2":
			$("h14").style.display="";
			$("h15").style.display="none";
			$("h16").style.display="none";
			$("ebpy_slrt").value="";
			$("ebpy_byft").value="";
			delId("h15");
			delId("h16");
			break;
		case "3":
			$("h14").style.display="none";
			$("ebpy_exr2").value="";
			delId("h14");
			$("h15").style.display="";
			$("h16").style.display="";
			break;
		default: 
			$("h14").style.display="none";
			$("ebpy_exr2").value="";
			delId("h14");
			$("h15").style.display="none";
			$("h16").style.display="none";
			$("ebpy_slrt").value="";
			$("ebpy_byft").value="";
			delId("h15");
			delId("h16");
			break;
	}
}
	
function switchjffsts(objectJffs)
{//判断解付方式为原币入帐/扣帐,结售汇入帐/扣帐,套汇入帐/扣帐	
	var objectjffsType=document.getElementById(objectJffs).value;
	switch(objectjffsType)
	{
	case "1":// "原币入帐/扣帐", "1"
		$("h04").style.display="";//原币入帐/扣帐
		$("h05").style.display="";//原币入帐/扣帐
		$("h06").style.display="none";//结售汇入帐/扣帐
		$("h07").style.display="none";//结售汇入帐/扣帐
		$("h08").style.display="none";//结售汇入帐/扣帐
		$("h09").style.display="none";//结售汇入帐/扣帐
		$("h13").style.display="none";//外汇买卖方式
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		$("ebpy_fxkd").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="none";//套汇入帐/扣帐
		$("h11").style.display="none";//套汇入帐/扣帐
		$("h12").style.display="none";//套汇入帐/扣帐
		$("ebpy_pdam").value="";
		$("ebpy_thcy").value="";
		$("ebpy_thac").value="";
		delId("h10");
		delId("h11");
		delId("h12");
		delId("h13");
		break;
	case "2":// "结售汇入帐/扣帐", "2" 
		$("h04").style.display="none";//原币入帐/扣帐
		$("h05").style.display="none";//原币入帐/扣帐
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="";//结售汇入帐/扣帐
		$("h07").style.display="";
		$("h08").style.display="";
		$("h09").style.display="";
		$("h10").style.display="none";//套汇入帐/扣帐
		$("h11").style.display="none";
		$("h12").style.display="none";
		$("h13").style.display="none";//外汇买卖方式
		$("ebpy_pdam").value="";
		$("ebpy_thcy").value="";
		$("ebpy_thac").value="";
		$("ebpy_fxkd").value="";
		delId("h10");
		delId("h11");
		delId("h12");
		delId("h13");
		break;
	case "3"://"套汇入帐/扣帐", "3"
		$("h04").style.display="none";//原币入帐/扣帐
		$("h05").style.display="none";
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="none";//结售汇入帐/扣帐
		$("h07").style.display="none";
		$("h08").style.display="none";
		$("h09").style.display="none";
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="";//套汇入帐/扣帐
		$("h11").style.display="";
		$("h12").style.display="";
		$("h13").style.display="";
		break;
	default:// "入客户帐", "4" ,"扣客户帐", "5"
/*		$("h04").style.display="none";//原币入帐/扣帐
		$("h05").style.display="none";
		$("ebpy_dcam").value="";
		$("ebpy_stac").value="";
		delId("h04");
		delId("h05");
		$("h06").style.display="none";//结售汇入帐/扣帐
		$("h07").style.display="none";
		$("h08").style.display="none";
		$("h09").style.display="none";
		$("ebpy_stam").value="";
		$("ebpy_rmac").value="";
		$("ebpy_exrt").value="";
		$("ebpy_shxz").value="";
		delId("h06");
		delId("h07");
		delId("h08");
		delId("h09");
		$("h10").style.display="";//套汇入帐/扣帐
		$("h11").style.display="";
		$("h12").style.display="";
		break;
*/	}
}

function ebrgtlrf()
{//如果有转让行，则有转让号
	var valuestate=	document.forms[0].lc_lctp.value;
	if(valuestate=='1')
	{
		//$("ebrg_tlrf").value=document.forms[0].lc_tlbk.value;
		//$("ebup_tlrf").value=document.forms[0].lc_tlbk.value;
		$("a02").style.display="";
		$("b02").style.display="";
	}else{
		$("a02").style.display="none";
		$("b02").style.display="none";
		$("ebrg_tlrf").value="";
		$("ebup_tlrf").value="";
		delId("a02");
		delId("b02");
	}
}


function boxebrg()
{
	var valuestate=document.forms[0].lc_lcupsutp.value;
	if(valuestate=="0"&&$("ebrgCheckbox").checked)
	{
		$("ebtrCheckbox").disabled=false;
	}else{
		$("ebtrCheckbox").checked="";
		$("ebtrCheckbox").disabled=true;
		$("ebtr").style.display="none";
		$("ibppCheckbox").checked="";
		$("ibppCheckbox").disabled=true;
		$("ibpp").style.display="none";
	}
}

function boxibrg()
{//来单登记
var valuestate=document.forms[0].lc_lcupsutp.value;
if($("ibrgCheckbox").checked)
   {
		$("ebtrCheckbox").disabled=true;
		$("ibdrCheckbox").disabled=false;
		$("ebupCheckbox").disabled=false;
		$("ibrjCheckbox").disabled=false;
		$("ibnpCheckbox").disabled=false;
		$("ibrgCheckbox").disabled=false;
		$("ibrgCheckbox").checked="checked";
		$("ibrg").style.display="";
		switchcheckbox('ebupCheckbox','ibub');//出口寄单修改-换单
		if(valuestate==0)
		{
			$("ibpyCheckbox").disabled=false;//即期-付款；
		    boxibpy(); 
			$("ibrbCheckbox").disabled=true;//即期不可放单
		}else
		{
			$("ibacCheckbox").disabled=false;//远期-承兑；
			$("ibrbCheckbox").disabled=false;//远期可放单
			switchcheckbox('ibrgCheckbox','ibrb');//远期-放单
		} 
   }else {
		disable();
	    if(valuestate==0){
	    	$("ebtrCheckbox").disabled=false;
		}
  } 
}

function boxebac()
{//承兑登记
	if($("ebacCheckbox").checked)
     { 
		 $("ibpyCheckbox").disabled=false;//付款
		 if($("ibpyCheckbox").checked)
		 {
		  switchcheckbox('ibpyCheckbox','ebpy');//付款-收汇解付
		  }else{ 
		  switchcheckbox('ebacCheckbox','ibum');//承兑登记-更改承兑到期日
		  switchcheckbox('ebacCheckbox','ibpy');//承兑登记-付款
		  }	
	}  
}


function boxebum()
{//修改承兑内容
	if($("ebumCheckbox").checked)
     { 
		 if(!$("ibpyCheckbox").checked)
		 {
		  switchcheckbox('ebumCheckbox','ibpy');//承兑登记-付款
	      }
	}	  
}

function boxebtr()
{//催收货款
    if($("ebtrCheckbox").checked)
	{
		disable();
    	$("ibrjCheckbox").disabled=true;//拒承/付款
		$("ibnpCheckbox").disabled=true;//无偿交单
		$("ibrgCheckbox").disabled=true;//无偿交单
		$("ibppCheckbox").disabled=false;//电索付款
		if($("ibppCheckbox").checked){
		    switchcheckbox('ibppCheckbox','ebpy');//电索付款-收汇解付
	    }
	}else{
		$("ibppCheckbox").disabled=true;//电索付款
		$("ibrgCheckbox").disabled=false;//来单登记
		boxibrg();
	}
}

function boxibpy()
{//付款
	if($("ibpyCheckbox").checked){
		switchcheckbox('ibpyCheckbox','ebpy');//付款-收汇解付
	}
}


function boxibac()
{//承兑
    if($("ibacCheckbox").checked)
	{
	   	$("ebtrCheckbox").disabled=true;//催收货款
		$("ibpyCheckbox").disabled=true;//付款
		$("ibrjCheckbox").disabled=true;//拒承/付款
		$("ibnpCheckbox").disabled=true;//无偿交单
		boxebac();//承兑登记
	}
}

function boxibrj()
{//拒承/付款
    if($("ibrjCheckbox").checked)
	{
	   	$("ebtrCheckbox").disabled=true;//催收货款
		$("ibpyCheckbox").disabled=true;//付款
		$("ibacCheckbox").disabled=true;//承兑
		$("ibnpCheckbox").disabled=true;//无偿交单
	}
}

function cheinneri(cha1,cha2)
{//如果当前复选框被选，判断上一个操作中的必选项是否全填，如果是则相应的层可以显示；
	var cha11=cha1;
	var cha22=cha2;
	var prid=cha22+"_";
	if(cha11)
	{
		$(cha22).style.display="";
	}else{
	//否则相应层不能显示，且此层下的表单控件值置为空
		$(cha22).style.display="none";
		cheAll(prid);
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
	
	


function disable()
{
	$("ibdrCheckbox").disabled=true;
	$("ibdkCheckbox").disabled=true;
	$("ebupCheckbox").disabled=true;
	$("ibubCheckbox").disabled=true;
	$("ibrbCheckbox").disabled=true;
	$("ibacCheckbox").disabled=true;
	$("ebacCheckbox").disabled=true;
	$("ibumCheckbox").disabled=true;
	$("ebumCheckbox").disabled=true;
	$("ibpyCheckbox").disabled=true;
	//$("ebpyCheckbox").disabled=true;
	//$("ebtrCheckbox").disabled=true;
	//$("ibppCheckbox").disabled=true;
	$("ibrjCheckbox").disabled=true;
	$("ebrjCheckbox").disabled=true;
	$("ibrtCheckbox").disabled=true;
	$("ebrtCheckbox").disabled=true;
	$("ibnpCheckbox").disabled=true;
	$("ebnpCheckbox").disabled=true;
	
	$("ibdrCheckbox").checked="";
	$("ibdkCheckbox").checked="";
	$("ebupCheckbox").checked="";
	$("ibubCheckbox").checked="";
	$("ibrbCheckbox").checked="";
	$("ibacCheckbox").checked="";
	$("ebacCheckbox").checked="";
	$("ibumCheckbox").checked="";
	$("ebumCheckbox").checked="";
	$("ibpyCheckbox").checked="";
	//$("ebpyCheckbox").checked="";
	//$("ebtrCheckbox").checked="";
	//$("ibppCheckbox").checked="";
	$("ibrjCheckbox").checked="";
	$("ebrjCheckbox").checked="";
	$("ibrtCheckbox").checked="";
	$("ebrtCheckbox").checked="";
	$("ibnpCheckbox").checked="";
	$("ebnpCheckbox").checked="";
	
	$("ibdr").style.display="none";
	$("ibdk").style.display="none";
	$("ebup").style.display="none";
	$("ibub").style.display="none";
	$("ibrb").style.display="none";
	$("ibac").style.display="none";
	$("ebac").style.display="none";
	$("ibum").style.display="none";
	$("ebum").style.display="none";
	$("ibpy").style.display="none";
	//$("ebpy").style.display="none";
	//$("ebtr").style.display="none";
	//$("ibpp").style.display="none";
	$("ibrj").style.display="none";
	$("ebrj").style.display="none";
	$("ibrt").style.display="none";
	$("ebrt").style.display="none";
	$("ibnp").style.display="none";
	$("ebnp").style.display="none";
}

function drrv(selectValue)
{
	switch(selectValue)
	{
	  case "0"://接受-可继续操作
		boxibrg();
	    break;
	  case "1"://拒绝-结束案例
	   	$("ebupCheckbox").disabled=true;//出口寄单修改
	   	//$("ebtrCheckbox").disabled=true;//催收货款
		$("ibpyCheckbox").disabled=true;//付款
		$("ibacCheckbox").disabled=true;//承兑
		$("ibrjCheckbox").disabled=true;//拒承/付款
		$("ibrbCheckbox").disabled=true;//放单
		$("ibnpCheckbox").disabled=false;//无偿交单
	    break;
	}
}


function checkChc()
{//初始化
	cheId();//调出非必选项的id串；
	cheLoa();//取得上次操作中，已选中的checkbox序列且把相应层设成可选；
	cheinneri(fir("NE0"),"ebrg");
	switchcheckbox('ebrgCheckbox','ibrg');
	switchcheckbox('ibdrCheckbox','ibdk');//电提不符点登记；
	switchcheckbox('ibacCheckbox','ebac');//承兑-承兑登记；
	switchcheckbox('ibumCheckbox','ebum');//更改承兑到期日-修改承兑内容
	switchcheckbox('ibnpCheckbox','ebnp');//无偿交单
	switchcheckbox('ibrjCheckbox','ebrj');//拒承/付款登记 (ebrj)
	switchcheckbox('ebrjCheckbox','ibrt');//退单
	switchcheckbox('ibrtCheckbox','ebrt');//退单登记
	switchcheckbox('ebtrCheckbox','ibpp');//电索付款
	boxebrg();//出口寄单登记
	boxibrg();//来单登记
	boxibac();//承兑
//	boxebac();//承兑登记
	boxebtr();//催收货款
	boxibrj();//拒承/付款
	switchjffsts('ebpy_jffs');	
	swiftIdYNXJ('ebpy_fxkd');
	shewaitongji('ebpy_strn');
	ebrgtlrf();//转让号
	var opt1=$("ibdk_drrv").options[$("ibdk_drrv").selectedIndex].value;//电提不符点拒绝
	drrv(opt1);
}

function cheLoa()
{//在onLoad时，
	var char=new Array();
		char=onLoadCheck('NEH','NE');
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