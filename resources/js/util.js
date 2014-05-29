/**
 * Created with IntelliJ IDEA.
 * User: simon
 * Date: 14-5-28
 * Time: 下午7:03
 * To change this template use File | Settings | File Templates.
 */
/**Move operations for list*/
function moveOption(e1, e2){
    try{
        var e = e1.options[e1.selectedIndex];
        var sIndex = e1.selectedIndex;
        if (sIndex == e1.options.length - 1)
        {
            sIndex -= 1;
        }
        e2.options.add(new Option(e.text, e.value));
        e1.options.remove(e1.selectedIndex);
        e1.options[sIndex].selected = true;
    }   catch(e){}
}

function moveOptionAll(e1, e2)
{
    try{
        var e1len = e1.options.length;
        for (i=0; i<e1len; i++)
        {
            var e = e1.options[0];
            e2.options.add(new Option(e.text, e.value));
            e1.options.remove(e1[0]);
        }
    }catch(e){
        console.error(e)
    }
}

function submitKind(i,mode){

    var url = document.forms[i].action
    if(url.indexOf('?mode=')!=-1){
        url=url.substr(0,url.indexOf('?mode='));
    }
    url = url +'?mode='+mode
    document.forms[i].action = url
    //checkForm(document.forms[i])
    document.forms[i].submit()
}

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


function openDialog(url, dForm, dWidth, dHeight)
{
    window.showModalDialog(url, dForm, "dialogWidth:" + dWidth + "; dialogHeight:" + dHeight + "; center:1; status:0; resizable:0; help:0;")
}
