<%@ include file="/common/header.jsp"%>

<%@ page contentType="text/html; charset=GB2312"%>
<html>
  <head>
  <title><bean:message key="common.systemName"/></title>
      <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
      <script language="javascript" type="text/javascript"  	src="/IB/common/list.js"></script>
      <script src="/IB/resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
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
				<table width="300" height="200" border="0" cellpadding="6" cellspacing="1" id="item_list" class="kuang">

                      <tr>
						    <td height="90" align="center" valign="middle" bgcolor="#F9F9F9"><img src="../images/casetitle.gif" width="272" height="83"></td>
				      </tr>
                    <tr>
                        <td>
                            <div class="list-group">
                                <a href="#" class="list-group-item list-group-item-success" onClick="openReplace('/IB/cases.do?flag=new&type=01')">案例一：开证行与通知行业务</a>
                                <a href="#" class="list-group-item list-group-item-info" onClick="openReplace('/IB/cases.do?flag=new&type=02')">案例二：开证行与议付行业务</a>
                                <a href="#" class="list-group-item list-group-item-success" onClick="openReplace('/IB/cases.do?flag=new&type=03')">案例三：托收行与代收行业务</a>
                                <a href="#" class="list-group-item list-group-item-info" onClick="openReplace('/IB/cases.do?flag=new&type=04')">案例四：光票托收行业务</a>
                                <a href="#" class="list-group-item list-group-item-success" onClick="openReplace('/IB/cases.do?flag=new&type=05')">案例五：汇出汇款行与汇入汇款行业务</a>
                            </div>
                        </td>
                    </tr>
  				</table>	
                    <br>
            <div>

            </div>
                                      
                  <!--内容结束--></div><table width="100" border="0" cellpadding="0" cellspacing="0">
                <tr>                  <td>
                    <div>
		                <button class="btn btn-primary" onclick="openReplace('/IB/cases.do?flag=list');return false">
                            <i class="fa fa-level-up fa-2x"></i> 返回
                        </button>
                    </div>
                </td>
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
