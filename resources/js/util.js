function moveOption(e,t){try{var a=e.options[e.selectedIndex],o=e.selectedIndex
    o==e.options.length-1&&(o-=1),t.options.add(new Option(a.text,a.value)),e.options.remove(e.selectedIndex),e.options[o].selected=!0}catch(a){}}function moveOptionAll(e,t){try{var a=e.options.length
    for(i=0;a>i;i++){var o=e.options[0]
        t.options.add(new Option(o.text,o.value)),e.options.remove(e[0])}}catch(o){console.error(o)}}function submitKind(e,t){var a=document.forms[e].action;-1!=a.indexOf("?mode=")&&(a=a.substr(0,a.indexOf("?mode="))),a=a+"?mode="+t,document.forms[e].action=a,document.forms[e].submit()}function openWin(type,vName){switch(type){case"coin":openDialog("/IB/file/coin.jsp",document.getElementById(vName),"412px","260px","scrollbars:yes")
    break
    case"clientNum":var str=window.showModalDialog("/IB/emclmgpAction.do?adl1=clno",vName,"dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
        str&&eval(str)
        break
    case"client":var str=window.showModalDialog("/IB/emclmgpAction.do?adl1=reports",vName,"dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
        str&&eval(str)
        break
    case"accountNum":var str=window.showModalDialog("/IB/accountsAction.do?adl1=acno",vName,"dialogWidth:650px; dialogHeight:300px; center:1; status:0; resizable:0; help:0;")
        str&&eval(str)
        break
    case"date":var dValue=document.getElementById(vName).value.Trim()
        dValue=dValue&&8==dValue.length&&-1==dValue.indexOf("/")&&-1==dValue.indexOf("-")?dValue.substring(0,4)+"/"+dValue.substring(4,6)+"/"+dValue.substring(6,8):""
        var str=window.showModalDialog("/IB/file/date.htm",dValue,"dialogWidth:205px; dialogHeight:225px; center:1; scroll:no; status:0; resizable:0; help:0;")
        str&&(document.getElementById(vName).value=str.replace(/\//g,""))
        break
    case"bank":var str=window.showModalDialog("/IB/file/bank.jsp",vName,"dialogWidth:780px; dialogHeight:355px; center:1; status:0; resizable:0; help:0;")
        str&&eval(str)
        break
    case"bank1":var str=window.showModalDialog("/IB/file/bank1.jsp",vName,"dialogWidth:780px; dialogHeight:355px; center:1; status:0; resizable:0; help:0;")
        str&&eval(str)
        break
    case"test":var str=window.showModalDialog("/IB/casesList.do",document.getElementById(vName),"dialogWidth:617px; dialogHeight:600px; center:1; status:0; resizable:0; help:0;scroll:no")
        str&&eval(str)
        break
    default:alert("??????")}}function openDialog(e,t,a,o){window.showModalDialog(e,t,"dialogWidth:"+a+"; dialogHeight:"+o+"; center:1; status:0; resizable:0; help:0;")}