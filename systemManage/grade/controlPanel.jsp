<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
<style>

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }
    .form-signin .checkbox {
        font-weight: normal;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }
    .form-signin .form-control:focus {
        z-index: 2;
    }
    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }
    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }
</style>
<script>
    $(function() {
        $("#usnm").attr("placeholder", "用户名");
        $("#tele").attr("placeholder", "电话号码");
        $("#oldPwd").attr("placeholder", "原始密码");
        $("#newPwd").attr("placeholder", "新密码");
        $("#rePwd").attr("placeholder", "重复新密码");
    });
</script>
<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div">

                            <!--内容开始-->


                            <div class="container">

                                <html:form action="person.do" method="post" styleClass="form-signin">
                                    <h2 class="form-signin-heading">个人设定</h2>
                                    <html:text property="usnm" styleId="usnm" maxlength="10" styleClass="form-control"/>
                                    <html:text property="tele" styleId="tele" maxlength="20" styleClass="form-control"/>
                                    <html:password property="oldPwd" styleId="oldPwd" maxlength="6" styleClass="form-control"/>
                                    <html:password property="newPwd" styleId="newPwd" maxlength="6" styleClass="form-control"/>
                                    <html:password property="rePwd" styleId="rePwd"  maxlength="6" styleClass="form-control"/>
                                    <html:hidden property="hidPswd"/>
                                    <button type="submit" class="btn btn-primary btn-lg active form-control">修改</button>


                                </html:form>

                            </div>
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
</html:html>
