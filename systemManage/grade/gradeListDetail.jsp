<%--测评详细内容--%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="com.witsoft.bean.systemManage.grade.LookGrade" %>
<html>
<head>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<title>测评详细内容</title>
<style>
div.sele_div_cl{border:1px solid #000000; width:122px; height:18px; clip:rect(0px,112px,17px,0px);overflow:hidden;}
select {position:relative; margin:-2px;width:124px;border:0px;behavior:url('/IB/common/select.htc'); }
</style>

</head>
<body>
<%
LookGrade view=(LookGrade)request.getAttribute("view");
%>

<table width="600px" height="500px" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" valign="middle" class="outerTable_mainContent">
		<!--内表格开始-->
		<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" valign="top" class="innerTable_main">
				<div id="innerTable_div">
				<!--内容开始-->
				 <form>
					<table width="100%" border="0" cellspacing="1" cellpadding="1">
    <tr>
      <td colspan="2" align="center" bgcolor="#FFFFFF" widtd="25%"><img src="/IB/images/studentoperDet.gif" width="272" height="42"></td>
      </tr>
    <tr>
        <td width="14%" align="center" valign="middle" bgcolor="#FFFFFF" widtd="25%"><strong>用户编号：</strong></td>
        <td width="86%" bgcolor="#FFFFFF" widtd="25%"><label><%=view.getUsid()%></label></td>
        </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#F0F8FF"><strong>用户姓名：</strong></td>
      <td bgcolor="#F0F8FF"><label><%=view.getUsnm()%></label></td>
      </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>用户班级：</strong></td>
      <td bgcolor="#FFFFFF"><label><%=view.getUgnm()%></label></td>
      </tr>
     <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>案例总分：</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getFullMark()%></td>
      </tr>
    <tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>学生所做案例操作总分：</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getTheoryMark()%></td>
      </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#F0F8FF"><strong>扣除分数：</strong></td>
      <td bgcolor="#F0F8FF"><%=view.getDeductMark()%></td>
    </tr>
    <tr>
      <td align="center" valign="middle" bgcolor="#FFFFFF"><strong>实际得分：</strong></td>
      <td bgcolor="#FFFFFF"><%=view.getLastMark()%></td>
    </tr>
    <tr>
      <td align="center" valign="top" bgcolor="#F0F8FF"><strong>扣分情况：</strong></td>
      <td bgcolor="#F0F8FF"><div id="content" style="border:1px #ff9966 dashed; padding:2px; width:98%;height:220;overflow-x:hidden;overflow-y:scroll;word-wrap:break-word"><%=view.getSumup()%></div></td>
<%--      <td bgcolor="#F0F8FF"><%=view.getSumup()%></td>--%>
    </tr>
</table>

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
