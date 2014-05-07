<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>国际结算模拟系统</title>

<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<SCRIPT lanuange="JavaScript">
//检查表单
function isNull()
{
   document.forms[0].submit();     
   return true; 
}

</SCRIPT>
</head>

<body>
<table width="100%" height="100%" border="0" align="center"
    cellpadding="0" cellspacing="0">
      
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
		<form action="billsAction.do" method="post">
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
                        <div id="innerTable_divLis">
                            <!--内容开始-->
                           
                            <table width="100%" border=" 0"  ellpadding="0"  cellspacing="1" id="item_list">
                                <tr>
                                    <th width="8%">&nbsp;</th>
                                    <th width="10%">单证编号</th>
                                    <th width="75%">单证名</th>
								 </tr>
                                <logic:notEmpty name="list">
                                    <logic:iterate id="list" name="list" indexId="index" scope="request">
                                     <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>   
                                    <td width="8%" align="center"><input type="checkbox" name="id" value='<bean:write name="list" property="id"/>'></td>
                                    <span onClick="window.open('/IB/bill/<bean:write name="list" property="filename" />')">
                                    <td width="10%">&nbsp;&nbsp;&nbsp;&nbsp;<%=index%></td>
                                    <td width="75%">&nbsp;&nbsp;&nbsp;&nbsp;<bean:write name="list" property="name" /></td>
									</span>
                                   </tr>
                                    </logic:iterate>
                                </logic:notEmpty>
                          </table>
						                
						<!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left">&nbsp;</td>
                    <td class="innerTable_bottom_x"><span class="innerTable_bottom_left">
                      <input type="hidden" name="flag" value="flag">
                    </span></td>
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
</body>
</html:html>
