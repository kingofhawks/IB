function switchpstp(operation,idname,id1,id2)
	{//托收类型pstp
		var operationType=operation;
		var objectIdName=idname;
		var s1=id1
		var s2=id2
		operationType=document.getElementById(operationType).value;
		switch(operationType)
		{
			case "0":
				$(s1).style.display="none";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=true;
				$(objectIdName+"_b").dislable=true;
				break;
			case "1":
				$(s1).style.display="";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=false;
				$(objectIdName+"_b").dislable=true;
				break;
			case "2":
				$(s1).style.display="";
				$(s2).style.display="none";
				$(objectIdName+"_r").dislable=false;
				$(objectIdName+"_b").dislable=true;
				break;
			case "3":
				$(s1).style.display="none";
				$(s2).style.display="";
				$(objectIdName+"_r").dislable=true;
				$(objectIdName+"_b").dislable=false;
				break;
		}
	}

	function switchcheckbox(chbox,showId)
	{//复选框prid操作的判断checkbox
	    var checkedbox=chbox;
		var showIdName=showId;
		var divInn=showIdName.substr(0,4);
		if($(checkedbox).checked)
		{ 
			$(showIdName+"Checkbox").disabled=false;
		 }else{ 
			$(divInn).style.display="none";
			$(showIdName+"Checkbox").checked="";
			$(showIdName+"Checkbox").disabled=true;
	   }
	}

function cheinner(cha1,cha2,num)
{
//如果当前复选框被选，则相应的层可以显示；与之关联的复选框disabled为false;
	 var str=cha2;
	 switch(num)
	   {
		case "0":	
		if(str=="lcop"){
			cheinnerL("LC0","lcop");		
			$("eladCheckbox").disabled=false;
			$("sgrgCheckbox").disabled=false;
			$("lccnCheckbox").disabled=false;
			break;
			} else{
			var str0=LC(str);
			var j=(str0.indexOf(str+","))/5;
			shoinn(j,str0);
			break;
			}
		case "3" :
		    var str3="ccrg,cctr,ccpd,ccpy,ccrt,cccl";
			var j=(str3.indexOf(str+","))/5;
			shoinn(j,str3);
			break;
		case "4":
		    var str4="orrg,irrg,orst,orcl,irrt,irpb,ircl";
			var j=(str4.indexOf(str+","))/5;//判断是当前案例中的哪一个层；
			j=parseInt(j);
			shoinn(j,str4);
			break;
	}

function shoinn(P,str)
{
	var J;
	var P1=P;
	var inn=new Array();
		 inn=str.split(",");
	var len=inn.length;
	if(cha1)
		{ //如果复选框被选  
			var a1=inn[P1];
			var a2=inn[P1+1];
			if(P1==0)
			{//如果是此案例的第一个操作，则不需要检查
				$(a1).style.display="";
				$(a2+"Checkbox").disabled=false;
			}else{//否则检查前一个操作的必选项是否全部填写
				var a0=inn[P1-1];
/*				if(checktitle(a0,a1)){
*/				$(a1).style.display="";
				$(a1+"Checkbox").checked=true;
				$(a1+"Checkbox").disabled=false;
				$(a2+"Checkbox").disabled=false;
/*				}
*/			}
		}
		else
		{//如果没被选,则此层下的表单控件值为空；其后的复选框也为不可选；
			for(var i=len-1; i>P1;i--){
				var a1=inn[i-1];
				var a2=inn[i];
				var prid=a2+"_";
				$(a1).style.display="none";
				$(a2+"Checkbox").disabled=true;
				$(a2+"Checkbox").checked="";
				$(a2).style.display="none";
				cheAll(prid);
			}
			cheAll(inn[P1]+"_");
		}
	}
}

function LC(str)
{//判断是在哪一类操作中
	//lcop,elad,lcup,elup,eluk,lcuk,lccn,elcn,sgrg,sgtr,sgcl
	var ids=new Array();
	ids[0]="lcop,elad,lcup,elup,eluk,lcuk";  //开立-来证通知/登记-修改-(修改通知-拒绝/接受修改-拒绝修改)
	ids[1]="lcop,sgrg,sgtr,sgcl";//开立-提货担保登记-催销保-销保
	ids[2]="lcop,lccn,elcn";   //开立-撤证-撤证登记;
	for(var i=0;i<3;i++){
		if(ids[i].indexOf(str)>0){
			   return ids[i];
			}
	}
}

/*function checktitle(prids,ids)
//带有title的为必选项，没填则不能做下面的操作；
{
  var pridVal=prids+"_";
  var iObj = document.forms[0].elements;
  var len=iObj.length;
  for (var i=0;i<len;i++)
  {
	if(iObj[i].title.substr(0,5)==pridVal&&iObj[i].value.Trim()=="")
	 {
		$(ids+"Checkbox").checked=""; 
		alert("请填写完整上一个操作中红色必填项！");
		iObj[i].focus();
		return false
	   }
	}
	return true;
}*/   


 function  cheAll(prids){
 //相应层下的表单控件值为空；
	  var pridVal=prids;
	  var len=document.forms[0].elements.length;
      for (var i=0;i<len;i++){
	   if(document.forms[0].elements[i].name.substr(0,5)==pridVal)
	     {
			document.forms[0].elements[i].value="";   
		}	
      }   
  }   


