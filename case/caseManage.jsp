<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
  <head><title><bean:message key="common.systemName" /></title>
  <script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
	<link href="/IB/common/default.css" rel="stylesheet" type="text/css">

  </head>
<html:form action="telegramTextManageAction.do">
    <html:hidden property="tabID"/>
    <html:hidden property="prid"/>
    <html:hidden property="rfno"/>
    <input type="hidden" name="swno" value="<%=(String)request.getAttribute("swno")%>">
</html:form>
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
		<td align="right" class="outerTable_head"><span class="tab_unactive_right">
		    <script language="javascript">showOperation("/IB/case/teachCaseList.jsp");
				</script>
		</span>
         <table border="0" cellpadding="0" cellspacing="0" align="left"
			valign="bottom" class="tab_blank">
			<tr>
				<td class="tab_unactive_left" id="tab_left"></td>
				<td class="tab_unactive_btn" id="tab_btn"><nobr>案例管理</nobr></td>
				<td class="tab_unactive_right" id="tab_right">&nbsp;</td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action="cases.do?flag=delete">
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
				<div id="innerTable_divLis" style="width:96%">
					<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list">
						<tr>
						    <th width="6%" align="left"></th>
							<th width="10%" align="left">案例编号</th>
							<th width="30%" align="left">案例类型</th>
							<th width="34%" align="left">案例名称</th>
							<th width="10%" align="left">教师</th>
							<th width="10%">浏览案例</th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>								
			                         <td>
			                           <div align="left">
			                             <input type="checkbox" name="id" value="<bean:write name='list' property='id' />">
		                               </div></td><span onClick="openReplace('cases.do?flag=new&id=<bean:write name='list' property='id'/>&type=<bean:write name='list' property='type'/>')">
									<td><bean:write name="list" property="id" /></td>
									<td><bean:write name="list" property="casesname" /></td>
									<td style="overflow:hidden;text-overflow:ellipsis"><bean:write name="list" property="detai" /></td>
									<td><bean:write name="list" property="teachId" /></td>
									</span>
									<td><a href="cases.do?flag=load&id=<bean:write name='list' property='id'/>" target="_blank"><img src="/IB/images/view.gif" width="16" height="16" border="0" /></a></td>
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
</html>
