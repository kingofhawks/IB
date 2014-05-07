<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<!--编辑公告信息-->
<html><head>
<link rel="STYLESHEET" type="text/css" href="/IB/systemManage/affiche/edit.css">
<script language="javascript" type="text/javascript" src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript" src="/IB/systemManage/affiche/xmlhttp.js"></script>
</head>
<body>
   <table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td colspan="2" class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td height="22" class="outerTable_left_y"></td>
		<td align="right" class="outerTable_head"> </td>
		<td align="right" class="outerTable_head"></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td colspan="2" class="outerTable_main"><!--内表格开始-->
		<html:form method="post" action="announcement.do"  onsubmit="doExecute()">
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
				<div id="innerTable_div">
<table width="90%" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
      <tr>
        <td height="25" colspan="2" align="center" class="innertitle">编辑公告信息</td>
      </tr>
      <tr>
          <td width="22%" align="right" valign="middle">&nbsp;&nbsp;<strong>请输入公告标题：</strong> </td>
          <td width="78%" align="left" valign="middle">&nbsp;
            <html:text property="title" title="titleAn"  maxlength="100" size="80"/></td>
      </tr>    
	  <tr><td colspan="2"><table width="26%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td>&nbsp;&nbsp;</td>
          <td width="16%"><div class="sele_div_122">
              <select name="select3" class="select_122" id="select" onChange="format('fontname',this[this.selectedIndex].value);">
                <option selected>字体</option>
                <option value="宋体">宋体</option>
                <option value="黑体">黑体</option>
                <option value="楷体_GB2312">楷体</option>
                <option value="仿宋_GB2312">仿宋</option>
                <option value="隶书">隶书</option>
                <option value="幼圆">幼圆</option>
                <option value="Arial">Arial</option>
                <option value="Arial Black">Arial Black</option>
                <option value="Arial Narrow">Arial Narrow</option>
                <option value="Brush Script	MT">Brush Script MT</option>
                <option value="Century Gothic">Century Gothic</option>
                <option value="Comic Sans MS">Comic Sans MS</option>
                <option value="Courier">Courier</option>
                <option value="Courier New">Courier New</option>
                <option value="MS Sans Serif">MS Sans Serif</option>
                <option value="Script">Script</option>
                <option value="System">System</option>
                <option value="Times New Roman">Times New Roman</option>
                <option value="Verdana">Verdana</option>
                <option value="Wide	Latin">Wide Latin</option>
                <option value="Wingdings">Wingdings</option>
              </select>
          </div></td>
          <td>&nbsp;</td>
          <td width="9%"><div class="sele_div_80">
              <select name="select"  class="select_80" id="select2" onChange="format('fontsize',this[this.selectedIndex].value);this.selectedIndex=0">
                <option selected>字号</option>
                <option value="7">一号</option>
                <option value="6">二号</option>
                <option value="5">三号</option>
                <option value="4">四号</option>
                <option value="3">五号</option>
                <option value="2">六号</option>
                <option value="1">七号</option>
              </select>
          </div></td><td width="12%"><div  TITLE="全部选择" LANGUAGE="javascript" onClick="format('selectall')"> <img  src="/IB/systemManage/affiche/images2/selectall.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="删除" LANGUAGE="javascript" onClick="format('delete')"> <img  src="/IB/systemManage/affiche/images2/del.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="撤消" LANGUAGE="javascript" onClick="format('undo')"> <img  src="/IB/systemManage/affiche/images2/undo.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="恢复" LANGUAGE="javascript" onClick="format('redo')"> <img  src="/IB/systemManage/affiche/images2/redo.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="左对齐" NAME="Justify" LANGUAGE="javascript" onClick="format('justifyleft')"> <img  src="/IB/systemManage/affiche/images2/aleft.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="居中" NAME="Justify" LANGUAGE="javascript" onClick="format('justifycenter')"> <img  src="/IB/systemManage/affiche/images2/acenter.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="右对齐" NAME="Justify" LANGUAGE="javascript" onClick="format('justifyright')"> <img  src="/IB/systemManage/affiche/images2/aright.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="编号" LANGUAGE="javascript" onClick="format('insertorderedlist')"> <img  src="/IB/systemManage/affiche/images2/num.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="项目符号" LANGUAGE="javascript" onClick="format('insertunorderedlist')"> <img  src="/IB/systemManage/affiche/images2/list.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="减少缩进量" LANGUAGE="javascript" onClick="format('outdent')"> <img  src="/IB/systemManage/affiche/images2/outdent.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="增加缩进量" LANGUAGE="javascript" onClick="format('indent')"> <img  src="/IB/systemManage/affiche/images2/indent.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="5%"><div  TITLE="删除文字格式" LANGUAGE="javascript" onClick="format('RemoveFormat')"> <img  src="/IB/systemManage/affiche/images2/clear.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="6%"><div  TITLE="颜色" LANGUAGE="javascript" onClick="foreColor()"> <img  src="/IB/systemManage/affiche/images2/fgcolor.gif" WIDTH="18" HEIGHT="18"></div></td>
          <td width="2%"><div  TITLE="加粗" LANGUAGE="javascript" onClick="format('bold')"> <img  src="/IB/systemManage/affiche/images2/bold.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="2%"><div  TITLE="斜体" LANGUAGE="javascript" onClick="format('italic')"> <img  src="/IB/systemManage/affiche/images2/italic.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="2%"><div  TITLE="下划线" LANGUAGE="javascript" onClick="format('underline')"> <img  src="/IB/systemManage/affiche/images2/underline.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="2%"><div  TITLE="上标" LANGUAGE="javascript" onClick="format('superscript')"> <img  src="/IB/systemManage/affiche/images2/sup.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="2%"><div  TITLE="下标" LANGUAGE="javascript" onClick="format('subscript')"> <img  src="/IB/systemManage/affiche/images2/sub.gif" WIDTH="18" HEIGHT="18"> </div></td>
          <td width="18%"><div  TITLE="插入普通水平线" LANGUAGE="javascript" onClick="format('InsertHorizontalRule')"> <img  src="/IB/systemManage/affiche/images2/line.gif" WIDTH="18" HEIGHT="18"> </div></td>
        </tr>
	    </table></td></tr>
       <tr>
        <td height="25" colspan="17" valign="middle">&nbsp;&nbsp;公告内容不能超过1000字节(相当于500个汉字)。</td>
    </tr>
       <tr>
         <td colspan="17" valign="middle"><iframe ID="contentA" name="contentA" width="100%" height="180" frameborder="0" vspace="10" hspace="5" style="background-color: #ffffff; border: 1px solid #000000; white-space:normal; overflow:hidden" ></iframe></td>
       </tr>
