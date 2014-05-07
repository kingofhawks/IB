<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
  <head>
  <script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
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
        <td class="outerTable_head">
        <table border="0" cellpadding="0" cellspacing="0" align="left"
            valign="bottom" class="tab_blank">
            <tr>
                <td class="tab_active_left" id="tab_left"></td>
                <td class="tab_active_btn" id="tab_btn"><nobr>凭证</nobr></td>
                <td class="tab_active_right" id="tab_right"></td>
            </tr>
        </table>

        </td>
        <td class="outerTable_right_y"></td>
    </tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td valign="top" class="outerTable_mainContent"><!--内表格开始-->
		  <table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				
				<td align="center" class="innerTable_main">
				<div id="innerTable_divLis" style="width:96%;">
                  <table width="100%" border="0" cellpadding="3" cellspacing="1" id="item_list">
						<tr>
							<th width="8%">序号</th>
							<th width="30%">凭证或单据名</th>
							<th width="62%">备注</th>
						</tr>
						<logic:notEmpty name="list">
						<%int index2=0;%>
							<logic:iterate id="list" name="list" indexId="index" scope="request">
							<span onClick="window.open('/IB/report?reportClass=<bean:write name="list" property="name" />&no=<bean:write name="list" property="no" />&prid=<bean:write name="list" property="prid" />&preid=<bean:write name="list" property="preid" />&step=<bean:write name="list" property="step" />')">
			<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>

									<td><%=index.intValue()+1%></td>
									<td><bean:write name="list" property="cnname" /></td>
									<td><bean:write name="list" property="remark" /></td>
									</span>
								</tr>
								<%index2=index.intValue();%>
							</logic:iterate>
							<logic:notEmpty name="list">
						   <%++index2;%>
							<logic:iterate id="list" name="billList" scope="request">
							<span onClick="window.open('/IB/bill/<bean:write name="list" property="filename" />')">
								<% 
            out.print("<tr>");
              %>
									<td><%=++index2%></td>
									<td><bean:write name="list" property="name" /></td>
									<td>&nbsp;</td>
									</span>
								</tr>
		     				</logic:iterate>
	    					</logic:notEmpty>
   					</logic:notEmpty>
	     </table>
				</div>
				<table width="19%" height="30" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="left" valign="bottom"><br>
<logic:notEmpty name="button">
		  <script language="javascript">showReport("<%=request.getAttribute("button")%>");</script>
    	  </logic:notEmpty></td>
                    </tr>
                  </table>
			  </td>
				
			</tr>

		</table>
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
