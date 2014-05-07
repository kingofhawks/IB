<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<%--承兑付汇情况表--%>
<html>
<head>

<title>国际结算模拟系统</title>


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
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*编号：</td>
                                                <td valign="top"><input name="DOCS1" type="text" title="DOCS1" size="10" maxlength="10" value="<%if(map.get("DOCS1") != null){out.print(map.get("DOCS1"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付汇币种：</td>
                                                <td valign="top">
												 <div class="sele_div">
												 <select styleClass="coin" name="IBCY">
                                                <%out.println(ConvertOptions.ConvertCurrencyArrayToString((String [][])request.getAttribute("OPTION_CYNO"), (String)map.get("IBCY")));%>
                                                </select>
												</div>
									</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付汇行名称：</td>
                                                <td valign="top"><textarea name="BRNO" ><%if(map.get("BRNO") != null){out.print(map.get("BRNO"));}%></textarea></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">收汇行名称：</td>
                                                <td valign="top"><input type="text" name="NGBKNM" maxlength="18" value="<%if(map.get("NGBKNM") != null){out.print(map.get("NGBKNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付汇人名称：</td>
                                                <td valign="top"><input type="text" name="CLNM" maxlength="60" value="<%if(map.get("CLNM") != null){out.print(map.get("CLNM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">付汇人帐号：</td>
                                                <td valign="top"><input type="text" name="PYAC" maxlength="36" value="<%if(map.get("PYAC") != null){out.print(map.get("PYAC"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*结算方式：</td>
                                                <td valign="top"><input type="text" name="SUTP" title="SUTP" maxlength="15" value="<%if(map.get("SUTP") != null){out.print(map.get("SUTP"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*业务编号：</td>
                                                <td valign="top"><input type="text" name="LCNO" title="LCNO" maxlength="16" value="<%if(map.get("LCNO") != null){out.print(map.get("LCNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">合同号：</td>
                                                <td valign="top"><input type="text" name="DOCS3" maxlength="16" value="<%if(map.get("DOCS3") != null){out.print(map.get("DOCS3"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">合同总金额：</td>
                                                <td valign="top"><input type="text" name="DOCS4" maxlength="15" value="<%if(map.get("DOCS4") != null){out.print(map.get("DOCS4"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">单据总金额：</td>
                                                <td valign="top"><input type="text" name="DOCS5" maxlength="15" value="<%if(map.get("DOCS5") != null){out.print(map.get("DOCS5"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">本次付汇金额：</td>
                                                <td valign="top"><input type="text" name="IBAM" maxlength="15" value="<%if(map.get("IBAM") != null){out.print(map.get("IBAM"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">提(运)单号：</td>
                                                <td valign="top"><input type="text" name="BLNO" maxlength="16" value="<%if(map.get("BLNO") != null){out.print(map.get("BLNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">份数：</td>
                                                <td valign="top"><input type="text" name="DOCS6" maxlength="6" value="<%if(map.get("BLNO") != null){out.print(map.get("BLNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">发票号：</td>
                                                <td valign="top"><input type="text" name="IVNO" maxlength="15" value="<%if(map.get("IVNO") != null){out.print(map.get("IVNO"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">份数：</td>
                                                <td valign="top"><input type="text" name="DOCS7" maxlength="6" value="<%if(map.get("DOCS7") != null){out.print(map.get("DOCS7"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">装箱单号：</td>
                                                <td valign="top"><input type="text" name="DOCS8" maxlength="6" value="<%if(map.get("DOCS8") != null){out.print(map.get("DOCS8"));}%>"></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">份数：</td>
                                                <td valign="top"><input type="text" name="DOCS9" maxlength="6" value="<%if(map.get("DOCS9") != null){out.print(map.get("DOCS9"));}%>"></td>
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
</body> </form>
</html>