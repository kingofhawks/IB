<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
	src="/IB/common/list.js"></script>
<style type="text/css">@import url(/IB/file/date/calendar-system.css);</style>
<script type="text/javascript" src="/IB/file/date/calendar.js"></script>
<script type="text/javascript"
	src="/IB/file/date/calendar-zh.js"></script>
<script type="text/javascript"
	src="/IB/file/date/calendar-setup.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<body>
<%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                .getAttribute("user");

        com.witsoft.struts.action.systemManage.grade.LogWhere log = new com.witsoft.struts.action.systemManage.grade.LogWhere();
        String rlid = request.getParameter("rlid");
        String usid = request.getParameter("usid");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String isShow = "0"; //0 - 显示 1－不显示
        if (user.getRole() != null && user.getRole().equals("9998")) {
        if(rlid==null&&usid==null&&startDate==null&&endDate==null){
          isShow = "1";
        
        }
            if (request.getParameter("brno") != null
                    && !request.getParameter("brno").equals("")) {
                log.setBrno(request.getParameter("brno"));
            } else {
                log.setBrno(user.getBrno());
            }
            if (request.getParameter("rlid") != null
                    && !request.getParameter("rlid").equals("")) {
                log.setRlid(request.getParameter("rlid"));
            } else {
                log.setRlid("%");
            }
      
            if (request.getParameter("usid") != null
                    && !request.getParameter("usid").equals("")) {
                log.setUsid(request.getParameter("usid"));
            } else {
                log.setUsid("%");
            }

            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }
        } else {
           if(startDate==null&&endDate==null){
          isShow = "1";        
        }
            log.setBrno(user.getBrno());
            log.setRlid(user.getRole());
            
            log.setUsid(user.getUsid());
            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }

        }
        log.setIsShow(isShow);
        log.setLevel("info");
        java.util.Map list = new java.util.HashMap();

        list = new com.witsoft.struts.action.systemManage.grade.ShowLogging()
                .getLogging(log);
        request.setAttribute("list", list);

        %>
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
				<td class="tab_active_btn" id="tab_btn"><nobr>用户日志</nobr></td>
				<td class="tab_active_right" id="tab_right"></td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action="logging.jsp">
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
				<div id="innerTable_div"><!--内容开始-->
				<table>
					<form action="logging.jsp">
					<tr>
						<logic:equal name="user" property="role" value="9998">
							<td>用户角色：</td>
							<td><input type="text" name="rlid" style="width:50px;"></td>
							<td>用户编号：</td>
							<td><input type="text" name="usid" style="width:50px;"></td>
						</logic:equal>
						<td>开始时间：</td>
						<td><input type="text" name="startDate"></td>
						<td>结束时间：</td>
						<td><input type="text" name="endDate"></td>
						<td align="right"><input type="submit" name="submit" value="查 看"></td>
					</tr>
					</form>
				</table>

				<table width="100%" border="0" cellpadding="0" cellspacing="1"
					id="item_list" style="cursor:auto;">
					<tr>
						<th width="8%">银行编号</th>
						<th width="8%">角色编号</th>
						<th width="10%">用户编号</th>
						<th width="15%">操作时间</th>
						<th>操作内容</th>
					</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="log2" name="list" indexId="index"
							scope="request">
							<%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#F0F9FF\">");
        } else {
            out.print("<tr bgcolor=\"#E0F0F0\">");
        }%>

							<logic:iterate id="log1" name="log2" property="value" indexId="index1">
                           <logic:notEqual name="index1" value="5">
								<td><bean:write name="log1" /></td>

                           </logic:notEqual>

							</logic:iterate>
							</tr>
						</logic:iterate>

					</logic:notEmpty>
				</table>
				<!--内容结束--></div>

				<script type="text/javascript">
            function catcalc(cal) {
                var date = cal.date;
                var time = date.getTime()
                // use the _other_ field
                //var field = document.getElementById("startDate");
                /*if (field == cal.params.inputField) {
                    field = document.getElementById("endDate");
                    time += 2*Date.HOUR; // substract one week
                } else {
                    time -= 2*Date.HOUR; // add one week
                }*/
                //var date2 = new Date(time);
                //field.value = date2.print("%Y-%m-%d %H:%M");
                var field1 = document.getElementById("startDate");
                var field2 = document.getElementById("endDate");
                if (field1 == cal.params.inputField&&field2.value=="")
                {
                    time += 2*Date.HOUR;
                    var date2 = new Date(time);
                    field2.value = date2.print("%Y-%m-%d %H:%M");
                }
            }
            Calendar.setup({
                inputField     :    "startDate",   // id of the input field
                ifFormat       :    "%Y-%m-%d %H:%M",       // format of the input field
                showsTime      :    true,
                timeFormat     :    "24",
                onUpdate       :    catcalc
            });
            Calendar.setup({
                inputField     :    "endDate",
                ifFormat       :    "%Y-%m-%d %H:%M",
                showsTime      :    true,
                timeFormat     :    "24",
                onUpdate       :    catcalc
            });
        </script></td>
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
</html:html>
