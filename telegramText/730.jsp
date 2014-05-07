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
                                        <table width="440" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="56%" height="20" align="right" valign="top" class="attR">*FM:Sender<br>
                                                </td>
                                                <td width="44%" align="left" valign="middle">&nbsp;
                                                 <input type="text" name="fmbk" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk" class="attR">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*To:Receiver<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;
                                                  <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>" title="tobk" />&nbsp;
                                                  <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20:Sender's Reference<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_20" title="_20" type="text" size="16"  value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21:Receiver's
                                                    Reference<br>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div">
                                                                    <select name="_21" title="_21"  disabled="disabled" >
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">25:Account Identification<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input type="text" name="_25"  value="<%if(map.get("_25") != null){out.print(map.get("_25"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*30:Date
                                                    of Message Being Acknowledged<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_30" title="_30" type="text" maxlength="35" class="name_width"  value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32B:Amount
                                                    of Charges<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_32ba" type="text" size="3" maxlength="3"  value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" size="15" maxlength="15"  value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32D:Amount
                                                    of Charges<br>
                                                </td>
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_32da" type="text" size="6" maxlength="6"  value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>">
                                                    <input name="_32db" type="text" size="3" maxlength="3"  value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
<input name="_32dc" type="text" size="15" maxlength="15"  value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57A:Account
                                                    with Bank<br>
                                                </td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
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
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_57ab" type="text" maxlength="34"  value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>">
<input name="_57ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57D:Account
                                                    with Bank</td>
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
                                                <td align="left" valign="middle">&nbsp;
                                                    <input name="_57db" type="text" maxlength="34"  class="name_width" value="<%if(map.get("_57db") != null){out.print(map.get("_57db"));}%>">
</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">
                                                    &nbsp;
<textarea name="_57dc" rows="4"><%if(map.get("_57dc") != null){out.print(map.get("_57dc"));}%>
                                                    </textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:Charges<br>
                                                </td>
                                                <td align="left" valign="middle">
                                                    &nbsp;

                     <textarea name="_71b" rows="6"><%if(map.get("_71b") != null){out.print(map.get("_71b"));}%>
                                                    </textarea>                           </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:Sender
                                                    to Receiver Information</td>
                                                <td align="left" valign="middle">
                                                    &nbsp;
<textarea name="_72" rows="6"><%if(map.get("_72") != null){out.print(map.get("_72"));}%>
                                                    </textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="30%" valign="top">&nbsp;</td>
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