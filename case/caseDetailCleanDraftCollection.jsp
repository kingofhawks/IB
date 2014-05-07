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
<head>
<link href="/IB/case/case.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript"
    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
    src="/IB/case/case.js"></script>
</head>
<%--国际结算案例（四）-光票托收行业务操作--%>
<html:html>
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
	<html:form action="caseDetailCleanDraftCollection.do">
	  <table width="100%" border="0" cellpadding="0" cellspacing="0">
     <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例类型：</strong></td>
        <td width="89%" align="left" valign="top">光票托收行业务操作</td>
      </tr>
	 
	  <tr>
        <td width="11%" align="left" valign="top">&nbsp;&nbsp;<strong>案例名称：</strong></td>
        <td width="89%" align="left" valign="top"><label>
          <html:text styleClass="kuang"  property="detai" size="30" maxlength="30"/>
        </label></td>
      </tr>
      <tr>
        <td align="left" valign="top">&nbsp;&nbsp;<strong>案例分数：</strong></td>
        <td align="left" valign="top"><html:text property="grade" size="3" maxlength="3" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" styleClass="kuang"/>
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
			<input type="checkbox" name="ccrgCheckbox" id="CD0" value="ccrg" onClick="cheinner(this.checked,'ccrg'),che('ccrg')" <%if(map!=null&&map.get("ccrgCheckbox")!=null&&!((String)map.get("ccrgCheckbox")).equals("")) out.print("checked");%>>			</td>
			<td align="left" valign="top">
					   <strong>光票托收－光票托收登记</strong>
						<div id="ccrg" style="display:none">
						    委托人在
						        <html:text styleClass="text_red" maxlength="8" title="ccrg_psdt" property="ccrg_psdt" onclick="openWin('date','ccrg_psdt')" size="8"/>
							（托收日期）委托托收行进行光票的托收，收款人代码为
							<html:text styleClass="text_red" maxlength="12" title="ccrg_clno" property="ccrg_clno" onclick="openWin('client',',ccrg_clno,')"/>
							，托收
							<span class="selectRedBH"><html:select styleClass="selectListRedBH" title="ccrg_bitp" property="ccrg_bitp">
							<html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_BITP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
	                            </html:select>
							</span>（票据类型）票据，
							<html:text styleClass="text_red" maxlength="12" title="ccrg_blcn" property="ccrg_blcn"/>
							张，金额为
							 <span class="selectRed"><html:select styleClass="selectListRed" title="ccrg_cyno" property="ccrg_cyno">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CYNO">
												<%String[] cyno = (String[]) list;%>
												<html:option value="<%=cyno[1]%>">
													<%=cyno[0]%>												</html:option>
											</logic:iterate>
								</html:select>
						  </span>（票据币种），
						  <html:text styleClass="text_red" maxlength="12" title="ccrg_amts" property="ccrg_amts" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
							（票据金额），<span id="a01">票据号码为
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_blno" onclick="addId(this.name,'a01')"/>
							，</span>托收行以
							<span id="a02">
							 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccrg_ccmd" onchange="addId(this.name,'a02')">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CCMD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span></span>
							（托收方式）的方式进行托收，
							对方代收行是
							<html:text styleClass="text_red" maxlength="12" title="ccrg_icbk" property="ccrg_icbk" onclick="openWin('bank1','ccrg_icbk')"/>
							 ，<span id="a03">付款人<html:text styleClass="text_blue" maxlength="12" property="ccrg_pre1" onclick="addId(this.name,'a03')"/>
							 ，</span>是
							 <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ccrg_cncd" property="ccrg_cncd">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CNCD">
												<%String[] cncd = (String[]) list;%>
												<html:option value="<%=cncd[1]%>">
													<%=cncd[0]%>												</html:option>
											</logic:iterate>
                           </html:select>
							</span>（付款人国别），
							<span id="a04">
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_cncd2" onclick="addId(this.name,'a04')"/>（地区），</span>
							属于
							<span id="a05">
							 <span class="selectBlue"><html:select styleClass="selectListBlue" property="ccrg_nat" onchange="addId(this.name,'a05')">
							 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NAT">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                          </html:select></span>（区域属性），						  </span>进行
						  <span class="selectRedCountry"><html:select styleClass="selectListRedCountry" title="ccrg_natp" property="ccrg_natp">
						  <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
						  </html:select>
						  </span>（申报统计类型）的申报统计，<span id="a06">核销单号码
							<html:text styleClass="text_blue" maxlength="12" property="ccrg_dtno" onclick="addId(this.name,'a06')"/>。</span>
						 托收行以
						 <span class="selectRedMS"><html:select styleClass="selectListRedMS" property="ccrg_chco" onchange="addId(this.name,'a01')">
									 <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
											</logic:iterate>
								</html:select>
                          </span>（收费方式）的方式向客户收取手续费。</span>
					  </div>			</td>
         </tr>
    </table>
	<br>
	<table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td width="3%" align="center" valign="top">
                 <input type="checkbox" name="cctrCheckbox" id="CD1" value="cctr" disabled="disabled" onClick="cheinner(this.checked,'cctr')"<%if(map!=null&&map.get("cctrCheckbox")!=null&&!((String)map.get("cctrCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>光票托收－催收</strong><br>
                    <div id="cctr" style="display:none">托收行以
<%--					 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="cctr_chco" property="cctr_chco" >--%>
					 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="cctr_chco" property="cctr_chco">
                           <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                        </html:select>
                        </span>（收费方式）的方式向客户收取手续费
						<span id="b99">，产生
							  <span class="selectBlue"><span id="b01"><html:select styleClass="selectListBlue" property="cctr_tltp" onchange="addId(this.name,'b01')">
                                    <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                            </html:select></span></span>（电报费类型）邮电费，</span>
								<span id="b02">
                               <html:text styleClass="text_blue" maxlength="12" property="cctr_taam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'b02')"/>（实收邮电费金额）。</span></div>            </td>
        </tr>
    </table>
	<br>
	<table width="98%">
        <tr>
            <td width="3%" align="center" valign="top">
                <input type="checkbox" name="ccpdCheckbox" id="CD2" value="ccpd" disabled="disabled" onClick="cheinner(this.checked,'ccpd')" <%if(map!=null&&map.get("ccpdCheckbox")!=null&&!((String)map.get("ccpdCheckbox")).equals("")) out.print("checked");%>>            </td>
            <td> <strong>光票托收－买入票据</strong><br>
                    <div id="ccpd" style="display:none"><span id="c01"> 收款人（客户号）为
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_clno" onclick="openWin('clientNum',',ccpd_clno,'),addId(this.name,'c01')"/>
                        ，</span>买入利率是
                        <html:text styleClass="text_red" maxlength="12" title="ccpd_obrt" onkeypress="regInput(/^\d{1,}\.?\d{0,5}$/)" onblur="addDot(this)"  property="ccpd_obrt"/>
                        ，收款人帐号是
                        <html:text styleClass="text_red" maxlength="12" title="ccpd_acno" property="ccpd_acno" onclick="openWinNum('accountNum','ccpd_acno','ZH0004')"/>
                        ，<span id="c02">结汇价是
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,5}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c02')"/>
                        ，</span><span id="c03">人民币入帐金额是
                        <html:text styleClass="text_blue" maxlength="12" property="ccpd_exam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'c03')"/>
                        。</span></div>            </td>
        </tr>
    </table>
	<br>
            <table width="98%" id="">
				<tr>
					<td width="3%" align="center" valign="top">
					    <input type="checkbox" name="ccpyCheckbox" id="CD3" value="ccpy" disabled="disabled" onClick="cheinner(this.checked,'ccpy')" <%if(map!=null&&map.get("ccpyCheckbox")!=null&&!((String)map.get("ccpyCheckbox")).equals("")) out.print("checked");%>>					</td>
					<td>
							<strong>光票托收－收汇及解付</strong>
								<div id="ccpy" style="display:none">
								       <span id="d02">托收行收到代收行的付款电文和光票款项后，收汇并解付给委托人。
								        该解付帐务于
								        <html:text styleClass="text_blue" maxlength="8" property="ccpy_crdt" onclick="openWin('date','ccpy_crdt'),addId(this.name,'d02')" size="8"/>
								        （凭证核销日期）进行核销，</span>
										<span id="d01">核销号为
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_ckno" onclick="addId(this.name,'d01')"/>
								        ，</span>
										所收托收费为
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_caam" property="ccpy_caam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								        ，邮电费金额为
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_tsam" property="ccpy_tsam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" />
								        ，我行的帐户行为
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_acbk" onclick="openWin('bank1','ccpy_acbk')" property="ccpy_acbk"/>
								        ，买入票据本息
								        <html:text styleClass="text_red" maxlength="12" title="ccpy_bbam" property="ccpy_bbam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"/>
								        ，<span id="d03">原币入帐金额为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_dcam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d03')"/>
                                        ，</span><span id="d04">原币入帐帐号为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_stac" onclick="addId(this.name,'d04')"/>
                                        ，</span><span id="d05">待结汇外币金额为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_stam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d05')"/>
                                        ，</span><span id="d06">结汇入帐帐号为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_rmac" onclick="addId(this.name,'d06')"/>
                                        ，</span><span id="d07">结汇汇率为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_exrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d07')"/>
                                        ，</span><span id="d08">待套汇外币金额为
                                        <html:text styleClass="text_blue" maxlength="12" property="ccpy_pdam" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d08')"/>
								        ，</span><span id="d09">套汇入帐帐号为
                                       <html:text styleClass="text_blue" maxlength="12" property="ccpy_thax" onclick="addId(this.name,'d09')"/>
                                        ，</span><span id="d10">以
										 <span class="selectRedMS"><html:select styleClass="selectListBlueMS" property="ccpy_fxkd" onchange="xunja('ccpy_exrt_Y','ccpy_exrt_N',this.name),addId(this.name,'d10')">
                                            <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_FXKD">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                        </html:select>
                                        （外汇买卖方式）的形式进行外汇买卖</span></span>
										<span id="ccpy_exrt_Y" style="display:">
										，<span id="d11">汇价为
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_exr2" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)" onclick="addId(this.name,'d11')"/>
										</span></span>
										<span id="ccpy_exrt_N" style="display:">
										，<span id="d12">以
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_slrt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d12')"/>
										（卖出价）卖出，</span><span id="d13">以
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_byft" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" onblur="addDot(this)"  onclick="addId(this.name,'d13')"/>
										</span>
										（买入价）买入，</span><span id="d14">是否涉外统计为
										<span class="selectBlueYN"><html:select styleClass="selectListBlueYN" property="ccpy_strn" onchange="addId(this.name,'d14')">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_LGFG">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                        </html:select>
                                        </span> </span>
										，其进行的是
										 <span class="selectRedMS"><html:select styleClass="selectListRedMS" title="ccpy_corp" property="ccpy_corp">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_CMPR">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
											</html:select>
                                        </span>
										 （对公对私）业务，
										 <span class="selectRed"><html:select styleClass="selectListRed" title="ccpy_shtp" property="ccpy_shtp">
                                            <html:option value=""></html:option>
                                            <logic:iterate id="list" name="OPTION_SHTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
	                                        </html:select>
                                        </span>
										（收汇类型）进行收汇，申报号为
                                        <html:text styleClass="text_red" maxlength="12" title="ccpy_stno" property="ccpy_stno"/>
										，<span id="d15">进行的是
										<span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccpy_tytp" onchange="addId(this.name,'d15')">
							                    <html:option value=""></html:option>
							               <logic:iterate id="list" name="OPTION_TYTP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%></html:option>
										  </logic:iterate>
						                   </html:select>
					                    </span>
										（交易代码）交易，</span><span id="d16">是
										 <span class="selectBlueCountry"><html:select styleClass="selectListBlueCountry" property="ccpy_natp" onchange="addId(this.name,'d16')">
											<html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_NATP">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
										</html:select>
										</span>
										的申报统计类型，</span><span id="d17">所留交易附言是
										<html:text styleClass="text_blue" maxlength="12" property="ccpy_trmo" onclick="addId(this.name,'d17')"/>
										。</span></div>					</td>
				</tr>
			</table>
			<br>
			<table width="98%" id="">
                <tr>
                    <td width="3%" align="center" valign="top">
                         <input type="checkbox" name="ccrtCheckbox" id="CD4" value="ccrt" disabled="disabled" onClick="cheinner(this.checked,'ccrt')" <%if(map!=null&&map.get("ccrtCheckbox")!=null&&!((String)map.get("ccrtCheckbox")).equals("")) out.print("checked");%>>                    </td>
                    <td> <strong>光票托收－收汇前退票</strong>
                            <div id="ccrt" style="display:none"><span id="e01">收款人代码为
                                <html:text styleClass="text_blue" maxlength="12" property="ccrt_clno" onclick="openWin('client',',ccrt_clno,'),addId(this.name,'e01')"/>
                                ，</span><span id="e02">代收行是
                                <html:text styleClass="text_blue" maxlength="12" property="ccrt_icbk" onclick="openWin('bank1','ccrt_icbk'),addId(this.name,'e02')"/>
                                ，</span><span id="e03">以
<%--                                <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" title="ccrt_chco" property="ccrt_chco" >--%>
							    <span class="selectBlueMS"><html:select styleClass="selectListBlueMS" title="ccrt_chco" property="ccrt_chco" onchange="addId(this.name,'e03')">
                                   <html:option value=""></html:option>
											<logic:iterate id="list" name="OPTION_CHCO">
												<%String[] value = (String[]) list;%>
												<html:option value="<%=value[1]%>">
													<%=value[0]%>												</html:option>
											</logic:iterate>
                                </html:select>
                                </span>（收费方式）的方式向客户收取手续费。</span></div>				</td>
			</tr>
		</table>
		<br>
		<table width="98%" id="">
			<tr>
				<td width="3%" align="center" valign="top">
					<input type="checkbox" name="ccclCheckbox" id="CD5" value="cccl" disabled="disabled" onClick="cheinner(this.checked,'cccl')" <%if(map!=null&&map.get("ccclCheckbox")!=null&&!((String)map.get("ccclCheckbox")).equals("")) out.print("checked");%>>				</td>
				<td>
					<strong>光票托收－销卷</strong>
							<div id="cccl" style="display:none">收业务完成所需的交易过程后，做结清销卷登记。</div>	</td>
			</tr>
		</table>
            
			
		</div></td>
			<td valign="top" class="innerTable_right_y"> </td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td align="center" valign="middle" class="innerTable_bottom_x"><input type="hidden" name="CDH" id="CDH" value="">
            <input type="hidden" name="LCHVAL" id="LCHVAL" value="">
			<input type="hidden" name="idPS" id="idPS" value="">
            <input type="image" src="/IB/images/submit.gif" onClick="checkType('CDH','CD');return false">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="image" src="/IB/images/returnInto.gif" onClick="openReplace('cases.do?flag=list');return false" >
			<html:hidden property="aveValue"/>
			<html:hidden property="idM"/>
			<html:hidden value="04" property="type"/>
			<html:hidden value="submit" property="flag"/>
			<html:hidden value="光票托收行业务操作" property="name"/>
			<html:hidden property="id"/></td>
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
//外汇买卖方式为“询价/牌价”
function xunja(id1,id2,id3)
{
    var name1=id1;
	var name2=id2
	var operationType=id3;
	var operationType=$(operationType).value;
	switch(operationType)
	{
		case "2":
			$(name1).style.display="";
			$(name2).style.display="none";
			$("ccpy_exr2").disabled=false;
			$("ccpy_slrt").disabled=true;
			$("ccpy_byft").disabled=true;
			break;
		case "3":
			$(name1).style.display="none";
			$(name2).style.display="";
			$("ccpy_exr2").disabled=true;
			$("ccpy_slrt").disabled=false;
			$("ccpy_byft").disabled=false;
			break;
	}
}
</script>

<script>
//初始化
/*function checkChc()
{
	cheId();
	cheLoa("3");
	xunja('ccpy_exrt_Y','ccpy_exrt_N','ccpy_fxkd');
	cheinnerL('CD5','cccl');
}
*/</script>	

<script>
//初始化
function checkChc()
{
	cheId();
	cheinner(fir("CD0"),"ccrg");
	cheLoa();
	xunja('ccpy_exrt_Y','ccpy_exrt_N','ccpy_fxkd');
}

function che(v2)
{
	var flag=fir("CD0");
	var v22=v2;
	if(flag)
	{//如果第一个复选框被选，则第一个对应的div可显示。其余的checkbox，如果没有条件为可选状态；
		$(v22).style.display="";
		$("cctrCheckbox").disabled="";
		$("ccpdCheckbox").disabled="";
		$("ccpyCheckbox").disabled="";
		$("ccrtCheckbox").disabled="";
		$("ccclCheckbox").disabled="";
	}
	else
	{//如果第一个复选框没被选，则所有checkbox为不可选，相对应的div为隐藏；
		$("cctrCheckbox").disabled="disabled";
		$("ccpdCheckbox").disabled="disabled";
		$("ccpyCheckbox").disabled="disabled";
		$("ccrtCheckbox").disabled="disabled";
		$("ccclCheckbox").disabled="disabled";
		$("ccrgCheckbox").checked="";
		$("cctrCheckbox").checked="";
		$("ccpdCheckbox").checked="";
		$("ccpyCheckbox").checked="";
		$("ccrtCheckbox").checked="";
		$("ccclCheckbox").checked="";
		$("ccrg").style.display="none";
		$("cctr").style.display="none";
		$("ccpd").style.display="none";
		$("ccpy").style.display="none";
		$("ccrt").style.display="none";
		$("cccl").style.display="none";
		}
}
</script>
<script>
function cheLoa()
{//在onLoad时，
	che('ccrg');//检查第一个复选框是否被选；决定此页中所有checkbox及对应的div状态;
	var char=new Array();
	    char=onLoadCheck('CDH','CD');
	var charDiv="";	
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
	
	
	
	function cheinner(cha1,cha2)
	{
	//如果当前复选框被选，则相应的层可以显示；
		var cha11=cha1;
		var cha22=cha2;
		var prid=cha22+"_";
		if(cha11)
		{
			$(cha22).style.display="";
		}
		else
		{//否则相应层不能显示，且此层下的表单控件值为空；
			$(cha22).style.display="none";
			cheAll(prid);
		}
	}		
</script>
</html:html>