</table>



<br>

<div class="footer">

<html:hidden property="content"/>
<html:hidden property="id"/>
<%
//System.out.println("----"+request.getParameter("sign"));

if(request.getParameter("sign")!=null&&request.getParameter("sign").equals("add")){
%>
<input type="image" name="btn"  src="/IB/images/addaff.gif"  onclick="setAdd();return false">  
<%}else{%>
<input type="image" name="btn"  src="/IB/images/modifyaff.gif"  onclick="setUpdate();return false">  
<%}%>
<input type="image" name="btn"  src="/IB/images/returnInto.gif"  onclick="openReplace('/IB/announcement.do?sign=teacher');return false">  
</div>
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
		<!--内表结束--></html:form></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td colspan="2" class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body>
<script type="text/javascript">
var bodyIF= document.getElementById("content").value;
SEP_PADDING = 5
HANDLE_PADDING = 7
var yToolbars =	new Array();
var YInitialized = false;
var bLoad=false
var pureText=true
var bodyTag="<head><style type=\"text/css\">body {font-size:12px;margin: 0px;}</style><meta http-equiv=Content-Type content=\"text/html; charset=gb2312\"></head><BODY bgcolor=\"#FFFFFF\" MONOSPACE>"+bodyIF+"</body>";
var bTextMode=false
public_description=new Editor
function document.onreadystatechange(){
  if (YInitialized) return;
  YInitialized = true;

  var i, s, curr;

  for (i=0; i<document.body.all.length;	i++)
  {
    curr=document.body.all[i];
    if (curr.className == "yToolbar")
    {
      InitTB(curr);
      yToolbars[yToolbars.length] = curr;
    }
  }

  DoLayout();
  window.onresize = DoLayout;

  contentA.document.open();
  contentA.document.write(bodyTag);
  contentA.document.close();
  contentA.document.designMode="On";
}

function InitBtn(btn)
{
  btn.onmouseover = BtnMouseOver;
  btn.onmouseout = BtnMouseOut;
  btn.onmousedown = BtnMouseDown;
  btn.onmouseup	= BtnMouseUp;
  btn.ondragstart = YCancelEvent;
  btn.onselectstart = YCancelEvent;
  btn.onselect = YCancelEvent;
  btn.YUSERONCLICK = btn.onclick;
  btn.onclick =	YCancelEvent;
  btn.YINITIALIZED = true;
  return true;
}

