<%@ include file="/common/header.jsp"%>

<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
</head>
<body>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td class="outerTable_mainContent"><!--内表格开始-->
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
				<div id="innerTable_div"><!--内容开始--> <html:form action="announcement.do"
					onsubmit="checkForm(this)" method="post">
					<div id="errMsgDiv" ><html:errors /></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
								    <td height="20" colspan="2" align="left" valign="top">请填写公告内容：</td>
								    </tr>
								 <tr>
									<td valign="top">
<div width="500px">
   <table width="500px" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td colspan="17"><table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="15%">公告标题：</td>
          <td width="85%" align="left"><label>
          <input name="titleAnn" type="text" style="width:120px" size="80" maxlength="50">
          </label></td>
        </tr>
      </table></td>
      </tr>
    <tr>
        <td width="2%">  <div class="Btn" TITLE="全部选择" LANGUAGE="javascript" onClick="format('selectall')"> 
    <img src="/IB/editor/images2/selectall.gif" WIDTH="18" HEIGHT="18"> </div></td>
        <td width="2%">  <div class="Btn" TITLE="删除" LANGUAGE="javascript" onClick="format('delete')"> 
    <img src="/IB/editor/images2/del.gif" WIDTH="18" HEIGHT="18"> </div></td>
        <td width="2%">
  <div class="Btn" TITLE="剪切" LANGUAGE="javascript" onClick="format('cut')"> <img src="/IB/editor/images2/cut.gif" WIDTH="18" HEIGHT="18">  </div></td>
        <td width="2%">  <div class="Btn" TITLE="复制" LANGUAGE="javascript" onClick="format('copy')"> 
    <img src="/IB/editor/images2/copy.gif" WIDTH="18" HEIGHT="18"> </div></td>
        <td width="2%">  <div class="Btn" TITLE="粘贴" LANGUAGE="javascript" onClick="format('paste')"> 
    <img src="/IB/editor/images2/paste.gif" WIDTH="18" HEIGHT="18"> </div>
  <div class="TBSep"></div></td>
        <td width="2%">  <div class="Btn" TITLE="撤消" LANGUAGE="javascript" onClick="format('undo')"> 
    <img src="/IB/editor/images2/undo.gif" WIDTH="18" HEIGHT="18"> </div></td>
        <td width="2%">  <div class="Btn" TITLE="恢复" LANGUAGE="javascript" onClick="format('redo')"> 
    <img src="/IB/editor/images2/redo.gif" WIDTH="18" HEIGHT="18"> </div></td>
        <td width="2%">
  <div class="Btn" TITLE="插入栏目框" LANGUAGE="javascript" onClick="FIELDSET()"> <img src="/IB/editor/images2/fieldset.gif" WIDTH="18" HEIGHT="18">  </div></td>
        <td width="2%">
            <div class="Btn" TITLE="左对齐" NAME="Justify" LANGUAGE="javascript" onClick="format('justifyleft')"> <img src="/IB/editor/images2/aleft.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="居中" NAME="Justify" LANGUAGE="javascript" onClick="format('justifycenter')"> <img src="/IB/editor/images2/acenter.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="右对齐" NAME="Justify" LANGUAGE="javascript" onClick="format('justifyright')"> <img src="/IB/editor/images2/aright.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="编号" LANGUAGE="javascript" onClick="format('insertorderedlist')"> <img src="/IB/editor/images2/num.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="项目符号" LANGUAGE="javascript" onClick="format('insertunorderedlist')"> <img src="/IB/editor/images2/list.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="减少缩进量" LANGUAGE="javascript" onClick="format('outdent')"> <img src="/IB/editor/images2/outdent.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="增加缩进量" LANGUAGE="javascript" onClick="format('indent')"> <img src="/IB/editor/images2/indent.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="2%">
            <div class="Btn" TITLE="删除文字格式" LANGUAGE="javascript" onClick="format('RemoveFormat')"> <img src="/IB/editor/images2/clear.gif" WIDTH="18" HEIGHT="18"> </div>        </td>
        <td width="21%" bgcolor="#E1F4EE"><table width="31%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="2%"><div class="Btn" TITLE="字体颜色" LANGUAGE="javascript" onClick="foreColor()"> <img src="/IB/editor/images2/fgcolor.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="2%"><div class="Btn" TITLE="加粗" LANGUAGE="javascript" onClick="format('bold')"> <img src="/IB/editor/images2/bold.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"><div class="Btn" TITLE="斜体" LANGUAGE="javascript" onClick="format('italic')"> <img src="/IB/editor/images2/italic.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"><div class="Btn" TITLE="下划线" LANGUAGE="javascript" onClick="format('underline')"> <img src="/IB/editor/images2/underline.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"><div class="Btn" TITLE="上标" LANGUAGE="javascript" onClick="format('superscript')"> <img src="/IB/editor/images2/sup.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"><div class="Btn" TITLE="下标" LANGUAGE="javascript" onClick="format('subscript')"> <img src="/IB/editor/images2/sub.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"><div class="Btn" TITLE="插入普通水平线" LANGUAGE="javascript" onClick="format('InsertHorizontalRule')"> <img src="/IB/editor/images2/line.gif" WIDTH="18" HEIGHT="18"> </div></td>
            <td width="76%"></td>
          </tr>
        </table></td>
    </tr>
    <tr>
        <td colspan="17" align="left" bgcolor="#E1F4EE"><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="27%" align="left"><div class="sele_div_122">
              <select name="select" class="select_122" id="FontName" onChange="format('fontname',this[this.selectedIndex].value);">
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
          <option value="Wide Latin">Wide Latin</option>
          <option value="Wingdings">Wingdings</option>
        </select></div></td>
            <td width="11%" align="left"><div class="sele_div_80"><select name="select2" class="select_80" id="FontSize" onChange="format('fontsize',this[this.selectedIndex].value);">
            <option selected>字号</option>
            <option value="7">一号</option>
            <option value="6">二号</option>
            <option value="5">三号</option>
            <option value="4">四号</option>
            <option value="3">五号</option>
            <option value="2">六号</option>
            <option value="1">七号</option>
          </select></div></td>
            <td width="57%">&nbsp;</td>
            <td width="5%">&nbsp;</td>
          </tr>
        </table></td>
        </tr>
    <tr>
        <td colspan="17" bgcolor="#E1F4EE"><iframe class="HtmlEdit" ID="HtmlEdit" width="100%" height="200px"> 
		<html:textarea property="content"></html:textarea>
