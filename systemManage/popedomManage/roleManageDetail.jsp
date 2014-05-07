<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page
    import="com.witsoft.struts.form.systemManage.popedomManage.RoleManageForm"%>
<html>
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
                    action="roleDetail.do" onsubmit="checkForm(this)">
                    <div id="errMsgDiv"><html:errors /></div>
                    <table width="100%" border="0" cellpadding="0"
                        cellspacing="0">
                        <bean:parameter id="arg2" multiple="yes"
                            name="roleInfo" value="" />
                        <%
        RoleManageForm roleManageNewForm = (RoleManageForm) request
                .getAttribute("roleManageForm");
        if (roleManageNewForm == null) {
            roleManageNewForm = new RoleManageForm();
        }

        if (roleManageNewForm.getRlid() == null
                || roleManageNewForm.getRlid().equals("")) {

            roleManageNewForm.setRlnm(new String(
                    arg2[0].getBytes(), "GB2312"));
            roleManageNewForm.setRlds(new String(
                    arg2[1].getBytes(), "GB2312"));
            roleManageNewForm.setRlid(arg2[2]);
        }
        request.setAttribute("roleManageNewForm", roleManageNewForm);
    %>
                        <tr>
                          <td width="99%" valign="top"><div class="blankt"></div>
                            <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                <tr>
                                  <td height="20" colspan="2"
                                        align="center" valign="middle" class="innertitle">角色管理</td>
                                </tr>
                                <tr>
                                    <td width="38%" height="20"
                                        align="right" valign="bottom" bgcolor="#EBEBEB" class="attR">*角色名称：</td>
                                  <td width="56%" valign="top"><html:text
                                        property="rlnm" title="rlnm" maxlength="16"></html:text>                                    </td>
                                </tr>
                                <tr>
                                  <td height="20" align="right"
                                        valign="top" bgcolor="#EBEBEB"><bean:message
                                        key="systemManage.popedomManage.memo" /></td>
                                    <td valign="top"><html:text
                                        property="rlds" maxlength="16"></html:text></td>
                                </tr>
                                <html:hidden property="rlid"/>
                            </table>
                          </td>
                           
                        </tr>
                    </table>
                    <div class="footer"><html:hidden property="errCode" />
					<input type="image" src='<bean:message key="common.finish" />' >&nbsp;&nbsp;
					 <input type="image"  name="cancel" src='<bean:message key="common.cancel" />' onclick="JavaScript:document.location='/IB/roleManage.do?prid=RLMT'">
					 </div>
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
</html>
