// JavaScript Document

//adding 10 2005/09/21
//????��?��????��?��??????
String.prototype.Trim = function()
{
	return this.replace(/(^\s*)|(\s*$)/g, "");
}
//end of adding


//?��??URL???��??????????
function openReplace(oprtURL)
{
    window.location.replace(oprtURL);
    return false;
}

//?��?������??
function checkForm(nForm)
{
	//alert(nForm.name)
    var iObj = nForm.elements;
    for (i = 0; i<iObj.length; i++)
    {
    	iObj[i].disabled = false;
    	//alert(iObj[i].name)
        if (iObj[i].title.Trim()!=""&&iObj[i].title.Trim()!="undefined"&&iObj[i].value.Trim() =="")
        {
            $("errCode").value=iObj[i].title;
            break;
        }else{
            $("errCode").value="";
        }
    }
}

//
function openWin(type, vName)
{
    switch (type)
    {
        case "coin" :
            openDialog("/IB/file/coin.jsp", document.getElementById(vName), "412px", "260px","scrollbars:yes");
			break;

        case "clientNum":
            var str =window.showModalDialog("/IB/emclmgpAction.do?adl1=clno", vName, "dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
            if (str)
            {
                eval(str);
            }
			break;

	    //????????????????
	     case "client":
            var str =window.showModalDialog("/IB/emclmgpAction.do?adl1=reports", vName, "dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
            if (str)
            {
                eval(str);
            }
			break;

		//????????
		case "accountNum":
		   var str =window.showModalDialog("/IB/accountsAction.do?adl1=acno",vName, "dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
           if (str)
            {
                eval(str);
            }
		  break;
        //????????
        case "date":
			var dValue = document.getElementById(vName).value.Trim();
			if (dValue&&dValue.length==8&&dValue.indexOf("/")==-1&&dValue.indexOf("-")==-1)
			{
			    dValue = dValue.substring(0,4) + "/" + dValue.substring(4,6) + "/" + dValue.substring(6,8)
			}
			else
			{
			    dValue =""
			}
			var str =window.showModalDialog("/IB/file/date.htm", dValue, "dialogWidth:205px; dialogHeight:225px; center:1; scroll:no; status:0; resizable:0; help:0;")
			if (str) document.getElementById(vName).value = str.replace(/\//g,"")
			break;

		//????????
		case "bank":
            var str =window.showModalDialog("/IB/file/bank.jsp", vName, "dialogWidth:780px; dialogHeight:355px; center:1; status:0; resizable:0; help:0;")

            if (str)
            {
                eval(str);
            }
			break;
		  case "bank1":

            var str =window.showModalDialog("/IB/file/bank1.jsp", vName, "dialogWidth:780px; dialogHeight:355px; center:1; status:0; resizable:0; help:0;")

            if (str)
            {
                eval(str);
            }
            break;

			case "test":
            var str =window.showModalDialog("/IB/casesList.do", document.getElementById(vName), "dialogWidth:617px; dialogHeight:600px; center:1; status:0; resizable:0; help:0;scroll:no")

          if (str)
            {
                eval(str);
            }
			break;



		default :
			alert("??????");

    }
}

function openWinNum(type, vName,brno)//??????д??????????б?
{
    switch (type)
    {
    case "accountNum":
            var str =window.showModalDialog("/IB/accountsAction.do?adl1=acno&brno="+brno, vName, "dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
            if (str)
            {
                eval(str);
            }
			break;
    }
    }

function openDialog(url, dForm, dWidth, dHeight)
{
    window.showModalDialog(url, dForm, "dialogWidth:" + dWidth + "; dialogHeight:" + dHeight + "; center:1; status:0; resizable:0; help:0;")
}

function submitKind(i,mode){

    var url = document.forms[i].action
    if(url.indexOf('?mode=')!=-1){
     url=url.substr(0,url.indexOf('?mode='));
     }
    url = url +'?mode='+mode
    document.forms[i].action = url
    checkForm(document.forms[i])
    document.forms[i].submit()
}


function submitParent(i,mode){

    var url = window.parent.content.document.lantk.forms[i].action
    if(url.indexOf('?mode=')!=-1){
     url=url.substr(0,url.indexOf('?mode='));
     }

    url = url +'?mode='+mode

    document.forms[i].action = url
    //alert(document.forms[i].action)
    checkForm(document.forms[i])
    document.forms[i].submit()
}


//??????2005-12-30 Start
function $()
{
	var elements = new Array();
	for (var i = 0; i < arguments.length; i++)
	{
	    var element = arguments[i];
		if (typeof element == 'string')
			element = document.getElementById(element);
			if (arguments.length == 1)
				return element;
		elements.push(element);
	}
	return elements;
}
if (!Array.prototype.push)
{
	Array.prototype.push = function()
	{
		var startLength = this.length;
		for (var i = 0; i < arguments.length; i++)
		this[startLength + i] = arguments[i];
		return this.length;
	}
}
//??????2005-12-30 End

//<body onload="readOnlyForm(4)">
function readOnlyForm(tId)
{
	fElments = document.forms[0].elements
	if (tId > 3)
	{
		for (j=0; j<fElments.length; j++)
		{
			if (fElments[j].type=="button"||fElments[j].type=="submit"||fElments[j].type=="reset")
			{
				if (fElments[j].value == "...")
				{
					fElments[j].disabled = true;
				}
				else
				{
					fElments[j].disabled = false;
				}
				continue;
			}
			fElments[j].disabled = true;
		}
	}
}


//adding in 2006/03/13 by robin
    function regInput(reg)
    {
        var srcElem    = event.srcElement
        var oSel    = document.selection.createRange()
        var srcRange    = srcElem.createTextRange()
        oSel.setEndPoint("StartToStart", srcRange)
        var num = oSel.text + String.fromCharCode(event.keyCode) + srcRange.text.substr(oSel.text.length)
        event.returnValue = reg.test(num)
    }
//end of adding in 2006/0313

//?????????
/**
cyno ?????????
cyam ?????
prid ???prid
**/
var http_request = false;
var variablet;

function getCharge(vars,cyno,cyam,prid){

if($("chcy").selectedIndex == 0)//????????????????????????????
return false;
if(cyno==null||cyno=="")//?????????????????????????
return false;
if(cyam==null||cyam==""){//??????????
cyam=0;
}
variablet=vars;
setChco(cyno,cyam,prid);
}

/**
?????????Ajax
**/



function setChco(cyno,cyam,prid)
{
  var url = "/IB/setChcoAction.do?prid=" + prid+"&cyno="+cyno+"&cyam="+cyam;


  http_request = false;
  if (window.XMLHttpRequest)
  {
    http_request = new XMLHttpRequest();
    if (http_request.overrideMimeType)
    {
      http_request.overrideMimeType('text/html');
     // alert("1");
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
  http_request.onreadystatechange = showChco;
  http_request.open('GET', url, true);
  http_request.send();
}

function showChco()
{
 if (http_request.readyState == 4)
  {
    if(http_request.status == 200)
  {
    try
     {
        $(variablet).value = http_request.responseText;
      }
      catch(e)
      {
     }
    }
 }
}


function document.oncontextmenu() {event.returnValue = false;} //??????????
function document.ondragstart() {event.returnValue = false;} //
function window.onhelp() {return false;} //????F1????
function document.onkeydown()
{
  if ((window.event.altKey) && ((window.event.keyCode==37) || (window.event.keyCode==39))) {
    //???? Alt+?????? ?? Alt+??????
    event.returnValue = false;
  }

  if (event.keyCode==8) {
    //???????????
    if (event.srcElement.type != "text" && event.srcElement.type != "textarea" && event.srcElement.type != "password") {
      event.keyCode = 0;
      event.returnValue = false;
    }
  }

  if ((event.keyCode==116) || (event.ctrlKey && event.keyCode==82)) {
    //???? F5 ????  Ctrl+R
    event.keyCode = 0;
    event.returnValue = false;
  }

  if (event.keyCode == 122) {event.keyCode = 0; event.returnValue = false;} //????F11
  if (event.ctrlKey && event.keyCode == 78) event.returnValue = false; //????Ctrl+n
  if (event.shiftKey && event.keyCode == 121) event.returnValue = false; //????shift+F10
  if (window.event.srcElement.tagName == "A" && window.event.shiftKey)
    window.event.returnValue = false; //????shift???????????????
  if ((window.event.altKey) && (window.event.keyCode == 115)) {
    //????Alt+F4
    window.showModelessDialog("about:blank","","dialogWidth:1px;dialogheight:1px");
    return false;
  }
}