</iframe></td>
    </tr>
</table>

<script type="text/javascript">
SEP_PADDING = 5
HANDLE_PADDING = 7

var yToolbars =	new Array();
var YInitialized = false;
var bLoad=false
var pureText=true
var bodyTag="<head><style type=\"text/css\">body {font-size:	9pt}</style><meta http-equiv=Content-Type content=\"text/html; charset=gb2312\"></head><BODY bgcolor=\"#FFFFFF\" MONOSPACE>"
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

  HtmlEdit.document.open();
  HtmlEdit.document.write(bodyTag);
  HtmlEdit.document.close();
  HtmlEdit.document.designMode="On";
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
  var fonts = HtmlEdit.document.body.all.tags("FONT");
  var curr;
  for (var i = fonts.length - 1; i >= 0; i--) {
    curr = fonts[i];
    if (curr.style.backgroundColor == "#ffffff") curr.outerHTML	= curr.innerHTML;
  }
}

function getPureHtml()
{
  var str = "";
  var paras = HtmlEdit.document.body.all.tags("P");
  if (paras.length > 0)	{
    for	(var i=paras.length-1; i >= 0; i--) str	= paras[i].innerHTML + "\n" + str;
  }
  else {
    str	= HtmlEdit.document.body.innerHTML;
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
    return HtmlEdit.document.body.innerText;
  else
  {
    cleanHtml();
    cleanHtml();
    return HtmlEdit.document.body.innerHTML;
  }
}

function putText(v)
{
  if (bTextMode)
    HtmlEdit.document.body.innerText = v;
  else
    HtmlEdit.document.body.innerHTML = v;
}

function UserDialog(what)
{
  if (!validateMode()) return;

  HtmlEdit.document.execCommand(what, true);

  pureText = false;
  HtmlEdit.focus();
}

function validateMode()
{
  if (!	bTextMode) return true;
  alert("请取消“查看HTML源代码”选项，然后再使用系统编辑功能!");
  HtmlEdit.focus();
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

  if (opt==null) HtmlEdit.document.execCommand(what);
  else HtmlEdit.document.execCommand(what,"",opt);

  pureText = false;
  HtmlEdit.focus();
}

function setMode(newMode)
{
  var cont;
  bTextMode = newMode;
  if (bTextMode) {
    cleanHtml();
    cleanHtml();

    cont=HtmlEdit.document.body.innerHTML;
    HtmlEdit.document.body.innerText=cont;
  }
  else {
    cont=HtmlEdit.document.body.innerText;
    HtmlEdit.document.body.innerHTML=cont;
  }
  HtmlEdit.focus();
}

function foreColor()
{
  if (!	validateMode())	return;
  var arr = showModalDialog("/IB/editor/selcolor.jsp", "", "dialogWidth:18.5em; dialogHeight:17.5em; status:0");
  if (arr != null) format('forecolor', arr);
  else HtmlEdit.focus();
}


function pic()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("/IB/editor/pic.html", "", "dialogWidth:30em; dialogHeight:15em; status:0;help:0");  
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
  HtmlEdit=HtmlEdit.document.body.innerHTML;
  HtmlEdit=HtmlEdit+str1;
   HtmlEdit.document.body.innerHTML=HtmlEdit;
  }
  else HtmlEdit.focus();
}

