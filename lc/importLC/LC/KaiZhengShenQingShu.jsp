<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>国际结算模拟系统</title>

<link href="/IB/common/default.css" rel="stylesheet" type="text/css">

<SCRIPT lanuange="JavaScript">
//检查表单
function isNull()
{
    
    var iObj = document.forms[0].elements;
    for (i = 0; i<iObj.length; i++)
    {
        //iObj[i].disabled = false;
        //如果表单项的title不为空，而值为空时，把errCode赋值为前者的title
        if (iObj[i].title.Trim()!=""&&iObj[i].title.Trim()!="undefined"&&iObj[i].value.Trim() =="")
        {
        alert("请把红色的必填项填写完整！");
          return false; 
        }         
           
        
    }
   document.forms[0].submit();     
   return true; 
}
</SCRIPT>
</head>

<body>
<table width="100%" >
    <tr align="center" valign="top">
        <td>
            <html:form action="openSupplication.do" onsubmit="checkForm(this)" method="post">
                <table width="98%" class="kuangScroll">
                    <tr>
                        <td width="57%" align="center" valign="top">
                            <table width="410"  cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                          <tr>
                            <td width="29%" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*开证日期：</td>
                            <td width="71%" align="left" valign="middle">
                                <table width="114" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                      <td width="75%" align="left">
                                          <html:text styleClass="kuang" maxlength="10" property="isdt" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="isdt" readonly="true"/>
                                      </td>
                                      <td width="25%" align="left">
                                        <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','isdt');return false"></html:image>
 </td>
                                  </tr>
                              </table>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请编号：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" maxlength="16" property="lcno" size="16" readonly="true"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*银行编号：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" property="brno" size="15" readonly="true" title="brno"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*开证方式：</td>
                            <td align="left" valign="middle">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                      <td width="13%" align="right">信开</td>
                                      <td width="9%" align="left">
                                          <html:radio value="0" property="ammd"/>
                                      </td>
                                      <td width="16%" align="right">电开</td>
                                      <td width="62%" align="left">
                                          <html:radio value="1" property="ammd"/>
                                      </td>
                                  </tr>
                              </table>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*有效期：</td>
                            <td align="left" valign="middle">
                              <table width="114" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="75%" align="left">
                                    <html:text styleClass="kuang" maxlength="10" property="epdt" size="10" onkeypress="regInput(/^[0-9]*$/)" title="epdt" readonly="true"/>
                                  </td>
                                  <td width="25%" align="left">
                                     <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','epdt');return false"></html:image> </td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*有效地点：</td>
                            <td align="left" valign="middle">
                              <html:textarea cols="30" styleClass="kuang" rows="2" property="pcep" title="pcep"></html:textarea>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请人开户行：</td>
                             <td align="left" valign="middle">
                              <table width="198" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="83%" height="19" align="left">
                                    <html:text styleClass="kuang" maxlength="26" property="apbk" size="26" title="apbk" readonly="true"/>
                                  </td>
                                  <td width="17%" align="left">
                                     <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','apbk');return false"></html:image></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请人账号：</td>
                            <td align="left" valign="middle">
                              <table width="153" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="76%" align="left">
                                    <html:text styleClass="kuang" maxlength="16" property="apno" size="16" readonly="true" title="apno"/>
                                  </td>
                                  <td width="24%" align="left">
                                     <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('client','apno,apnm,apad');return false"></html:image> </td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请人名称：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" maxlength="30" property="apnm" size="30" title="apnm"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请人地址：</td>
                            <td align="left" valign="middle">
                              <html:textarea cols="30" styleClass="kuang" rows="2" property="apad" title="apad"></html:textarea>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*申请人邮编：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" maxlength="7" property="apcd" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="apcd"/>
                            </td>
                          </tr>
                           <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*受益人开户行：</td>
                            <td align="left" valign="middle">
                              <table width="198" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="83%" height="19" align="left">
                                    <html:text styleClass="kuang" maxlength="26" property="bebk" size="26" title="bebk" readonly="true"/>
                                  </td>
                                  <td width="17%" align="left">
                                      <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','bebk');return false"></html:image></td>
                                </tr>
                            </table></td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*受益人账号：</td>
                            <td align="left" valign="middle">
                            <table width="153" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="76%" align="left">
                                        <html:text styleClass="kuang" maxlength="16" property="clno" size="16" readonly="true" title="clno"/>
                                    </td>
                                    <td width="24%" align="left">
                                        <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('client','clno,clnonm,adl1');return false"></html:image>
                                        <div align="left"></div>
                                    </td>
                                </tr>
                            </table>
                            </td>
                          </tr>
						    <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*受益人名称：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" maxlength="20" property="clnonm" size="20" title="clnonm"/>
                            </td>
                          </tr>
                         
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*受益人地址：</td>
                            <td align="left" valign="middle">
                              <html:textarea cols="30" styleClass="kuang" rows="2" property="adl1" title="adl1"></html:textarea>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*受益人邮编：</td>
                            <td align="left" valign="middle">
                              <html:text styleClass="kuang" maxlength="7" property="clpscd" size="10" title="clpscd" onkeypress="regInput(/^[0-9]*$/)"/>
                            </td>
                          </tr>
                          <tr bgcolor="#EBEBEB">
                            <td rowspan="2" align="right" valign="top" bgcolor="#EBEBEB" class="attR">*运输方式：</td>
                            
                          </tr>
                          <tr>
                            <td><table width="100%" height="136"  border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td width="34%" align="right" class="attR">*分批装运：</td>
                                <td align="right">允许</td>
                                <td align="left">
                                    <html:radio value="Y" property="part"/>
                                </td>
                                <td align="right">不允许</td>
                                <td align="left">
                                    <html:radio value="N" property="part"/>
                                </td>
                              </tr>
                              <tr>
                                <td align="right" class="attR">*转&nbsp;&nbsp;&nbsp;&nbsp;运：</td>
                                <td width="11%" align="right">允许</td>
                                <td width="13%" align="left">
                                    <html:radio value="Y" property="tras"/>
                                </td>
                                <td width="14%" align="right">不允许</td>
                                <td width="28%" align="left">
                                    <html:radio value="N" property="tras"/>
                                </td>
                              </tr>

                              <tr>
                                  <td rowspan="2" align="right" valign="top" class="attR">*运输起止地：</td>
                                  <td align="right">自&nbsp;</td>
                                  <td colspan="3" align="left">
                                      <html:text styleClass="kuang" maxlength="15" property="shfm" size="18" title="shfm"/>
                                  </td>
                              </tr>
                              <tr>
                                  <td align="right">至&nbsp;</td>
                                  <td colspan="3" align="left">
                                      <html:text styleClass="kuang" maxlength="15" property="shto" size="18" title="shto"/>
                                  </td>
                              </tr>
                              <tr>
                                <td align="right" class="attR">*最迟装运日期：</td>
                                <td colspan="4" align="left">
                                    <table width="114" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="75%" align="left">
                                                <html:text styleClass="kuang" maxlength="10" property="shdt" size="10" title="shdt" readonly="true"/>
                                            </td>
                                            <td width="25%" align="left">
                                               <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','shdt');return false"></html:image></td>
                                        </tr>
                                    </table>
                                </td>
                              </tr>
                              <tr>
                                <td align="right" >合同号码：</td>
                                <td colspan="4"><html:text styleClass="kuang" maxlength="15" property="crno" size="15"/></td>
                              </tr>
                              <tr>
                                <td align="right" >货物描述：</td>
                                <td colspan="4"><html:text styleClass="kuang" maxlength="28" property="gstp" size="28"/></td>
                              </tr>
                            </table>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB"  class="attR">*交单期：</td>
                            <td align="left" valign="middle" >
                             <html:text styleClass="kuang" property="psbl" size="3" maxlength="3" onkeypress="regInput(/^[0-9]*$/)" title="psbl"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB"  class="attR">*金额：</td>
                            <td align="left" valign="middle" >
                              <html:text styleClass="kuang" property="lcam"  size="7" maxlength="7" onkeypress="regInput(/^[0-9]*$/)" title="lcam"/>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB"  class="attR">*付款方式：</td>
                            <td align="left" valign="middle" >
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="11%" align="right">
                                    即期</td>
                                  <td width="8%" align="left">
                                      <html:radio value="0" property="sutp"/>
                                  </td>
                                  <td width="11%" align="right">延期</td>
                                  <td width="8%" align="left">
                                      <html:radio value="1" property="sutp"/>
                                  </td>
                                  <td width="11%" align="right">议付</td>
                                  <td width="55%" align="left">
                                      <html:radio value="2" property="sutp"/>
                                  </td>
                                </tr>
                            </table>
                            </td>
                          </tr>
                          <tr>
                            <td align="right" valign="middle" bgcolor="#EBEBEB" >付款期限：</td>
                            <td align="left" valign="middle" >
                              <html:text styleClass="kuang" property="tenr" size="3" onkeypress="regInput(/^[0-9]*$/)" maxlength="3"/>
                            </td>
                          </tr>
                      </table></td>
                        <td width="1%">&nbsp;</td>
                        <td width="42%" align="left" valign="top">
                            <table width="300" border="0" cellpadding="0" cellspacing="0">
                                <tr align="left">
                                    <td colspan="2" valign="top">
                                        <table width="300" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr align="left">
                                                <td colspan="3" bgcolor="#EBEBEB"><strong>受益人应提交的单据：</strong></td>
                                            </tr>
                                            <tr>
                                                <td width="4%" align="left" valign="bottom">
                                                    <html:checkbox value="√" property="voucher1"/>                                                </td>
                                                <td width="96%" height="20" colspan="2" align="left" valign="middle">发票注明信用证号码及合同号码。</td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    <html:checkbox value="√" property="voucher2"/>                                                </td>
                                                <td colspan="2" align="left" valign="middle">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="20" align="left" valign="bottom">海运或河运提单： </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width="98%" border="0" cellspacing="0" cellpadding="0">

                                                                  <tr>
                                                                      <td align="right" valign="middle">全套海运</td>
                                                                      <td align="left" valign="middle">
                                                                          <html:radio value="1" property="blty"/>                                                                      </td>
                                                                      <td colspan="2" align="right" valign="middle">河运</td>
                                                                      <td width="32%" align="left" valign="middle">
                                                                          <html:radio value="0" property="blty"/>                                                                      </td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td width="29%" align="right" valign="middle">正本份数：</td>
                                                                    <td colspan="4" align="left" valign="middle">
                                                                      <html:text styleClass="kuang" maxlength="4" property="blorignum" size="4" onkeypress="regInput(/^[0-9]*$/)"/>                                                                    </td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td align="right" valign="middle">副本份数：</td>
                                                                    <td colspan="4" align="left" valign="middle">
                                                                      <html:text styleClass="kuang" maxlength="4" property="blcopynum" size="4" onkeypress="regInput(/^[0-9]*$/)"/>                                                                    </td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td align="right" valign="middle">收货人：</td>
                                                                    <td colspan="4" align="left" valign="middle">
                                                                      <html:text styleClass="kuang" maxlength="30" property="blconsignee" size="15"/>                                                                    </td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td align="right" valign="middle">注明运费：</td>
                                                                    <td width="16%" align="right" valign="middle">已付</td>
                                                                    <td width="6%" align="left" valign="middle">
                                                                        <html:radio value="1" property="bliscartage"/>                                                                    </td>
                                                                    <td width="17%" align="right" valign="middle">未付</td>
                                                                    <td align="left" valign="middle">
                                                                        <html:radio value="2" property="bliscartage"/>                                                                    </td>
                                                                  </tr>
                                                                </table>                                                            </td>
                                                        </tr>
                                                    </table>                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    <html:checkbox value="√" property="voucher3"/>                                                </td>
                                                <td colspan="2" align="left" valign="middle">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="20" align="left" valign="bottom">航空运单：</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width="98%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td width="75%" align="left">
                                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">

                                                                                <tr>
                                                                                    <td align="right" valign="middle">运费已付</td>
                                                                                    <td width="9%" align="left" valign="middle">
                                                                                        <html:radio value="1" property="aviscartage"/>                                                                                    </td>
                                                                                    <td width="31%" align="right" valign="middle">运费未付</td>
                                                                                    <td width="32%" align="left" valign="middle">
                                                                                        <html:radio value="0" property="aviscartage"/>                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="28%" align="right" valign="middle">收货人：</td>
                                                                                    <td colspan="3" align="left" valign="middle">
                                                                                        <html:text styleClass="kuang" maxlength="30" property="avconsignee" size="15"/>                                                                                    </td>
                                                                                </tr>
                                                                            </table>                                                                        </td>
                                                                    </tr>
                                                                </table>                                                            </td>
                                                        </tr>
                                                    </table>                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="left" valign="top">
                                                    <html:checkbox value="√" property="voucher4"/>                                                </td>
                                                <td colspan="2" align="left" valign="middle">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="20" align="left" valign="bottom">铁路或公路运单： </td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">
                                                                <table width="98%" border="0" cellspacing="0" cellpadding="0">
                                                                    <tr>
                                                                        <td align="right" valign="middle">铁路</td>
                                                                        <td align="left" valign="middle">
                                                                            <html:radio value="0" property="surface"/>                                                                        </td>
                                                                        <td align="right" valign="middle">公路</td>
                                                                        <td align="left" valign="middle">
                                                                            <html:radio value="1" property="surface"/>                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="middle">运费已付</td>
                                                                        <td width="7%" align="left" valign="middle">
                                                                            <html:radio value="1" property="suiscartage"/>                                                                        </td>
                                                                        <td width="33%" align="right" valign="middle">运费未付</td>
                                                                        <td width="32%" align="left" valign="middle">
                                                                            <html:radio value="0" property="suiscartage"/>                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td width="28%" align="right" valign="middle">收货人：</td>
                                                                        <td colspan="3" align="left" valign="middle">
                                                                            <html:text styleClass="kuang" maxlength="30" property="suconsignee" size="15"/>                                                                        </td>
                                                                    </tr>
                                                                </table>                                                            </td>
                                                        </tr>
                                                    </table>                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                   <html:checkbox value="√" property="voucher5"/>                                                </td>
                                              <td height="20" colspan="2" align="left" valign="middle">邮政收据，收货人：
                                                    <html:text styleClass="kuang" maxlength="30" property="poconsignee" size="15"/>
                                                ，<br>
                                                注明运费已付。</td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    <html:checkbox value="√" property="voucher6"/>                                                </td>
                                                <td height="20" colspan="2" align="left" valign="middle">贷物收据，收货人：
                                                    <html:text styleClass="kuang" maxlength="30" property="reconisgnee" size="15"/>                                                </td>
                                            </tr>
                                            <tr>
                                              <td align="left" valign="top">
                                                  <html:checkbox value="√" property="voucher7"/>                                              </td>
                                                <td colspan="2" align="left" valign="middle">
                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td height="20" align="left" valign="bottom">保险单：</td>
                                                        </tr>
                                                        <tr>
                                                            <td valign="top">
                                                                <table width="98%" border="0" cellspacing="0" cellpadding="0">

                                                                    <tr>
                                                                        <td width="28%" align="right" valign="middle">正本份数：</td>
                                                                        <td width="72%" align="left" valign="middle">
                                                                            <html:text styleClass="kuang" maxlength="4" property="iporignum" size="5" onkeypress="regInput(/^[0-9]*$/)"/>                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="middle">副本份数：</td>
                                                                        <td align="left" valign="middle">
                                                                            <html:text styleClass="kuang" maxlength="4" property="ipcopynum" size="5" onkeypress="regInput(/^[0-9]*$/)"/>                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="middle">投保金额：</td>
                                                                        <td align="left" valign="middle">
                                                                            <html:text styleClass="kuang" maxlength="8" property="ipamt" size="15" onkeypress="regInput(/^[0-9]*$/)"/>                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td align="right" valign="middle">投保险别：</td>
                                                                        <td align="left" valign="middle">
                                                                            <html:text styleClass="kuang" maxlength="15" property="iptype" size="15"/>                                                                        </td>
                                                                    </tr>
                                                                </table>                                                            </td>
                                                        </tr>
                                                    </table>                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="top">
                                                    <html:checkbox value="√" property="voucher8"/>                                                </td>
                                                <td height="20" colspan="2" align="left" valign="middle">装箱单份数：
                                                    <html:text styleClass="kuang" maxlength="4" property="packslipnum" size="5" onkeypress="regInput(/^[0-9]*$/)"/>                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" valign="middle">
                                                    <html:checkbox value="√" property="voucher9"/>                                                </td>
                                                <td height="20" colspan="2" align="left" valign="middle">其他单据。                                                </td>
                                            </tr>
                                      </table>                                    </td>
                                </tr>
                                <tr align="left">
                                    <td colspan="2" valign="top">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="999999" style="border-collapse:collapse">
                                          <tr>
                                            <td width="97%" height="15" colspan="3" align="left"></td>
                                          </tr>
                                        </table>
                                        <table width="100%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                                <td colspan="3" align="left" valign="bottom" bgcolor="#EBEBEB"><strong>其他条款：</strong></td>
                                            </tr>
                                            <tr>
                                                <td width="3%" align="center" valign="top">
                                                    <html:checkbox value="√" property="other1"/>                                                </td>
                                                <td width="97%" colspan="2" align="left" valign="middle">单据必须自运输单据签发日
                                                    <html:text styleClass="kuang" maxlength="2" property="remitdate" size="2"/>
                                                    起天内<br>
                                                    提交(不能晚于信用证有效期）。</td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="top">
                                                    <html:checkbox value="√" property="other2"/>                                                </td>
                                                <td height="20" colspan="2" align="left" valign="middle">货物数量及信用证金额均可有
                                                    <html:text styleClass="kuang" maxlength="2" property="floating" size="2"/>
                                                    % 浮动<br>
                                                    范围。</td>
                                            </tr>
                                            <tr>
                                                <td align="center" valign="top">
                                                    <html:checkbox value="√" property="other3"/>                                                </td>
                                                <td height="20" colspan="2" align="left" valign="middle">其他                                                </td>
                                            </tr>
                                            <tr>                                            </tr>
                                      </table>                                  </td>
                              </tr>
                                <tr>
                                    <td colspan="2" align="right">&nbsp;</td>
                                </tr>
								<tr>
                                    <td width="24%" align="center">&nbsp;&nbsp;&nbsp;&nbsp;联系人：</td>
                                    <td width="76%" align="left">&nbsp;<html:text styleClass="kuang" maxlength="15" property="cont" size="18"/></td>
								</tr>
								<tr>
                                    <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;电&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
                                    <td align="left">&nbsp;<html:text styleClass="kuang" maxlength="18" property="tel" size="18"/></td>
								</tr>
                          </table>
                      </td>
                    </tr>
              </table>
                <div class="footer">
                <html:hidden property="id" />
                <html:hidden property="usid" />
                <html:hidden property="prid" />
                <html:hidden property="errCode" />
                </div>
            </html:form>
      </td>
  </tr>
</table>
</body>
</html:html>
