<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--邮划委托书--%>
<html>
<head>
<title>国际结算模拟系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

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
    
            <!--内表格开始-->
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

                            <!--内容开始-->
                            <form method="post" action="AccessDocuments" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">Issuing
                                                    Bank：</td>
                                                <td valign="top">
                                                    <input name="IRBKNM" type="text" maxlength="35" readonly="readonly" class="name_width" value="<%if(map.get("IRBKNM") != null){out.print(map.get("IRBKNM"));}%>">
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Date：</td>
                                                <td valign="top"><input name="APDT" type="text" size="8" maxlength="8" readonly="readonly" value="<%if(map.get("APDT") != null){out.print(map.get("APDT"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">OR
                                                    NO：</td>
                                                <td valign="top">
                                                    <input name="ORNO" type="text" size="16" maxlength="16" readonly="readonly" value="<%if(map.get("ORNO") != null){out.print(map.get("ORNO"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Remittance
                                                    Type： </td>
                                                <td valign="top">
                                                    <div class="sele_div_122">
                                                        <select name="ORTP" disabled="disabled" class="select_122" value="<%if(map.get("ORTP") != null){out.print(map.get("ORTP"));}%>">
                                                            <option></option>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Account：</td>
                                                <td valign="top">
                                                    <div class="sele_div_198">
                                                        <select class="select_198" name="ACNO" disabled="disabled" value="<%if(map.get("ACNO") != null){out.print(map.get("ACNO"));}%>">
                                                            <option></option>
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Beneficiary：</td>
                                                <td valign="top">
                                                    <textarea name="RVE" rows="4" readonly="readonly" ><%if(map.get("RVE") != null){out.print(map.get("RVE"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Currency：</td>
                                                <td valign="top">
                                                    <input name="CYNO" type="text" size="3" maxlength="3" value="" readonly="readonly" value="<%if(map.get("CYNO") != null){out.print(map.get("CYNO"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Amount：</td>
                                                <td valign="top">
                                                    <input name="AMTS" type="text" size="15" maxlength="15" readonly="readonly" value="<%if(map.get("AMTS") != null){out.print(map.get("AMTS"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Value
                                                    Date：</td>
                                                <td valign="top">
                                                    <input name="VLDT" type="text" size="8" maxlength="8" readonly="readonly" value="<%if(map.get("VLDT") != null){out.print(map.get("VLDT"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Client
                                                    Name：</td>
                                                <td valign="top">
                                                    <input name="CLNM" type="text"  maxlength="60" readonly="readonly" class="name_width">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Memo：</td>
                                                <td valign="top">
                                                    <textarea name="MEMO" rows="4" ><%if(map.get("MEMO") != null){out.print(map.get("MEMO"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
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
</body> </form>
</html>