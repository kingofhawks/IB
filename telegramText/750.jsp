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
                                        <table width="410" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="179" height="20" align="right" valign="top" class="attR">*FM:Sender</td>
                                                <td width="221" align="left">&nbsp;
                                                <input type="text" name="fmbk" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO:Recevier</td>
                                                <td align="left">&nbsp;
                                                <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>" title="tobk"/>
                                                &nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td>  
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20:Presenting Bank's Reference</td>
                                                <td align="left">
                                                    &nbsp;
<input name="_20" title="_20" type="text" size="16" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21:Related Reference</td>
                                                <td align="center">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div" >
                                                                    <select name="_21" title="_21" disabled="disabled" >
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*32B:Principal Amount</td>
                                                <td align="left">&nbsp;

                                                    <input name="_32ba" title="_32ba" type="text" size="3" maxlength="3" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb"  title="_32bb" type="text" size="15" maxlength="15" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33B:Additiional
                                                    Amount</td>
                                                <td align="left">&nbsp;
                                                    <input name="_33ba" type="text" size="3" maxlength="3" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" type="text" size="15" maxlength="15" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:charges to be Deducted</td>
                                                <td align="left">
                                                    &nbsp;
                                                    <textarea name="_71b" rows="4"><%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">73:Charges to be Added</td>
                                                <td align="left">&nbsp;
                                                    <textarea name="_73" rows="4"><%if(map.get("_73") != null){out.print(map.get("_73"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">34B:Total Amount to be Paid</td>
                                                <td align="left">&nbsp;

                                                    <input name="_34ba" type="text" size="3" maxlength="3" value="<%if(map.get("_34ba") != null){out.print(map.get("_34ba"));}%>">
                                                    <input name="_34bb" type="text" size="15" maxlength="15" value="<%if(map.get("_34bb") != null){out.print(map.get("_34bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57A:Account With Bank</td>
                                                <td align="center">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57aa" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left">&nbsp;

                                                    <input name="_57ab" type="text" maxlength="34" class="name_width" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>">
                                                    <br>
&nbsp;
<input name="_57ac" type="text" size="11" maxlength="11" value="<%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57B:Account
                                                    With Bank</td>
                                                <td align="center">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
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
                                                <td align="left">
                                                    &nbsp;
<input name="_57bb" type="text" maxlength="34" class="name_width"  value="<%if(map.get("_57bb") != null){out.print(map.get("_57bb"));}%>">
<br>
                                                    &nbsp;
                                                    <input name="_57bc" type="text" maxlength="35" class="name_width" value="<%if(map.get("_57bc") != null){out.print(map.get("_57bc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57D:Account
                                                    With Bank</td>
                                                <td align="center">
                                                    <table width="95%" border="0" cellspacing="0" cellpadding="0">
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
                                                <td align="left">
                                                    &nbsp;
<input name="_57db" type="text" maxlength="34" class="name_width" value="<%if(map.get("_57db") != null){out.print(map.get("_57db"));}%>">
                                                    &nbsp;
<textarea name="_57dc" rows="4"><%if(map.get("_57dc") != null){out.print(map.get("_57dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td height="20" align="right" valign="top">72:Sender to Receiver Information</td>
                                                <td align="left">&nbsp;
                                                    <textarea name="_72" rows="4"><%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*77J:Discrepanycies</td>
                                                <td align="left">&nbsp;
                                                    <textarea  name="_77j" title="_77j" rows="8"><%if(map.get("_77j") != null){out.print(map.get("_77j"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="30%" valign="top"><br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
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