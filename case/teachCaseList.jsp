<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
  <head>
  <title><bean:message key="common.systemName"/></title>
  
  <style type="text/css">
<!--
.kuang {
	border: 4px solid #efefef;
}
-->
  </style>
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
		<td height="22" class="outerTable_left_y"></td>
		<td align="right" valign="bottom" class="outerTable_head">
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" class="outerTable_main"><!--内表格开始-->
		<form method="post" action="">
		<div id="innerTable_div" align="center">
				<table width="300" height="200" border="0" cellpadding="6" cellspacing="1"
						id="item_list" class="kuang">
						<tr>
						    <td height="90" align="center" valign="middle" bgcolor="#F9F9F9"><img src="../images/casetitle.gif" width="272" height="83"></td>
				      </tr>
						<span onClick="openReplace('/IB/cases.do?flag=new&type=01')">
                        <tr bgcolor="#F0F9FF" onMouseOver="this.style.backgroundColor='#EAECEC';" onMouseOut="this.style.backgroundColor='#F0F9FF';">
                            <td width="91%" height="40" align="left" valign="bottom" bgcolor="#F0F9FF"><span onClick="openReplace('/IB/cases.do?flag=new&type=01')"><span onClick="openReplace('/IB/cases.do?flag=new&type=01')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/arrow.gif" width="4" height="7">&nbsp;案例一：</span></span>开证行与通知行业务</td>
						</tr>
					  </span>
						<span onClick="openReplace('/IB/cases.do?flag=new&type=02')">
                        <tr bgcolor="#E0F0F0" onMouseOver="this.style.backgroundColor='#EAECEC';" onMouseOut="this.style.backgroundColor='#E0F0F0';">
                            <td height="40" align="left" valign="bottom" bgcolor="#ffffff"> <span onClick="openReplace('/IB/cases.do?flag=new&type=02')"><span onClick="openReplace('/IB/cases.do?flag=new&type=02')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/arrow.gif" width="4" height="7">&nbsp;案例二：</span></span>开证行与议付行业务</td>
						</tr>
					  </span>
								<span onClick="openReplace('/IB/cases.do?flag=new&type=03')">
                        <tr bgcolor="#F0F9FF" onMouseOver="this.style.backgroundColor='#EAECEC';" onMouseOut="this.style.backgroundColor='#F0F9FF';">
                            <td height="40" align="left" valign="bottom" bgcolor="#F0F9FF"> <span onClick="openReplace('/IB/cases.do?flag=new&type=03')"><span onClick="openReplace('/IB/cases.do?flag=new&type=03')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/arrow.gif" width="4" height="7">&nbsp;案例三：</span></span>托收行与代收行业务</td>
								</tr>
								</span>
						<span onClick="openReplace('/IB/cases.do?flag=new&type=04')">
                        <tr bgcolor="#E0F0F0" onMouseOver="this.style.backgroundColor='#EAECEC';" onMouseOut="this.style.backgroundColor='#E0F0F0';">
                            <td height="40" align="left" valign="bottom" bgcolor="#ffffff"><span onClick="openReplace('/IB/cases.do?flag=new&type=04')"><span onClick="openReplace('/IB/cases.do?flag=new&type=04')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/arrow.gif" width="4" height="7">&nbsp;案例四：</span></span>光票托收行业务</td>
						</tr>
					  </span>
								<span onClick="openReplace('/IB/cases.do?flag=new&type=05')">
                        <tr bgcolor="#F0F9FF" onMouseOver="this.style.backgroundColor='#EAECEC';" onMouseOut="this.style.backgroundColor='#F0F9FF';">
                            <td height="40" align="left" valign="bottom" bgcolor="#F0F9FF"> <span onClick="openReplace('/IB/cases.do?flag=new&type=05')"><span onClick="openReplace('/IB/cases.do?flag=new&type=05')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/arrow.gif" width="4" height="7">&nbsp;案例五：</span></span>汇出汇款行与汇入汇款行业务</td>
								</tr>
								</span>
  				</table>	
                    <br>
                                      
                  <!--内容结束--></div><table width="100" border="0" cellpadding="0" cellspacing="0">
                <tr>                  <td><div>
		    <script language="javascript">showReport("/IB/cases.do?flag=list");
				</script></div></td>
                </tr>
              </table>
		<!--内表结束-->
		</form>

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
