<%@ page import="com.witsoft.bean.cases.CasesManage" %>
<%@ page import="com.witsoft.common.UserBean" %>
<%@ include file="/common/header.jsp"%>

<%

String id=(String)session.getAttribute("casesId");
UserBean user=(UserBean)session.getAttribute("user");
session.removeAttribute(id);
%>
<html:rewrite forward="cases.do?id=<%=id%>"/>


