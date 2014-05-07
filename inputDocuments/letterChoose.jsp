<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
    prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<title><bean:message key="common.systemName" />
</title>
<SCRIPT lanuange="JavaScript">
function openReplace(oprtURL)
{
    window.location.replace(oprtURL);
    return false;
}
</SCRIPT>
<style type="text/css">
.sele_div_kuang {border:1px solid #000000; width:256px; height:18px; clip:rect(0px,235px,18px,0px);overflow:hidden;}
.select_kuang {position:relative; margin:-2px;width:258px;border:0px;}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<%
        String rfno = (String) request.getAttribute("rfno");
		String prid = (String) request.getAttribute("prid");
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
		<div align="right"></div>
		</td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_main"><!--内表格开始-->

		<table width="100%" height="100%" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td class="innerTable_top_left"></td>
				<td class="innerTable_top_x"></td>
				<td class="innerTable_top_right"></td>
			</tr>
			<tr>
				<td class="innerTable_left_y"></td>
				<td align="center" valign="middle" class="innerTable_main">
				  <div id="innerTable_div"><!--内容开始-->
				<table width="100%" border="0">
  <tr>
    <td width="80%" align="left" valign="center">
						<form action="ViewDocuments">
						  <table width="100%" height="240" border="0" cellpadding="0" cellspacing="0">
                            
                            <tr>
                              
                              <td colspan="2" rowspan="2" align="center"><table width="100" height="80" border="0">
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                              </table>
                              <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                <tr>
                                  
                                  <td height="24" colspan="3" align="center" class="innertitle">添加面函</td>
                                </tr>
                                <tr>
                                  <td width="34%" height="30" align="right" valign="middle" bgcolor="#EBEBEB">请选择面函类型：</td>
                                  <td width="66%" align="left" valign="top" >
                                    <table height="20" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="6"></td>
  </tr>
  <tr>
    <td><%if(request.getAttribute("tmidArray")==null){
						out.println("无添加面函！");
						}
						else{
						%>
                                        <select name="tmid" class="sele_div_kuang">
                                        <%out.println(request.getAttribute("tmidArray"));%>
                                  </select></td>
  </tr>
</table>
               </td>
							    </tr>
                              </table><table width="240" height="60">
                                    <tr>
                                      <td colspan="2" align="center" valign="bottom" height="20px">&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td width="120" align="center" valign="bottom">
									  <input type="image" name="Submit" src="/IB/images/add.gif" />
                                          <input type="hidden" name="rfno" value="<%=rfno%>">
                                          <input type="hidden" name="tstp" value="<%=prid%>">
                                          <input type="hidden" name="swno" value="<%=request.getAttribute("swno")%>">
                                      <%}%></td>
                                      <td width="110" align="center" valign="bottom" height="40px"><input name="button" type="image" onClick="openReplace('letterManageAction.do?rfno=<%=rfno%>&prid=<%=prid%>&swno=<%=request.getAttribute("swno")%>');return false" src="/IB/images/returnInto.gif"></td>
                                    </tr>
                                  </table>
							  </td>
                            </tr>
                            
                        </table><br>

						</form>
				  </td>
  </tr>
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
