<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page import="com.witsoft.bean.common.StaticManageBean"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
 
<html>
<head>

<title>国际结算模拟系统</title>


<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td class="innerTable_main">
                        <div id="innerTable_div">

                            <!--内容开始-->
                            <form method="post" action="AccessTelegramText" onSubmit="checkForm(this)"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="fmbk"  title="<bean:message key='teles.fmbk.title'/>" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										        title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*27: Sequence of Total</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_27" type="text" title="<bean:message key='teles.700._27.title'/>" class="2bit" maxlength="2" value="<%if(map.get("_27") != null){out.print(map.get("_27"));}%>" title="_27"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*40 B: +Form of Documentary Credit</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_40b" title="<bean:message key='teles.700._40a.title'/>"> <%if(map.get("_40b") != null){out.print(map.get("_40b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">31C:Date of Issue</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_31c"  title="<bean:message key='teles.700._31c.title'/>" maxlength="6" value="<%if(map.get("_31c") != null){out.print(map.get("_31c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*31D: Date and Place of Expiry</td>
                                                <td valign="middle">&nbsp;
                                                    <input  name="_31da"  maxlength="6" title="<bean:message key='teles.700._31da.title'/>" type="text" class="date1" value="<%if(map.get("_31da") != null){out.print(map.get("_31da"));}%>" title="_31da"><br>&nbsp;
                                                    <input  name="_31db"  maxlength="29" title="<bean:message key='teles.700._31db.title'/>" type="text" class="place1" value="<%if(map.get("_31db") != null){out.print(map.get("_31db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:110px;"><div class="sele_div1" style="float:left; width:43px;">
                                                        <select name="_52a" class="select1" style="width:45px; ">
<%
	StaticManageBean bean=new StaticManageBean();
	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52a ")));%> 
                                                        </select>
                                                    </div><div style="float:right; ">:Issuing Bank </div></div>
													</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52b" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52b")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_52c"  title="<bean:message key='teles._52ab.title'/>" maxlength="11"  value="<%if(map.get("_52c") != null){out.print(map.get("_52c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_52d" title="<bean:message key='teles.700._51dc.title'/>" > <%if(map.get("_52d") != null){out.print(map.get("_52d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*50: First Beneficiary</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_50" title="<bean:message key='teles.720._50.title'/>"> <%if(map.get("_50") != null){out.print(map.get("_50"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*59:Second Beneficiary</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_59a"  title="<bean:message key='teles._52ab.title'/>" maxlength="34" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>" title="_59a"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_59b" title="<bean:message key='teles.720._59.title'/>"> <%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32B: Currency Code, Amount </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba"  maxlength="3" type="text"  title="<bean:message key='teles.32ab.title'/>" class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <input name="_32bb"  maxlength="15" type="text" title="<bean:message key='teles.32ac.title'/>" class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39A:Percentage Credit Amount Tolerance</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_39a" type="text" title="<bean:message key='teles.700._39a.title'/>" class="2bit" maxlength="2" value="<%if(map.get("_39a") != null){out.print(map.get("_39a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39B:Maximum Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_39b"  maxlength="13" title="<bean:message key='teles.700._39b.title'/>" value="<%if(map.get("_39b") != null){out.print(map.get("_39b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39C:Additional Amounts Covered</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_39c"  title="<bean:message key='teles.700._39c.title'/>" > <%if(map.get("_39c") != null){out.print(map.get("_39c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:148px;"><div class="sele_div1" style="float:left; width:43px;">
                                                        <select name="_41a" class="select1" style="width:45px; ">
<%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_41a")));%> 
                                                        </select>
                                                    </div><div style="float:right; ">:+ Available ... with ...</div></div></td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_41b" title="<bean:message key='teles.700._41da.title'/>" > <%if(map.get("_41b") != null){out.print(map.get("_41b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_41c" title="<bean:message key='teles.700._41ac.title'/>" value="<%if(map.get("_41c") != null){out.print(map.get("_41c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42C:+ Draft at ... </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42c" title="<bean:message key='teles.700._42c.title'/>" > <%if(map.get("_42c") != null){out.print(map.get("_42c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:95px;"><div class="sele_div1" style="float:left; width:43px;">
                                                        <select name="_42a" class="select1" style="width:45px; ">
<%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_42a")));%> 
                                                        </select>
                                                    </div><div style="float:right; ">:+ Drawee</div></div></td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_42b" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_42b")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_42c" title="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_42c") != null){out.print(map.get("_42c"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42d" title="<bean:message key='teles.700._42dc.title'/>"  > <%if(map.get("_42d") != null){out.print(map.get("_42d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42M:Mixed Payment Details </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42m" title="<bean:message key='teles.700._42m.title'/>" > <%if(map.get("_42m") != null){out.print(map.get("_42m"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">42P:Deferred Payment Details </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42p" title="<bean:message key='teles.700._42p.title'/>" > <%if(map.get("_42p") != null){out.print(map.get("_42p"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">43P:Partial Shipment </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_43p"  title="<bean:message key='teles.700._43p.title'/>" value="<%if(map.get("_43p") != null){out.print(map.get("_43p"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">43T:Transshipment</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_43t"  title="<bean:message key='teles.700._43t.title'/>" value="<%if(map.get("_43t") != null){out.print(map.get("_43t"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44A:Loading on Borard/ Dispatch/Taking in Charge at/from... </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_44a"  title="<bean:message key='teles.700._44a.title'/>" maxlength="65"  value="<%if(map.get("_44a") != null){out.print(map.get("_44a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44B:For Transportation to... </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_44b"  title="<bean:message key='teles.700._44b.title'/>" maxlength="65"  value="<%if(map.get("_44b") != null){out.print(map.get("_44b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44C: Last Date of Shipment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_44c"  maxlength="6"  title="<bean:message key='teles.700._44c.title'/>" type="text" class="date1" value="<%if(map.get("_44c") != null){out.print(map.get("_44c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44D:Shipment Period</td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_44d" title="<bean:message key='teles.700._44d.title'/>" > <%if(map.get("_44d") != null){out.print(map.get("_44d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">45A:Description of Goods and/or Services </td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_45a" title="<bean:message key='teles.700._45a.title'/>" > <%if(map.get("_45a") != null){out.print(map.get("_45a"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">46A:Documents Required: </td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_46a"  title="<bean:message key='teles.700._46a.title'/>" > <%if(map.get("_46a") != null){out.print(map.get("_46a"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">47A:Additional Conditions</td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_47a" title="<bean:message key='teles.700._47a.title'/>"  > <%if(map.get("_47a") != null){out.print(map.get("_47a"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:Charges</td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_71b" title="<bean:message key='teles.700._71b.title'/>" > <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">48: Period for Presentation</td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_48" title="<bean:message key='teles.700._48.title'/>" > <%if(map.get("_48") != null){out.print(map.get("_48"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*49:Confirmation Instructions</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_49"  title="<bean:message key='teles.700._49.title'/>" maxlength="7" value="<%if(map.get("_49") != null){out.print(map.get("_49"));}%>" title="_49"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">78: Instructions to the Paying/Accepting/Negotiating Bank </td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_78" title="<bean:message key='teles.700._78.title'/>" > <%if(map.get("_78") != null){out.print(map.get("_78"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:134px;"><div class="sele_div1" style="float:left; width:43px;">
                                                  <select name="_57a" class="select1" style="width:45px; ">
                                                    <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57a")));%>
                                                  </select>
</div>
                                                <div style="float:right; ">:"Advise Through" Bank </div></div></td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57b" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57b")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_57c" maxlength="11"  title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57c") != null){out.print(map.get("_57c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="top">&nbsp;
                                                    <textarea name="_57d" title="<bean:message key='teles.700._57dc.title'/>"  > <%if(map.get("_57d") != null){out.print(map.get("_57d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72: Sender to Receiver Information</td>
                                                <td valign="top">&nbsp;
                                                    <textarea  name="_72" title="<bean:message key='teles._72.title'/>"  > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
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
                       <td class="innerTable_bottom_x"> <div class="footer">
                                <input name="errCode" type="hidden" value="<%if(map.get("errCode") != null){out.print(map.get("errCode"));}%>">
								<input name="swno" type="hidden" value="<%if(map.get("swno") != null){out.print(map.get("swno"));}%>">
								<input name="tstp" type="hidden" value="<%if(map.get("tstp") != null){out.print(map.get("prid"));}%>">
								<input name="swid" type="hidden" value="<%if(map.get("swid") != null){out.print(map.get("swid"));}%>">
								<input name="mgtp" type="hidden" value="<%if(map.get("mgtp") != null){out.print(map.get("mgtp"));}%>">
								<input name="prid" type="hidden"  value="<%if(map.get("prid") != null){out.print(map.get("prid"));}%>">
								<input name="brno" type="hidden"  value="<%if(map.get("brno") != null){out.print(map.get("brno"));}%>">
								<input name="rfno" type="hidden"  value="<%if(map.get("rfno") != null){out.print(map.get("rfno"));}%>">
                                <%=(String)request.getAttribute("button")%>
                            </div></td>
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
</form></body>
</html>