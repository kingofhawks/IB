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
                                                <td valign="middle">&nbsp;
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
                                                    Sending Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" title="<bean:message key='teles.400._20.title'/>" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*21:Relate
                                                    Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles.400._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32A:
                                                    Amount Acknowledged</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>" title="<bean:message key='teles.32aa.title'/>">
                                                    <input name="_32ab" type="text" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>" title="<bean:message key='teles.32ab.title'/>">
                                                    <input name="_32ac" type="text" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>" title="<bean:message key='teles.32ac.title'/>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32B:
                                                    Amount Acknowledged</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>"title="<bean:message key='teles.32ab.title'/>">
                                                    <input name="_32bb" type="text" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"title="<bean:message key='teles.32ac.title'/>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32K:
                                                    Amount Acknowledged</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ka" type="text" class="32k1" value="<%if(map.get("_32ka") != null){out.print(map.get("_32ka"));}%>" title="<bean:message key='teles.400._32ka.title'/>">
                                                    <input name="_32kb" type="text" class="32k2" value="<%if(map.get("_32kb") != null){out.print(map.get("_32kb"));}%>" title="<bean:message key='teles.400._32kb.title'/>">
                                                    <input name="_32kc" type="text" class="32k3" value="<%if(map.get("_32kc") != null){out.print(map.get("_32kc"));}%>" title="<bean:message key='teles.400._32kc.title'/>">
                                                    <input name="_32kd" type="text" class="32k4" value="<%if(map.get("_32kd") != null){out.print(map.get("_32kd"));}%>" title="<bean:message key='teles.400._32kd.title'/>">
                                                    <input name="_32ke" type="text" class="32k5" value="<%if(map.get("_32ke") != null){out.print(map.get("_32ke"));}%>" title="<bean:message key='teles.400._32ke.title'/>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*33A:
                                                    Proceeds Remitted</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33aa"  type="text" class="32a1" value="<%if(map.get("_33aa") != null){out.print(map.get("_33aa"));}%>" title="<bean:message key='teles.400._33aa.title'/>">
                                                    <input name="_33ab"  type="text" class="32a2" value="<%if(map.get("_33ab") != null){out.print(map.get("_33ab"));}%>" title="<bean:message key='teles.400._33ab.title'/>">
                                                    <input name="_33ac"  type="text" class="32a3" value="<%if(map.get("_33ac") != null){out.print(map.get("_33ac"));}%>" title="<bean:message key='teles.400._33ac.title'/>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">52A:Ordering
                                                    Institution </td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52aa" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_52ab" title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_52ab") != null){out.print(map.get("_52ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_52ac" value="<%if(map.get("_52ac") != null){out.print(map.get("_52ac"));}%>" title="<bean:message key='teles._52ac.title'/>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">52D:Ordering
                                                    Institution </td>
                                                <td height="20" align="center" valign="middle">
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
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_52db" title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_52db") != null){out.print(map.get("_52db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_52dc" title ="<bean:message key='teles._52dc.title'/>"> <%if(map.get("_52dc") != null){out.print(map.get("_52dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">53A:Sender's Correspondent</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_53ab"  title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_53ab") != null){out.print(map.get("_53ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_53ac"  title ="<bean:message key='teles._53ac.title'/>"  value="<%if(map.get("_53ac") != null){out.print(map.get("_53ac"));}%>"></td>
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
                                                    <input type="text" name="_53db" title ="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_53db") != null){out.print(map.get("_53db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_53dc" title ="<bean:message key='teles._53dc.title'/>" > <%if(map.get("_52dc") != null){out.print(map.get("_52dc"));}%></textarea></td>
                                            </tr>
                                             <tr>
                                                <td rowspan="3" align="right" valign="top">54A:Receiver's
                                                    Correspondent</td>
                                                <td height="20" align="center" valign="middle">
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
                                                    <input type="text" name="_54ab" title ="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_54ab") != null){out.print(map.get("_54ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54ac"  title ="<bean:message key='teles._54ac.title'/>" value="<%if(map.get("_54ac") != null){out.print(map.get("_54ac"));}%>"></td>
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
                                                    <input type="text" name="_54bb" title ="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_54bb") != null){out.print(map.get("_54bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_54bc" title ="<bean:message key='teles._54bc.title'/>"  value="<%if(map.get("_54bc") != null){out.print(map.get("_54bc"));}%>"></td>
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
                                                    <input type="text" name="_54db" title ="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_54db") != null){out.print(map.get("_54db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_54dc" title ="<bean:message key='teles._54dc.title'/>" > <%if(map.get("_54dc") != null){out.print(map.get("_54dc"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellspacing="0" cellpadding="0">
                                             <tr>
                                                <td width="40%" rowspan="3" align="right" valign="top">57A:Account
                                                    With Institution</td>
                                                <td width="60%" height="20" align="center" valign="middle">
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
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57ab"  title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57ac"  title ="<bean:message key='teles._57ac.title'/>" value="<%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%>"></td>
                                            </tr>
                                             <tr>
                                                <td rowspan="3" align="right" valign="top">57B:Account
                                                    With Institution</td>
                                                <td height="20" align="center" valign="middle">
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
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57bb" title ="<bean:message key='teles._52ab.title'/>"   value="<%if(map.get("_57bb") != null){out.print(map.get("_57bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57bc" title ="<bean:message key='teles._57bc.title'/>"   value="<%if(map.get("_57bc") != null){out.print(map.get("_57bc"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">57D:Account
                                                    With Institution</td>
                                                <td height="20" align="center" valign="middle">
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
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57db"  title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_57db") != null){out.print(map.get("_57db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57dc"  title ="<bean:message key='teles._57dc.title'/>" value="<%if(map.get("_57dc") != null){out.print(map.get("_57dc"));}%>"></td>
                                            </tr>
                                             <tr>
                                                <td rowspan="3" align="right" valign="top">58A:Beneficiary
                                                    Institution</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_58ab"  title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_58ab") != null){out.print(map.get("_58ab"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_58ac" title ="<bean:message key='teles._58ac.title'/>"  value="<%if(map.get("_58ac") != null){out.print(map.get("_58ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">58B:Beneficiary
                                                    Institution</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_58ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_58bb" title ="<bean:message key='teles._52ab.title'/>"  value="<%if(map.get("_58bb") != null){out.print(map.get("_58bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_58bc"  title ="<bean:message key='teles._58bc.title'/>" > <%if(map.get("_58bc") != null){out.print(map.get("_58bc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top">58D:Beneficiary
                                                    Institution</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
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
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_58db" title ="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_58db") != null){out.print(map.get("_58db"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_58dc" title ="<bean:message key='teles._58dc.title'/>" > <%if(map.get("_58dc") != null){out.print(map.get("_58dc"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71B:
                                                    Detail of Charges (Debuctions) </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_71b"  title ="<bean:message key='teles._71b.title'/>" > <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:
                                                    Sender to Reciver Infomation </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_72" title ="<bean:message key='teles._72.title'/>" > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">73:
                                                    Detail of Amounts Added </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_73"  title ="<bean:message key='teles._73.title'/>" > <%if(map.get("_73") != null){out.print(map.get("_73"));}%></textarea>
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