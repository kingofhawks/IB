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
                                                <td width="51%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" maxlength="12"  title="<bean:message key='teles.fmbk.title'/>" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										          title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20: + Documentary Credit Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"  title="<bean:message key='teles.700._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">21:Related Reference</td>
                                                <td valign="middle">
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="3%"></td>
    <td><div class="sele_div2"><select name="_21" class="select2">
													<%
													StaticManageBean bean=new StaticManageBean();
													out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_RERE"), (String)map.get("_21")));%>
<%-- <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_RERE, (String)map.get("_21")));%>--%>
</select> </div></td>
  </tr>
</table>

													
													</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">79C:: Details of Guarantee</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_79c"> <%if(map.get("_79c") != null){out.print(map.get("_79c"));}%></textarea></td>
                                            </tr>

                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;                                        </td>
                                </tr>
                            </table>
                            
                            
                           
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"><div class="footer">
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