function cheinnerL(cha1,cha2)
{
//如果当前复选框被选，则相应的层可以显示
	var prid=cha2+"_";
	if($(cha1).checked==true)
	{
		$(cha2).style.display="";
	}else{//否则相应层不能显示，且此层下的表单控件值为空；
		$(cha2).style.display="none";
		cheAll(prid);
	}
}
//结束

 function  cheAll(prids){
 //相应层下的表单控件值为空；
	  var pridVal=prids;
	  var len=document.forms[0].elements.length;
      for (var i=0;i<len;i++){
	   if(document.forms[0].elements[i].name.substr(0,5)==pridVal)
	     {
			document.forms[0].elements[i].value="";   
		}	
      }   
  }   

function fir(char)
{
//案例的第一个复选框是否被选；
   var char1=char;
   var  flag=$(char1).checked;
	if(flag)
	{
		return true;
	}else{
		return false;
	}
}

function cheLoa(a1,a2,a3)
{//在onLoad时，取得上次操作已选中的checkbox的序列
	var char=new Array();
	var idName=new Array();
		onLoadCheck(a1,a2,a3);
		//char=checkType(Num);
		//idName=char[0].split(",");//；
/*		var charDiv;
		idName=$("LCHVAL").value;
		char=idName.split("@");
		alertt(char);
	var len=char.length-1;
	if(idName!=""&&idName!="underfined")
	{
		for(var numR=0;numR<len;numR++)
		{
			$(char[numR]).disabled="";
			$(char[numR]).checked="checked";
			charDiv=$(char[numR]).name.substr(0,4);
			$(charDiv).style.display="";//checkbox对应的div;
		}
	}
*/}

//案例开始
var ch=new Array();
ch[0]=new Array();//信用证
ch[3]=new Array();//光票手托收
ch[4]=new Array();//汇款
ch[0][0]="lcop";
ch[0][1]="elad";
ch[0][2]="lcup";
ch[0][3]="elup";
ch[0][4]="eluk";
ch[0][5]="lcuk";
ch[0][6]="lccn";
ch[0][7]="elcn";
ch[0][8]="sgrg";
ch[0][9]="sgtr";
ch[0][10]="sgcl";

ch[3][0]="ccrg";
ch[3][1]="cctr";
ch[3][2]="ccpd";
ch[3][3]="ccpy";
ch[3][4]="ccrt";
ch[3][5]="cccl";

ch[4][0]="orrg";  
ch[4][1]="irrg";
ch[4][2]="orst";
ch[4][3]="orcl";
ch[4][4]="irrt";//可选
ch[4][5]="irpb";//可选
ch[4][6]="ircl";//可选
var len0=ch[0].length;
var len3=ch[3].length;
var len4=ch[4].length;//ch[4].length

function checkType(Nu)
{
	switch(Nu)
	{
		case "0" :
		    chebox(len0,"0","LC");
			break;
		case "3" :
			chebox(len3,"3","CD");
			break;
		case "4" :
			chebox(len4,"4","RE");
			break;
	}
	//charId=$(idT).value;//得到本次操作中选中的checkbox的id序列:RE0,RE1
	//charIdVAL=$("LCHVAL").value;//得到本次操作中选中的checkbox的value序列:orrg@irrg
}

function onLoadCheck(num,tot,rs)
{ 
		var len=num;
		var tot1=tot;
		var rs1=rs;
		var charId=new String();
		var idT=rs1;
		var charDiv;
		$(idT).value="";
		$("LCHVAL").value="";
		for(var i=0;i<len;i++)
		{	
			var str=ch[tot1][i]+"Checkbox";
			if($(str).checked)
			{
				 $(idT).value+=(rs1+i+",");//RE0,RE1...
				 $("LCHVAL").value+=str+"@";//orrgCheckbox@orrgCheckbox
				 $(str).disabled="";
				 $(str).checked="checked";
				 charDiv=$(str).name.substr(0,4);
				 $(charDiv).style.display="";//checkbox对应的div;
				 if(i!=len-1)
				 {//如果不是最后一个复选框，则把相邻的下一个复选框设为可选；
					 $(ch[tot1][i+1]+"checkbox").disabled=false;
				 }else{
					break;
				 }
			}else{
				cheAll(ch[tot1][i]);//如果复选框没选，则对应层的表单控件值全为空；
			 }					 
		}
}




	
function chebox(num,tot,rs)
{ 
   if(checkGrade()){
		var len=num;
		var tot1=tot;
		var rs1=rs;
		var charId=new String();
		var idT=rs1+"H";
		$(idT).value="";
		$("LCHVAL").value="";
		for(var i=0;i<len;i++)
		{	
			var str=ch[tot1][i]+"Checkbox";
			if($(str).checked)
			{
				 $(idT).value+=(rs1+i+",");//RE0,RE1...
				 $("LCHVAL").value+=str+"@";//orrgCheckbox@orrgCheckbox
				 if(i!=len)
				 {//如果不是最后一个复选框，则把相邻的下一个复选框设为可选；
					 $(ch[tot1][i+1]+"checkbox").disabled=false;
				 }else{
					break;
				 } 
			}else{
				cheAll(ch[tot1][i]);//如果复选框没选，则对应层的表单控件值全为空；
			 }					 
		}
		cheId();
     	//return [$("LCH").value,$("LCHVAL").value];
		getAveValue($('grade').value,$('LCHVAL').value);
		document.forms[0].submit();
   }else{
     	//return [$("LCH").value,$("LCHVAL").value];
	    return false;
	   }
   
}
	
