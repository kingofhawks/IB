<!DOCTYPE  HTML  PUBLIC  "-//W3C//DTD  HTML  4.0  Transitional//EN">   
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>国际结算模拟系统</title>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<script type="text/javascript" src="common/default.js"></script>
<style>
body,table {margin:0px; font-size:12px;color:#08346B;behavior: url('/IB/common/mouse.htc') }
td.systemInfo_title {color:#FFFFFF; vertical-align:middle; text-align:center;}
td.systemInfo_date {vertical-align:middle; text-align:right;}
td.systemInfo_middle{background:url(images/top_systemInfo_bg.gif)}
td.systemInfo_anounce{ text-align:right;}
.userInfo{background-image:url(/IB/images/userInfo.gif);white-space:nowrap;}
.personalInfo {text-transform : uppercase;color:#FF6643;}
#roleSelectDiv{position:relative; display:none; border:1px solid #000000; width:127px; height:18px; clip:rect(0px,117px,17px,0px);overflow:hidden; top:14px; left:40px;zindex:1px;
}
#roleSelect {font-size:12px; height:14px; position:relative; margin:-2px;width:129px;border:0px; }
#changeRoleDiv {cursor:hand;}
a {behavior:url('/IB/common/link.htc')}
body,td,th {
	color: #006EC5;
}

.navbar-fixed-top {
    background-color: #428bca;
    -webkit-box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
    box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
}

.navbar-default {
    background-color: #428bca;
    border-color: #428bca;
}
.navbar-default .navbar-brand {
    color: #ecf0f1;
}
.navbar-default .navbar-brand:hover, .navbar-default .navbar-brand:focus {
    color: #0000ff;
}
.navbar-default .navbar-text {
    color: #ecf0f1;
}
.navbar-default .navbar-nav > li > a {
    color: #ecf0f1;
}
.navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
    color: #0000ff;
}
.navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active > a:hover, .navbar-default .navbar-nav > .active > a:focus {
    color: #0000ff;
    background-color: #428bca;
}
.navbar-default .navbar-nav > .open > a, .navbar-default .navbar-nav > .open > a:hover, .navbar-default .navbar-nav > .open > a:focus {
    color: #0000ff;
    background-color: #428bca;
}
.navbar-default .navbar-toggle {
    border-color: #428bca;
}
.navbar-default .navbar-toggle:hover, .navbar-default .navbar-toggle:focus {
    background-color: #428bca;
}
.navbar-default .navbar-toggle .icon-bar {
    background-color: #ecf0f1;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
    border-color: #ecf0f1;
}
.navbar-default .navbar-link {
    color: #ecf0f1;
}
.navbar-default .navbar-link:hover {
    color: #0000ff;
}

@media (max-width: 767px) {
    .navbar-default .navbar-nav .open .dropdown-menu > li > a {
        color: #ecf0f1;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
        color: #0000ff;
    }
    .navbar-default .navbar-nav .open .dropdown-menu > .active > a, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
        color: #0000ff;
        background-color: #428bca;
    }
}


</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>

<%String id=request.getParameter("id");%>

<script language="javascript">
<!--
function reSetFrames() 
{ 
var url ="cases.do?flag=load&id=<%=id%>";
var name = "newwindowtop";
var features = "height=425,width=264,top=200,left=780,scrollbars=yes,resizable=no,location=no";
var bankWindow=window.open(url, name, features);
if (!bankWindow) {
  bankWindow = window.open(url,name,features);
}

if (!bankWindow) {
  window.location.replace(url)
} else {
  window.opener=null;
  window.close();
  bankWindow.focus();
}}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script> 
</head>

<body onLoad="top.window.focus(),MM_preloadImages('images/btn_chgRole_o.gif','images/authorization_o.gif','images/btn_competition_o.gif','images/btn_ansManage_o.gif','images/btn_viewAns_o.gif','images/btn_settings_o.gif','images/btn_view_o.gif','images/btn_viewlog_o.gif','images/btn_mydz_o.gif','images/btn_caseedit_o.gif','images/btn_loginOut_o.gif')">
<%
    // This is a scriptlet.  Notice that the "date"
    // variable we declare here is available in the
    // embedded expression later on.
    System.out.println( "Evaluating date now" );
    java.util.Date date = new java.util.Date();
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session.getAttribute("user");
%>

 <SCRIPT language=JavaScript>

</SCRIPT>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" style="font-size: 25px; text-decoration: none"><b>国际结算模拟系统</b></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/IB/authorizationAction.do" target="_parent"><i class="fa fa-key fa-2x"></i> 授权</a></li>
                <li><a href="/IB/systemManage/grade/gradeList.jsp" target="mainFrame"><i class="fa fa-pencil-square-o fa-2x"></i> 测评</a></li>
                <li><a href="/IB/announcement.do?sign=teacher" target="mainFrame"><i class="fa fa-bullhorn fa-2x"></i> 公告管理</a></li>
                <li><a href="announcement.do?sign=stu" target="mainFrame"><i class="fa fa-search-plus fa-2x"></i> 公告查看</a></li>
                <li><a href="/IB/flowChart/showFlowChart.jsp" target="mainFrame"><i class="fa fa-bar-chart-o fa-2x"></i> 学生操作</a></li>
                <li><a href="/IB/bill/bills.jsp" target="mainFrame"><i class="fa fa-files-o fa-2x"></i> 贸易单证</a></li>
                <li><a href="/IB/cases.do?flag=list" target="mainFrame"><i class="fa fa-edit fa-2x"></i> 案例</a></li>

            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="#">
                        银行： <%if(user!=null&&user.getBrno()!=null){out.print(user.getBrno());}%>
                    </a>
                </li>

                <li>
                    <a href="/IB/person.do" target="mainFrame"><i class="fa fa-cog fa-2x"></i>
                        <%
                            if(user!=null&&user.getUsid()!=null){
                                out.print(user.getUsid());
                            } else {
                                out.print("个人设定");
                            }
                        %>
                    </a>
                </li>
                <li><a href="temp.jsp" target="mainFrame"><i class="fa fa-sign-out fa-2x"></i> 退出</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>


 <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
 <script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
</body>
</html>
