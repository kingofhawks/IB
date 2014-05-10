<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<!--编辑公告信息-->
<!DOCTYPE html>
<html>
<head>
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<script src="/IB/resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<script src="http://tinymce.cachefly.net/4.0/tinymce.min.js"></script>

<script>
$(function() {
    tinymce.init({selector:'textarea'});
});

function setAdd(){
    var url = document.forms[0].action;
    var iObj = document.forms[0].elements;
    if(iObj[0].value=="")
    {
        alert("请输入公告标题!");
        iObj[0].focus();
        return false;
    }
    document.forms[0].action=url+'?sign=add';
    document.forms[0].submit();
}
</script>
</head>
<body>
   <table width="100%" height="100%" border="0" align="center"	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td colspan="2" class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td height="22" class="outerTable_left_y"></td>
		<td align="right" class="outerTable_head"> </td>
		<td align="right" class="outerTable_head"></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td colspan="2" class="outerTable_main"><!--内表格开始-->
		<html:form method="post" action="announcement.do"  onsubmit="doExecute()">
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
				<div id="innerTable_div">
<table width="90%" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
      <tr>
          <td width="22%" align="right" valign="middle"></td>
          <td width="78%" align="left" valign="middle">&nbsp;
              <input type="text" name="title" id="title" maxlength="100" size="80" class="form-control" placeholder="公告标题" autofocus="autofocus"/>
          </td>
      </tr>    

       <tr>
        <td height="25" colspan="17" valign="middle">&nbsp;&nbsp;公告内容不能超过1000字节(相当于500个汉字)。</td>
    </tr>
       <tr>
         <td colspan="17" valign="middle">
            <textarea  id="content" name="content"  class="form-control" placeholder="公告内容不能超过1000字节(相当于500个汉字)">
            </textarea>
         </td>
       </tr>
</table>

<br>

<div class="footer">

<html:hidden property="id"/>
<%
//System.out.println("----"+request.getParameter("sign"));

if(request.getParameter("sign")!=null&&request.getParameter("sign").equals("add")){
%>

    <button class="btn btn-primary" onclick="setAdd();return false">
        <i class="fa fa-plus fa-2x"></i>增加
    </button>
<%}else{%>
<input type="image" name="btn"  src="/IB/images/modifyaff.gif"  onclick="setUpdate();return false">  
<%}%>
    <button class="btn btn-primary" onclick="openReplace('/IB/announcement.do?sign=teacher');return false">
        <i class="fa fa-level-up fa-2x"></i>返回
    </button>
</div>
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
		<!--内表结束--></html:form></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td colspan="2" class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body>

</html>

