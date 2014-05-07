<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="com.witsoft.struts.form.systemManage.popedomManage.UserGroupManageNewForm" %>
<%@ page import="com.witsoft.common.UserBean" %>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
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
                            <html:form action="userUgDetail.do" onsubmit="checkForm(this)">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            
                            <bean:parameter id="arg2" multiple="yes" name="userUg" value=""/>
                                          <%
                                                UserGroupManageNewForm userGroupManageNewForm = (UserGroupManageNewForm)request.getAttribute("userGroupManageNewForm");
                                          if(userGroupManageNewForm == null){
                                                userGroupManageNewForm = new UserGroupManageNewForm();   
                                          }
                                                       
                                                       if(userGroupManageNewForm.getUgnm() == null || userGroupManageNewForm.getUgnm().equals("")){
                                                                                                        
                                                       userGroupManageNewForm.setUgnm(new String(arg2[0].getBytes(),"GB2312"));
                                                       userGroupManageNewForm.setUgds(new String(arg2[1].getBytes(),"GB2312"));
                                                       userGroupManageNewForm.setUgid(arg2[2]);
                                                       userGroupManageNewForm.setMkus(arg2[3]);
                                                      
                                                       }
                                               request.setAttribute("userGroupManageNewForm",userGroupManageNewForm);
                                          %>
                            
                                <tr>
                                    <td width="50%" align="center" valign="middle">
                                         <div style="height:160px"></div>
                                         <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                              <td colspan="2" align="center" valign="middle" class="innertitle">班级授权</td>
                                            </tr>
                                            <tr>
                                            <html:hidden property="ugid"/>
                                                <td width="44%" height="20" align="right" valign="middle" bgcolor="#EBEBEB" class="attR">班级名：</td>
                                                <td width="56%" align="left" valign="middle">
                                              <html:text property="ugnm" title="ugnm" maxlength="16"  size="30"/>                                                </td>
                                            </tr>
                                            <tr>
                                              <td height="20" align="right" valign="middle" bgcolor="#EBEBEB"><bean:message key="systemManage.popedomManage.memo"/></td>
                                                <td align="left" valign="middle">
                                              <html:text property="ugds" maxlength="16"  size="30"/>                                                </td>
                                            </tr>
                                      </table><div class="footer">
                                <html:hidden property="errCode" />
                                <html:hidden property="mkus" />
                                <%
                                     UserBean user=(UserBean)session.getAttribute("user");
          
                                if(((userGroupManageNewForm.getUgid().equals("9998")||userGroupManageNewForm.getUgid().equals("9999"))&&user.getUsid().equals("ADMIN"))
                                       ||(!userGroupManageNewForm.getUgid().equals("9998")&&!userGroupManageNewForm.getUgid().equals("9999")))
                                        {%>
                                
								<input type="image" name="save" onclick="submitKind(0,'save')" src="<bean:message key="common.finish"/>">&nbsp;&nbsp;
                                <%}%>
                                <input type="image" name="cancel" onclick="JavaScript:document.location='/IB/userUg.do?prid=UGMT'" src="<bean:message key="common.cancel"/>">&nbsp;&nbsp;
                                <%if(userGroupManageNewForm.getMkus()!=null&&userGroupManageNewForm.getMkus().equals(user.getUsid())){%>
                                <input type="image" name="popedom" onclick="JavaScript:document.location='/IB/system/ugidPopedom.jsp?ugid='+document.forms[0].ugid.value" src="/IB/images/authorizationbtn.gif">
								  <%}%>
                            </div>
                                         <div class="blankb"></div></td>
                                </tr>
                            </table>
                            

                           </html:form>
                            
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"> </td>
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
