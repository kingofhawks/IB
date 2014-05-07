<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"
    type="text/css">
<script language="javascript" type="text/javascript"
    src="/IB/common/default.js"></script>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
</head>

<body>
<html:form action="userUg.do">
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
        <table border="0" cellpadding="0" cellspacing="0" align="left"
            valign="bottom" class="tab_blank">
            <tr>
                <td class="tab_active_left" id="tab_left"></td>
                <td class="tab_active_btn" id="tab_btn"><nobr>班级管理</nobr></td>
                <td class="tab_active_right" id="tab_right"></td>
            </tr>
        </table>
        <table  width="100%" border="0" align="right" cellpadding="0" cellspacing="0" style="margin-left:2px">
            <tr><td width="20%"></td>
		      <td width="50%" align="right"><script language="javascript">showOperation("/IB/systemManage/popedomManage/userGroupManageNew.jsp?prid=UGMT");</script></td>
			 
                <td width="30%" align="left" class="opertion"><a  href="/IB/userManageBind.do?mode=user"  onClick="return openReplace(this.href)"><img   src="/IB/images/userBlind2Group.gif"   alt="用户绑定到用户组" width="80" height="22" border="0" hspace="0"></a></td>
            </tr>
        </table>
        
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="deleteUserInfo.do?sign=2">
        <table width="100%" height="100%" border="0" align="center"
            cellpadding="0" cellspacing="0">
            <tr>
                <td class="innerTable_top_left"></td>
                <td class="innerTable_top_x"></td>
                <td class="innerTable_top_right"></td>
            </tr>
            <%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)session.getAttribute("user");
                     String usid = user.getUsid();%>
            <tr>
                <td class="innerTable_left_y"></td>
                <td align="center" class="innerTable_main">
                <div id="innerTable_divLis" style="width:96%"><!--内容开始-->
                <table width="100%" border="0" cellpadding="0"
                    cellspacing="1" id="item_list">
                    <tr>
                        <th width="5%"></th>
                        <th width="15%">班级编号</th>
                        <th width="15%">班级名称</th>
                        <th width="15%">银行编号</th>
                        <th width="35%">备注</th>
                        <th width="15%">班级教师</th>
                    </tr>
                    <logic:notEmpty name="list">
                        <logic:iterate id="list" name="list" indexId="index" scope="request">
										 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
                                <td>
                                 <logic:equal name="list" property="mkus" value='<%=usid%>'>      
                                <input name="id" type="checkbox"  value="<bean:write name="list"  property="ugid" />">
                                </logic:equal> 
                                <logic:notEqual name="list" property="mkus" value='<%=usid%>'>     
                                  <input name="id" type="checkbox"  value="<bean:write
                                        name="list"
                                        property="ugid" />" disabled>
                                         </logic:notEqual>    
                                        </td>
                                <span  onclick="openReplace('/IB/systemManage/popedomManage/userGroupManageDetail.jsp?userUg=<bean:write
                                        name="list"
                                        property="ugnm" />&userUg=<bean:write
                                        name="list"
                                        property="ugds" />&userUg=<bean:write
                                        name="list"
                                        property="ugid" />&userUg=<bean:write
                                        name="list"
                                        property="mkus" />')">
                                <td><bean:write name="list"
                                    property="ugid" /></td>
                                <td><bean:write name="list"
                                    property="ugnm" /></td>
                                <td><bean:write name="list"
                                    property="brno" /></td>
                                <td><bean:write name="list"
                                    property="ugds" /></td>
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
