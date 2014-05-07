<%@ include file="/common/header.jsp"%>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<body>
<%com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session
                .getAttribute("user");%>
<html:form action="userManage.do">
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
                <td class="tab_active_btn" id="tab_btn"><nobr>用户管理</nobr></td>
                <td class="tab_active_right" id="tab_right"></td>
            </tr>
        </table>

        <script language="javascript">showOperation("/IB/userManageNew.do?prid=USMT");</script>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--内表格开始-->
        <form method="post" action="deleteUserInfo.do?sign=1">
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
                <div id="innerTable_divLis" style="width:96%"><!--内容开始-->
                <table width="100% " border="0"  cellpadding="0" cellspacing="1" id="item_list">
                     <%
                     String usid = user.getUsid();%>
                    <tr>
                        <th width="6%">&nbsp;</th>
                        <th width="17%">用户编号</th>
                        <th width="17%"><bean:message
                            key="systemManage.popedomManage.userName2" /></th>
                        <th width="15%">银行编号</th>
                        <th width="15%">用户密码</th>
                        <th width="12%"><bean:message
                            key="systemManage.popedomManage.yesOrNo" /></th>
                             <th width="18%">操作教师</th>
                    </tr>
                    <logic:notEmpty name="list">
                        <logic:iterate id="list" name="list"
                            indexId="index" scope="request">
										 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
                                <td> 
                                <logic:equal name="list" property="mkus" value='<%=usid%>'> 
                                <input
                                    name="id" type="checkbox"
                                    value="<bean:write name="list" property="id.usid" />">
                                    </logic:equal>  
                                <logic:notEqual name="list" property="mkus" value='<%=usid%>'>   
                                  <input
                                    name="id" type="checkbox"
                                    value="<bean:write name="list" property="id.usid" />" disabled>
                                     </logic:notEqual>    
                                </td>
                                <span
                                    onclick="openReplace('/IB/systemManage/popedomManage/userManageDetail.jsp?userInfo=<bean:write
                                    name="list" property="id.usid" />&userInfo=<bean:write name="list"
                                    property="usnm" />&userInfo=<bean:write name="list"
                                    property="id.brno" />&userInfo=<bean:write name="list"
                                    property="ustl" />&userInfo=<bean:write name="list"
                                    property="rncd" />')">
                                <td><bean:write name="list"
                                    property="id.usid" /></td>
                                <td><bean:write name="list"
                                    property="usnm" /></td>
                                <td><bean:write name="list"
                                    property="id.brno" /></td>
                                 <td><bean:write name="list"
                                    property="pswd" /></td>   
                                <td><bean:write name="list"
                                    property="rncd" /></td>
                                <td><bean:write name="list"
                                    property="mkus" /></td>
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
</html:html>
