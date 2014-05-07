<%@ page contentType="text/html; charset=GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>商业银行综合业务模拟系统</title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
</head>

<body>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--内表格开始-->
		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_div"><!--内容开始--><%
        String brno = request.getParameter("brno");
        java.util.Map list2 = new com.witsoft.bean.systemManage.systemTableManage.TableManageBean()
                .getBankPrid();

        %>
				<form method="post" action="insertBankPrids.jsp">
                银行编号：<input
					type="text" name="brno"><BR> <%
        for (int i = 0; i < list2.size(); i++) {
            String[] list = new String[4];
            list = (String[]) list2.get((i + "").trim());
            if (((String[]) list)[2].equals("N")
                    && ((String[]) list)[3].equals("0")) {
                out.println("<br>" + ((String[]) list)[1] + "<br>");
            } else if (((String[]) list)[2].equals("N")
                    && ((String[]) list)[3].equals("1")) {
                out.println("　" + ((String[]) list)[1] + "<br>");
            } else if (((String[]) list)[2].equals("N")
                    && (((String[]) list)[3].equals("2"))) {
                out.println("　　" + ((String[]) list)[1] + "<br>");
            } else if (((String[]) list)[2].equals("Y")
                    && ((String[]) list)[3].equals("1")) {
                out.println("　　　<input name=\"id\" id=\"ss" + i
                        + "\" type=\"checkbox\" value=\""
                        + ((String[]) list)[0] + "\"><label for=\"ss" + i
                        + "\">" + ((String[]) list)[1] + "</label><br>");
            } else if (((String[]) list)[2].equals("Y")
                    && ((String[]) list)[3].equals("2")) {
                out.println("　　　<input name=\"id\" id=\"ss" + i
                        + "\" type=\"checkbox\" value=\""
                        + ((String[]) list)[0] + "\"><label for=\"ss" + i
                        + "\">" + ((String[]) list)[1] + "</label><br>");
            } else if (((String[]) list)[2].equals("Y")
                    && ((String[]) list)[3].equals("3")) {
                out.println("　　　<input name=\"id\" id=\"ss" + i
                        + "\" type=\"checkbox\" value=\""
                        + ((String[]) list)[0] + "\"><label for=\"ss" + i
                        + "\">" + ((String[]) list)[1] + "</label><br>");
            }
        }%>
				

				<div class="footer"><input type="submit" name="submit" value="设 置">&nbsp;<input
					type="button" onclick="openReplace('/IB/bankListActon.do')" value="返 回"></div>
				</form>
				<!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--内表结束--></td>
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
