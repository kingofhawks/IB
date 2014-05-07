<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<%--信用证修改通知书--%>
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
                    <td class="innerTable_main">
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
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','TODAY');return false" src="/IB/images/date.gif"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Date：</td>
                                                <td valign="top"><input type="text" name="ISDT" value="<%if(map.get("ISDT") != null){out.print(map.get("ISDT"));}%>"> 
                                               <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ISDT');return false" src="/IB/images/date.gif"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">To.：</td>
                                                <td valign="top"><textarea name="CLNM" ><%if(map.get("CLNM") != null){out.print(map.get("CLNM"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Our Ref. No.：</td>
                                                <td valign="top"><input type="text" name="ADNO" maxlength="16" value="<%if(map.get("ADNO") != null){out.print(map.get("ADNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Issueing Bank：</td>
                                                <td valign="top"><input type="text" name="ISBKNM" maxlength="35" value="<%if(map.get("ISBKNM") != null){out.print(map.get("ISBKNM"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Transmitted To US Through：</td>
                                                <td valign="top"><input type="text" name="TFBKNM" maxlength="35" value="<%if(map.get("TFBKNM") != null){out.print(map.get("TFBKNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">L/C No.：</td>
                                                <td valign="top"><input type="text" name="LGNO" maxlength="16" value="<%if(map.get("LGNO") != null){out.print(map.get("LGNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">L/C Amount After Amendent：</td>
                                                <td valign="top"><input type="text" name="AAAM" maxlength="15" value="<%if(map.get("AAAM") != null){out.print(map.get("AAAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Amendment No.：</td>
                                                <td valign="top"><input type="text" name="AENO" maxlength="2" value="<%if(map.get("AENO") != null){out.print(map.get("AENO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">New Date of Expiry：</td>
                                                <td valign="top"><input type="text" name="EPDT" value="<%if(map.get("EPDT") != null){out.print(map.get("EPDT"));}%>">
                                                <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','EPDT');return false" src="/IB/images/date.gif">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Lastest Shipment Date：</td>
                                                <td valign="top">
                                                    <input name="SHDT" type="text" class="date" value="<%if(map.get("SHDT") != null){out.print(map.get("SHDT"));}%>">
                                                    <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','SHDT');return false" src="/IB/images/date.gif">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Amendment Date：</td>
                                                <td valign="top"><input type="text" name="AEDT" value="<%if(map.get("AEDT") != null){out.print(map.get("AEDT"));}%>">
                                                <input type="image" name="more_btn" src="/IB/images/date.gif" tabindex="1" onClick="openWin('date','AEDT');return false">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Remarks：</td>
                                                <td valign="top"><textarea name="REMK" ><%if(map.get("REMK") != null){out.print(map.get("REMK"));}%></textarea></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">Page Count：</td>
                                                <td valign="top"><input type="text" name="PGCN" maxlength="3" value="<%if(map.get("PGCN") != null){out.print(map.get("PGCN"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Telex/Swift Issuing：</td>
                                                <td valign="top"><input type="text" name="CK1" maxlength="1" value="<%if(map.get("CK1") != null){out.print(map.get("CK1"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Uneffective：</td>
                                                <td valign="top"><input type="text" name="CK2" maxlength="1" value="<%if(map.get("CK2") != null){out.print(map.get("CK2"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Original：</td>
                                                <td valign="top"><input type="text" name="CK3" maxlength="1" value="<%if(map.get("CK3") != null){out.print(map.get("CK3"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Duplicate：</td>
                                                <td valign="top"><input type="text" name="CK4" maxlength="1" value="<%if(map.get("CK4") != null){out.print(map.get("CK4"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Plus mark：</td>
                                                <td valign="top">
                                                    <div class="sele_div">
                                                        <select name="ADSN" value="<%if(map.get("ADSN") != null){out.print(map.get("ADSN"));}%>">
<%--                                                        <%--%>
<%--										String adsn[][]=(String [][])request.getAttribute("OPTION_ADSN");--%>
<%--										String adsn_temp[]=null;--%>
<%--										for(int i=0;i<adsn.length;i++){--%>
<%--										 adsn_temp=adsn[i];--%>
<%--                                        %>--%>
<%--                                        <option value="<%=adsn_temp[2]%>"><%=adsn_temp[1]%></option>--%>
<%--                                       <%}%>--%>
                                                         <option></option>
                                                         <option value="+">+</option>
                                                         <option value="-">-</option>
                                                           
                                                        </select>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">L/C Currency：</td>
                                                <td valign="top">
                                                <div class="sele_div">
                                                <select styleClass="coin" name="LCCY">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("LCCY")));%>
                                                </select>
                                                </div>
                                         </td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">plus amount：</td>
                                                <td valign="top"><input type="text" name="PLNT" maxlength="15" value="<%if(map.get("PLNT") != null){out.print(map.get("PLNT"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">amount after plus：</td>
                                                <td valign="top"><input type="text" name="ATPS" maxlength="15"value="<%if(map.get("ATPS") != null){out.print(map.get("ATPS"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">Issuing date ：</td>
                                                <td valign="top"><input type="text" name="ISDT" value="<%if(map.get("ISDT") != null){out.print(map.get("ISDT"));}%>">
                                               <input name="more_btn" type="image" tabindex="1" onClick="openWin('date','ISDT');return false" src="/IB/images/date.gif"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <hr size="1" noshade="noshade">
                            
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
                                
                            </div>
                            </form>
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"></td>
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
</body>
</html>