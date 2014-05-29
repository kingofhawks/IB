<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
  <head><title><bean:message key="common.systemName" /></title>
  <script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
      <link href="/IB/resources/css/app.css" rel="stylesheet">
      <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
      <style>
          .img{
              margin-bottom:20px;
          }
      </style>
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
		<td align="right" class="outerTable_head">
         <table border="0" cellpadding="0" cellspacing="0" align="left" valign="bottom" class="tab_blank">
			<tr>
				<td>
                    <div class="img">
                        <img src="/IB/images/LCchoose.gif" width="440" height="32">
                    </div>
                </td>
			</tr>
		</table>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" action="newCaseDetailCollectingBankAction.do"  onSubmit="return radioCheck()">
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
					<table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table">
                        <thead>
                            <th class="table_title">选择</th>
                            <th class="table_title">信用证案例编号</th>
                            <th class="table_title">已生成的信用证案例</th>
                            <th class="table_title">浏览案例</th>
                        </thead>

						<logic:notEmpty name="list">
							<logic:iterate id="list" name="list" indexId="index" scope="request">
			                <%if ((index.intValue() % 2) == 1) {
            out.print("<tr height=\"20\"  bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr height=\"20\" bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>       
								   <td>
			                         <div >
			                           <input type="radio" name="id" value="<bean:write name='list' property='id' />">
		                             </div></td>
									<td><bean:write name="list" property="id" /></td>
									<td><bean:write name="list" property="casesname" /></td>
									<td>
                                        <a href="cases.do?flag=load&id=<bean:write name='list' property='id'/>" target="_blank">
                                            <i class="fa fa-search fa-2x"></i>
                                        </a></td>
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
				<td height="50" valign="middle" class="innerTable_bottom_x">
                    <div align="center">
                        <button class="btn btn-primary"  type="submit">
                            <i class="fa fa-plus fa-2x"></i>增加
                        </button>
			&nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-primary" onclick="openReplace('cases.do?flag=list');return false">
                            <i class="fa fa-level-up fa-2x"></i>返回
                        </button>
			        </div>
                </td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--内表结束-->
  <script>
	function radioCheck()
	{
		var myObj=document.getElementsByName("id"); 
		var len=myObj.length;
		var flag=0; 
		for (var i=0; i<len; i++) 
		 {  
			 if (myObj[i].checked==true)   
 
			 {  
			  flag=1;  
			  }
		 }
	    if (flag==0) 
		{  
			alert("请选择一个信用证案例再提交!");
			myObj[0].focus(); 
			return false;
		 }
		 return true;
	}
  </script>		
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
  </body>
</html>
