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
                                                <td width="55%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" maxlength="12" title="<bean:message key='teles.fmbk.title'/>" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										        title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*40 A: +Form of Documentary Credit</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_40a" maxlength="16" title="<bean:message key='teles.700._40a.title'/>" value="<%if(map.get("_40a") != null){out.print(map.get("_40a"));}%>" title="_40a"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20: + Documentary Credit Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"  maxlength="16" title="<bean:message key='teles.700._20.title'/>" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*31D: +Date and Place of Expiry</td>
                                                <td valign="middle">&nbsp;
                                                    <input  name="_31da"  maxlength="6" type="text" title="<bean:message key='teles.700._31da.title'/>" class="date1" value="<%if(map.get("_31da") != null){out.print(map.get("_31da"));}%>" title="_31da">
                                                    <br>
                                                    &nbsp;
                                                    <input  name="_31db"  maxlength="29" type="text" title="<bean:message key='teles.700._31db.title'/>" class="place1" value="<%if(map.get("_31db") != null){out.print(map.get("_31db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*50: +Applicant</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_50"  title="<bean:message key='teles.700._50.title'/>" > <%if(map.get("_50") != null){out.print(map.get("_50"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*59:+Beneficiary</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_59a"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>" title="_59a"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_59b" title="<bean:message key='teles.700._59.title'/>" > <%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32B: +Currency Code, Amount </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba"  maxlength="3" type="text" title="<bean:message key='teles.32ab.title'/>" class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <br>
                                                    &nbsp;
                                                    <input name="_32bb"  maxlength="15" type="text" title="<bean:message key='teles.32ac.title'/>" class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39A:+Percentage Credit Amount Tolerance</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_39a" type="text" class="2bit" title="<bean:message key='teles.700._39a.title'/>" maxlength="2" value="<%if(map.get("_39a") != null){out.print(map.get("_39a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39B:+Maximum Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_39b"  maxlength="13" title="<bean:message key='teles.700._39b.title'/>"  value="<%if(map.get("_39b") != null){out.print(map.get("_39b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39C:Additional Amounts Covered</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_39c" title="<bean:message key='teles.700._39c.title'/>" > <%if(map.get("_39c") != null){out.print(map.get("_39c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*41a:+ Available ... with ...</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_41aa"  maxlength="11" title="<bean:message key='teles.700._41aa.title'/>" value="<%if(map.get("_41aa") != null){out.print(map.get("_41aa"));}%>" title="_41aa"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_41ab"  title="<bean:message key='teles.700._41ac.title'/>" maxlength="14" value="<%if(map.get("_41ab") != null){out.print(map.get("_41ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*41d:+ Available ... with ...</td>
                                                <td valign="bottom">&nbsp;
                                                    <textarea name="_41ac" title="<bean:message key='teles.700._41da.title'/>" > <%if(map.get("_41ac") != null){out.print(map.get("_41ac"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_41ad"  maxlength="14" title="<bean:message key='teles.700._41ac.title'/>" value="<%if(map.get("_41ad") != null){out.print(map.get("_41ad"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42C:+ Draft at ... </td>
                                                <td valign="bottom">&nbsp;
                                                    <textarea name="_42c" title="<bean:message key='teles.700._42c.title'/>" > <%if(map.get("_42c") != null){out.print(map.get("_42c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42a:+ Drawee</td>
                                                <td align="center" valign="bottom">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_42aa" class="select1">
                                                                        <%	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_42aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_42ab"  maxlength="34" title="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_42ab") != null){out.print(map.get("_42ab"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_42ac"  maxlength="11" title="<bean:message key='teles.700._42ac.title'/>" value="<%if(map.get("_42ac") != null){out.print(map.get("_42ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42d:+ Drawee</td>
                                                <td align="center" valign="bottom">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_42da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_42da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <input type="text" name="_42db"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_42db") != null){out.print(map.get("_42db"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="bottom">&nbsp;
                                                    <textarea name="_42dc" title="<bean:message key='teles.700._42dc.title'/>" > <%if(map.get("_42dc") != null){out.print(map.get("_42dc"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">44A:Loading on Borard/ Dispatch/Taking in Charge at/from... </td>
                                                <td width="49%" valign="top">&nbsp;
                                                    <input type="text" name="_44a"  maxlength="65"  title="<bean:message key='teles.700._44a.title'/>" value="<%if(map.get("_44a") != null){out.print(map.get("_44a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44B:For Transportation to... </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_44b"  maxlength="65"  title="<bean:message key='teles.700._44b.title'/>" value="<%if(map.get("_44b") != null){out.print(map.get("_44b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44C:+ Last Date of Shipment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_44c"  maxlength="6"  type="text" title="<bean:message key='teles.700._44c.title'/>" class="date1" value="<%if(map.get("_44c") != null){out.print(map.get("_44c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44D:+Shipment Period</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_44d" title="<bean:message key='teles.700._44d.title'/>" > <%if(map.get("_44d") != null){out.print(map.get("_44d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">45A:Description of Goods and/or Services </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_45a" title="<bean:message key='teles.700._45a.title'/>"  > <%if(map.get("_45a") != null){out.print(map.get("_45a"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57a: + &quot;Advise Through&quot; Bank </td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57aa")));%>
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
                                                    <input type="text" name="_57ab"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_57ac"  maxlength="11" title="<bean:message key='teles.700._57ac.title'/>" value="<%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57b: + &quot;Advise Through&quot; Bank </td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57ba")));%>
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
                                                    <input type="text" name="_57bb"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57bb") != null){out.print(map.get("_57bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_57bc"  maxlength="35" title="<bean:message key='teles.700._57bc.title'/>" value="<%if(map.get("_57bc") != null){out.print(map.get("_57bc"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57d: + &quot;Advise Through&quot; Bank </td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57da")));%>
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
                                                    <input type="text" name="_57db"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57db") != null){out.print(map.get("_57db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_57dc" title="<bean:message key='teles.700._57dc.title'/>" > <%if(map.get("_57dc") != null){out.print(map.get("_57dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72: Sender to Receiver Information</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea  name="_72" title="<bean:message key='teles._72.title'/>"> <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
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