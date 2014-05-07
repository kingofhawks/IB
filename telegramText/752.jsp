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
                            <form method="post" action="AccessTelegramText" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top"class="attR">*FM:
                                                    Sender&nbsp;</td>
                                                <td width="65%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*TO:
                                                    Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                     <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										            title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*20:
                                                    Documentary Credit Numberl</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" title="<bean:message key='teles.700._20.title'/>" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*21:
                                                    Presenting Bank's Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles.752._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*23:
                                                    Further Identification</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_23" title="<bean:message key='teles.752._23.title'/>" value="<%if(map.get("_23") != null){out.print(map.get("_23"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*30:
                                                    Date of Advice of Discrepancy
                                                    or Mailing</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_30" size ="6" maxlength ="6" title="<bean:message key='teles.752._30.title'/>" value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32B:Total
                                                    Amount Advised </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text"  size ="3" maxlength="3"  title="<bean:message key='teles.32ab.title'/>" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <input name="_32bb" type="text" size="15" maxlength="15"  title="<bean:message key='teles.752._32b.title'/>" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:
                                                    Charges Deducted </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_71b" title="<bean:message key='teles.752._71b.title'/>"> <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33A:
                                                    Net Amount </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33aa" type="text"  title="<bean:message key='teles.32aa.title'/>" class="33a1" value="<%if(map.get("_33aa") != null){out.print(map.get("_33aa"));}%>">
                                                    <input name="_33ab" type="text"  title="<bean:message key='teles.32ab.title'/>" class="33a2" value="<%if(map.get("_33ab") != null){out.print(map.get("_33ab"));}%>">
                                                    <input name="_33ac" type="text"  title="<bean:message key='teles.752._33a.title'/>" class="33a3" value="<%if(map.get("_33ac") != null){out.print(map.get("_33ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33B:
                                                    Net Amount </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33ba" type="text" class="33a2"  title="<bean:message key='teles.32ab.title'/>" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" type="text" class="33a3" title="<bean:message key='teles.752._33a.title'/>" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">53A:Sender's Correspondent</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53aa" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_53ab" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_53ab") != null){out.print(map.get("_53ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_53ac" title="<bean:message key='teles.752._53ab.title'/>" value="<%if(map.get("_53ac") != null){out.print(map.get("_53ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">53D:Sender's Correspondent</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_53db" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_53db") != null){out.print(map.get("_53db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_53dc" title="<bean:message key='teles.752._53ac.title'/>" > <%if(map.get("_53dc") != null){out.print(map.get("_53dc"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellspacing="0" cellpadding="0">
                                             <tr>
                                                <td width="40%" rowspan="3" align="right" valign="top">54A:Receiver's
                                                    Correspondent</td>
                                                <td width="60%" height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54ab"  title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_54ab") != null){out.print(map.get("_54ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54ac"  title="<bean:message key='teles.752._53db.title'/>" value="<%if(map.get("_54ac") != null){out.print(map.get("_54ac"));}%>"></td>
                                            </tr>
                                             <tr>
                                                <td rowspan="3" align="right" valign="top">54B:Receiver's
                                                    Correspondent</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54bb" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_54bb") != null){out.print(map.get("_54bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54bc" title="<bean:message key='teles.752._53db.title'/>" value="<%if(map.get("_54bc") != null){out.print(map.get("_54bc"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">54D:Receiver's
                                                    Correspondent</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54db" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_54db") != null){out.print(map.get("_54db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_54dc" title="<bean:message key='teles.752._54a.title'/>" > <%if(map.get("_54dc") != null){out.print(map.get("_54dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:
                                                    Sender to Reciver Infomation </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_72" title="<bean:message key='teles._72.title'/>" > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
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