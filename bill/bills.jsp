<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="/IB/resources/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.1.0/css/font-awesome.min.css">
<style type="text/css">
<!--
.bg {
background-color:#efefef;}
-->
h2 {text-align:center}

</style>
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
        <td valign="top" class="outerTable_main"><!--内表格开始-->
        <form method="post" action="">
            <h2><strong>贸易单证</strong></h2>
          <table width="100%" height="100%" border="0" align="center"   cellpadding="0" cellspacing="0">
            <tr>
                <td class="innerTable_top_left"></td>
                <td class="innerTable_top_x"></td>
                <td class="innerTable_top_right"></td>
            </tr>
            <tr>
                <td class="innerTable_left_y"></td>
                <td align="center" class="innerTable_main">
                <div style="width:94%; height:98%"><!--内容开始-->
                <table width="100%"  cellpadding="3" cellspacing="1" id="item_list" class="table">
                    <thead>
                        <th class="table_title">编号</th>
                        <th class="table_title">单证名</th>
                        <th class="table_title">下载</th>
                        <th width="1%" align="center" class="bg"></th>
                        <th class="table_title">编号</th>
                        <th class="table_title">单证名</th>
                        <th class="table_title">下载</th>
                    </thead>

                    
                    <%
                    com.witsoft.bean.common.StaticManageBean bean=new com.witsoft.bean.common.StaticManageBean();
                    String bills[][]=new com.witsoft.common.Constant().getBills();
                    
                    for(int i = 0;i<bills.length;i++){
					if(i%2==0){
					if(i%4==2||i%4==1){
					out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
					}else{
					out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
					}
					out.println("<span title=\"点击浏览单证\" onclick=\"window.open('/IB/bill/"+bills[i][2]+"')\">");
					out.println("<td align=\"center\">");
					out.println(bills[i][0]);                    
                    out.println("</td>");
                    out.println("<td>");
                    out.println(bills[i][1]);                    
                    out.println("</td>"); 
				   out.println("</span>"); 
				   out.println("<td align='left' style='padding-left:20px'>"); 
				   out.println("<a title=\"点击下载word文档\" target=\"_blank\" href=\"/IB/bill/doc/"+bills[i][0]+".doc"+"\"><i class='fa fa-file-word-o'></i></a>");
                    out.println("</td>");	
					 out.println("<td class='bg'>"); 
                    out.println("</td>");	
					}else{
					
					out.println("<span title=\"点击浏览单证\" onclick=\"window.open('/IB/bill/"+bills[i][2]+"')\">");
                    out.println("<td align=\"center\">");
                    out.println(bills[i][0]);                    
                    out.println("</td>");
                    out.println("<td>");
                    out.println(bills[i][1]);                    
                    out.println("</td>");                    
                    out.println("</span>"); 
					out.println("<td align='left' style='padding-left:20px'>"); 
					out.println("<a title=\"点击下载word文档\" target=\"_blank\" href=\"/IB/bill/doc/"+bills[i][0]+".doc"+"\"><i class='fa fa-file-word-o'></i></a>");
                    out.println("</td>");   
                    out.println("</tr>");    
					}
                    }%>
                </table>
            <!--内容结束-->
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
