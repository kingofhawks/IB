<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>

    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.core.css" />
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.bootstrap.css" />
    <link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<link href="/IB/common/default.css" rel="stylesheet"    type="text/css">
<script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"    src="/IB/common/list.js"></script>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/app.css" rel="stylesheet">
<script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
<script src="resources/vendor/iCheck/icheck.min.js"></script>
    <script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
    <script src="resources/vendor/alertify.js/lib/alertify.min.js"></script>
    <script src="resources/js/app.js"  type="text/javascript" charset="GB2312"></script>
    <style>

    </style>
<script>
    $(document).ready(function(){
        create_toolbar("/IB/systemManage/popedomManage/roleManageNew.jsp?prid=RLM");
        $('#toolbar').append("<a  href=\"/IB/popedomShow.do\"  onClick=\"return openReplace(this.href)\" class=\"btn btn-primary active\" role=\"button\" data-toggle=\"tooltip\"  title=\"权限绑定\"><i class=\"fa fa-lock\"></i></a><a  href=\"/IB/userManageBind.do?mode=role\" data-toggle=\"tooltip\"  title=\"用户组绑定\" onClick=\"return openReplace(this.href)\" class=\"btn btn-primary active\" role=\"button\"><i class=\"fa fa-users\"></i></a>");
        $("a").tooltip();
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
            alertify.confirm("请确认您要删除所选的项目？", function (e) {
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
            alertify.alert("请至少选择一个项目");
            return false;
        }
    }
</script>
</head>

<body>
<html:form action="roleManage.do">
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
            <table border="0" cellpadding="0" cellspacing="0" align="center"  valign="bottom" class="tab_blank">
                <tr>
                    <td class="tab_unactive_btn" id="tab_btn"><h2><strong>角色管理</strong></h2></td>
                </tr>
            </table>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="deleteUserInfo.do?sign=3">
            <div class="form-with-toolbar"></div>
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
                <table width="100%" border="0" cellpadding="0"  cellspacing="1" id="item_list" class="table">
  <%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)session.getAttribute("user");
                     String usid = user.getUsid();%>
                    <thead>
                        <th><input type="checkbox" id="selectAll"></th>
                        <th class="table_title">角色编号</th>
                        <th class="table_title">角色名称</th>
                        <th class="table_title"><bean:message
                            key="systemManage.popedomManage.frameworkNum" /></th>
                        <th class="table_title">备注</th>
                        <th class="table_title">操作用户</th>
                    </thead>
               
                    <logic:notEmpty name="list">
                       <logic:iterate id="list" name="list" indexId="index" scope="request">
              <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>

                                <td align="left">
                                         <logic:equal name="list" property="mkus" value='<%=usid%>'>      
                              <input name="id" type="checkbox"
                                    value="<bean:write
                                        name="list"
                                        property="rlid" />">                                      </logic:equal>  
                                <logic:notEqual name="list" property="mkus" value='<%=usid%>'>                             
                             <input name="id" type="checkbox"
                                    value="<bean:write
                                        name="list"
                                        property="rlid" />" disabled>
                                      
                                  </logic:notEqual>    
                                          
                                  </td>
                                <span
                                    onClick="openReplace('/IB/systemManage/popedomManage/roleManageDetail.jsp?roleInfo=<bean:write
                                        name="list"
                                        property="rlnm" />&roleInfo=<bean:write
                                        name="list"
                                        property="rlds" />&roleInfo=<bean:write
                                        name="list"
                                        property="rlid" />')">
                                <td><bean:write name="list"
                                    property="rlid" /></td>
                                <td><bean:write name="list"
                                    property="rlnm" /></td>
                                <td><bean:write name="list"
                                    property="brno" /></td>
                                <td><bean:write name="list"
                                    property="rlds" /></td>
                                     <td><bean:write name="list"
                                    property="mkus" /></td>
                                </span>
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
