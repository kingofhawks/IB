<%@ page contentType="text/html; charset=GB2312"%>
<script language="javascript">

<%
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) request
                .getSession().getAttribute("user");
    if(user==null){
    %>
    parent.location.href='index.jsp?overtime=true'
    <%
    }
    //System.out.println("ÉèÖÃloginnews³É¹¦");
    request.getSession().setAttribute("loginnews","true");
    //request.setAttribute("loginnews","true");
    %>
parent.location.href="/IB/index.jsp"

</script>