function hr()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("/IB/editor/hr.htm", "", "dialogWidth:30em; dialogHeight:12em; status:0;help:0"); 
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
  HtmlEdit=HtmlEdit.document.body.innerHTML;
  HtmlEdit=HtmlEdit+str1;
   HtmlEdit.document.body.innerHTML=HtmlEdit;
  }
  else HtmlEdit.focus();
}

function FIELDSET()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("/IB/editor/fieldset.htm", "", "dialogWidth:25em; dialogHeight:10em; status:0;help:0");
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
  HtmlEdit=HtmlEdit.document.body.innerHTML;
  HtmlEdit=HtmlEdit+str1;
   HtmlEdit.document.body.innerHTML=HtmlEdit;
  }
  else HtmlEdit.focus();
}

function iframe()
{
  if (!	validateMode())	return;
  HtmlEdit.focus();
  var range = HtmlEdit.document.selection.createRange();
  var arr = showModalDialog("/IB/editor/iframe.htm", "", "dialogWidth:30em; dialogHeight:13em; status:0;help:0");  
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
  HtmlEdit=HtmlEdit.document.body.innerHTML;
  HtmlEdit=HtmlEdit+str1;
   HtmlEdit.document.body.innerHTML=HtmlEdit;
  }
  else HtmlEdit.focus();
}




function specialtype(Mark){
  if (!Error()) return;
  var sel,RangeType
  sel = HtmlEdit.document.selection.createRange();
  RangeType = HtmlEdit.document.selection.type;
  if (RangeType == "Text"){
    sel.pasteHTML("<" + Mark + ">" + sel.text + "</" + Mark + ">");
    sel.select();
  }
  HtmlEdit.focus();
}

function ()
{
  if (bTextMode){
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
// parent.announ_HtmlEdit.HtmlEdit.value=HtmlEdit.document.body.innerText;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
  self.opener.announ_HtmlEdit.HtmlEdit.value+=HtmlEdit.document.body.innerText;
  }
  else{
//编辑器嵌入其他网页时使用下面这一句（请将form1改成相应表单名）
  //parent.announ_HtmlEdit.HtmlEdit.value=HtmlEdit.document.body.innerHTML;
//单独打开编辑器时使用下面这一句（请将form1改成相应表单名）  
  self.opener.announ_HtmlEdit.HtmlEdit.value+=HtmlEdit.document.body.innerHTML;
  }
  HtmlEdit.focus();
  return false;
}
</script></div>
</td>
									
								</tr>
							</table>
				
					<div class="footer"><html:submit> 保存</html:submit>
                    <html:button property="cancel"
                        onclick="JavaScript:document.location='/IB/welcome.jsp'">
                        <bean:message key="common.cancel" />
                    </html:button>  </div>
				</html:form> <!--内容结束--></div>
				</td>
				<td class="innerTable_right_y"></td>
			</tr>
			<tr>
				<td class="innerTable_bottom_left"></td>
				<td class="innerTable_bottom_x"></td>
				<td class="innerTable_bottom_right"></td>
			</tr>
		</table>
		<!--内表结束--></td>
		<td class="outerTable_right_y"></td>
	</tr>
	<tr>
		<td class="outerTable_bottom_left"></td>
		<td class="outerTable_bottom_x"></td>
		<td class="outerTable_bottom_right"></td>
	</tr>
</table>
</body>
</html>
