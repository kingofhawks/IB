
var NS4 = (document.layers);    // Which browser?
var IE4 = (document.all);
var win = window;    // window to search.
var n   = 0;


function getTabID(TabID, deleteID){
	     if(TabID == ''){
           return getTabID('0', deleteID);
		 }
	     newTabIDs = getTabIDs(deleteID);   
		 return newTabIDs.charAt(TabID-1);
}
function getTabIDBack(TabID, deleteID){
	if(TabID == ''){
           return '';
		 }
	     newTabIDs = getTabIDs(deleteID);
		 return newTabIDs.indexOf(TabID)+1;
}
function getTabIDs(deleteID)
{
	tatalIDs = "0123456";
	for (i=0; i<deleteID.length; i++)
	{
	    //alert("tatalIDs:" + tatalIDs + "\ndeleteID.charAt(i):"+deleteID.charAt(i))
		tatalIDs = tatalIDs.replace(deleteID.charAt(i),"")
	}
	return tatalIDs
}

function showDone(str)
{
	if (str=="" || str == null)
		return false;
	else
		document.write("<div id=\"showDone\">"+str+"</div>");
	setTimeout("document.getElementById('showDone').style.display = 'none'",10000);
}
function switch_tab(par)
{
    n = getTabIDBack(document.forms[0].tabID.value,par);
	//首次进入页面的时候，提交表单。
    if (n=="undefined"||n==""||isNaN(n))
    {
        document.forms[0].tabID.value = getTabID('1',par);
        document.forms[0].submit();
        return false;
    }
    if (!tab_btn.length)
    {
        document.all.tab_btn.className = "tab_active_btn";
        document.all.tab_left.className = "tab_active_left"
        document.all.tab_right.className = "tab_active_right";
        //document.all.item_list.className = "item_list_display";
    }
    else
    {
        for (i=0; i<tab_btn.length; i++)
        {
            if (i==(n-1))
            {
                tab_btn[i].className = "tab_active_btn";
                tab_left[i].className = "tab_active_left"
                tab_right[i].className = "tab_active_right";
                //item_list[i].className = "item_list_display";
                continue;
            }
            tab_btn[i].className = "tab_unactive_btn";
            tab_left[i].className = "tab_unactive_left";
            tab_right[i].className = "tab_unactive_right";
            //item_list[i].className = "item_list_hidden";
        }
    }

}

function set_value(n, par)
{
//alert("n = " +n);
    try
    {
		n = getTabID(n, par)
        if (n==document.forms[0].tabID.value)
        {
            return false;
        }
        document.forms[0].tabID.value = n;
		//document.forms[0].tabID2.value = m;
        document.forms[0].submit();
    } catch(e) {}
}



function showTab(par)
{
	tabID = getTabIDs(par);
	tabID = tabID.split("");
	//title = new Array("收电文","经办","暂存","待修改","待复核","待授权","已生效","模板");
	title = new Array("收电文","经办","暂存","待修改","待复核","待授权","已生效");
	try
	{
		tabString = "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"left\" valign=\"top\" class=\"tab_blank\">";
        tabString +="\t<tr>";
		for(i=0; i<tabID.length; i++)
		{
                tabString +="\t\t<td class=\"tab_unactive_left\" id=\"tab_left\"></td>";
                tabString +="\t\t<td class=\"tab_unactive_btn\" id=\"tab_btn\" onClick=\"set_value("+(i+1)+", '" + par + "')\"><nobr>"+title[tabID[i]]+"</nobr></td>"
                tabString +="\t\t<td class=\"tab_unactive_right\" id=\"tab_right\"></td>";
		}
		tabString +="\t\t<td style=\"height:20px;vertical-align:top;padding-left:25px;\">&nbsp;&nbsp;&nbsp;<img src=\"/IB/images/searchWord.gif\" width=\"80\" height=\"20\">&nbsp;&nbsp;<input type=\"botton\" onChange=\"n = 0;\" style=\"height:18px;vertical-align:top;\" id=\"string\">&nbsp;&nbsp;<input type=\"image\"  src=\"/IB/images/search.gif\" onclick=\"findInPage(document.getElementById('string').value);\"></td>";
		tabString +="\t</tr>";
        tabString +="</table>"
        document.write(tabString);
	}
	catch(e)
	{
	}
}


