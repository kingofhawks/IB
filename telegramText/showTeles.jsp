<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.*"%>

<html>
<head>
<title></title>
<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
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
    
            <!--??±í??????-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" valign="middle" class="innerTable_main">
						<div id="innerTable_div" class="kuangScroll">
						    <%
     //提交时显示
        String mgtp = request.getParameter("mgtp");
        if (mgtp != null && !mgtp.equals("")) {
            String[][] teles = new com.witsoft.common.Teles()
                    .getTeleByMgtp(java.lang.Integer.parseInt(mgtp.trim()));
            for (int i = 0; i < teles.length; i++) {
                if (request.getParameter(teles[i][1]) != null&&!request.getParameter(teles[i][1]).equals("")) {
                    out.println(teles[i][0]);
                    out.println(request.getParameter(teles[i][1]) + "<br>");
                }
            }
        }
        //查看电文信息
        Map map = (HashMap) request.getAttribute("map");
        if (map!= null && map.get("mgtp")!=null) {
            %>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="title12">
                                <tr>
                                    <td height="30" colspan="5" align="left" valign="middle">打印时间:<%=map.get("time")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;操作员: <%=map.get("usid")%> </td>
                                </tr>
                                <tr>
                                    <td height="30" colspan="5" valign="middle" class="dash12">－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－</td>
                                </tr>
                                <tr>
                                    <td align="left">* </td>
                                    <td align="left">Own Address</td>
                                    <td align="left">:</td>
                                    <td align="left"><%=map.get("fmbk")%></td>
                                    <td align="left"><%=map.get("fmbknm")%></td>
                                </tr>
                                <tr>
                                    <td align="left">*</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left"><%=map.get("fmbkad")%></td>
                                </tr>
                                <tr>
                                    <td align="left">*</td>
                                    <td align="left">Input Message Type </td>
                                    <td align="left">:</td>
                                    <td align="left"><%=map.get("mgtp")%> </td>
                                    <td align="left"><%=map.get("mgtpennm")%></td>
                                </tr>
                                <tr>
                                    <td align="left">*</td>
                                    <td align="left">Sent to</td>
                                    <td align="left">:</td>
                                    <td align="left"><%=map.get("tobk")%></td>
                                    <td align="left"><%=map.get("tobknm")%></td>
                                </tr>
                                <tr>
                                    <td align="left">*</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                    <td align="left"><%=map.get("tobkad")%></td>
                                </tr>
                                <tr>
                                    <td height="30" colspan="5" align="left" valign="middle" class="dash12">－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－</td>
                                </tr>
                                <%   
     String[][] teles = new com.witsoft.common.Teles()
                    .getTeleByMgtp(java.lang.Integer.parseInt(((String)map.get("mgtp")).trim()));
              for (int i = 2; i < teles.length; i++) {
              //for (int i = 0; i < teles.length; i++) {
                if (map.get(teles[i][1]) != null&&!map.get(teles[i][1]).equals("")) {
                %>
                                <tr>
                                    <td height="30" colspan="5" align="left" valign="middle" class="title12">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td colspan="2"><%=teles[i][0]%></td>
                                            </tr>
                                            <tr>
                                                <td width="7%">&nbsp;</td>
                                                <td width="93%"><%=map.get(teles[i][1])%></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <%
                }
            }
    }
    %>
                            </table>
                            
					</td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                       <td align="center" class="innerTable_bottom_x"> 
                         <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="Scrollbg">
                  <tr>
                    <td height="15" class="space"></td>
                  </tr>
                  <tr>
                   <td width="100%" height="30" align="center" valign="middle"> <%=(String)request.getAttribute("button")%>
<%--						  <input type="image"  src="/IB/images/yewuluru.gif" >&nbsp;&nbsp;--%>
<%--						  <input type="image"  src="/IB/images/returnLisOpr.gif" >&nbsp;&nbsp;--%>
                                    <input type="image" name="publish" src="/IB/images/print.gif"  onclick="JavaScript:window.print();return false">
                           </td>
                  </tr>
                  </table>
				  </td></form>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
    
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</table>
</body>
</html>