function InitTB(y)
{
  y.TBWidth = 0;

  if (!	PopulateTB(y)) return false;

  y.style.posWidth = y.TBWidth;

  return true;
}


function YCancelEvent()
{
  event.returnValue=false;
  event.cancelBubble=true;
  return false;
}

function PopulateTB(y)
{
  var i, elements, element;

  elements = y.children;
  for (i=0; i<elements.length; i++) {
    element = elements[i];
    if (element.tagName	== "SCRIPT" || element.tagName == "!") continue;

    switch (element.className) {
      case "Btn":
        if (element.YINITIALIZED == null)	{
          if (! InitBtn(element))
          return false;
        }
        element.style.posLeft = y.TBWidth;
        y.TBWidth	+= element.offsetWidth + 1;
        break;

      case "TBGen":
        element.style.posLeft = y.TBWidth;
        y.TBWidth	+= element.offsetWidth + 1;
        break;

      case "TBSep":
        element.style.posLeft = y.TBWidth	+ 2;
        y.TBWidth	+= SEP_PADDING;
        break;

      case "TBHandle":
        element.style.posLeft = 2;
        y.TBWidth	+= element.offsetWidth + HANDLE_PADDING;
        break;

      default:
        return false;
      }
  }

  y.TBWidth += 1;
  return true;
}

function DebugObject(obj)
{
  var msg = "";
  for (var i in	TB) {
    ans=prompt(i+"="+TB[i]+"\n");
    if (! ans) break;
  }
}

function LayoutTBs()
{
  NumTBs = yToolbars.length;

  if (NumTBs ==	0) return;

  var i;
  var ScrWid = (document.body.offsetWidth) - 6;
  var TotalLen = ScrWid;
  for (i = 0 ; i < NumTBs ; i++) {
    TB = yToolbars[i];
    if (TB.TBWidth > TotalLen) TotalLen	= TB.TBWidth;
  }

  var PrevTB;
  var LastStart	= 0;
  var RelTop = 0;
  var LastWid, CurrWid;

  var TB = yToolbars[0];
  TB.style.posTop = 0;
  TB.style.posLeft = 0;

  var Start = TB.TBWidth;
  for (i = 1 ; i < yToolbars.length ; i++) {
    PrevTB = TB;
    TB = yToolbars[i];
    CurrWid = TB.TBWidth;

    if ((Start + CurrWid) > ScrWid) {
      Start = 0;
      LastWid =	TotalLen - LastStart;
    }
    else {
       LastWid =	PrevTB.TBWidth;
       RelTop -=	TB.offsetHeight;
    }

    TB.style.posTop = RelTop;
    TB.style.posLeft = Start;
    PrevTB.style.width = LastWid;

    LastStart =	Start;
    Start += CurrWid;
  }

  TB.style.width = TotalLen - LastStart;

  i--;
  TB = yToolbars[i];
  var TBInd = TB.sourceIndex;
  var A	= TB.document.all;
  var item;
  for (i in A) {
    item = A.item(i);
    if (! item)	continue;
    if (! item.style) continue;
    if (item.sourceIndex <= TBInd) continue;
    if (item.style.position == "absolute") continue;
    item.style.posTop =	RelTop;
  }
}

function DoLayout()
{
  LayoutTBs();
}

function BtnMouseOver()
{
  if (event.srcElement.tagName != "IMG") return	false;
  var image = event.srcElement;
  var element =	image.parentElement;

  if (image.className == "Ico")	element.className = "BtnMouseOverUp";
  else if (image.className == "IcoDown") element.className = "BtnMouseOverDown";

  event.cancelBubble = true;
}

function BtnMouseOut()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;
  yRaisedElement = null;

  element.className = "Btn";
  image.className = "Ico";

  event.cancelBubble = true;
}

function BtnMouseDown()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    event.returnValue=false;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  element.className = "BtnMouseOverDown";
  image.className = "IcoDown";

  event.cancelBubble = true;
  event.returnValue=false;
  return false;
}

function BtnMouseUp()
{
  if (event.srcElement.tagName != "IMG") {
    event.cancelBubble = true;
    return false;
  }

  var image = event.srcElement;
  var element =	image.parentElement;

  if (element.YUSERONCLICK) eval(element.YUSERONCLICK +	"anonymous()");

  element.className = "BtnMouseOverUp";
  image.className = "Ico";

  event.cancelBubble = true;
  return false;
}

function getEl(sTag,start)
{
  while	((start!=null) && (start.tagName!=sTag)) start = start.parentElement;
  return start;
}

