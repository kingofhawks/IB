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
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										        title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20: + Documentary Credit Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"   title="<bean:message key='teles.700._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">25:Account Identification</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_25"   title="<bean:message key='teles._52ab.title'/>" maxlength="35"  value="<%if(map.get("_25") != null){out.print(map.get("_25"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">31D: +Date and Place of Expiry</td>
                                                <td valign="middle">&nbsp;
                                                    <input  name="_31da"  maxlength="6" title="<bean:message key='teles.700._31da.title'/>" type="text" class="date1" value="<%if(map.get("_31da") != null){out.print(map.get("_31da"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input  name="_31db"  maxlength="29" title="<bean:message key='teles.700._31db.title'/>" type="text" class="place1" value="<%if(map.get("_31db") != null){out.print(map.get("_31db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">58a:Negotiating Bank </td>
                                                <td align="center" valign="middle">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58a" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58a")));%>
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
                                                    <input type="text" name="_58b" title="<bean:message key='teles._52ab.title'/>" maxlength="34"  value="<%if(map.get("_58b") != null){out.print(map.get("_58b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_58c" title="<bean:message key='teles.740._58ac.title'/>" maxlength="11" value="<%if(map.get("_58c") != null){out.print(map.get("_58c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">58d:Negotiating Bank </td>
                                                <td align="center" valign="middle">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58da")));%>
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
                                                    <input type="text" name="_58db" title="<bean:message key='teles._52ab.title'/>" maxlength="34" value="<%if(map.get("_58db") != null){out.print(map.get("_58db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_58dc" title="<bean:message key='teles.740._58dc.title'/>" > <%if(map.get("_58dc") != null){out.print(map.get("_58dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*59:+Beneficiary</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_59a"  title="<bean:message key='teles._52ab.title'/>" maxlength="34" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>" title="_59a"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_59b" title="<bean:message key='teles.700._59.title'/>" > <%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32B: +Currency Code, Amount </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba"  title="<bean:message key='teles.400._32kd.title'/>" maxlength="3" type="text" class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <input name="_32bb"  title="<bean:message key='teles.400._32ke.title'/>" maxlength="15" type="text" class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39A:+Percentage Credit Amount Tolerance</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_39a" type="text"  title="<bean:message key='teles.700._39a.title'/>" class="2bit" maxlength="2" value="<%if(map.get("_39a") != null){out.print(map.get("_39a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39B:+Maximum Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_39b"  title="<bean:message key='teles.700._39b.title'/>" maxlength="13" value="<%if(map.get("_39b") != null){out.print(map.get("_39b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39C:Additional Amounts Covered</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_39c" title="<bean:message key='teles.700._39c.title'/>" > <%if(map.get("_39c") != null){out.print(map.get("_39c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*41A:+ Available ... with ...</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_41aa"  title="<bean:message key='teles.700._41aa.title'/>" maxlength="11" value="<%if(map.get("_41aa") != null){out.print(map.get("_41aa"));}%>" title="_41aa"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_41ab" title="<bean:message key='teles.700._41ac.title'/>" maxlength="14" value="<%if(map.get("_41ab") != null){out.print(map.get("_41ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*41D:+ Available ... with ...</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_41da" title="<bean:message key='teles.700._41da.title'/>"> <%if(map.get("_41da") != null){out.print(map.get("_41da"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_41db"  title="<bean:message key='teles.700._41ac.title'/>" maxlength="14"  value="<%if(map.get("_41db") != null){out.print(map.get("_41db"));}%>"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">42C:+ Draft at ... </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42c" title="<bean:message key='teles.700._42c.title'/>"> <%if(map.get("_42c") != null){out.print(map.get("_42c"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42a:+ Drawee</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_42aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_42aa")));%>
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
                                                    <input type="text" name="_42ab"  title="<bean:message key='teles._52ab.title'/>" maxlength="34" value="<%if(map.get("_42ab") != null){out.print(map.get("_42ab"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_42ac"  title="<bean:message key='teles.700._42ac.title'/>" maxlength="11" value="<%if(map.get("_42ac") != null){out.print(map.get("_42ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42d:+ Drawee</td>
                                                <td align="center" valign="middle">
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
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_42db"  title="<bean:message key='teles._52ab.title'/>" maxlength="34" value="<%if(map.get("_42db") != null){out.print(map.get("_42db"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42dc" title="<bean:message key='teles.700._42dc.title'/>"> <%if(map.get("_42dc") != null){out.print(map.get("_42dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42M:Mixed Payment Details </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42m" title="<bean:message key='teles.700._42m.title'/>" > <%if(map.get("_42m") != null){out.print(map.get("_42m"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">42P:Deferred Payment Details </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_42p" title="<bean:message key='teles.700._42p.title'/>" > <%if(map.get("_42p") != null){out.print(map.get("_42p"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">71A:Reimbursing Bank's Charges </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_71a" title="<bean:message key='teles.740._71a.title'/>" value="<%if(map.get("_71a") != null){out.print(map.get("_71a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:Others Charges </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_71b" title="<bean:message key='teles.740._71b.title'/>" > <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea></td>
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