function addId(idC,idP)
{//得到非必选中,填了数值的id串;
	var currentId=idC;
	var idP0=idP;
	var addIds=new String();
	delId(idP0);//删除开关按钮中以前选中的非必选项；
/*	if(!$(currentId).value=="")
	{   
*/		$("idPS").value+=idP0;
/*	}
*/}

function delId(dcah)
{//删除开关按钮中，以前选中，但此次操作没选中的非必选项；
var char=$("idPS").value;
var regv=new RegExp(dcah,"g");
$("idPS").value=char.replace(regv,"");
}

function cheId()
{//onload时如果没有调用addId();则$("idPS").value=数据库的值；如果调用addId();则$("idPS").value+=新加的id;
  var idS=new String();
 　　  idS=$("idM").value;
  　　 if($("idPS").value=="")//已填的非必选项id串：idPS
    　 {     
       　 $("idPS").value=idS;  //onload时，将上次选中的非必选项显示出来；
       　 return idS;
    　 }
    else
      {
      　  $("idM").value=$("idPS").value; 
　　　　　return idS;　　
       }
   }

		
		/**
案例中比较日期
bigDate   大的时间
smallDate 小的时间
number    比较的天数
field     表单项名
message   需要输出的信息


**/
function comperDate(bigDate,smallDate,number,field,message){

if(bigDate==null||bigDate=="")
   return true;

if(smallDate==null||smallDate=="")
   return true;

 if(number==null||number=="")
    number=0;

by=bigDate.substring(0,4);
bm=bigDate.substring(4,6);
bd=bigDate.substring(6,8);

sy=smallDate.substring(0,4);
sm=smallDate.substring(4,6);
sd=smallDate.substring(6,8);

var big=new Date(by,bm-1,bd);
var small=new Date(sy,sm-1,sd);

var days_diff=(big.valueOf()-small.valueOf())/86400000; 

if(days_diff<number){//成立表示应该晚的时间过早
alert(message);
document.getElementById(field).value='';
document.getElementById(field).focus();
}
}

/**
比较案例里面的金额
bigMoney   大的金额
1          金额1
2          金额2
3          金额3
4          金额4
field     表单项名
message   需要输出的信息

**/
function comperMoney(bigMoney,money1,money2,money3,money4,field,message){
if(money1==null||money1=="")
    money1=0;
	if(money2==null||money2=="")
    money2=0;
	if(money3==null||money3=="")
    money3;
	if(money4==null||money4=="")
    money4=0;

   var money=parseInt(money1)+parseInt(money2)+parseInt(money3)+parseInt(money4);

    //alert("bigMoney"+bigMoney);
    //alert("Money"+money);

	if(bigMoney<money){//成立表示应该小的钱数过大
	alert(message);
    document.getElementById(field).value='';
    document.getElementById(field).focus();
	}
} 

/**
??????????????
**/
function getAveValue(number,prids)
{
var aveValue;//???
var weight="0";//???
var pridArray=new Array();//prid??
var pridArray=prids.substring(0,prids.length-1).split("@");
var length=pridArray.length;
//alert("number="+number);
//alert("prids="+prids);
//alert("pridArray="+pridArray[0].substring(0,4));

for(var i=0;i<length;i++){
weight=parseInt(getNum(pridArray[i].substring(0,4)))+parseInt(weight);
}

//alert("weight="+weight);

aveValue=parseInt(number)/parseInt(weight);
//alert("aveValue="+aveValue);

document.getElementById("aveValue").value=aveValue;
return document.getElementById("aveValue").value;
}

/**
??
**/
function getNum(prid){
var prids="lcop_elad_ebrg_ibrg_ocrg_icrg_orrg_irrg";
//???prid
if (prid == null || prid=="") {
            return 0;
        }
        if (prids.indexOf(prid) != -1) {
            return 6;
        }
        return 1;
}


function checkGrade()
{
  var grade1 = document.getElementById("grade").value.Trim();
  var detai1 = document.getElementById("detai").value.Trim();
  if(detai1=="")
  {
	  alert("请填写案例说明！");
	  document.getElementById("detai").focus();
  }else if(grade1 == "")
  {
		   alert("请填写案例分数！");
		   document.getElementById("grade").focus();
  }
  else
  {
            return true;      
}
  return false;
}

function addDot(the){
if(the.value!=null&&(the.value).indexOf('.')==-1&&the.value!='')
  {the.value=the.value+'.0'}
}

