<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<script language="javascript" type="text/javascript"
	src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
</head>

<body>
<%String prid = (String) request.getParameter("prid");%>

<html:form action="importBillManageAction.do">
	<html:hidden property="tabID" />
	<%

        if (prid == null) {%>
	<html:hidden property="prid" />
	<%} else {%>
	<html:hidden property="prid" value="<%=prid%>" />
	<%}%>


</html:form>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td height="22" class="outerTable_left_y"></td>
		<td class="outerTable_head"><script language="javascript">showTab("<%=request.getAttribute("opid")%>");</script><!--script
			language="javascript">showOperation("");</script--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action="">
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
				<div id="innerTable_divLis" style="width:96%"><!-内容开始--><%String cost = com.witsoft.common.Constant.isHaveReceiveDraft(prid,(String)request.getAttribute("tabID"));%><script>showDone("<%if(request.getAttribute("msg")!=null){out.print(request.getAttribute("msg"));}%>");</script> <logic:equal
					name="userCommonForm" property="tabID" value="1">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
						<tr>
							<th width="35%"><bean:message key="common.lcno" /><!--信用证号--></th>
							<th width="30%"><bean:message key="common.clno" /><!--客户号--></th>
							<th width="35%">银行编号<!--机构号--></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
								<span
									<%=cost%>="openReplace('<%=prid%>.do?rfno=<bean:write
                                        name="list"  property="id.lcno" />&prid=<%=prid%>')">
								<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
									<td><bean:write name="list" property="id.lcno" /></td>
									<td><bean:write name="list" property="clno" /></td>
									<td><bean:write name="list" property="id.brno" /></td>
								</tr>
								</span>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</logic:equal> <logic:notEqual name="userCommonForm"
					property="tabID" value="1">
<logic:notEqual name="userCommonForm"
					property="tabID" value="0">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
						<tr>
							<th width="19%"><bean:message key="common.ibno" /></th>
							<th width="18%"><bean:message key="common.rfno" /></th>
							<th width="17%"><bean:message key="common.lcno" /></th>
							<th width="14%"><bean:message key="common.clno" /></th>
							<th width="16%">银行编号</th>
							<th width="16%"><bean:message key="common.dldt" /></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
								<span
									<%=cost%>="openReplace('<%=prid%>.do?rfno=<bean:write
                                        name="list"
                                        property="id.rfno" />&prid=<bean:write
                                        name="list"
                                        property="prid" />')">
								<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
									<td><bean:write name="list" property="ibno" /></td>
									<td><bean:write name="list" property="id.rfno" /></td>
									<td><bean:write name="list" property="lcno" /></td>
									<td><bean:write name="list" property="clno" /></td>
									<td><bean:write name="list" property="id.brno" /></td>
									<td><bean:write name="list" property="dldt" /></td>
								</tr>
								</span>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</logic:notEqual></logic:notEqual> <!--显示电文列表-->
				<logic:equal name="userCommonForm"
					property="tabID" value="0">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
						<tr>
							<th width="17%"><bean:message key="common.mgtp" /></th>
							<th width="27%"><bean:message key="common.sentBrno" /></th>
							<th width="17%"><bean:message key="common.prid" /></th>
							<th width="17%">业务编号</th>
							<th width="22%"><bean:message key="common.sentTime" /></th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
								<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
								 <span
								onclick="openReplace('ViewTelegramText?brno=<bean:write name="list" property="brno" />&mgtp=<bean:write name="list" property="mgtp" />&swid=<bean:write name="list" property="swid" />&rfno=<bean:write name="list" property="rfno" />&prid=<%=prid%>')">
									<td><bean:write name="list" property="mgtp" /></td>
									<td><bean:write name="list" property="brno" /></td>
									<td><bean:write name="list" property="tstp" /></td>
									<td> <bean:write name="list" property="swno" /> </td>
									<td><bean:write name="list" property="dldt" /></td>
									</span>
								</tr>
							</logic:iterate>
						</logic:notEmpty>
					</table>
				</logic:equal>
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
<script language="javascript" type="text/javascript">switch_tab("<%=request.getAttribute("opid")%>");</script>
</body>
</html>
