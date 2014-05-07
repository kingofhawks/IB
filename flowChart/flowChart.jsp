<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%@ page import="java.util.Map"%>
<html><head><title></title>
<script language='JavaScript'>
<!--
self.moveTo(0,0) 
self.resizeTo(screen.availWidth,screen.availHeight)
-->
</script>
<style type="text/css">
<!--
.flowChart_css {color:#08346B;}
.red{color:#FF0000;}
.blue{color:#0000CC;}	
.green{ color:#008080;}
.inputScore {font-family: "Arial", Times, serif;	color:#FF0000;height: 18px;	width: 30px;}
body {margin: 0px; background-color:#ffffff; color:#ffffff;font-size:12px;}
.titleCont{color:#FF6633;font-weight:bold;}
.right{background-color:#EEF2EC}
.wrong{background-color:#F2E7E6}
.titleRW{background-color:#FFFAE6}
-->
</style>
<script>function show()
{
	if($('detail').style.display=="none"){
		$('detail').style.display="block";
	}else {
		if($('detail').style.display=="block"){
			$('detail').style.display="none";
			}
	}
}

function choose()
{  
 var prids = document.forms[0].prids.value;
 var firstprid=prids.substr(0,4);
 for(var n=1;n<=6;n++)
 {	
	var c_id="id"+n;
	var SvgMainMapDoc=id1.getSVGDocument();   /*获取DOM*/
	var SvgObj=SvgMainMapDoc.getElementById(c_id);  /*获取elemnet指针 获取名称XX的名*/
	var SvgObj1=SvgObj.getChildNodes;  /*获取子节点*/
	for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
   	{	
		if(SvgObj1.item(iCount).getAttribute("name")==firstprid)/*item(序号)来访问其子节点,逐个判断其name属性的值是否跟要查询的值相同*/
		   {  
			  SvgObj.getStyle().setProperty("visibility","show");  
			  return(c_id);
			}
	 }
   }		   
}

function searchVal()
{
     var prids=document.forms[0].prids.value;
	 var prids_len=prids.length;
	 var c_id1=choose(prids);
	 var SvgMainMapDoc=id1.getSVGDocument();   /*获取DOM*/
	 var SvgObj=SvgMainMapDoc.getElementById(c_id1);  /*获取elemnet指针 获取名称XX的名*/
	 var SvgObj1=SvgObj.getChildNodes;  /*获取子节点*/
     var color2=document.forms[0].colors.value;
     //var color2_len=color2.length;   
     for(var count=0;count<prids_len;count+=5)
      {
		var char2=prids.substr(count,4); /*取四个字符__一个prid,即当前操作*/
		var num=color2.indexOf("_");  /* 从零开始*/
		if(num==-1)
		{
		 for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
		  {	
			if(SvgObj1.item(iCount).getAttribute("name")==char2)/*item(序号)来访问其子节点,逐个判断其name属性的值是否跟要查询的*/
			   {
				  SvgStyle1=SvgObj1.item(iCount).getStyle();  
				  SvgStyle1.setProperty('fill','none'); 
				  SvgStyle1.setProperty('stroke',color2);  
				}
		   }
		}else{
	    var color1=color2.substring(0,num); /*当前prid的color*/ /*num为剩余串中?D?D所在的位置*/
		var count_c=color1.length;  /*当前prid对应的颜色*/
	    //num_2=color2.length-count_c;  /*剩余串的长度*/
	    color2=color2.substring(num+1,color2.length);  /*剩余的字符串*/
	         for(var iCount=1;iCount<((SvgObj1.length)-1);iCount+=2)
   	              {	
		            if(SvgObj1.item(iCount).getAttribute("name")==char2)/*item(序号)来访问其子节点,逐个判断其name属性的值是否跟要查询的值相同*/
	                   {
                          SvgStyle1=SvgObj1.item(iCount).getStyle();  
                          SvgStyle1.setProperty('fill','none'); 
			              SvgStyle1.setProperty('stroke',color1);  
			            }
                   }
             }
	    }
}
</script>
</head>

<body onLoad="searchVal()" style="overflow:hidden;overflow-y:scroll;height:500px">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td  align="center">
<embed src='/IB/flowChart/flowChart.svg' width='800px' height='620px' align='top' name='id1' pluginspage='http://www.adobe.com/svg/viewer/install/'  type='image/svg+xml' border="1">
  <%
Map map=(Map)request.getAttribute("map");
%>
</td>
  </tr>
</table> 
<form name="searchvalue">
           <input type="hidden" id="prids" name="prids" value="<%= map.get("prids")%>"  size="12">
           <input type="hidden" id="colors" name="colors" value="<%= map.get("colors")%>"  size="12"> 
</form>
<form name="content"> 
<table width="800" cellSpacing=0 borderColorDark="#ffffff" cellPadding=0  borderColorLight="#c0c0c0" border=1 align="center" >
       <tr>
         <td height="24" colspan="3" align="left" valign="middle" >在流程图中，<span class="red"><strong>红色代表当前操作，</strong></span><span class="blue"><strong>蓝色代表已做的操作</strong></span><strong>，<span class="green">绿色代表下一步要进行的操作</span></strong>。<span class="flowChart_css">如果流程图不能显示，请<a href="/IB/flowChart/SVGView.exe"><strong>单击此处</strong></a>，下载插件。</span></td>
       </tr>
       <tr>
         <td width="110" height="24" align="right" valign="middle" bgcolor="#EBEBEB">建议当前评分：</td>
		 <td width="690" height="24" align="left" valign="middle">
		   <table width="600" border="0" cellpadding="0" cellspacing="0">
             <tr>
			 <td width="12%" align="center"> <input name="textfield" type="text" class="inputScore" value="<%= map.get("grade")%>" size="5">
         &nbsp;分 &nbsp;</td>
               <td width="5%" align="center"><img src="/IB/images/causion.gif" alt="请注意：" width="24" height="24"></td>
               <td width="83%" valign="middle"><a href="javascript:show()" onFocus="this.blur()"><strong>点击查看详细评分情况</strong></a></td>
             </tr>
         </table></td>
       </tr>
       <tr>
         <td height="24" colspan="2" align="right" valign="middle" bgcolor="#FFFFFF"><div style="display:none;width:780" id="detail"><%=map.get("remark")%></div></td>
       </tr>
  </table>
</form>
</body>
</html>
