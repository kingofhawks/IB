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
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td width="56%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										        title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td></tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top" class="attR">*20:Claiming Bank's Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20" title="<bean:message key='teles.742._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top" class="attR">*21:Documentary Credit Number </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" title="<bean:message key='teles._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>" title="_21"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">31C: Date of Issue </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_31c"  title="<bean:message key='teles.700._31c.title'/>" maxlength="6" value="<%if(map.get("_31c") != null){out.print(map.get("_31c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td width="18%" height="20" align="right" valign="top"><div class="sele_div1"><select name="_52a" class="select1">
                                                <%
                                                	StaticManageBean bean=new StaticManageBean();
                                                	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52a")));%> 
                                                </select></div>
                                                    </td>
                                                <td width="26%" align="right" valign="top">Issuing Bank</td>
                                                <td align="center" valign="top"><table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52b" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52b")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_52c"  title="<bean:message key='teles._52ab.title'/>" maxlength="11"  value="<%if(map.get("_52c") != null){out.print(map.get("_52c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_52d"  title="<bean:message key='teles.700._51dc.title'/>" > <%if(map.get("_52d") != null){out.print(map.get("_52d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top" class="attR">*32B:Principal Amount Claimed </td>
                                                <td valign="top">&nbsp;
                                                    <input name="_32ba"  maxlength="3" type="text" title="<bean:message key='teles.400._32kd.title'/>"  class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>" title="_32ba">
                                                    <input name="_32bb"  maxlength="15" type="text" title="<bean:message key='teles.742._32b.title'/>"  class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">33B: Additional Amount Claimed as Allowed for Excess of Principal Amount</td>
                                                <td valign="top">&nbsp;
                                                  <input name="_33ba" maxlength="3"  type="text" title="<bean:message key='teles.400._32kd.title'/>"  class="currency1" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" maxlength="15"  type="text" title="<bean:message key='teles.742._33b.title'/>"  class="amount1" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">71B:Charges</td>
                                                <td valign="middle">&nbsp;
                                                 <textarea name="_71b" title="<bean:message key='teles.700._71b.title'/>" > <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">34A:Total Amount Claimed </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_34aa" title="<bean:message key='teles.32aa.title'/>" maxlength="6" size="6" value="<%if(map.get("_34aa") != null){out.print(map.get("_34aa"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input type="text" name="_34ab" title="<bean:message key='teles.400._32kd.title'/>" maxlength="3"   size="3" value="<%if(map.get("_34ab") != null){out.print(map.get("_34ab"));}%>"><br>

                                                    &nbsp;
                                                    <input type="text" name="_34ac" title="<bean:message key='teles.742._34a.title'/>" maxlength="15"   size="15" value="<%if(map.get("_34ac") != null){out.print(map.get("_34ac"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">34B:Total Amount Claimed </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_34b" title="<bean:message key='teles.742._34a.title'/>" value="<%if(map.get("_34b") != null){out.print(map.get("_34b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" align="right" valign="top"><div class="sele_div1"><select name="_57a" class="select1">
                                                    <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57a")));%> </select></div>
                                                    </td>
                                                <td rowspan="3" align="right" valign="top">Account
                                                    with Bank</td>
                                                <td height="20" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td><div class="sele_div1">
                                                                <select name="_57b" class="select1">
                                                                    <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57b")));%>
                                                                </select></div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <input type="text" name="_57c" title="<bean:message key='teles._52ab.title'/>"  maxlength="11" value="<%if(map.get("_57c") != null){out.print(map.get("_57c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" valign="middle">&nbsp;
                                                    <textarea name="_57d" title="<bean:message key='teles.742._57a.title'/>"  > <%if(map.get("_57d") != null){out.print(map.get("_57d"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="18%" height="20" align="right" valign="top">
                                                   <div class="sele_div1"><select name="_58a" class="select1">
                                                   <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58a")));%> </select></div>
                                                    </td>
                                                <td width="27%" align="right" valign="top">Beneficiary
                                                    Bank</td>
                                                <td width="55%" align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td><div class="sele_div1">
                                                                <select class="select1" name="_58b">
                                                                    <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_58b")));%>
                                                                </select>
																</div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_58c"  title="<bean:message key='teles._52ab.title'/>" maxlength="11" value="<%if(map.get("_58c") != null){out.print(map.get("_58c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_58d"  title="<bean:message key='teles.742._58a.title'/>" > <%if(map.get("_58d") != null){out.print(map.get("_58d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" colspan="2" align="right" valign="top">72: Sender to Reciver Infomation                                                    </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_72" title="<bean:message key='teles._72.title'/>"  > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
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