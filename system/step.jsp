<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<HTML>
<HEAD>
<TITLE></TITLE>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 2px;
}
-->
</style>
</HEAD>
<script language="javascript">
function confirm(){
return document.frames['lantk'].window.isNull();
}
</script>
<%
com.witsoft.common.ReportBean reportBean=(com.witsoft.common.ReportBean)session.getAttribute("reportBean");
%>
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
		<td class="outerTable_main"><!--内表格开始-->
		<form method="post" >
		<table width="100%" border="0" cellpadding="0" cellspacing="0" >
                <tr>
                    <td width="3%"><img height=25 src="/IB/images/arrow.jpg"
			width=21></td>
                    <td width="97%" align="left" valign="top" class="title"><table border="0" height="6">
                      <tr>
                        <td></td>
                      </tr>
                    </table>
                  <div id="title_b"><strong><%=reportBean.getReportName()%></strong></div>                  </td>
                </tr>
      </table><table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="57%" valign="top">
					 <%
		    if(reportBean.getStep1()!=null){//步骤一不等于空，表示有操作
		    %>
                        <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="8%" align="center">
                                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="22" height="22">
                                        <%if((reportBean.getStepNew()==1)||(reportBean.getStepNew()==0&&reportBean.isStep1Flag())){%>
                                <param name="movie" value="/IB/images/button_1_c.swf">
                                <%}else{%>
                                <param name="movie" value="/IB/images/button_1.swf">
                                <%}%>
                                        <param name="quality" value="high">
                                        <embed src="/IB/images/button_1_c.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="22" height="22"></embed>
                              </object>                              </td>
                              <td width="92%" height="22" valign="top">
                              <div class="titles_c" style="height:18px" id=ShowCommendData><strong><%=reportBean.getStep1()%></strong></div></td>
                            </tr>
                      </table>
						 <%}  %>
                  </td>
					
                
                    <td width="35%" valign="top">
					 <%if(reportBean.getStep2()!=null){//步骤二不等于空，表示有操作%>
                        <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="13%" align="center">
                                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="22" height="22">
                                         <%if(reportBean.getStepNew()==2){%>
                                <param name="movie" value="/IB/images/button_2_c.swf">
                                <%}else{%>
                                <param name="movie" value="/IB/images/button_2.swf">
                                <%}%>
                                        <param name="quality" value="high">
                                        <embed src="/IB/images/button_2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="22" height="22"></embed>
                              </object>                              </td>
                              <td width="87%" height="22" valign="top">
                              <div class="titles" id=div><strong><%=reportBean.getStep2()%></strong></div></td>
                            </tr>
                      </table>
						<%}%>
                  </td>
					
                    <td width="8%" valign="top">
					 <%if(reportBean.getStep3()!=null){//步骤三不等于空，表示有操作
                     %>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="14%">
                                    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="22" height="22">
                                        <%if(reportBean.getStepNew()==3){%>
                                <param name="movie" value="/IB/images/button_3_c.swf">
                                <%}else{%>
                                <param name="movie" value="/IB/images/button_3.swf">
                                <%}%>
                                        <param name="quality" value="high">
                                        <embed src="/IB/images/button_3.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="22" height="22"></embed>
                                  </object>
                                </td>
                                <td width="86%">???</td>
                            </tr>
                        </table>
						<%}%>
                  </td>
					 
                </tr>
          </table><iframe border=0 name=lantk src="<%=reportBean.getPage()%>" width=100% height=100% allowtransparency scrollbars=no frameborder="0"></iframe>
		<!--内表结束--></form>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
	<td class="outerTable_left_y"></td>
	<td  align="center" valign="middle"><table width="100%" height="38" border="0" cellpadding="0" cellspacing="0" class="Scrollbg">
      <tr>
        <td height="15" class="space"></td>
      </tr>
      <tr >
        <td height="28" align="center" valign="top" ><%if(reportBean.getConfirm()!=null){%>
            <%=reportBean.getConfirm()%><img src="/IB/images/confirm.gif" width="110" height="22" border="0"></a>&nbsp;&nbsp;
            <%} if(reportBean.getCancel()!=null){%>
            <a href="<%=reportBean.getCancel()%>" ><img src="/IB/images/cancel.gif" width="110" height="22" border="0"></a>&nbsp;&nbsp;
            <%} if(reportBean.getNext()!=null){%>
            <a href="<%=reportBean.getNext()%>" ><img src="/IB/images/next.gif" width="110" height="22" border="0"></a>
      <%}%>&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
      
    </table></td>
	<td height="30" class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body>
</html>
