<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>
<%@ page import="com.witsoft.common.UserBean" %>

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
                    action="userManageNew.do" onsubmit="checkForm(this)">
                    <div id="errMsgDiv"><html:errors /></div>
                    <table width="100%" border="0" cellpadding="0"
                        cellspacing="0">
                        <tr>
                            <td width="50%" valign="top">
                            <table width="350" border="0"
                                cellpadding="0" cellspacing="0">

                                <%
            UserBean user=(UserBean)session.getAttribute("user");
            String brno = user.getBrno(); //取机构号

        %>
                                <tr>
                                    <td height="20" align="right"
                                        valign="top" class="attR"><bean:message
                                        key="systemManage.popedomManage.userName" /></td>
                                    <td valign="top"><html:text
                                        title="usnm" property="usnm" maxlength="16"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td height="20" align="right"
                                        valign="top" class="attR"><bean:message
                                        key="systemManage.popedomManage.affiliatedFrameworkNum" /></td>
                                    <td valign="top"><html:text
                                        title="brno" property="brno"
                                        value="<%=brno%>"
                                        readonly="true" /></td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="top"><bean:message
                                        key="systemManage.popedomManage.tel" /></td>
                                    <td valign="top"><html:text
                                        property="ustl"  maxlength="16"/></td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="top"><bean:message
                                        key="systemManage.popedomManage.isUsed" /></td>
                                    <td valign="top">
                                    <div class="sele_div"><html:select
                                        property="rncd">
                                        <html:option value="Y">YES</html:option>
                                        <html:option value="N">NO</html:option>
                                    </html:select></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="20" align="right"
                                        valign="top">班级：</td>
                                    <td valign="top">
                                    <div class="sele_div"><html:select
                                        property="rncd">
                                        <html:option value=""></html:option>
                                    </html:select></div>
                                    </td>
                                </tr>
                            </table>
                            </td>
                            <td width="50%" valign="top">&nbsp;</td>
                        </tr>
                    </table>
                    

                    <div class="footer">
					<html:hidden property="errCode" value="" />
						<input type="image" src='<bean:message key="common.finish" />'>&nbsp;&nbsp;
						<input type="image" src='<bean:message key="common.cancel" />' name="cancel" 
				onclick="JavaScript:document.location='/IB/systemManage/popedomManage/userManage.jsp';return false"></div>
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
