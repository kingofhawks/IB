<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"  src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<link href="/IB/resources/css/app.css" rel="stylesheet">
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="/IB/resources/vendor/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet">
<link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script src="/IB/resources/vendor/modernizr/modernizr.min.js"></script>
<script src="/IB/resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<script src="/IB/resources/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/IB/resources/vendor/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js" charset="UTF-8"></script>

 <script>
     $(function() {
         if (!Modernizr.inputtypes.date){
             $('.datepicker').datepicker({
                 todayHighlight: true,
                 language: 'zh-CN'
             })
         }
     });
</script>
<body>
<%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                .getAttribute("user");

        com.witsoft.struts.action.systemManage.grade.LogWhere log = new com.witsoft.struts.action.systemManage.grade.LogWhere();
      
        String usid = request.getParameter("usid");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        String isShow = "0"; //0 - 显示 1－不显示
        if (user.getRole() != null
                && (user.getRole().equals("9998") || user.getRole().equals(
                        "9999"))) {
            if (usid == null && startDate == null
                    && endDate == null) {
                isShow = "1";

            }

            if (request.getParameter("usid") != null
                    && !request.getParameter("usid").equals("")) {
                log.setUsid("%" + request.getParameter("usid") + "%");
            } else if(request.getParameter("usid") == null&& !user.getRole().equals("9998") && !user.getRole().equals(
                        "9999")){
                log.setUsid(user.getUsid());
            }else{
                log.setUsid("%");
                }

            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }
        } else {
            if (startDate == null && endDate == null) {
                isShow = "1";
            }

            log.setUsid(user.getUsid());
            if (request.getParameter("startDate") != null
                    && !request.getParameter("startDate").equals("")) {
                log.setStartDate(request.getParameter("startDate"));
            } else {
                log.setStartDate("1900-01-01");
            }
            if (request.getParameter("endDate") != null
                    && !request.getParameter("endDate").equals("")) {
                log.setEndDate(request.getParameter("endDate"));
            } else {
                log.setEndDate("3000-01-01");
            }

        }
        log.setIsShow(isShow);

        java.util.Map list = new java.util.HashMap();

        list = new com.witsoft.struts.action.systemManage.grade.ShowLogging()
                .getLogging(log, "");
        request.setAttribute("list", list);

        %>
<table width="100%" height="100%" border="0" align="center"
    cellpadding="0" cellspacing="0">
    <tr>
        <td  class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td height="22" class="outerTable_left_y"></td>
        <td align="right" valign="bottom" class="outerTable_head">

            <div>
                <table>
                        <form action="showFlowChart.jsp">
                        <tr>
                            <%if (user.getRole() != null
                    && (user.getRole().equals("9998") || user.getRole().equals(
                            "9999"))) {%>
                            <td>
                                <input type="text" name="usid" class="form-control" placeholder="用户编号">
                            </td>
                            <%}%>
                            <td>&nbsp;开始时间：</td>
                            <td><input type="date" name="startDate"  class="form-control datepicker"></td>
                            <td>&nbsp;结束时间：</td>
                            <td><input type="date" name="endDate" class="form-control datepicker"></td>
                            <td align="right">
                                <button name="submit" type="submit" class="btn btn-primary">
                                    <i class="fa fa-search"></i> 查看
                                </button>
                            &nbsp;&nbsp;</td></tr>
                        </form>
                </table>
            </div>
            <div>
                <table border="0" cellpadding="0" cellspacing="0" align="center"   valign="bottom" class="tab_blank">
                    <tr>
                        <td class="tab_unactive_btn" id="tab_btn"><h2><strong>公告信息</strong></h2></td>
                    </tr>
                </table>
            </div>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="showFlowChart.jsp">
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
                
                
<div id="innerTable_divLis" style="width:96%"><!--内容开始-->
                <table width="100%" border="0" cellpadding="0"  cellspacing="1" id="item_list" style="cursor:auto;" class="table">
                    <thead>
                        <th class="table_title">学生姓名</th>
                        <th class="table_title">用户名</th>
                        <th class="table_title">操作名称</th>
                        <th class="table_title">业务编号</th>
                        <th class="table_title">操作时间</th>
                    </thead>
                    <%
        java.util.Map list1 = (java.util.HashMap) request.getAttribute("list");
        if (list != null) {
            int j = 0;
            for (int i = 0; i < list1.size(); i++) {
                Object[] obj = (Object[]) list1.get((i + "").trim());
if(i%2==1){
out.println("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\"");

}else{
out.println("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\'; \"");

}
                    out.print("onClick=\"window.open('/IB/flowchart.do?id="
                                    + obj[3]
                                    + "&prid="
                                    + obj[5]
                                    + "','newwindow','toolbar=no,menubar=no,scrollbars=yes,resizable=no,location=no,status=no')\">");
               
                for (j = 0; j < 5; j++) {
                    %>
                    <td><%=obj[j]%></td>
                    <%}%>
                    </tr>
                    <%}
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
        <!--内表结束--></form>        </td>
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
