<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ include file="/case/casetop.jsp"%>
<html>
  <head>
  <title><bean:message key="common.systemName" /></title>
  <script type="text/javascript" src="/IB/case/tableSort.js"></script>
  <script language="javascript" type="text/javascript" 	src="/IB/common/list.js"></script>
  </head>
  <%String brno=(String)request.getAttribute("brno");%>
  <body style="overflow-y:hidden;">
<table width="99%" height="525px" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td  class="outerTable_left_y"></td>
		<td align="right" class="outerTable_head"></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td valign="top" class="outerTable_main"><!--内表格开始-->		
		
		
		<form method="post" action="">
		    <img src="/IB/images/caselist.gif" width="540" height="32" border="0" usemap="#Map">
		    <table width="100%" height="100%" border="0" align="center"	cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" class="innerTable_main">
				<div id="innerTable_divLis" style="width:96%;height:450px">
					<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table">
						<thead>
						<tr>
						    <th width="8%" align="left" onClick="sortTable('item_list','0','int')">编号</th>
							<th width="27%" align="left" onClick="sortTable('item_list','1','string')">案例类型</th>
							<th width="37%" align="left" onClick="sortTable('item_list','2','string')">案例名称</th>
							<th width="10%" align="left" onClick="sortTable('item_list','3','string')">案例得分</th>
							<th width="10%" align="left" onClick="sortTable('item_list','4','string')">操作状态</th>
							<th width="8%" align="left">浏览</th>
						</tr>
						</thead>
						<tbody>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
			 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
              <span onClick="openReplace('login.jsp?brno=<%=brno%>&id=<bean:write name='list' property='id'/>&type=<bean:write name='list' property='type'/>')">
			                        <td><bean:write name="list" property="id" /></td>
									<td><bean:write name="list" property="casesname" /></td>
									<td style="overflow:hidden;text-overflow:ellipsis"><bean:write name="list" property="detai" /></td>
									<td><bean:write name="list" property="lastmark" /></td>
									<td><bean:write name="list" property="state" /></td>
							  </span>
									<td>
                                        <a href="cases.do?flag=load&id=<bean:write name='list' property='id'/>"  target="_blank">
                                            <i class="fa fa-search fa-2x"></i>
                                        </a>
                                    </td>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
<!--内容结束--></div>
				</td>
			</tr>
			</tbody>
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
 <map name="Map">
     <area shape="rect" coords="250,0,412,29" href="login.jsp?brno=<%=brno%>&id=00"">
 </map></body>
</html>
