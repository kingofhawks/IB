<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>国际结算模拟系统</title>
<script type="text/javascript" src="common/default.js"></script>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/app.css">
<style>
body{behavior: url('/IB/common/mouse.htc');
/*	border:#3A8DCF 1px solid;
*/	margin-bottom: 1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
}
body,table { font-size:12px;color:#08346B; }
td.systemInfo_title {color:#FFFFFF; vertical-align:middle; text-align:center;}
td.systemInfo_date {vertical-align:middle; text-align:right;}
td.systemInfo_middle{background:url(/IB/images/top_systemInfo_bg.gif)}
td.systemInfo_anounce{ text-align:right;}
.personalInfo {color:#FF0000;text-transform : uppercase;}
#roleSelectDiv{position:relative; display:none; border:1px solid #000000; width:129px; height:18px; clip:rect(0px,126px,17px,0px);overflow:hidden;}
#roleSelect {font-size:12px; height:14px; position:relative; margin:-2px;width:129px;border:0px; }
#changeRoleDiv {cursor:hand; width:129px;}
</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

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

<body onLoad="MM_preloadImages('/IB/images/btn_loginOut_o.gif')" style="overflow-y:hidden;">
<%
    // This is a scriptlet.  Notice that the "date"
    // variable we declare here is available in the
    // embedded expression later on.
   com.witsoft.common.UserBean user = (com.witsoft.common.UserBean) session.getAttribute("user");
%>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" style="font-size: 25px; text-decoration: none"><b>国际结算模拟系统</b></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
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
                <li><a href="temp1.jsp" target="_self"><i class="fa fa-sign-out fa-2x"></i> 签退</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
<br >
<br >
<br >
</body>
</html>
