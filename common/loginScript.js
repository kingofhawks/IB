/*
 *Javascript 文档
 *by 肖斌
 */

//去除字符串前后的空格
String.prototype.trim = function()
{
  return this.replace(/(^\s*)|(\s*$)/g, "");
}
/*
 *方法：显示错误信息
 *传入：msg{错误信息}
 */
function showErr(msg)
{
  var msgObj = document.getElementById("errMsg")
  if (msg == "" || msg == null || msg == "undefined")
  {
    msgObj.style.visibility = "hidden";
  }
  else
  {
    msgObj.innerHTML = "<nobr>" + msg + "</nobr>";
    msgObj.style.visibility = "visible";
  }
}
function init()
{
  //alert("开始");
  if (window.location.search.substring(1))
  {
  	//alert("超时?");
    showErr("超时退出，请重新登陆！");
    return false;
  }
  //alert("没有超时!\n那，是IE吗？");
  var agt = navigator.userAgent.toLowerCase();
  var isIE = false;
  if (agt.indexOf("msie")!= -1&&document.all)
  {
  	//alert("是啊，是"+agt+"\n\n那你帮我看看IE的版本吧");
    isIE = true;
    ver = parseFloat(agt.substring(agt.indexOf("msie")+4,agt.length));
  }
  //alert("嗯。好我看看");
  if (isIE)
  {
    if (ver < 6)
    {
    //alert("哎呀，版本不够啊");
      ctrlForm(true,form1,'0,1,2')
      showErr("注意：您的浏览器版本过低，无法正常使用系统。请升级。");
      return false;
    }
  }
  else
  {
  alert("呵呵。。不是IE你瞅什么瞅？");
    ctrlForm(true,form1,'0,1,2')
    showErr("您需使用IE浏览器才能正常使用本系统");
    return false;
  }
  if (window.screen.width < 1000)
  {
  alert("哎呀.分辨率不够");
    showErr("建议使用1024 * 768 分辨率以获得最佳效果。");
  return false;
  }
}

///////////////////////////////////////////////////////////////ajax
/**
 *新建一个xmlhttp对象
 *传入参数：urlfeather{url参数},functionname{完成时调用的函数}
 *返回：xmlhttp对象
 */
var http_request = false;
function doQuery(urlfeather,functionname)
{
  var url = "login.do?" + urlfeather + "&temp=" + Math.random();
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
    showErr("对不起，无法创建XMLhttp对象。请查看帮助。")
    return false;
  }
  http_request.onreadystatechange = functionname;
  http_request.open('GET', url, true);
  http_request.send(); 
}


/**
 *控制表单的可读写
 *传入 a {false:可写,true:只读},f{要控制的表单}, e {数组要控制的表单项}
 *ctrlForm(true,form1,'0,1,2,3')
 */
function ctrlForm(a,f,e)
{
    es = e.split(",");
    for (i=0; i<es.length; i++)
    {
        f.elements[es[i]].disabled = a;
    }
}
function setSelect()
{
  //根据状态来设置select文字
  if (http_request.readyState == 4)
  {
    //window.status = "";
    document.getElementById("rlid").options[0].text = "请选择角色";
    if(http_request.status == 200)
    {
      try
      {
        //alert(http_request.responseText);
        eval(http_request.responseText);
      }
      catch(e)
      {
      }
    }
    else
    {
      //alert("获取数据错误，请重试!");
      showErr("读取角色数据错误，请重试!");
    }
  }
  else
  {
    try
    {
      ctrlForm(true,form1,'2,3');         
      document.getElementById("rlid").options[document.getElementById("rlid").selectedIndex].text = "加载可选项…";
      //window.status = "正在处理数据中，请稍候...";
    }
    catch (e)
    {
    }
  }
}

function setRole(optionArray,valueArray)
{
  var selObj = document.getElementById("rlid");
  /*
  var slen =selObj.length;
  for (i = 0; i <slen; i++)
  {
    selObj.options.remove(1);
  }
  */
  selObj.options.length = 1; //删除原有Options，初始化select
  
  //重新加载新的Options
  if (optionArray.length = valueArray.length)
  {
    for(j=0; j<optionArray.length; j++)
    {
      selObj.options.add(new Option(optionArray[j], valueArray[j]));
    }
  }
}

//doLogin
function doLogin()
{
  usid = document.getElementById("usid").value.trim();
  pswd = document.getElementById("pswd").value.trim();
  if(usid=="")
  {
  showErr("请输入用户名。");
  document.getElementById("usid").focus();
  }else if(pswd == "")
  {
        showErr("请输入密码。");
       document.getElementById("pswd").focus();
  }
  else
  {
        return true;
  }
  return false;
}
function setLogin()
{
  showErr("");
  if (http_request.readyState == 4)
  {
    window.status = "";
    if(http_request.status == 200)
    {
      try
      {
        //alert(http_request.responseText);
        eval(http_request.responseText);
      }
      catch(e)
      {
      }
    }
    else
    {
      showErr("对不起，登陆失败，请重试！");
    }
  }
  else
  {
    try
    {        
      window.status = "正在处理数据中，请稍候...";
    }
    catch (e)
    {
    }
  }
}

function ischarkey(nkey) 

{
  if(!event.altKey && !event.ctrlKey && (nkey>=65 && nkey<=90 || 
  nkey>=48 && nkey<=57 || nkey>=96 && nkey<=105 || nkey==106 ||
  nkey==107 || nkey==109 || nkey==110 || nkey==8 || nkey==111 || 
  nkey>=186 && nkey<=192 || nkey>=219 && nkey<=222))
  {
    return true;
  }
  else
  {
    return false; 
  }
}


function document.oncontextmenu() {event.returnValue = false;} //屏蔽鼠标右键
function document.ondragstart() {event.returnValue = false;} //
function window.onhelp() {return false;} //屏蔽F1帮助
function document.onkeydown()
{
  if ((window.event.altKey) && ((window.event.keyCode==37) || (window.event.keyCode==39))) {
    //屏蔽 Alt+方向键← 和 Alt+方向键→
    event.returnValue = false;
  }

  if (event.keyCode==8) {
    //屏蔽退格删除键
    if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
      event.keyCode = 0;
      event.returnValue = false;
    }
  }

  if ((event.keyCode==116) || (event.ctrlKey && event.keyCode==82)) {
    //屏蔽 F5 刷新键  Ctrl+R
    event.keyCode = 0;
    event.returnValue = false;
  }

  if (event.keyCode == 122) {event.keyCode = 0; event.returnValue = false;} //屏蔽F11
  if (event.ctrlKey && event.keyCode == 78) event.returnValue = false; //屏蔽Ctrl+n
  if (event.shiftKey && event.keyCode == 121) event.returnValue = false; //屏蔽shift+F10
  if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
    window.event.returnValue = false; //屏蔽shift加鼠标左键新开一网页
  if ((window.event.altKey) && (window.event.keyCode == 115)) {
    //屏蔽Alt+F4
    window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");
    return false;
  }
}

