<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=gb2312"%>
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
                    action="userUgNew.do" onsubmit="checkForm(this)"
                    method="post">
         <div id="errMsgDiv"><html:errors /></div>
                    <table width="100%" border="0" cellpadding="0"
                        cellspacing="0">
                        <tr>
                            <td width="50%" align="center" valign="top">
                              <div class="blankt"></div>
                              <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                <tr>
                                  <td colspan="2" align="center" valign="bottom" class="innertitle">新建班级</td>
                                </tr>
                                <tr>
                                    <td width="38%"
                                        align="right" valign="middle" bgcolor="#EBEBEB" class="attR">*班级名：</td>
                                  <td width="62%" align="left" valign="middle"><html:text
                                        property="ugnm" title="ugnm" maxlength="16" size="30"/>                                    </td>
                                </tr>
                                <tr>
                                  <td align="right"
                                        valign="middle" bgcolor="#EBEBEB"><bean:message
                                        key="systemManage.popedomManage.memo" /></td>
                                  <td align="left" valign="middle"><html:text
                                        property="ugds" maxlength="16" size="30"/></td>
                                </tr>
                            </table>
                             <div class="blankb"></div></td>
                           
                        </tr>
                    </table>
                   <html:hidden property="errCode" />
                    <div class="footer">
					<input type="image" src='<bean:message key="common.finish" />'>
					&nbsp;&nbsp;
					<input type="image" name="cancel" src='<bean:message key="common.cancel" />' onclick="JavaScript:document.location='/IB/userUg.do';return false">
                    </div>

                   </html:form> 
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