function cleanHtml()
{
  var fonts = contentA.document.body.all.tags("FONT");
  var curr;
  for (var i = fonts.length - 1; i >= 0; i--) {
    curr = fonts[i];
    if (curr.style.backgroundColor == "#ffffff") curr.outerHTML	= curr.innerHTML;
  }
}

function getPureHtml()
{
  var str = "";
  var paras = contentA.document.body.all.tags("P");
  if (paras.length > 0)	{
    for	(var i=paras.length-1; i >= 0; i--) str	= paras[i].innerHTML + "\n" + str;
  }
  else {
    str	= contentA.document.body.innerHTML;
  }
  return str;
}


function Editor()
{
  this.put_HtmlMode=setMode;
  this.put_value=putText;
  this.get_value=getText;
}

function getText()
{
  if (bTextMode)
    return contentA.document.body.innerText;
  else
  {
    cleanHtml();
    cleanHtml();
    return contentA.document.body.innerHTML;
  }
}

function putText(v)
{
  if (bTextMode)
    contentA.document.body.innerText = v;
  else
    contentA.document.body.innerHTML = v;
}

function UserDialog(what)
{
  if (!validateMode()) return;

  contentA.document.execCommand(what, true);

  pureText = false;
  contentA.focus();
}

function validateMode()
{
  if (!	bTextMode) return true;
  alert("请取消“查看HTML源代码”选项，然后再使用系统编辑功能!");
  contentA.focus();
  return false;
}

function format(what,opt)
{
  if (!validateMode()) return;
  if (opt=="removeFormat")
  {
    what=opt;
    opt=null;
  }

  if (opt==null) contentA.document.execCommand(what);
  else contentA.document.execCommand(what,"",opt);

  pureText = false;
  contentA.focus();
}

function setMode(newMode)
{
  var cont;
  bTextMode = newMode;
  if (bTextMode) {
    cleanHtml();
    cleanHtml();

    cont=contentA.document.body.innerHTML;
    contentA.document.body.innerText=cont;
  }
  else {
    cont=contentA.document.body.innerText;
    contentA.document.body.innerHTML=cont;
  }
  contentA.focus();
}

function foreColor()
{
  if (!	validateMode())	return;
  var arr = showModalDialog("/IB/systemManage/affiche/selcolor.jsp", "", "dialogWidth:18.5em; dialogHeight:17.5em; status:0");
  if (arr != null) format('forecolor', arr);
  else contentA.focus();
}


function pic()
{
  if (!	validateMode())	return;
  contentA.focus();
  var range = contentA.document.selection.createRange();
  var arr = showModalDialog("/IB/systemManage/affiche/pic.html", "", "dialogWidth:30em; dialogHeight:15em; status:0;help:0");  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  b=ss[1];
  c=ss[2];
  d=ss[3];
  e=ss[4];
  f=ss[5];
  g=ss[6];
  h=ss[7];
  i=ss[8];
  
  var str1;
str1="<img src='"+a+"' alt='"+b+"'"
if(d.value!='')str1=str1+"width='"+d+"'"
if(e.value!='')str1=str1+"height='"+e+"' "
str1=str1+" border='"+i+"' align='"+h+"' vspace='"+f+"' hspace='"+g+"'  style='"+c+"'"
str1=str1+">"
  contentA=contentA.document.body.innerHTML;
  contentA=contentA+str1;
   contentA.document.body.innerHTML=contentA;
  }
  else contentA.focus();
}

function swf()
{
  if (!	validateMode())	return;
  contentA.focus();
  var range = contentA.document.selection.createRange();
  var arr = showModalDialog("/IB/systemManage/affiche/flash.html", "", "dialogWidth:30em; dialogHeight:10em; status:0;help:0"); 
  if (arr != null){
  var ss;
  ss=arr.split("*")
  path=ss[0];
  row=ss[1];
  col=ss[2];
  var string;
string="<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000'  codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width="+row+" height="+col+"><param name=movie value="+path+"><param name=quality value=high><embed src="+path+" pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width="+row+" height="+col+"></embed></object>"
  contentA=contentA.document.body.innerHTML;
  contentA=contentA+string;
   contentA.document.body.innerHTML=contentA;
  }
  else contentA.focus();
}

function hr()
{
  if (!	validateMode())	return;
  contentA.focus();
  var range = contentA.document.selection.createRange();
  var arr = showModalDialog("/IB/systemManage/affiche/hr.htm", "", "dialogWidth:30em; dialogHeight:12em; status:0;help:0"); 
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  b=ss[1];
  c=ss[2];
  d=ss[3];
  e=ss[4];
  var str1;
str1="<hr"
str1=str1+" color='"+a+"'"
str1=str1+" size="+b+"'"
str1=str1+" "+c+""
str1=str1+" align="+d+""
str1=str1+" width="+e
str1=str1+">"
  contentA=contentA.document.body.innerHTML;
  contentA=contentA+str1;
   contentA.document.body.innerHTML=contentA;
  }
  else contentA.focus();
}

