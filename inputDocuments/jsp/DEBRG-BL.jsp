%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<%--????--%>
<html>
<head>
<title>??????????</title>
</head>
<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--?????-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div">

                            <!--????-->
                            <form method="post" action="AccessDocuments" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="163" height="21" align="right" valign="top">B/P
                                                    NP?</td>
                                                <td width="212" align="left" valign="middle">
                                                    <input name="" type="text" size="16" maxlength="16"  readonly="readonly" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">L/C
                                                    Date?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" size="8" maxlength="8" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">????</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" size="16" maxlength="16" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">B/P
                                                    Curency?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" size="3" maxlength="3" readonly="readonly"  value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">B/P
                                                    Amount?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" class="name_width"  value="" size="15" maxlength="15" readonly="readonly">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">Tenor
                                                    days?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="35" class="name_width" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">Sum?</td>
                                                <td align="left" valign="middle">
                                                    <textarea name="" rows="4"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">L/C
                                                    NO?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="16" readonly="readonly"  value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">L/C
                                                    Currency?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" size="3" maxlength="3" readonly="readonly"  value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">L/C
                                                    Amount?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="15" readonly="readonly"  value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">Drawee
                                                    Bank?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="35" class="name_width" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">Issuing
                                                    Bank Name?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="35" readonly="readonly" class="name_width" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">Client
                                                    Name?</td>
                                                <td align="left" valign="middle">
                                                    <input name="" type="text" maxlength="60" readonly="readonly" class="name_width" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="top">???????</td>
                                                <td align="left" valign="middle">
                                                    <textarea  name="" rows="4"></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            
                            
                           
                            
                            <!--????-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"> <div class="footer">
                               <input name="errCode" type="hidden">
                                <input name="id" type="hidden" value="<%=request.getAttribute("id")%>">
                                <input name="swno" type="hidden" value="<%if(request.getAttribute("swno") != null){out.print(request.getAttribute("swno"));}%>">
                                <input name="tmid" type="hidden" value="<%=request.getAttribute("tmid")%>">
								<input name="prid" type="hidden" value="<%=request.getAttribute("tstp")%>">
								<input name="tstp" type="hidden" value="<%=request.getAttribute("tstp")%>">
								<input name="brno" type="hidden" value="<%=request.getAttribute("brno")%>">
								<input name="rfno" type="hidden" value="<%=request.getAttribute("rfno")%>">
								<input type="image" name="save" src='<bean:message key="common.save" />' onClick="submitKind(0,'save');return false">
                                <input type="image" src="<bean:message key="common.returnLetter"/>"
                                onClick="openReplace('letterManageAction.do?rfno=<%=(String)request.getAttribute("rfno")%>&prid=<%=(String)request.getAttribute("tstp")%>&swno=<%=(String)request.getAttribute("swno")%>');return false">
                                
                            </div></td>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
            <!--????-->
    
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</body></form>
</html>