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
