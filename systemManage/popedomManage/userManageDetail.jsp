<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page
    import="com.witsoft.struts.form.systemManage.popedomManage.UserManageNewForm"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
    type="text/css">
<script language="javascript" type="text/javascript"
    src="/IB/common/default.js"></script>
</head>

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
        <td class="outerTable_mainContent"><!--内表格开始-->
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
                <div id="innerTable_div"><!--内容开始--> <html:form
                    action="userManageDetail.do"
                    onsubmit="checkForm(this)">
                    <div id="errMsgDiv"><html:errors /></div>
                    <table width="100%" border="0" cellpadding="0"
                        cellspacing="0">
                        <tr>
                            <td width="50%" align="center" valign="middle">
                            <div style="height:80px"></div><table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">

                                <bean:parameter id="arg2" multiple="yes"
                                    name="userInfo" value="" />
                                <%
        UserManageNewForm userManageNewForm = (UserManageNewForm) request
                .getAttribute("userManageNewForm");
        if (userManageNewForm == null) {
            userManageNewForm = new UserManageNewForm();
        }

        if (userManageNewForm.getUsid() == null
                || userManageNewForm.getUsid().equals("")) {
            userManageNewForm.setUsid(arg2[0]);
            userManageNewForm.setUgnm(new com.witsoft.common.Tools().setUgnm(arg2[0]));
            userManageNewForm.setUsnm(new String(
                    arg2[1].getBytes(), "GB2312"));
            userManageNewForm.setBrno(arg2[2]);
            userManageNewForm.setUstl(arg2[3]);
            userManageNewForm.setRncd(arg2[4]);
        }
        request.setAttribute("userManageNewForm", userManageNewForm);
    %>
                                <tr>
                                  <td height="20" colspan="2"
                                        align="center" valign="middle" class="innertitle">用户管理</td>
                                </tr>
                                <tr>
                                    <td width="44%" height="20"
                                        align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*用户编号：</td>
                                    <td width="56%" valign="middle"><html:text
                                        title="usid" property="usid"
                                        readonly="true" /></td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="middle" bgcolor="#EBEBEB" class="attR">*用户名称：</td>
                                    <td valign="middle"><html:text
                                        title="usnm" property="usnm" maxlength="16"/>                                    </td>
                                </tr>

                                <tr>
                                    <td height="20" align="right"
                                        valign="middle" bgcolor="#EBEBEB" class="attR">*所属班级名：</td>
                                    <td valign="middle"><html:text
                                        title="ugnm" property="ugnm"
                                        readonly="true" maxlength="35"/></td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="middle" bgcolor="#EBEBEB"><bean:message
                                        key="systemManage.popedomManage.tel" /></td>
                                    <td valign="middle"><html:text
                                        property="ustl" maxlength="16"/></td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="middle" bgcolor="#EBEBEB"><bean:message
                                        key="systemManage.popedomManage.isUsed" /></td>
                                    <td valign="middle">
                                    <div class="sele_div_122"><html:select
                                        property="rncd" styleClass="select_122">
                                        <html:option value="Y">YES</html:option>
                                        <html:option value="N">NO</html:option>
                                    </html:select></div>                                    </td>
                                </tr>
                            </table>
                            </td>
                            
                        </tr>
                    </table>




                    

                    <div class="footer"><html:hidden property="errCode"
                        value="" />
						 <input type="image" src='<bean:message key="common.finish" />'>&nbsp;&nbsp;
<input type="image" src='<bean:message key="common.cancel" />' name="cancel" 
onclick="JavaScript:window.location='/IB/userManage.do?prid=USMT';return false"></div>
                </html:form> <!--内容结束--></div>
                </td>
                <td class="innerTable_right_y"></td>
            </tr>
            <tr>
                <td class="innerTable_bottom_left"></td>
                <td class="innerTable_bottom_x"></td>
                <td class="innerTable_bottom_right"></td>
            </tr>
        </table>
        <!--内表结束--></td>
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