//在页面上显示"操作"选项
function showOperation(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"right\"  style=\"height:18px;vertical-align:bottom;padding:0 0 0 0\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/oprBtn_new.gif\" alt=\"新建\" border=\"0\"></a><img src=\"/IB/images/oprBtn_del.gif\" alt=\"删除\" style=\"cursor:hand;\" onclick=\"doDelete()\" width=\"60\" height=\"22\" hspace=\"0\" /><img src=\"/IB/images/oprBtn_selectAll.gif\" alt=\"全选\" style=\"cursor:hand;\" onclick=\"selectAll()\" width=\"60\" height=\"22\" hspace=\"0\" /></td>"
        optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}


//helen added单个＂新建＂
function showOperation_new(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table width=\"50\" border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"right\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/oprBtn_new.gif\" alt=\"新建\" width=\"60\" height=\"22\" border=\"0\" hspace=\"0\" ></a></td>"
		optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}



//在报表列表里面的返回按钮
function showReport(creatNewURL)
{
    try
    {
        if (creatNewURL == null)
        {
            creatNewURL =window.location.href;
        }
        optString = "";
        optString += "<table width=\"50\" border=\"0\" align=\"right\" cellpadding=\"0\" cellspacing=\"0\" class=\"opertion\">";
        optString += "    <tr>";
        optString += "        <td align=\"center\"><a href=\"" + creatNewURL + "\" onClick=\"return openReplace(this.href)\"><img src=\"/IB/images/return.gif\" alt=\"返回\" width=\"110\" height=\"22\" border=\"0\" hspace=\"0\" ></a></td>"
        optString += "    </tr>";
        optString += "</table>";
        document.write(optString);
    } catch(e) {}
}

//打开URL，查看项的内容
function openReplace(oprtURL)
{
    window.location.replace(oprtURL);
    return false;
}

//删除
function doDelete()
{
    var a = document.getElementsByName("id");
    var chked = false;
    for (i=0; i<a.length; i++)
    {
        if (a[i].checked)
        {
            chked = true;
            break;
        }
    }
    if (chked)
    {
        if ( confirm("请确认您要删除所选的项目？\n\n点击\"确定\"确认删除\n点击\"取消\"关闭本对话框"))
        {
            document.forms[1].submit();
        }
        else
        {
            return false;
        }
    }
    else
    {
        alert("请至少选择一个项目")
        return false;
    }
}

//全选
var chk;
function selectAll()
{
    var a = document.getElementsByName("id");
    if (chk)
    {
        for (i=0;i<a.length;i++)
        {
            if(!a[i].disabled&&!a[i].readonly)
            	a[i].checked=false;
        }
        chk = false;
    }
    else
    {
        for (i=0;i<a.length;i++)
        {
            if(!a[i].disabled&&!a[i].readonly)
            	a[i].checked=true;
        }
        chk = true;
    }
}

function findInPage(str) {
  var txt, i, found;

  if (str == "")
    return false;

  // Find next occurance of the given string on the page, wrap around to the
  // start of the page if necessary.

  if (NS4) {

    // Look for match starting at the current point. If not found, rewind
    // back to the first match.

    if (!win.find(str))

      while(win.find(str, false, true))
        n++;
    else
      n++;

    // If not found in either direction, give message.

    if (n == 0)
      alert("没有找到相关信息。");
  }

  if (IE4) {
    txt = win.document.body.createTextRange();

    // Find the nth match from the top of the page.

    for (i = 0; i <= n && (found = txt.findText(str)) != false; i++) {
      txt.moveStart("character", 1);
      txt.moveEnd("textedit");
    }

    // If found, mark it and scroll it into view.

    if (found) {
      txt.moveStart("character", -1);
      txt.findText(str);
      txt.select();
      txt.scrollIntoView();
      n++;
    }

    // Otherwise, start over at the top of the page and find first match.

    else {
      if (n > 0) {
        n = 0;

        findInPage(str);
      }

      // Not found anywhere, give message.

      else
        alert("没有找到相关信息。");
    }
  }

  return false;
}

/*function document.oncontextmenu() {event.returnValue = false;} //屏蔽鼠标右键
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

        */