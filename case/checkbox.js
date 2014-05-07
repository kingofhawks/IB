function checkType(hiddenobject,objectId)
{//得到checkbox的总数,以及案例录入页面选中与末选中的id;   
	var hiddenobjectname=hiddenobject;
	var objectSource=objectId;
	var checkboxId=document.getElementsByTagName("input");
	var loopLength=checkboxId.length;
	for(num=0;num<loopLength;num++)
	  { 
		   if((checkboxId[num].type=="checkbox")&&(checkboxId[num].checked))
				{
					document.getElementById(hiddenobjectname).value+=(objectSource+num+",");
				}
	  }
}  

function displayIdResult(showId)
{
//根据录入页面中复选框选中的状态,得到结果页面中相应层的显示和隐藏;
	var showIdResult=showId;//录入页面中checkbox的选中状态;
	var idName=new Array();
		idName=showIdResult.split(",")
	var len=idName.length-1;
	for(numR=0;numR<len;numR++)
		  { 
			var idObject=idName[numR];
			alert(idObject);
			document.getElementById(idObject).style.display="";
		  }
}

