<%@ page language="java" import="com.witsoft.common.*"%>
<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>

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
                            <html:form action="/authorizationAction.do" method="post">
                            <div id="errMsgDiv"><html:errors/></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="100%" align="center" valign="top">                                        <div class="blankt"></div>
                                        <table width="80%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                          
                                            <tr>
                                              <td colspan="2" align="center" valign="middle" class="innertitle">系统授权</td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="middle" bgcolor="#EBEBEB">序列号：</td>
                                              <td width="57%" valign="top"><html:text property="serialNo" styleClass="input_rd128" readonly="true" /></td>
                                            </tr>
                                              <tr>
                                                <td width="43%" align="right" valign="middle" bgcolor="#EBEBEB">授权号：</td>
                                                <td valign="top"><html:text property="authorNo" styleClass="input_tx128" maxlength="16" /></td>
                                            </tr>
                                            <tr>
                                                <td align="right" valign="middle" bgcolor="#EBEBEB">验证码：</td>
                                                <td valign="top"><html:text property="validateCode" styleClass="input_txt80" maxlength="4" />&nbsp;&nbsp;<img align="middle" alt="" src="/IB/valiCodeImage" /></td>
                                            </tr>
                                      </table>
                                    </td>
                              </tr>
                            </table>
                            <div class="footer">
                            <html:hidden property="processId" value="SYSA"/>
                            <input type="image" src="/IB/images/next_kz.gif" >  
                            &nbsp;&nbsp;<input type="image" name="cancel" src='<bean:message key="common.cancel" />' onClick="javascript:history.back();return false"></div>
                            </html:form>
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"> </td>
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
  <td>
   <%
   com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)request.getSession().getAttribute("user");
    out.println(user.getUsid());    
    Winib dao=new Winib();
    String ro=dao.FindName(user.getUsid());
    int role=Integer.parseInt(ro);        
        if(role==9999){
        	 response.sendRedirect(request.getContextPath()+"/login.jsp?brno=****&rlid=9999");
        }else{
        	if(role==9998){
        	response.sendRedirect(request.getContextPath()+"/login.jsp?brno=****&rlid=9998");
        	}else{
                response.sendRedirect(request.getContextPath()+"/temp1.jsp");
        	}
        }
 %>

</td>
〈/tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</body>
</html:html>
