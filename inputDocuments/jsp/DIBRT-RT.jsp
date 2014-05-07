<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<%--退回单据面函--%>
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
                                                <td height="20" align="right" valign="top">Our Reference To： </td>
                                                <td valign="top"><input type="text" name="IBNO" maxlength="18" value="<%if(map.get("IBNO") != null){out.print(map.get("IBNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*Beneficiary：</td>
                                                <td valign="top"><input type="text" name="DRNM" title="DRNM" value="<%if(map.get("DRNM") != null){out.print(map.get("DRNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Tenor Days ：</td>
                                                <td valign="top"><input type="text" name="TENOR" title="TENOR" maxlength="35" value="<%if(map.get("TENOR") != null){out.print(map.get("TENOR"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Currency：</td>
                                                <td valign="top">
                                                <div class="sele_div">
                                                <select styleClass="coin" name="DLCY">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("DLCY")));%>
                                                </select>
                                               </div>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Amount：</td>
                                                <td valign="top"><input type="text" name="DLAM" maxlength="15" value="<%if(map.get("DLAM") != null){out.print(map.get("DLAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Bank：</td>
                                                <td valign="top"><textarea name="BANK" ><%if(map.get("BANK") != null){out.print(map.get("BANK"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">NG Bank Ref NO.：</td>
                                                <td valign="top"><input type="text" name="NBRN" maxlength="16" value="<%if(map.get("NBRN") != null){out.print(map.get("NBRN"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Nego. Date ：</td>
                                                <td valign="top"><input type="text" name="NODT" maxlength="8" value="<%if(map.get("NODT") != null){out.print(map.get("NODT"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">DRAFT：</td>
                                                <td valign="top"><input type="text" name="DOCS1" maxlength="6" value="<%if(map.get("DOCS1") != null){out.print(map.get("DOCS1"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">COMM INV：</td>
                                                <td valign="top"><input type="text" name="DOCS2" maxlength="6" value="<%if(map.get("DOCS2") != null){out.print(map.get("DOCS2"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">CUST/SONSUL INV：</td>
                                                <td valign="top"><input type="text" name="DOCS3" maxlength="6" value="<%if(map.get("DOCS3") != null){out.print(map.get("DOCS3"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">PACK/WT LIST：</td>
                                                <td valign="top"><input type="text" name="DOCS4" maxlength="6" value="<%if(map.get("DOCS4") != null){out.print(map.get("DOCS4"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">ORIGIN CERT ：</td>
                                                <td valign="top"><input type="text" name="DOCS5" maxlength="6" value="<%if(map.get("DOCS5") != null){out.print(map.get("DOCS5"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">GSP FROM A：</td>
                                                <td valign="top"><input type="text" name="DOCS6" maxlength="6" value="<%if(map.get("DOCS6") != null){out.print(map.get("DOCS6"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">QUAL/QUAN/WT CERT：</td>
                                                <td valign="top"><input type="text" name="DOCS7" maxlength="6" value="<%if(map.get("DOCS7") != null){out.print(map.get("DOCS7"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">INSP/ANALY CERT：</td>
                                                <td valign="top"><input type="text" name="DOCS8" maxlength="6" value="<%if(map.get("DOCS8") != null){out.print(map.get("DOCS8"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">E/L SHIP CERT VISA INV：</td>
                                                <td valign="top"><input type="text" name="DOCS9" maxlength="6" value="<%if(map.get("DOCS9") != null){out.print(map.get("DOCS9"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">INS FOLICY/DECLARE：</td>
                                                <td valign="top"><input type="text" name="DOCS10" maxlength="6" value="<%if(map.get("DOCS10") != null){out.print(map.get("DOCS10"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">B/L PP .R A W.B/C.R：</td>
                                                <td valign="top"><input type="text" name="DOCS11" maxlength="6" value="<%if(map.get("DOCS11") != null){out.print(map.get("DOCS11"));}%>"></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">M/N B/L C/R：</td>
                                                <td valign="top"><input type="text" name="DOCS12" maxlength="6" value="<%if(map.get("DOCS12") != null){out.print(map.get("DOCS12"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">TLX/CABLE/FAX COPY： </td>
                                                <td valign="top"><input type="text" name="DOCS13" maxlength="6" value="<%if(map.get("DOCS13") != null){out.print(map.get("DOCS13"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">BENE/LETTER/CERT：</td>
                                                <td valign="top"><input type="text" name="DOCS14" maxlength="6" value="<%if(map.get("DOCS14") != null){out.print(map.get("DOCS14"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">SSCO CERT： </td>
                                                <td valign="top"><input type="text" name="DOCS15" maxlength="6" value="<%if(map.get("DOCS15") != null){out.print(map.get("DOCS15"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Other Documents(A)： </td>
                                                <td valign="top"><input type="text" name="DOCS16" maxlength="35" value="<%if(map.get("DOCS16") != null){out.print(map.get("DOCS16"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Other Documents Count(A)： </td>
                                                <td valign="top"><input type="text" name="DOCSB" maxlength="6" value="<%if(map.get("DOCSB") != null){out.print(map.get("DOCSB"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Other Documents(B)： </td>
                                                <td valign="top"><input type="text" name="DOCS17" maxlength="35" value="<%if(map.get("DOCS17") != null){out.print(map.get("DOCS17"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Other Documents Count(B)： </td>
                                                <td valign="top"><input type="text" name="DOCSB" maxlength="6" value="<%if(map.get("DOCSB") != null){out.print(map.get("DOCSB"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Remarks：</td>
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
                                
                            </div>
                            </td>
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
</body></form>
</html>