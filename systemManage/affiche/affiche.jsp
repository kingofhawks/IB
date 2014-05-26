<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<!DOCTYPE html>
<html>
<head>
    <link href="resources/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.core.css" />
    <link rel="stylesheet" href="resources/vendor/alertify.js/themes/alertify.bootstrap.css" />
    <link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
    <script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>

    <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
    <link href="resources/vendor/iCheck/skins/square/blue.css" rel="stylesheet">
    <script src="resources/vendor/iCheck/icheck.min.js"></script>
    <script src="resources/vendor/alertify.js/lib/alertify.min.js"></script>
    <script src="resources/js/app.js"  type="text/javascript" charset="GB2312"></script>
    <script>
        $(document).ready(function(){
            create_toolbar("/IB/systemManage/affiche/editor.jsp?sign=add");
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
<form></form>

<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td height="22" class="outerTable_left_y"></td>
        <td align="right" class="outerTable_head">

            <table border="0" cellpadding="0" cellspacing="0" align="center" valign="bottom" >
                <tr>
                    <td class="tab_unactive_btn" id="tab_btn"><h2><strong>公告信息管理</strong></h2></td>
                </tr>
            </table>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
            <form method="post" action="announcement.do?sign=delete">
                <div class="form-with-toolbar"></div>
                <table width="100%" height="100%" border="0" align="center"  cellpadding="0" cellspacing="0" >
                    <tr>
                        <td class="innerTable_top_left"></td>
                        <td class="innerTable_top_x"></td>
                        <td class="innerTable_top_right"></td>
                    </tr>
                    <tr>
                        <td class="innerTable_left_y"></td>
                        <td align="center" class="innerTable_main">
                            <div  style="width:96%;height:98%">
                                <table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table">
                                    <thead>
                                        <th><input type="checkbox" id="selectAll"></th>
                                        <th><h5><strong>编号</strong></h5></th>
                                        <th><h5><strong>标题</strong></h5></th>
                                        <th><h5><strong>发布人</strong></h5></th>
                                        <th><h5><strong>发布时间</strong></h5></th>
                                    </thead>

                                    <logic:notEmpty name="list">
                                        <logic:iterate id="list" name="list" indexId="index" scope="request">
                                            <%if ((index.intValue() % 2) == 1) {
                                                out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
                                            } else {
                                                out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
                                            }%>
                                            <td>
                                                <div align="left">
                                                    <input type="checkbox" class="check" name="id" value="<bean:write name='list' property='id' />">
                                                </div>
                                            </td>
                                            <span onClick="openReplace('announcement.do?sign=updateBe&id=<bean:write name='list' property='id'/>')">
                                                <td align="left"><bean:write name="list" property="id" /></td>
                                                <td align="left"><bean:write name="list" property="title" /></td>
                                                <td align="left"><bean:write name="list" property="mkus" /></td>
                                                <td align="left"><bean:write name="list" property="mkdt" /></td>
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
</html>