function FIELDSET()
{
  if (!	validateMode())	return;
  contentA.focus();
  var range = contentA.document.selection.createRange();
  var arr = showModalDialog("/IB/systemManage/affiche/fieldset.htm", "", "dialogWidth:25em; dialogHeight:10em; status:0;help:0");
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  b=ss[1];
  c=ss[2];
  d=ss[3];
  var str1;
str1="<FIELDSET "
str1=str1+"align="+a+""
str1=str1+" style='"
if(c.value!='')str1=str1+"color:"+c+";"
if(d.value!='')str1=str1+"background-color:"+d+";"
str1=str1+"'><Legend"
str1=str1+" align="+b+""
str1=str1+">标题</Legend>内容</FIELDSET>"
  contentA=contentA.document.body.innerHTML;
  contentA=contentA+str1;
   contentA.document.body.innerHTML=contentA;
  }
  else contentA.focus();
}

function iframe()
{
  if (!	validateMode())	return;
  contentA.focus();
  var range = contentA.document.selection.createRange();
  var arr = showModalDialog("/IB/systemManage/affiche/iframe.htm", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");  
  if (arr != null){
  var ss;
  ss=arr.split("*")
  a=ss[0];
  b=ss[1];
  c=ss[2];
  d=ss[3];
  e=ss[4];
  f=ss[5];
  g=ss[6];
  var str1;
str1="<iframe src='"+a+"'"
str1+=" scrolling="+b+""
str1+=" frameborder="+c+""
if(d!='')str1+=" marginheight="+d
if(e!='')str1+=" marginwidth="+e
if(f!='')str1+=" width="+f
if(g!='')str1+=" height="+g
str1=str1+"></iframe>"
  contentA=contentA.document.body.innerHTML;
  contentA=contentA+str1;
   contentA.document.body.innerHTML=contentA;
  }
  else contentA.focus();
}

function specialtype(Mark){
  if (!Error()) return;
  var sel,RangeType
  sel = contentA.document.selection.createRange();
  RangeType = contentA.document.selection.type;
  if (RangeType == "Text"){
    sel.pasteHTML("<" + Mark + ">" + sel.text + "</" + Mark + ">");
    sel.select();
  }
  contentA.focus();
}

function ()
{
  if (bTextMode){
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
// parent.announ_contentA.contentA.value=contentA.document.body.innerText;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
  self.opener.announ_contentA.contentA.value+=contentA.document.body.innerText;
  }
  else{
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
  //parent.announ_contentA.contentA.value=contentA.document.body.innerHTML;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
  self.opener.announ_contentA.contentA.value+=contentA.document.body.innerHTML;
  }
  contentA.focus();
  return false;
}

function setAdd(){
var url = document.forms[0].action;
var iObj = document.forms[0].elements;
	if(iObj[0].value=="")
	{  
	   alert("请输入公告标题!");
	   iObj[0].focus();
	   return false;
	}
/*var sTemp=contentA.document.body.innerHTML;
  if ((sTemp.length < 10) || (sTemp.length > 1000))
   {
	   alert("请输入公告内容!");
	   contentA.focus();
      return false;
  }
*/
	
doExecute();
document.forms[0].action=url+'?sign=add';
document.forms[0].submit();
}

function setUpdate(){
var url = document.forms[0].action;
doExecute();
document.forms[0].action=url+'?sign=update';
document.forms[0].submit();
}
</script>
<script>
function doExecute() {
	
/*  var sTemp = document.getElementById("title").value;//公告标题；
  if ((sTemp.length < 1) || (sTemp.length > 100)) {
	alert("请输入公告标题")；
	document.getElementById("title").focus();
    return false;
  }
*/  

    var sTemp =contentA.document.body.innerHTML;//修改后内容；
/*  if ((sTemp.length < 10) || (sTemp.length > 1000)) {
	alert("请输入公告内容")；
	contentA.focus();
    return false;
  }
*/  
/*  if(document.getElementById("title").value=="")
  {
  alert("请填写公告标题")；
  return false;
  }
  if(contentA.document.body.innerHTML=="")
  {
  alert("请填写公告内容")；
  return false;
  }*/
  document.getElementById("content").value = sTemp;//修改后的公告内容赋给隐藏域，值到数据库保存；
  document.forms[0].submit();
  sTemp = null;
}
</script>
</html>

