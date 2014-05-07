<%@ page contentType="text/html; charset=GB2312"%>
<script language="javascript">

<%
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) request
                .getSession().getAttribute("user");
    if(user==null){
    %>
    parent.location.href='index.jsp?overtime=true'
    <%
    }else
    if(user!=null&&user.getRole().equals("9998")||user.getRole().equals("9999")){//特殊权限代码直接退到首页(9999)系统维护(9998)教师
  //  System.out.println(user.getRole());
  //  com.witsoft.bean.systemManage.popedomManage.PopedomManage manage=new com.witsoft.bean.systemManage.popedomManage.PopedomManage();
  //  manage.loginOut("****",user.getUsid());
   session.removeAttribute("user");
    %>
    parent.location.href='index.jsp'
    <%}
   // System.out.println("设置loginnews成功");
    request.getSession().setAttribute("loginnews","true");
    //request.setAttribute("loginnews","true");
    %>
parent.location.href="/IB/index.jsp"

</script>