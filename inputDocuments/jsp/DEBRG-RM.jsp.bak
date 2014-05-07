<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--索汇通知书--%>
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
                                                <td width="40%" height="20" align="right" valign="top">Today：</td>
                                                <td valign="top">
													<input name="TODAY" type="text" class="date" value="<%if(map.get("TODAY") != null){out.print(map.get("TODAY"));}%>">
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','TODAY');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Reference NO： </td>
                                                <td valign="top"><input type="text" name="BPNO" maxlength="16" value="<%if(map.get("BPNO") != null){out.print(map.get("BPNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Drawee Bank：</td>
                                                <td valign="top"><textarea name="DWBKNM" ><%if(map.get("DWBKNM") != null){out.print(map.get("DWBKNM"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Issuing Date：</td>
                                                <td valign="top"><input type="text" name="ISDATE" value="<%if(map.get("text") != null){out.print(map.get("text"));}%>">
                                                <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ISDATE');return false" src="/IB/images/date.gif">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Applicant：</td>
                                                <td valign="top"><textarea name="APNT" ><%if(map.get("APNT") != null){out.print(map.get("APNT"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Beneficiary：</td>
                                                <td valign="top"><textarea name="CLNM" ><%if(map.get("CLNM") != null){out.print(map.get("CLNM"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Due Date： </td>
                                                <td valign="top">
													<input name="ISDT" type="text" class="date" value="<%if(map.get("ISDT") != null){out.print(map.get("ISDT"));}%>">
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ISDT');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Value Date： </td>
                                                <td valign="top">
													<input name="VLDT" type="text" class="date">
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','VLDT');return false" src="/IB/images/date.gif">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Currency：</td>
                                                <td valign="top"><div class="sele_div">
                                                <select styleClass="coin" name="CYNO">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("CYNO")));%>
                                                </select>
                                                </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*BP Amount： </td>
                                                <td valign="top"><input type="text" name="BPAT" title="textfield" maxlength="15" value="<%if(map.get("BPAT") != null){out.print(map.get("BPAT"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Enclose：</td>
                                                <td valign="top"><input type="text" name="ENLE" title="ENLE" maxlength="1" value="<%if(map.get("ENLE") != null){out.print(map.get("ENLE"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">DRAFT：</td>
                                                <td valign="top"><input type="text" name="DOCS1" maxlength="6" value="<%if(map.get("DOCS1") != null){out.print(map.get("DOCS1"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">QUALITY CERT： </td>
                                                <td valign="top"><input type="text" name="DOCS2" maxlength="6" value="<%if(map.get("DOCS2") != null){out.print(map.get("DOCS2"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">INVOICE：</td>
                                                <td valign="top"><input type="text" name="DOCS3" maxlength="6" value="<%if(map.get("DOCS3") != null){out.print(map.get("DOCS3"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">CERT OR ORIGIN： </td>
                                                <td valign="top"><input type="text" name="DOCS4" maxlength="6" value="<%if(map.get("DOCS4") != null){out.print(map.get("DOCS4"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">B/L：</td>
                                                <td valign="top"><input type="text" name="DOCS5" maxlength="6" value="<%if(map.get("DOCS5") != null){out.print(map.get("DOCS5"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">G.S.P.FROM A： </td>
                                                <td valign="top"><input type="text" name="DOCS6" maxlength="6" value="<%if(map.get("DOCS6") != null){out.print(map.get("DOCS6"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">N/N B/L： </td>
                                                <td valign="top"><input type="text" name="DOCS7" maxlength="6" value="<%if(map.get("DOCS7") != null){out.print(map.get("DOCS7"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">BENE'S CERT： </td>
                                                <td valign="top"><input type="text" name="DOCS8" maxlength="6" value="<%if(map.get("DOCS8") != null){out.print(map.get("DOCS8"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">AWB OR C/R： </td>
                                                <td valign="top"><input type="text" name="DOCS9" maxlength="6" value="<%if(map.get("DOCS9") != null){out.print(map.get("DOCS9"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">CABLE COPY：</td>
                                                <td valign="top"><input type="text" name="DOCS10" maxlength="6" value="<%if(map.get("DOCS10") != null){out.print(map.get("DOCS10"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">INSU POLICY： </td>
                                                <td valign="top"><input type="text" name="DOCS11" maxlength="6" value="<%if(map.get("DOCS11") != null){out.print(map.get("DOCS11"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">INSPECT CERT： </td>
                                                <td valign="top"><input type="text" name="DOCS12" maxlength="6" value="<%if(map.get("DOCS12") != null){out.print(map.get("DOCS12"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">P/W LIST：</td>
                                                <td valign="top"><input type="text" name="DOCS13" maxlength="6" value="<%if(map.get("DOCS13") != null){out.print(map.get("DOCS13"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">OTHERS：</td>
                                                <td valign="top"><input type="text" name="DOCS14" maxlength="6" value="<%if(map.get("DOCS14") != null){out.print(map.get("DOCS14"));}%>"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*Claim By： </td>
                                                <td valign="top">
                                                    <div class="sele_div">
                                                        <select name="select">
                                                            <option></option>
                                                        </select>
                                                    </div>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*Account Bank： </td>
                                                <td valign="top">
													<input name="ATBK" type="text" class="bank" title="ATBK">
                                                    <input name="more_btn" type="image" tabindex="1" 
													onClick="openWin('bank','ATBK');return false" src="/IB/images/date.gif" 
													 title="more_btn">
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Account Bank Name： </td>
                                                <td valign="top"><textarea name="ABNM" ><%if(map.get("ABNM") != null){out.print(map.get("ABNM"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Account：</td>
                                                <td valign="top"><input type="text" name="ACTS" maxlength="35" value="<%if(map.get("ACTS") != null){out.print(map.get("ACTS"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Intra Account： </td>
                                                <td valign="top"><input type="text" name="IANT" maxlength="36" value="<%if(map.get("IANT") != null){out.print(map.get("IANT"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Swift No.： </td>
                                                <td valign="top"><input type="text" name="STNO" maxlength="11" value="<%if(map.get("STNO") != null){out.print(map.get("STNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">DISCREPANCY(IES)：</td>
                                                <td valign="top"><textarea name="DISC" ><%if(map.get("DISC") != null){out.print(map.get("DISC"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">IN REIMEURSEMENT：</td>
                                                <td valign="top"><textarea name="INDE" ><%if(map.get("INDE") != null){out.print(map.get("INDE"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*Plus：</td>
                                                <td valign="top"><input type="text" name="PLUS" title="PLUS" maxlength="15" value="<%if(map.get("PLUS") != null){out.print(map.get("PLUS"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Less Commission：</td>
                                                <td valign="top"><input type="text" name="AAA1" title="AAA1" maxlength="15" value="<%if(map.get("AAA1") != null){out.print(map.get("AAA1"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Less Commission Text：</td>
                                                <td valign="top"><textarea name="AAA2" ><%if(map.get("AAA2") != null){out.print(map.get("AAA2"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Less Commission：</td>
                                                <td valign="top"><input type="text" name="AAA3" maxlength="15" value="<%if(map.get("AAA3") != null){out.print(map.get("AAA3"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Less Commission Text：</td>
                                                <td valign="top"><textarea name="AAA4" ><%if(map.get("AAA4") != null){out.print(map.get("AAA4"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Other Commissions：</td>
                                                <td valign="top"><input type="text" name="AAA5" maxlength="15" value="<%if(map.get("AAA5") != null){out.print(map.get("AAA5"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Our Charges：</td>
                                                <td valign="top"><input type="text" name="OUCG" maxlength="15" value="<%if(map.get("OUCG") != null){out.print(map.get("OUCG"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Total Amount： </td>
                                                <td valign="top"><input type="text" name="TOAT" maxlength="15" value="<%if(map.get("TOAT") != null){out.print(map.get("TOAT"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">REMARKS：</td>
                                                <td valign="top"><textarea name="REMK" ><%if(map.get("REMK") != null){out.print(map.get("REMK"));}%></textarea></td>
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
                    <td class="innerTable_bottom_x">  
                            <div class="footer">
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