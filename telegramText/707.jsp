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
                                                <td height="20" align="right" valign="top" class="attR">*20: + Senders Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_20"   title="<bean:message key='teles.707._20.title'/>" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>" title="_20">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*21: +Recevier's Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21"  title="<bean:message key='teles.707._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>" title="_21"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">23:Issuing Bank's Reference </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text"  name="_23"   title="<bean:message key='teles.707._23.title'/>" maxlength="16" value="<%if(map.get("_23") != null){out.print(map.get("_23"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><div style="float:right; width:128px;"><div class="sele_div1" style="float:left; width:43px;">
                                                        <select name="_52a" class="select1" style="width:45px; ">
                                                            
                                                       <%	StaticManageBean bean=new StaticManageBean();
                                                       		out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52a")));%> 
                                       </select>
                                                    </div><div style="float:right; ">:Application Bank </div></div>
													</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
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
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_52c"  maxlength="11"  title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_52c") != null){out.print(map.get("_52c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td><td valign="middle">&nbsp;                                                    <textarea name="_52d"  title="<bean:message key='teles.707._52ac.title'/>"> <%if(map.get("_52d") != null){out.print(map.get("_52d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">31C: Date of Issue </td>
                                                <td valign="middle">&nbsp; <input  name="_31c"  title="<bean:message key='teles.707._31c.title'/>" maxlength="6" type="text" class="date" value="<%if(map.get("_31c") != null){out.print(map.get("_31c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">30: Date of Amendment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_30"  maxlength="6"   title="<bean:message key='teles.707._30.title'/>" type="text" class="date" value="<%if(map.get("_30") != null){out.print(map.get("_30"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">26E: Number of Amendment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_26e"  maxlength="2"  type="text" title="<bean:message key='teles.707._26e.title'/>" class="date" value="<%if(map.get("_26e") != null){out.print(map.get("_26e"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*59:+Beneficiary</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_59a"  maxlength="34" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>" title="_59a"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_59b" title="<bean:message key='teles.707._59.title'/>"> <%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">31E:New Date of Expiry</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_31e" maxlength="6"  title="<bean:message key='teles.707._31e.title'/>" type="text" class="date" value="<%if(map.get("_31e") != null){out.print(map.get("_31e"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">32B: Increase of Documentary Credit Amount</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba"  maxlength="3" type="text" title="<bean:message key='teles.400._32kd.title'/>" class="currency1" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb"  maxlength="15" type="text" title="<bean:message key='teles.707._32b.title'/>" class="amount1" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">33B: Decrase of Documentary Credit Amoun</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_33ba" maxlength="3"  title="<bean:message key='teles.400._32kd.title'/>" type="text" class="currency1" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" maxlength="15"  title="<bean:message key='teles.707._33b.title'/>" type="text" class="amount1" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">34B: New Documentary Credit Amount After Amendment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_34ba" maxlength="3"  type="text" title="<bean:message key='teles.400._32kd.title'/>" class="currency1" value="<%if(map.get("_34ba") != null){out.print(map.get("_34ba"));}%>">
                                                    <input name="_34bb" maxlength="15"  type="text" title="<bean:message key='teles.707._34b.title'/>" class="amount1" value="<%if(map.get("_34bb") != null){out.print(map.get("_34bb"));}%>"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">39A:+Percentage Credit Amount Tolerance</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_39a" type="text" title="<bean:message key='teles.700._39a.title'/>" class="2bit" maxlength="2" value="<%if(map.get("_39a") != null){out.print(map.get("_39a"));}%>"></td>
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
                                                <td width="40%" height="20" align="right" valign="top">44A:Loading on Borard/ Dispatch/Taking in Charge at/from... </td>
                                                <td valign="top">&nbsp;
                                                    <input type="text" name="_44a"  maxlength="65"  title="<bean:message key='teles.700._44a.title'/>" value="<%if(map.get("_44a") != null){out.print(map.get("_44a"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44B:For Transportation to... </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_44b"  title="<bean:message key='teles.700._44b.title'/>" maxlength="65"  value="<%if(map.get("_44b") != null){out.print(map.get("_44b"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44C:+ Last Date of Shipment</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_44c"  maxlength="6"  type="text"  title="<bean:message key='teles.700._44c.title'/>" class="date1" value="<%if(map.get("_44c") != null){out.print(map.get("_44c"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">44D:+Shipment Period</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_44d" title="<bean:message key='teles.700._44c.title'/>" > <%if(map.get("_44d") != null){out.print(map.get("_44d"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">79: Narrative</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_79" title="<bean:message key='teles.707._79.title'/>" > <%if(map.get("_79") != null){out.print(map.get("_79"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72: Sender to Receiver Information</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea  name="_72" title="<bean:message key='teles._72.title'/>" > <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea></td>
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