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
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: Sender&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  title="<bean:message key='teles.tobk.title'/>" maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										         title="tobk" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20: Sender's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"  title="<bean:message key='teles.707._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21: Presenting Bank's Reference </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles.734._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>" title="_21"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32A:Date and Amount of Utilisation:</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" title="<bean:message key='teles.734._32aa.title'/>" class="33a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" type="text" title="<bean:message key='teles.400._32kd.title'/>" class="33a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" title="<bean:message key='teles.734._32ac.title'/>" class="33a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">73:Charges Claimed </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_73" title="<bean:message key='teles.734._73.title'/>" > <%if(map.get("_73") != null){out.print(map.get("_73"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33A:Total Amount Claimed </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33aa" type="text"  title="<bean:message key='teles.734._33aa.title'/>" class="33a1" value="<%if(map.get("_33aa") != null){out.print(map.get("_33aa"));}%>">
                                                    <input name="_33ab" type="text" title="<bean:message key='teles.400._32kd.title'/>" class="33a2" value="<%if(map.get("_33ab") != null){out.print(map.get("_33ab"));}%>">
                                                    <input name="_33ac" type="text" title="<bean:message key='teles.734._33ac.title'/>" class="33a3" value="<%if(map.get("_33ac") != null){out.print(map.get("_33ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33B: Total Amount Claimed</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33ba" maxlength="3"  title="<bean:message key='teles.400._32kd.title'/>" type="text" class="33a2" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" maxlength="15"  title="<bean:message key='teles.734._33ac.title'/>" type="text" class="33a3" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:140px;"><div class="sele_div1" style="float:left; width:43px;">
                                                        <select name="_57a" class="select1" style="width:45px; ">
<%
	StaticManageBean bean=new StaticManageBean();
	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57a")));%> 
                                                        </select>
                                                    </div><div style="float:right; "> :Account With Bank </div></div></td>
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
                                                    <input type="text" name="_57c" title="<bean:message key='teles._52ab.title'/>" maxlength="11"  value="<%if(map.get("_57c") != null){out.print(map.get("_57c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_57d" title="<bean:message key='teles.734._57ac.title'/>" > <%if(map.get("_57d") != null){out.print(map.get("_57d"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top"><table width="375" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="40%" height="20" align="right" valign="top">72:: Sender to Reciver Infomation</td>
                                            <td valign="middle">&nbsp;
                                                    <textarea name="_72" title="<bean:message key='teles._72.title'/>"  > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
                                        </tr>
                                        <tr>
                                            <td height="20" align="right" valign="top" class="attR">*77J: Discrepancines</td>
                                            <td valign="middle">&nbsp;
                                                    <textarea name="_77j" title="<bean:message key='teles.734._77j.title'/>" > <%if(map.get("_77j") != null){out.print(map.get("_77j"));}%></textarea></td>
                                        </tr>
                                        <tr>
                                            <td height="20" align="right" valign="top" class="attR">*77B::Disposal of Documents</td>
                                            <td valign="middle">&nbsp;
                                                    <textarea  name="_77b"  title="<bean:message key='teles.734._77b.title'/>" > <%if(map.get("_77b") != null){out.print(map.get("_77b"));}%></textarea></td>
                                        </tr>
                                    </table></td>
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