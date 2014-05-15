<!DOCTYPE html>
<html>
<head>
    <%@ page contentType="text/html; charset=GB2312"%>
    <title>国际结算模拟系统</title>
    <meta name="Description" content="国际结算模拟系统5.0版" />
    <meta name="Copyright" content="本页版权公司所有。All Rights Reserved" />
    <base onmouseover="window.status='国际结算模拟系统 V5.0 ';return true" />

    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/font-awesome-4.0.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/app.css">
    <link rel="stylesheet" href="resources/css/signin.css">
    <link rel="stylesheet" type="text/css" href="resources/css/component.css" />
    <script src="resources/vendor/jquery/jquery-2.1.1.min.js"></script>
    <script src="resources/bootstrap-3.1.1/js/bootstrap.min.js"></script>
    <script src="resources/vendor/snapsvg/snap.svg-min.js"></script>
    <style>
        body {margin:0px;}
        body, table {font-size:12px;}
        td.submit {padding:4px;}
            /*input.text {border:1px solid #000000; height:22px; width:114px; robin:expression(this.autocomplete='off'); font-size:12px;}*/
        input.submit_btn {border:0px; height:59px; width:83; background-image:url(images/login_submit.gif); cursor:hand;}
        .bank_div {border:1px solid #000000; width:114px; height:18px; clip:rect(0px,135px,17px,0px);overflow:hidden;}
        #brno {font-size:12px; height:16px; position:relative; margin:-2px;width:116px;border:0px;}
        .sele_div{border:1px solid #000000; width:114px; height:18px; clip:rect(0px,135px,17px,0px);overflow:hidden;}
        .selectBox {font-size:12px; height:16px; position:relative; margin:-2px;width:115px;border:0px;}
        .errDiv {color:#FF0000; padding:2px 1px 2px 1px; font-weight:bold;}
            /*
            a:link {color:#000000;text-decoration:none;}
            a:visited {color: #445980;text-decoration: none;}
            a:hover {color:#FAAA05; text-decoration:underline;}
            */
        .version {color:#FF0000;}
        .kangL {border:1px solid #6185B9;  font-size:12px;}
        .kangXD {border:1px solid #c4c4c4; background-color: #F5F5F5; font-size:12px; width:195px; height:45px; text-align:center; vertical-align:middle;}


        .blog-masthead {
            background-color: #428bca;
            -webkit-box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
            box-shadow: inset 0 -2px 5px rgba(0,0,0,.1);
        }

        /* Nav links */
        .blog-nav-item {
            position: relative;
            display: inline-block;
            padding: 10px;
            font-weight: 500;
            color: #cdddeb;
        }
        .blog-nav-item:hover,
        .blog-nav-item:focus {
            color: #fff;
            text-decoration: none;
        }

    </style>
    <script language="javascript" type="text/javascript"  src="common/loginScript.js"></script>
    <script language="javascript">
        function logout(){
            document.getElementById("stunews").innerHTML='<table width="95%" border="0" cellpadding="0" cellspacing="0" class="text"><tr><td width="36%" height="25" align="right" valign="middle">用户编号：</td><td width="64%" valign="middle"><input name="usid" type="text" class="text" id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" style="ime-mode:disabled"></td></tr><tr><td height="25" align="right" valign="middle">用户密码：</td><td valign="middle"><input name="pswd" type="password" class="text" id="pswd" maxLength="6" onKeyDown="if (event.keyCode==13) {setLogin();}"></td></tr></tr><tr><td height="25" align="right" valign="middle">&nbsp;</td><td valign="middle"><input type="image" name="imageField" src="/IB/images/login.gif"  onClick="setLogin();return false">&nbsp;<input type="image" name="cancle" src="/IB/images/cancle.gif" width="53" height="23" onClick="cancle();return false"></td></tr></table>';
            document.getElementById("logoutmethod").innerHTML='';
            HidExam();
        }

        function DisplayExam()
        {
            if(document.all["ok"].style.display=="none")
            {
                document.all["ok"].style.display="block";
                document.all["ok1"].style.display="none";
            }
            else
            {
                document.all["ok"].style.display="none";
                document.all["ok1"].style.display="block";
            }

        }
        function HidExam()
        {
            if(document.all["ok"].style.display=="block")
            {
                document.all["ok"].style.display="none";
                document.all["ok1"].style.display="block";
            }
            else
            {
                document.all["ok"].style.display="block";
                document.all["ok1"].style.display="none";
            }
        }
    </script>

</head>
<%
    com.witsoft.common.UserBean user = (com.witsoft.common.UserBean)request.getSession().getAttribute("user");
%>
<body onLoad="init()">
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="blog-nav-item" href="#">
                <img src="resources/images/logo_pic.png" alt="">
            </a>

        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-credit-card fa-2x">信用证</i> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/IB/cases.do?flag=list&brno=PCBCCNBJBJX">开证行</a></li>
                        <li><a href="/IB/cases.do?flag=list&brno=DGBOFACALI">议付行</a></li>
                        <li><a href="/IB/cases.do?flag=list&brno=MRMDUS33ADR">通知行</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-male fa-2x">托收</i> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/IB/cases.do?flag=list&brno=CMBCCNBS131">托收行</a></li>
                        <li><a href="/IB/cases.do?flag=list&brno=ZH0004">光票托收行</a></li>
                        <li class="divider"></li>
                        <li><a href="/IB/cases.do?flag=list&brno=SANWJPJTXXX">代收行</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-money fa-2x">汇款</i> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/IB/cases.do?flag=list&brno=FS000000025">汇出行</a></li>
                        <li><a href="/IB/cases.do?flag=list&brno=JMXH0011">汇入行</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-flask fa-2x">实验教程</i> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/IB/guide/index.htm">操作说明</a></li>
                        <li><a href="/IB/help/lex/index.htm">相关规则</a></li>
                        <li><a href="/IB/teachingcases/index.htm">教学案例</a></li>
                    </ul>
                </li>
            </ul>
            <li>
                <a href="#">
                    银行： <%if(user!=null&&user.getBrno()!=null){out.print(user.getBrno());}%>
                </a>
            </li>
            <%if(user!= null&&user.getUsid()!=null){
                out.print("<ul class=\"nav navbar-nav navbar-right\">\n");
                out.print("<li><a href=\"/IB/person.do\" target=\"mainFrame\"><i class=\"fa fa-cog fa-2x\"></i>");
                out.print(user.getUsid());
                out.print("</a></li>");
                out.print("<li><a href=\"#\" target=\"_parent\" onclick=\"logout()\"><i class=\"fa fa-sign-out fa-2x\"></i> 退出</a></li>\n");
                out.print("</ul>");
            }%>

        </div><!--/.nav-collapse -->
    </div>
</div>

<form name="form1" method="post" action="#" onSubmit="return doLogin()" onKeyPress="if(event.keyCode == 13)event.returnValue = false" class="form-signin">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center" valign="middle">
                <table width="778" height="526" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="300" valign="bottom" >
                            <div id="pagewrap" class="sidebar-module sidebar-module-inset pagewrap">
                                <div id="loader" class="pageload-overlay" data-opening="M20,15 50,30 50,30 30,30 Z;M0,0 80,0 50,30 20,45 Z;M0,0 80,0 60,45 0,60 Z;M0,0 80,0 80,60 0,60 Z" data-closing="M0,0 80,0 60,45 0,60 Z;M0,0 80,0 50,30 20,45 Z;M20,15 50,30 50,30 30,30 Z;M30,30 50,30 50,30 30,30 Z">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 80 60" preserveAspectRatio="none">
                                        <path d="M30,30 50,30 50,30 30,30 Z"/>
                                    </svg>
                                </div>

                            <table width="300" height="310" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td height="30%">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td height="110" align="center" valign="top">
                                        <h1>国际结算模拟系统</h1>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="330" align="center">
                                        <table width="300" height="160"  border="0" cellpadding="0" cellspacing="0" >
                                            <tr>
                                                <td width="300"  align="center" valign="middle">
                                                    <div id="stunews">
                                                        <table width="95%" border="0" cellpadding="0" cellspacing="0" class="text">
                                                            <tr>
                                                                <td  width="100%" height="28"  align="right" valign="middle">
                                                                    <input name="usid" placeholder="用户编号" type="search" class="form-control" autofocus required id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" maxlength="16"  style="ime-mode:disabled">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="middle"><input name="pswd" placeholder="用户密码" type="password" class="form-control" id="pswd" required maxlength="6" onKeyDown="if (event.keyCode==13) {setLogin('');}">                                            </td>
                                                            </tr>
                                                            <tr>
                                                                <td valign="bottom">
                                                                    <a class="pageload-link btn btn-lg btn-success btn-block" role="button" href="#page-2" onClick="setLogin('');return false">登录</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <table>
                                                        <tr>
                                                            <TD></TD>
                                                            <TD><div id="logoutmethod" class="errDiv"></div></TD>
                                                        </tr>
                                                        <tr>
                                                            <td><div id="errMsg" class="errDiv">
                                                                <%
                                                                    //System.out.println("--->"+request.getSession().getAttribute("loginnews"));
                                                                    if(request.getSession().getAttribute("errMsg")!=null){
                                                                        System.out.print("");
//out.println("<script LANGUAGE=\"JavaScript\">showErr(\""+request.getSession().getAttribute("errMsg")+"\");</script>");
                                                                        out.println(request.getSession().getAttribute("errMsg"));
                                                                        request.getSession().removeAttribute("errMsg");
                                                                    }

                                                                %>
                                                            </div></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table></td>
                                </tr>

                            </table>
                            </div>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
    </table>
</form>

<div class="blog-footer">
    <p>
        <span class="blue">版权所有&copy;</span>
        <a class="blue" href="http://www.xindajd.com.cn/" target="_blank">北京信达佳鼎科技有限公司</a>  <span class="redVer"><span class="blue">Version：</span>5.08.06.001</span>
    </p>
    <p>
        <a class="blue" href="#">回到顶部</a>
    </p>
</div>


<SCRIPT LANGUAGE="JavaScript">
    <!--
    var http_request = false;
    function setLogin(sign)
    {
        var url="";
        document.getElementById("errMsg").innerHTML='';
        if(sign =='true'){
            //alert("------------");
            url = "/IB/Login?sign="+sign;
        }else{
            url = "/IB/Login?usid="+document.forms[0].usid.value+"&pswd="+document.forms[0].pswd.value;
        }
        //alert(url);
        http_request = false;
        if (window.XMLHttpRequest)
        {
            http_request = new XMLHttpRequest();
            if (http_request.overrideMimeType)
            {
                http_request.overrideMimeType('text/html');

            }
        }
        else if (window.ActiveXObject)
        {
            try
            {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e)
            {
                try
                {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
                }
                catch (e)
                {
                }
            }
        }
        if (!http_request)
        {
            return false;
        }
        http_request.onreadystatechange = show;
        http_request.open('GET', url, true);
        http_request.send();
    }
    function show()
    {
        if (http_request.readyState == 4)
        {
            if(http_request.status == 200)
            {
                try
                {
                    var text = http_request.responseText;
                    if(text.length==14){
                        window.location.href("/IB/temp1.jsp");
                        return;
                    }

                    if(text.substring(0,1)=='/'){
                        window.location=text

                    }else if(text.indexOf('</')!=-1){
                        //msg = " <span style='font-size:50px" + ";'>" + text + "</span>.";
                        document.getElementById("stunews").innerHTML=text;
                        document.getElementById("errMsg").innerHTML= '';
                        //document.getElementById("logoutmethod").innerHTML='<input type="image" onclick="lo222gout()" src="/IB/images/quit.gif">';
                        DisplayExam();
                    }else{
                        document.getElementById("stunews").innerHTML='<table width="95%" border="0" cellpadding="0" cellspacing="0" class="text"><tr><td width="36%" height="25" align="right" valign="middle">用户编号：</td><td width="64%" valign="middle"><input name="usid" type="text" class="text" id="usid" onKeyDown="if (event.keyCode==13) {event.keyCode=9;}" style="ime-mode:disabled"></td></tr><tr><td height="25" align="right" valign="middle">用户密码：</td><td valign="middle"><input name="pswd" type="password" class="text" id="pswd" maxLength="6" onKeyDown="if (event.keyCode==13) {setLogin();}"></td></tr></tr><tr><td height="25" align="right" valign="middle">&nbsp;</td><td valign="middle"><input type="image" name="imageField" src="/IB/images/login.gif">&nbsp;<input type="image" name="cancle" src="/IB/images/cancle.gif" width="53" height="23" onClick="cancle();return false"></td></tr></table>';
                        document.getElementById("errMsg").innerHTML= text;
                    }
                }
                catch(e)
                {
                }
            }
            else
            {
                document.getElementById("stunews").innerHTML="<strong><color=\"#FF0000\">对不起，无法获得相关的提示信息。</color></strong>";
            }
        }
        else
        {
            try
            {
                document.getElementById("stunews").innerHTML = "<div class='kangXD'><br>系统正在检查登录信息，请稍等…<br></div>";
            }
            catch (e)
            {
            }
        }
    }
    //-->
    <%
    //System.out.println("--->"+request.getSession().getAttribute("loginnews"));
    if(request.getSession().getAttribute("loginnews")!=null){
    request.getSession().removeAttribute("loginnews");
    out.println("setLogin('true');");
    }

    %>
</SCRIPT>

<script src="resources/vendor/snapsvg/classie.js"></script>
<script src="resources/vendor/snapsvg/svgLoader.js"></script>
<script>
    (function() {
        var pageWrap = document.getElementById( 'pagewrap' ),
                pages = [].slice.call( pageWrap.querySelectorAll( 'div.container' ) ),
                currentPage = 0,
                triggerLoading = [].slice.call( pageWrap.querySelectorAll( 'a.pageload-link' ) ),
                loader = new SVGLoader( document.getElementById( 'loader' ), { speedIn : 100 } );

        function init() {
            triggerLoading.forEach( function( trigger ) {
                trigger.addEventListener( 'click', function( ev ) {
                    ev.preventDefault();
                    loader.show();
                    // after some time hide loader
                    setTimeout( function() {
                        loader.hide();

                        classie.removeClass( pages[ currentPage ], 'show' );
                        // update..
                        currentPage = currentPage ? 0 : 1;
                        classie.addClass( pages[ currentPage ], 'show' );

                    }, 2000 );
                } );
            } );
        }

        init();
    })();
</script>
</body>
</html>