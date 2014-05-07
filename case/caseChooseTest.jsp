<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>
<bean:message key="common.systemName" />
</title>
<script language="javascript" type="text/javascript"	src="/IB/common/list.js"></script>
<script>
function sendData()
{
	var myObj = window.dialogArguments; //从父窗体传来的参数;
	if(myObj)
	{
	   myObj.value= couChe();
	}
	window.close();
}
</script>  
<style type="text/css">
<!--
body {
	margin: 0px;
}
-->
</style>
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
		<td align="left" class="outerTable_head"><img src="/IB/images/caseChooseTest.gif" width="440" height="32"></td>
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
				<div id="innerTable_divLis" style="width:96%;height:90%">
					<table width="100%" border="0" cellpadding="0" cellspacing="1"
						id="item_list">
						<tr>
						    <th width="7%" align="left"></th>
							<th width="13%" align="left">案例编号</th>
							<th width="21%" align="left">案例类型</th>
							<th width="46%" align="left">案例名称</th>
							<th width="13%" align="left">教师</th>
						</tr>
						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>								
			                       <td align="left"><div align="left">
			                         <input type="checkbox" name="id" id="choID" value="<bean:write name='list' property='id' />">
			                         </div></td>
								<span >
									<td><bean:write name="list" property="id" /></td>
									<td><bean:write name="list" property="casesname" /></td>
									<td style="overflow:hidden;text-overflow:ellipsis"><bean:write name="list" property="detai" /></td>
									<td><bean:write name="list" property="teachId" /></td>
									</span>
									</tr>
							</logic:iterate>
						</logic:notEmpty>
				  </table>
					
<!--内容结束--></div><div align="center"><br>
			<input type="hidden" name="testcha" id="testcha" value="000">	
			<input type="image" src="/IB/images/submit.gif" onClick="sendData();return false" >	
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="/IB/images/close.gif" onClick="window.close();return false" ><br>
			</div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--内表结束-->
		</form>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
<script>
function couChe()
{
//得到选中的复选框编号；
	var checkboxId=document.getElementsByTagName("input");
			var loopLength=checkboxId.length;
			var tesId="";
			$("testcha").value="";
			for(num=0;num<loopLength;num++)
			  {
			   if(checkboxId[num].type=="checkbox")
					{
					   if(checkboxId[num].checked)
						   {
							 $("testcha").value+=($(checkboxId[num]).value+",");
							}
					}
			  }
					tesId=$("testcha").value;
					return tesId;
					}
</script> 
 </body>
</html>
