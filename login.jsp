<%@ page contentType="text/html; charset=GB2312" %>
<%

String brno = request.getParameter("brno");
String rlid = request.getParameter("rlid");
com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)request.getSession().getAttribute("user");

if(user == null||brno==null){

%>
    <jsp:forward page="index.jsp" />
<%
}

if(brno!=null&&brno.equals("null")){

%>
    <jsp:forward page="index.jsp" />
<%
}
if(user!=null&&user.getUsid()!=null&&brno!=null){
//user = new com.witsoft.common.UserBean();
if(brno.equals("****")&&rlid!=null&&rlid.equals("9998")){
user.setBrno(brno);
user.setRole(rlid);
String rildArray[][]={{"教师","9998"}};

session.setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(rildArray).replace("<option></option>",""));
session.setAttribute("user",user);

%>
<jsp:forward page="main.jsp?id=00" />
<%
}//教师角色

if(brno.equals("****")&&rlid!=null&&rlid.equals("9999")){
user.setBrno(brno);
user.setRole(rlid);
String rildArray[][]={{"系统管理员","9999"}};

session.setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(rildArray).replace("<option></option>",""));
session.setAttribute("user",user);

%>
<jsp:forward page="main.jsp?id=00" />
<%

}//系统管理员角色
user.setBrno(brno);

 rlid = ((String[])new com.witsoft.bean.systemManage.popedomManage.EmrlctpBean().findPartOnlyUsid(user.getUsid(),user.getBrno()).get(0))[1];
 if(rlid==""||rlid.equals("")) {//没有检索到权限
 request.setAttribute("msg","common.noPower");
 %>
<jsp:forward page="inc/error.jsp" />
<%
 }
user.setRole(rlid);

request.getSession().setAttribute("user",user);
request.getSession().setAttribute("rildArray",com.witsoft.common.ConvertOptions.ConvertArrayToString(new com.witsoft.bean.systemManage.popedomManage.EmrlctpBean().findPartOnlyUsid(user.getUsid(),user.getBrno())).replace("<option></option>",""));
}
org.apache.log4j.Logger log = org.apache.log4j.Logger.getLogger("log.txt");

String id=request.getParameter("id");//案例id值

%>
  <jsp:forward page="main.jsp?id=<%id%>" />