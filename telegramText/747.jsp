<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
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
                            <form method="post" action="AccessTelegramText" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="middle"class="attR">*FM: +Sender&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle"class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                     <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										        title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle"class="attR">*20:
                                                    Documentary Credit Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_20" title="<bean:message key='teles.700._20.title'/>" type="text" maxlength="2" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle">21:Reimbursing
                                                    Bank's Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles.742._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>" title="_21"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle"class="attR">*30:Date
                                                    of Original Authorisation
                                                    to Reimburse</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_30" title="<bean:message key='teles.742._30.title'/>" value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle">31E:New
                                                    Date of Expiry </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_31e" type="text" title="<bean:message key='teles.742._31e.title'/>" class="date1" value="<%if(map.get("_31e") != null){out.print(map.get("_31e"));}%>" title="_31e">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle">32B:Increase of Documentary Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" title="<bean:message key='teles.32ab.title'/>" class="date1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input name="_32bb" type="text" title="<bean:message key='teles.707._32b.title'/>" class="place1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle">33B:Decrease of Documentary Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33ba" type="text"  title="<bean:message key='teles.32ab.title'/>" class="date1" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input name="_33bb" type="text"  title="<bean:message key='teles.707._33b.title'/>" class="place1" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="middle">34B:New Documentary Credit Amount After Amendment</td>
                                                <td valign="middle">&nbsp;
                                                     <input name="_34ba" type="text" title="<bean:message key='teles.32ab.title'/>" class="date1" value="<%if(map.get("_34ba") != null){out.print(map.get("_34ba"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input name="_34bb" type="text" title="<bean:message key='teles.742._34b.title'/>" class="place1" value="<%if(map.get("_34bb") != null){out.print(map.get("_34bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39A:+Percentage Credit Amount Tolerance</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="39a" type="text" title="<bean:message key='teles.700._39a.title'/>" class="2bit" maxlength="2" value="<%if(map.get("39a") != null){out.print(map.get("39a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39B:+Maximum Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_39b" title="<bean:message key='teles.700._39b.title'/>" value="<%if(map.get("_39b") != null){out.print(map.get("_39b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">39C:Additional Amounts Covered</td>
                                                <td valign="middle">&nbsp;                                                    <textarea name="_39c" title="<bean:message key='teles.700._39c.title'/>"> <%if(map.get("_39c") != null){out.print(map.get("_39c"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">72: Sender to Receiver Information</td>
                                                <td width="212" valign="middle">&nbsp;
                                                    <textarea name="_72" title="<bean:message key='teles._72.title'/>"> <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">77A: Narrative</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea  name="_77a" title="<bean:message key='teles.747._77a.title'/>"> <%if(map.get("_77a") != null){out.print(map.get("_77a"));}%></textarea></td>
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