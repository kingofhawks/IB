<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
    <link href="resources/css/app.css" rel="stylesheet">
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.core.css" />
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.bootstrap.css" />
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
    <script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
    <link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
    <script src="resources/vendor/iCheck/icheck.min.js"></script>
    <script src="resources/vendor/alertify.js/lib/alertify.min.js"></script>
    <style>
        #toolbar {
            margin-left:30px;
        }
    </style>
    <script>
        $(document).ready(function(){
            $('input').iCheck({
                checkboxClass: 'icheckbox_square-blue',
                radioClass: 'iradio_square',
                increaseArea: '20%' // optional
            });

            $('#selectAll').on('ifChanged', function(){
                if ($(this).prop('checked')) {
                    $('input').iCheck("check");
                } else {
                    $('input').iCheck("uncheck");
                }
            });
        });

        function doDelete2()
        {
            var a = document.getElementsByName("id");
            var chked = false;
            for (i=0; i<a.length; i++)
            {
                if (a[i].checked)
                {
                    chked = true;
                    break;
                }
            }
            if (chked)
            {
                alertify.confirm("Message", function (e) {
                    if (e) {
                        // user clicked "ok"
                        document.forms[1].submit();
                    } else {
                        // user clicked "cancel"
                    }
                });
            }
            else
            {
                alert("???????????????")
                return false;
            }

        }
    </script>
<body>
<%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                .getAttribute("user");%>
<html:form action="userManage.do">
    <html:hidden property="tabID" />
</html:form>
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
            <table border="0" cellpadding="0" cellspacing="0" align="center" valign="bottom" class="tab_blank">
                <tr>
                    <td class="tab_unactive_btn" id="tab_btn"><h2><strong>用户管理</strong></h2></td>
                </tr>
            </table>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="deleteUserInfo.do?sign=1">
            <div class="form-group" id="toolbar">
                <a href="/IB/userManageNew.do?prid=USMT" class="btn btn-primary active" role="button">新建</a>
                <a href="#" class="btn btn-primary active" role="button" onclick="doDelete()">删除</a>
                <a href="#" class="btn btn-primary active" role="button"  onclick="doDelete2()">Test</a>
            </div>
            <div id="myModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <h1>Model Test</h1>
                        <p>hhaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
                    </div>
                </div>
            </div>
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
                <table width="100% " border="0"  cellpadding="0" cellspacing="1" id="item_list" class="table">
                     <%
                     String usid = user.getUsid();%>
                    <thead>
                        <th><input type="checkbox" id="selectAll"></th>
                        <th class="table_title">角色编号</th>
                        <th class="table_title"><bean:message
                                key="systemManage.popedomManage.userName2" /></th>
                        <th class="table_title">银行编号</th>
                        <th class="table_title">用户密码</th>
                        <th class="table_title"><bean:message key="systemManage.popedomManage.yesOrNo" /></th>
                        <th class="table_title">操作教师</th>
                    </thead>
                    <logic:notEmpty name="list">
                        <logic:iterate id="list" name="list"
                            indexId="index" scope="request">
										 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
                                <td> 
                                <logic:equal name="list" property="mkus" value='<%=usid%>'> 
                                <input
                                    name="id" type="checkbox"
                                    value="<bean:write name="list" property="id.usid" />">
                                    </logic:equal>  
                                <logic:notEqual name="list" property="mkus" value='<%=usid%>'>   
                                  <input
                                    name="id" type="checkbox"
                                    value="<bean:write name="list" property="id.usid" />" disabled>
                                     </logic:notEqual>    
                                </td>
                                <span
                                    onclick="openReplace('/IB/systemManage/popedomManage/userManageDetail.jsp?userInfo=<bean:write
                                    name="list" property="id.usid" />&userInfo=<bean:write name="list"
                                    property="usnm" />&userInfo=<bean:write name="list"
                                    property="id.brno" />&userInfo=<bean:write name="list"
                                    property="ustl" />&userInfo=<bean:write name="list"
                                    property="rncd" />')">
                                <td><bean:write name="list"
                                    property="id.usid" /></td>
                                <td><bean:write name="list"
                                    property="usnm" /></td>
                                <td><bean:write name="list"
                                    property="id.brno" /></td>
                                 <td><bean:write name="list"
                                    property="pswd" /></td>   
                                <td><bean:write name="list"
                                    property="rncd" /></td>
                                <td><bean:write name="list"
                                    property="mkus" /></td>
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
