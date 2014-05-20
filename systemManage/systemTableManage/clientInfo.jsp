<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
    <link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
    <script src="resources/vendor/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square',
                increaseArea: '20%' // optional
            });

            $('#selectAll').on('ifChanged', function(){
                if ($(this).prop('checked')) {
                    $('input').iCheck("check");
                } else {
                    $('input').iCheck("uncheck");
                }
            });
        });
    </script>
</head>
<body>
<FORM></FORM>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td height="22" class="outerTable_left_y"></td>
		<td class="outerTable_head">
		<table border="0" cellpadding="0" cellspacing="0" align="center" 	valign="bottom" class="tab_blank">
            <tr>
                <td class="tab_unactive_btn" id="tab_btn"><h2><strong>客户资料</strong></h2></td>
            </tr>
		</table>

		<script language="javascript">showOperation("clientInfoNew.do");</script></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action="clientInfoNew.do?mode=delete">
        
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
				<div id="innerTable_divLis" style="width:96%"><!--内容开始-->
				<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table">
					<tr>
						<th width="6%"><input type="checkbox" id="selectAll"></th>
						<th width="14%"><bean:message key="common.clno" /></th>
						<!--客户号-->
						<th width="20%">银行编号</th>
						<!--机构号-->
						<th width="15%"><bean:message key="common.cltp" /></th>
						<!--客户类型-->
						<th width="43%"><bean:message key="common.clcm" /></th>
						<!--客户中文名-->
					</tr>
					<logic:notEmpty name="list">
						 <logic:iterate id="list" name="list" indexId="index" scope="request">
						 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
							
								<td><input name="id" type="checkbox"
									value="<bean:write name="list" property="clno" /><bean:write name="list" property="brno" />"></td>
								<span
									onclick="openReplace('clientInfoNew.do?clno=<bean:write name="list" property="clno" /><bean:write name="list" property="brno" />')">
								<td><bean:write name="list" property="clno" /></td>
								<td><bean:write name="list" property="brno" /></td>
								<td><bean:write name="list" property="cltp" /></td>
								<td><bean:write name="list" property="clnm" /></td>
								</span>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
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
		<!--内表结束--></form>

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
<html>