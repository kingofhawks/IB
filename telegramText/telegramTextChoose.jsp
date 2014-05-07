<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"
    prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=GB2312"%><head>
<link href="/IB/common/default.css" rel="stylesheet"
	type="text/css">
<title><bean:message key="common.systemName" />
</title>
<style type="text/css">
.sele_div_kuang {border:1px solid #000000; width:256px; height:24px; clip:rect(0px,235px,18px,0px);overflow:hidden;}
.select_kuang {position:relative; margin:-2px;width:258px;border:0px;}
.sele_div_kuang1 {border:1px solid #000000; width:256px; height:18px; clip:rect(0px,235px,18px,0px);overflow:hidden;}
</style>
<SCRIPT lanuange="JavaScript">
function openReplace(oprtURL)
{
    window.location.replace(oprtURL);
    return false;
}
</SCRIPT>
</head>

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
		<td class="outerTable_main"><!--内表格开始--><form action="ViewTelegramText">
		  <table width="100%" height="240" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td colspan="2" rowspan="2" align="center"><table width="100" height="80" border="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>
                <table width="80%" cellspacing="0" bordercolordark="#ffffff" cellpadding="0"  bordercolorlight="#c0c0c0" border="1" align="center" class="innercontent">
                  <tr>
                    <td height="24" colspan="3" align="center" class="innertitle">添加电文</td>
                  </tr>
                  <tr>
                    <td width="34%" height="30" align="right" valign="middle" bgcolor="#EBEBEB">请选择电文类型：</td>
                    <td width="66%" align="left" valign="top" ><div align="left">
						
						  <table width="100%" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td valign="top" height="8"></td>
                            </tr>
                            <tr>
                                <td height="20" valign="top">
								
                                    <%if(request.getAttribute("mgtpArray")==null){
						out.println("无添加电文！");
						}
						else{
						%>
                                    <select name="mgtp" class="sele_div_kuang">
                                        <% out.println(request.getAttribute("mgtpArray"));%>
                                    </select>                                </td>
                            </tr>
                          </table>
						
						</div></td>
                  </tr>
                </table>
                <table width="240" height="60">
                  <tr>
                    <td height="20" colspan="2" align="center" valign="bottom">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="110" height="40" align="center" valign="bottom"><input type="image" name="Submit" src="/IB/images/add.gif" />
                        <input type="hidden" name="swno" value="<%=request.getAttribute("swno")%>" />
                        <input type="hidden" name="rfno" value="<%=request.getAttribute("rfno")%>" />
                        <input type="hidden" name="brno" value="<%=request.getAttribute("brno")%>" />
                        <input type="hidden" name="prid" value="<%=request.getAttribute("prid")%>" />
                        <input type="hidden" name="url" value="telegramTextManageAction.do" />
                    <%}%>                    </td>
                    <td width="80" align="center" valign="bottom"><input name="button" type="image"
                        onclick="openReplace('telegramTextManageAction.do?rfno=<%=request.getAttribute("rfno")%>&amp;prid=<%=request.getAttribute("prid")%>&amp;swno=<%=request.getAttribute("swno")%>');return false" src="/IB/images/returnInto.gif"  />                    </td>
                  </tr>
              </table></td>
            </tr>
            
          </table></form>
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
