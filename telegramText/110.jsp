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
                                        <table width="400" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td width="46%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										         title="tobk" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20:Transaction
                                                    Reference Number</td>
                                                <td valign="middle">
                                                    &nbsp;
<input name="_20" title="_20" type="text"  size="16" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53A:Sendre's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_53ab" type="text" maxlength="34" value="<%if(map.get("_53ab") != null){out.print(map.get("_53ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_53ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_53ac") != null){out.print(map.get("_53ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53D:Sendre's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_53db" type="text" maxlength="34"  value="<%if(map.get("_53db") != null){out.print(map.get("_53db"));}%>">
                                                        <br>
    &nbsp;
    <textarea name="_53dc"><%if(map.get("_53dc") != null){out.print(map.get("_53dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54A:Receive's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54ab" type="text" maxlength="34" value="<%if(map.get("_54ab") != null){out.print(map.get("_54ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_54ac" type="text" size="11" maxlength="11" value="<%if(map.get("_54ac") != null){out.print(map.get("_54ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54B:Receive's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54bb" type="text" maxlength="34" value="<%if(map.get("_54bb") != null){out.print(map.get("_54bb"));}%>">
                                                        <br>
    &nbsp;
    <input name="_54bc" type="text" maxlength="35"  value="<%if(map.get("_54bc") != null){out.print(map.get("_54bc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54D:Receive's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54db" type="text" maxlength="34" value="<%if(map.get("_54db") != null){out.print(map.get("_54db"));}%>">
                                                        <br>
    &nbsp;
    <textarea name="_54dc"><%if(map.get("_54dc") != null){out.print(map.get("_54dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:Sender
                                                    to Receiver Information</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <textarea name="_72" rows="5"><%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="400" border="0" cellpadding="0" cellspacing="0">

                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR"><b>Mandatory
                                                    Sequence A</b></td>
                                                <td width="46%" align="left" valign="middle">&nbsp; </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21:Cheque
                                                    Number</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div">
                                                                    <select name="_21" title="_21" disabled="disabled" >
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*30:Date
                                                    of Issue</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_30" title="_30" type="text" size="6" maxlength="6" value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32A:Amount</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_32aa" type="text" size="6" maxlength="6" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                        <input name="_32ab" type="text" size="3" maxlength="3" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                        <input name="_32ac" type="text" size="15" maxlength="15" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32B:Amount</td>
                                                <td align="left" valign="middle"> &nbsp;
                                                        <input name="_32ba" type="text" size="3" maxlength="3" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                        <input name="_32bb" type="text" size="15" maxlength="15" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52A:Drawer
                                                    Bank</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52aa")));%>
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
                                                        <input name="_52ab" type="text" maxlength="34" value="<%if(map.get("_52ab") != null){out.print(map.get("_52ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_52ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_52ac") != null){out.print(map.get("_52ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52B:Drawer
                                                    Bank</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52ba")));%>
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
                                                        <input name="_52bb" type="text" maxlength="34" value="<%if(map.get("_52bb") != null){out.print(map.get("_52bb"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_52bc" type="text" maxlength="35" value="<%if(map.get("_52bc") != null){out.print(map.get("_52bc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52D:Drawer
                                                    Bank</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52da")));%>
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
                                                        <input name="_52db" type="text" maxlength="34" value="<%if(map.get("_52db") != null){out.print(map.get("_52db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_52dc"><%if(map.get("_52dc") != null){out.print(map.get("_52dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">59:Payee</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_59a" type="text" maxlength="34" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_59b"><%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea>
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