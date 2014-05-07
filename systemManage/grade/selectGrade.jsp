<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<style type="text/css">@import url(/IB/file/date/calendar-system.css);</style>
<script type="text/javascript" src="/IB/file/date/calendar.js"></script>
<script type="text/javascript"
	src="/IB/file/date/calendar-zh.js"></script>
<script type="text/javascript"
	src="/IB/file/date/calendar-setup.js"></script>
<html:html>

<body>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--内表格开始-->
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
				<div id="innerTable_div"><!--内容开始--> <html:form
					action="selectGrade.do" onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv"><html:errors /></div>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="50%" valign="top">
							<table width="375" border="0" cellpadding="0" cellspacing="0">
								<tr>

									<td width="40%" height="20" align="right" valign="middle">角色名称：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="rlid" title="rlid"
										value="1015">

										<%out.println(request.getAttribute("OPTION_RLID"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="middle">用户组：</td>
									<td valign="top">
									<div class="sele_div"><html:select property="usidGroup"
										title="usidGroup" value="22">


										<%out.println(request.getAttribute("OPTION_USGP"));%>
									</html:select></div>
									</td>
								</tr>
								<tr>
									<td height="20" align="right" valign="middle">开始时间：</td>
									<td valign="top"><html:text property="startDate"
										title="startDate" value="" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="middle">结束时间：</td>
									<td valign="top"><html:text property="endDate" title="endDate"
										value="" /></td>
								</tr>
								<tr>
									<td height="20" align="right" valign="middle">总分数：</td>
									<td valign="top"><html:text property="titalPoint"
										title="titalPoint" value="100" /></td>
								</tr>
							</table>
							</td>
							<td width="50%" valign="top">&nbsp;</td>
						</tr>
					</table>
					

					<div class="footer"><html:submit> 测 试 </html:submit></div>
				</html:form> <!--内容结束--></div>

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
		<!--内表结束--></td>
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
