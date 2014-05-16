<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<!DOCTYPE html>
<html>
  <head>
      <title><bean:message key="common.systemName" /></title>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript"	src="/IB/common/list.js"></script>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
<script src="resources/vendor/iCheck/icheck.min.js"></script>
<script>
  $(document).ready(function(){
      $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square',
          increaseArea: '20%' // optional
      });
  });
</script>

  </head>
<html:form action="telegramTextManageAction.do">
    <html:hidden property="tabID"/>
    <html:hidden property="prid"/>
    <html:hidden property="rfno"/>
    <input type="hidden" name="swno" value="<%=(String)request.getAttribute("swno")%>">
</html:form>
  <body>
   <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
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
         <table border="0" cellpadding="0" cellspacing="0" align="center" valign="bottom">
             <tr>
                 <td class="tab_unactive_btn" id="tab_btn"><h2><strong>案例管理</strong></h2></td>
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
			cellpadding="0" cellspacing="0" >
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" class="innerTable_main">
				<div id="innerTable_divLis" style="width:96%">
					<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table" >
                        <thead>
                            <th>#</th>
                            <th><h5><strong>案例编号</strong></h5></th>
                            <th><h5><strong>案例类</strong></h5></th>
                            <th><h5><strong>案例名</strong></h5></th>
                            <th><h5><strong>教师</strong></h5></th>
                            <th><h5><strong>浏览案例</strong></h5></th>
                        </thead>

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
									<td>
                                        <a href="cases.do?flag=load&id=<bean:write name='list' property='id'/>" target="_blank">
                                             <i class="fa fa-search fa-2x"></i>
                                        </a>
                                    </td>
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
