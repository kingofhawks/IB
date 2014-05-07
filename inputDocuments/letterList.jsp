<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page
	import="com.witsoft.struts.form.systemManage.popedomManage.UserCommonForm"%>
<%@ page
	import="com.witsoft.common.Constant"%>
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


<html:form action="letterManageAction.do">
    <html:hidden property="tabID" />
    <html:hidden property="prid"/>
    <html:hidden property="rfno" />
    <input type="hidden" name="swno" value="<%=(String)request.getAttribute("swno")%>">
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
		<td class="outerTable_head"><table border="0" cellpadding="0" cellspacing="0" align="left"
            valign="bottom" class="tab_blank">
            <tr>
                <td class="tab_unactive_left" id="tab_left"></td>
                <td class="tab_unactive_btn" id="tab_btn"><nobr>面函列表</nobr></td>
                <td class="tab_unactive_right" id="tab_right"></td>
            </tr>
        </table>
        <%
		String tabID=(String)request.getAttribute("tabID");
		if(tabID!=null&&(tabID.equals("0")||tabID.equals("1")||tabID.equals("2")))//在电文、经办、暂存目录
		{%>
		<script language="javascript">showOperation("/IB/letterChooseAction.do?rfno=<bean:write name="userCommonForm" property="rfno"/>&prid=<bean:write name="userCommonForm" property="prid"/>&swno=<bean:write name="userCommonForm" property="swno"/>");</script>
		<%}%>
        </td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action='deleteInputAndTele.do?mode=letter&prid=<bean:write name="userCommonForm" property="prid"/>&rfno=<bean:write name="userCommonForm" property="rfno"/>&swno=<bean:write name="userCommonForm" property="swno"/>'>
		<table width="100%" height="100%" border="0" align="center"	cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_divLis" style="width:96%">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
					<tr>
						<th width="8%">&nbsp;</th>
						<th width="20%"><bean:message key="inputDocuments.LtexportName" /></th>
						<th width="20%"><bean:message key="common.dldt" /></th>
						<th width="52%" valign="baseline"></th>
					</tr>

					<logic:notEmpty name="list" scope="request">
						 <logic:iterate id="list" name="list"
                            indexId="index" scope="request">
                            <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
								<td><input name="id" type="checkbox"
									value="<bean:write
                                        name="list"
                                        property="id" />"></td>
								<span
									onclick="openReplace('ViewDocuments?id=<bean:write name="list"
                                    property="id" />&tstp=<bean:write name="list" property="tstp" />&rfno=<bean:write name="list"
                                    property="rfno" />&brno=<bean:write name="list" property="brno" />&tmid=<bean:write name="list" property="type.id" />&swno=<bean:write name="userCommonForm" property="swno"/>')">
								<td><bean:write name="list" property="type.cname" /></td>
								<td><bean:write name="list" property="dldt" /></td>
								<td>&nbsp;</td>
								</span>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				<!--内容结束--></div><br>
<%
			UserCommonForm userCommonForm=(UserCommonForm)request.getAttribute("userCommonForm");
			boolean draftFlag=Constant.isHaveMakeDraft(userCommonForm.getPrid());//电文显示标志
			if(draftFlag){	
				%>
			<input type="image" src="<bean:message key="common.returnTele"/>"
					onClick="openReplace('telegramTextManageAction.do?rfno=<bean:write name="userCommonForm" property="rfno"/>&prid=<bean:write name="userCommonForm" property="prid"/>&swno=<bean:write name="userCommonForm" property="swno"/>');return false">
		   <%}%>
				&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="<bean:message key="common.returnInto"/>"
					onClick="openReplace('<%=(String)request.getAttribute("url")%>');return false">
				&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="<bean:message key="common.returnList"/>"
					onClick="openReplace('<%=(String)request.getAttribute("listAction")%>?tabID=<%=(String)request.getAttribute("tabID")%>&prid=<bean:write name="userCommonForm" property="prid"/>');return false">
	  <td class="innerTable_right_y"></td>
  </tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td align="center" valign="top" class="innerTable_bottom_x">
				
			  </td>
				<td class="innerTable_bottom_right"></td>
			</tr>
</table>
 </form>
		<!--内表结束-->
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
