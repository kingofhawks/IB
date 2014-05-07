<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
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
		<table border="0" cellpadding="0" cellspacing="0" align="left"
			valign="bottom" class="tab_blank">
			<tr>
				<td class="tab_unactive_left" id="tab_left"></td>
				<td class="tab_unactive_btn" id="tab_btn"><nobr>银行列表</nobr></td>
				<td class="tab_unactive_right" id="tab_right"></td>
			</tr>
		</table>

		<script language="javascript">showOperation("bankListNew.do");</script></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td valign="top" class="outerTable_main"><!--内表格开始-->
		<form name="form1" method ="post" action="bankListActon.do?mode=delete">
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
				<div id="innerTable_divLis" style="width:98%"><!--内容开始-->
				<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list">
					<tr>
						<th width="6%">&nbsp;</th>
						<th width="17%"><bean:message
							key="systemManage.systemTableManage.bankList.BKNO" /></th>
						<!--银行代码-->
						<!--机构号-->
						<th width="10%"><bean:message
							key="systemManage.systemTableManage.bankList.CNCD" /></th>
						<!--国家代码-->
						<th width="17%"><bean:message
							key="systemManage.systemTableManage.bankList.SWNO" /></th>
						<!--SWIFT编号-->
						<th width="30%"><bean:message
							key="systemManage.systemTableManage.bankList.BKNM" /></th>
						<!--银行名称-->	
					  <th width="20%"><bean:message
							key="systemManage.systemTableManage.bankList.ADD1" /></th>
						<!--银行地址-->
					</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="list" name="list" indexId="index" scope="request">
							
								<td><input name="id" type="checkbox"
									value="<bean:write name="list" property="bkno" />"></td>
								<span
									onclick="openReplace('/IB/bankListNew.do?bkno=<bean:write name="list" property="bkno" />')">
								<td><bean:write name="list" property="bkno" /></td>
								<td><bean:write name="list" property="cncd" /></td>
								<td><bean:write name="list" property="swno" /></td>
								<td><bean:write name="list" property="bknm" /></td>
								<td><bean:write name="list" property="add1" /></td>
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