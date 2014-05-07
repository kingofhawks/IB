<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>

<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>
<head>

<title>国际结算模拟系统</title>


<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
<script>
function switchdep(n)
{
	var n = parseInt(n);
	//alert(n);
	for (i=1; i<=5; i++)
	{
		for(j=1; j<=5; j++) {
		//alert("i=" + i + "\nj = " +j);
			if (i == (n+1))
			{
				eval("$('"+i+"_"+j+"').style.display='block';");
			}
			else
			{
				eval("$('"+i+"_"+j+"').style.display='none';");
			}
		}
	}
}
</script>
</head>

<body onLoad="switchdep(0)">
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
                                                <td width="40%" height="20" align="right" valign="top"class="attR">*FM: +Sender&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" title="<bean:message key='teles.fmbk.title'/>" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                     <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										title="<bean:message key='teles.tobk.title'/>" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image>
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">25:
                                                    Account Identification</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_25" title="<bean:message key='teles._52ab.title'/>" value="<%if(map.get("_25") != null){out.print(map.get("_25"));}%>" title="_25">
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52A:
                                                    Sender of the Cash Letter </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_52a" title="<bean:message key='teles.456._52a.title'/>" value="<%if(map.get("_52a") != null){out.print(map.get("_52a"));}%>">
                                                </td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:
                                                    Sender to Receiver Infomation </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_72" title="<bean:message key='teles._72.title'/>"> <%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="right">
													<fieldset style="width:90%; text-align:left;">
														<legend>Mandatory Repetitive Sequence A</legend>
														<input name="REP" type="radio" class="radion" id="REP0" onClick="switchdep(this.value)" value="0" checked value="<%if(map.get("REP") != null){out.print(map.get("REP"));}%>">
														<label for="REP0">REP 0</label>&nbsp;
														<input name="REP" class="radion"  id="REP1" type="radio" onClick="switchdep(this.value)" value="1" value="<%if(map.get("REP") != null){out.print(map.get("REP"));}%>">
														<label for="REP1">REP 1</label>&nbsp;
														<input name="REP" class="radion"  id="REP2" type="radio" onClick="switchdep(this.value)" value="2" value="<%if(map.get("REP") != null){out.print(map.get("REP"));}%>">
														<label for="REP2">REP 2</label>&nbsp;
														<input name="REP" class="radion" id="REP3" type="radio" onClick="switchdep(this.value)" value="3" value="<%if(map.get("REP") != null){out.print(map.get("REP"));}%>">
														<label for="REP3">REP 3</label>&nbsp;
														<input name="REP" class="radion"  id="REP4" type="radio" onClick="switchdep(this.value)" value="4" value="<%if(map.get("REP") != null){out.print(map.get("REP"));}%>">
														<label for="REP4">REP 4</label>
													</fieldset>
												</td>
                                                </tr>
                                            <tr id="1_1">
                                                <td height="20" align="right" valign="top"class="attR">*20:Sending
                                                    Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" title="<bean:message key='teles._20.title'/>" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="1_2">
                                                <td height="20" align="right" valign="top"class="attR">*21:
                                                    Related Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21"  title="<bean:message key='teles._21.title'/>" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr id="1_3">
                                                <td height="20" align="right" valign="top">32A:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" title="<bean:message key='teles.456._32aa.title'/>" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>" title="_32aa">
                                                    <input name="_32ab" type="text" title="<bean:message key='teles.32ab.title'/>" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" title="<bean:message key='teles.456._32ac.title'/>" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="1_4">
                                                <td height="20" align="right" valign="top">32B:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" title="<bean:message key='teles.32ab.title'/>" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" title="<bean:message key='teles.456._32ac.title'/>" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="1_5">
                                                <td height="20" align="right" valign="top"class="attR">*33D:
                                                    Total Amount Debited </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32da" type="text" title="<bean:message key='teles.456._33da.title'/>" class="32a1" value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>" title="_32da">
                                                    <input name="_32db" type="text" title="<bean:message key='teles.32ab.title'/>" class="32a2" value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
                                                    <input name="_32dc" type="text" title="<bean:message key='teles.456._33dc.title'/>" class="32a3" value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="2_1">
                                                <td height="20" align="right" valign="top">20:Sending
                                                    Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="2_2">
                                                <td height="20" align="right" valign="top">21:
                                                    Related Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr id="2_3">
                                                <td height="20" align="right" valign="top">32A:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" type="text" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="2_4">
                                                <td height="20" align="right" valign="top">32B:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="2_5">
                                                <td height="20" align="right" valign="top">33D:
                                                    Total Amount Debited </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32da" type="text" class="32a1" value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>">
                                                    <input name="_32db" type="text" class="32a2" value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
                                                    <input name="_32dc" type="text" class="32a3" value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="3_1">
                                                <td height="20" align="right" valign="top">20:Sending
                                                    Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="3_2">
                                                <td height="20" align="right" valign="top">21:
                                                    Related Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr id="3_3">
                                                <td height="20" align="right" valign="top">32A:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" type="text" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="3_4">
                                                <td height="20" align="right" valign="top">32B:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="3_5">
                                                <td height="20" align="right" valign="top">33D:
                                                    Total Amount Debited </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32da" type="text" class="32a1" value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>">
                                                    <input name="_32db" type="text" class="32a2" value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
                                                    <input name="_32dc" type="text" class="32a3" value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="4_1">
                                                <td height="20" align="right" valign="top">20:Sending
                                                    Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="4_2">
                                                <td height="20" align="right" valign="top">21:
                                                    Related Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr id="4_3">
                                                <td height="20" align="right" valign="top">32A:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" type="text" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="4_4">
                                                <td height="20" align="right" valign="top">32B:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="4_5">
                                                <td height="20" align="right" valign="top">33D:
                                                    Total Amount Debited </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32da" type="text" class="32a1" value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>">
                                                    <input name="_32db" type="text" class="32a2" value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
                                                    <input name="_32dc" type="text" class="32a3" value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="5_1">
                                                <td height="20" align="right" valign="top">20:Sending
                                                    Bank's TRN </td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_20" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="5_2">
                                                <td height="20" align="right" valign="top">21:
                                                    Related Reference</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="_21" value="<%if(map.get("_21") != null){out.print(map.get("_21"));}%>"></td>
                                            </tr>
                                            <tr id="5_3">
                                                <td height="20" align="right" valign="top">32A:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32aa" type="text" class="32a1" value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab" type="text" class="32a2" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <input name="_32ac" type="text" class="32a3" value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="5_4">
                                                <td height="20" align="right" valign="top">32B:
                                                    Date and Face Amount of Financial
                                                    Document </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32ba" type="text" class="32a2" value="<%if(map.get("_32ba") != null){out.print(map.get("_32ba"));}%>">
                                                    <input name="_32bb" type="text" class="32a3" value="<%if(map.get("_32bb") != null){out.print(map.get("_32bb"));}%>">
                                                </td>
                                            </tr>
                                            <tr id="5_5">
                                                <td height="20" align="right" valign="top">33D:
                                                    Total Amount Debited </td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_32da" type="text" class="32a1" value="<%if(map.get("_32da") != null){out.print(map.get("_32da"));}%>">
                                                    <input name="_32db" type="text" class="32a2" value="<%if(map.get("_32db") != null){out.print(map.get("_32db"));}%>">
                                                    <input name="_32dc" type="text" class="32a3" value="<%if(map.get("_32dc") != null){out.print(map.get("_32dc"));}%>">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">71B:Fee </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_71b" title="<bean:message key='teles.456._71b.title'/>"> <%if(map.get("_71b") != null){out.print(map.get("_71b"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*77A:
                                                    Reason for Dishonour</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_77a" title="<bean:message key='teles.456._77a.title'/>"> <%if(map.get("_77a") != null){out.print(map.get("_77a"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"class="attR">*77D:
                                                    Details of Dishonoured Item </td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_77d" title="<bean:message key='teles.456._77d.title'/>"> <%if(map.get("_77d") != null){out.print(map.get("_77d"));}%></textarea></td>
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