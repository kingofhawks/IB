<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
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
		<td class="outerTable_head">
		<table border="0" cellpadding="0" cellspacing="0" align="left"
			valign="bottom" class="tab_blank">
			<tr>
				<td class="tab_unactive_left" id="tab_left"></td>
				<td class="tab_unactive_btn" id="tab_btn"><nobr>客户资料</nobr></td>
				<td class="tab_unactive_right" id="tab_right"></td>
			</tr>
		</table>

		<script language="javascript">showOperation("#");</script></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form name="form1" action="#">
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
				<table width="100%" height="40" border="0" cellpadding="0"
					cellspacing="1" id="item_list">
					<tr>
						<th width="3%">&nbsp;</th>
						<th width="15%"><bean:message
							key="systemManage.systemTableManage.innerAccount.CYNO" /></th>
						<!--币种-->
						<th width="15%"><bean:message
							key="systemManage.systemTableManage.convertRateTable.CYIN" /></th>
						<!--货币代码-->
						<th width="15%"><bean:message
							key="systemManage.systemTableManage.convertRateTable.CYMO" /></th>
						<!--月折算率-->
						<th width="52%"><bean:message
							key="systemManage.systemTableManage.convertRateTable.CYYE" /></th>
						<!--年折算率-->
				</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="list" name="list" indexId="index" scope="request"> 
							
								<td><input name="id" type="checkbox"
									value="<bean:write name="list" property="cyno" />"></td>
								<span
									onclick="openReplace('*?bkno=<bean:write name="list" property="cyno" />')">
								<td><bean:write name="list" property="cyno" /></td>
								<td><bean:write name="list" property="cyin" /></td>
								<td><bean:write name="list" property="cymo" /></td>
								<td><bean:write name="list" property="cyye" /></td>
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
<script language="javascript" type="text/javascript">switch_tab('1');</script>
</body>
<html>