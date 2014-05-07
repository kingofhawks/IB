<%@ page contentType="text/html; charset=GB2312"%>
<script language="javascript">
   <%
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) request
                .getSession().getAttribute("user");
    if(user==null)
    {
    %>
    parent.location.href='index.jsp'
    <%
   // }else{
   // com.witsoft.bean.systemManage.popedomManage.PopedomManage manage=new com.witsoft.bean.systemManage.popedomManage.PopedomManage();
  //  manage.loginOut("****",user.getUsid());
       }      
   
   session.removeAttribute("user");
      
       %>

<%-- ?????????--%>
<%if(request.getParameter("overtime") !=null){%>
parent.location.href='index.jsp?overtime=true'
<%}else{%>
parent.location.href='index.jsp'
<%}
request.getSession().invalidate();
%>
</script>
