<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ page contentType="text/html; charset=GB2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName"/></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
</head>

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
                            <html:form  action="roleNew.do" onsubmit="checkForm(this)">
                        <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="100%" align="center" valign="top">                                        
                                        <div class="blankt"></div><table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                              <td colspan="2" align="center" valign="middle" class="innertitle">角色管理</td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">角色名称：</td>
                                              <td width="71%" align="left" valign="middle" bgcolor="#FFFFFF"><html:text property="rlnm" title="rlnm" maxlength="16"></html:text></td>
                                            </tr>
                                            <tr>
                                              <td height="20" align="right" valign="middle" bgcolor="#EBEBEB"><bean:message key="systemManage.popedomManage.memo"/></td>
                                              <td align="left" valign="middle" bgcolor="#FFFFFF"><html:text property="rlds" maxlength="16"></html:text></td>
                                            </tr>
                                      </table><div class="footer">
                                <html:hidden property="errCode" />
                                <input type="image" src='<bean:message key="common.finish" />' name="letter">
								&nbsp;&nbsp;<input type="image" name="cancel" src='<bean:message key="common.cancel" />' onclick="JavaScript:document.location='/IB/roleManage.do';return false">
                            </div>
                                  </td></tr>
                            </table>
                            
                          
                           
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x">  
                            </td>
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
</body> </html:form>
</html>
