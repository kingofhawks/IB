<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<%--|¨¬¡ê¡è?Y¡§a?¡ì?a¡§o¡§|--%>
<html>
<head>

<title>Untitled Document</title>


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
    
            <!--?¡§2?¨¤¡§a???a¡§o?-->
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

                            <!--?¡§2¡§¡§Y?a¡§o?-->
                            <form method="post" action="AccessDocuments" onSubmit="checkForm(this)">
                            <div id="errMsgDiv"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">Today£º</td>
                                                <td valign="top">
													<input name="ARDT" type="text" class="date" value="<%if(map.get("AMTS") != null){out.print(map.get("AMTS"));}%>">
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ARDT');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">TO£º</td>
                                                <td valign="top"><textarea name="NGBKNM" ><%if(map.get("NGBKNM") != null){out.print(map.get("NGBKNM"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Our Reference NO£º</td>
                                                <td valign="top"><input type="text" name="RENO" maxlength="18" value="<%if(map.get("RENO") != null){out.print(map.get("RENO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">L/C No.£º</td>
                                                <td valign="top"><input type="text" name="LCNO" maxlength="16" value="<%if(map.get("LCNO") != null){out.print(map.get("LCNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Original Amount £º</td>
                                                <td valign="top"><input type="text" name="AMOUNT" maxlength="15" value="<%if(map.get("AMOUNT") != null){out.print(map.get("AMOUNT"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Balance£º</td>
                                                <td valign="top"><input type="text" name="Balance" maxlength="15" value="<%if(map.get("Balance") != null){out.print(map.get("Balance"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">L/C Isussing Date£º</td>
                                                <td valign="top"><input type="text" name="LCDATE" maxlength="8" class="date" value="<%if(map.get("LCDATE") != null){out.print(map.get("LCDATE"));}%>">
												<input name="more_btn" type="image" tabindex="1" onClick="openWin('date','LCDATE');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Beneficiary£º</td>
                                                <td valign="top"><textarea name="BENE"></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Tenor Days £º</td>
                                                <td valign="top"><input type="text" name="TENOR" maxlength="35" value="<%if(map.get("TENOR") != null){out.print(map.get("TENOR"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Maturity Date£º</td>
                                                <td valign="top">
													<input name="MATUDATE" type="text" class="date" value="<%if(map.get("MATUDATE") != null){out.print(map.get("MATUDATE"));}%>">
                                                    <input name="more_btn" type="image" tabindex="1" 
													onClick="openWin('date','MATUDATE');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Currency£º</td>
                                                <td valign="top"><div class="sele_div">
                                                <select styleClass="coin" name="CURR">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("CURR")));%>
                                                </select>
                                                </div>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Draft Amt £º</td>
													<td valign="top"><input type="text" name="DRAFTAM" maxlength="15" value="<%if(map.get("DRAFTAM") != null){out.print(map.get("DRAFTAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Banking Charge £º</td>
                                                <td valign="top"><input type="text" name="BANKCHARGE" maxlength="15" value="<%if(map.get("BANKCHARGE") != null){out.print(map.get("BANKCHARGE"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Claim Amount £º</td>
                                                <td valign="top"><input type="text" name="CLAIMAM" maxlength="15" value="<%if(map.get("CLAIMAM") != null){out.print(map.get("CLAIMAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Presenting Bank £º</td>
                                                <td valign="top"><textarea name="PRESBANK" ><%if(map.get("PRESBANK") != null){out.print(map.get("PRESBANK"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">RF NO.£º</td>
                                                <td valign="top"><input type="text" name="RFNO" maxlength="16"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Dated£º</td>
                                                <td valign="top"><input type="text" name="DATED" value="<%if(map.get("DATED") != null){out.print(map.get("DATED"));}%>">
												<input name="more_btn" type="image" tabindex="1" onClick="openWin('date','DATED');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Draft(s)£º</td>
                                                <td valign="top"><input type="text" name="TEXT01" maxlength="6" value="<%if(map.get("TEXT01") != null){out.print(map.get("TEXT01"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Quality Cert. £º</td>
                                                <td valign="top"><input type="text" name="TEXT02" maxlength="6" value="<%if(map.get("TEXT02") != null){out.print(map.get("TEXT02"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Invoices£º</td>
                                                <td valign="top"><input type="text" name="TEXT03" maxlength="6" value="<%if(map.get("TEXT03") != null){out.print(map.get("TEXT03"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">Cert. of Origin£º</td>
                                                <td valign="top"><input type="text" name="TEXT04" maxlength="6" value="<%if(map.get("TEXT04") != null){out.print(map.get("TEXT04"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Bill of Lading£º</td>
                                                <td valign="top"><input type="text" name="TEXT05" maxlength="6" value="<%if(map.get("TEXT05") != null){out.print(map.get("TEXT05"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Bene's Cert.£º</td>
                                                <td valign="top"><input type="text" name="TEXT06" maxlength="6" value="<%if(map.get("TEXT06") != null){out.print(map.get("TEXT06"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Insurance Policy£º</td>
                                                <td valign="top"><input type="text" name="TEXT07" maxlength="6" value="<%if(map.get("TEXT07") != null){out.print(map.get("TEXT07"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Cable Copy£º</td>
                                                <td valign="top"><input type="text" name="TEXT08" maxlength="6" value="<%if(map.get("TEXT08") != null){out.print(map.get("TEXT08"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">P/W List£º</td>
                                                <td valign="top"><input type="text" name="TEXT09" maxlength="6" value="<%if(map.get("TEXT09") != null){out.print(map.get("TEXT09"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Others£º</td>
                                                <td valign="top"><input type="text" name="TEXT10" maxlength="6" value="<%if(map.get("TEXT10") != null){out.print(map.get("TEXT10"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Inspection Cert. £º</td>
                                                <td valign="top"><input type="text" name="TEXT11" maxlength="6" value="<%if(map.get("TEXT11") != null){out.print(map.get("TEXT11"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">DISCREPANCY(IES)£º</td>
                                                <td valign="top"><textarea name="TEXT12" ><%if(map.get("TEXT12") != null){out.print(map.get("TEXT12"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            
                            
                            
                            
                            <!--?¡§2¡§¡§Y?¡§¡é¡§o?-->
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
            <!--?¡§2?¨¤¡§a?¡§¡é¡§o?-->
    
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