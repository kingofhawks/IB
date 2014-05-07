<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"
    prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic"
    prefix="logic"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>国际结算模拟系统</title>
<script type="text/javascript" src="common/default.js"></script>
<style>
body{behavior: url('/IB/common/mouse.htc');
/*	border:#3A8DCF 1px solid;
*/	margin-bottom: 1px;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
}
body,table { font-size:12px;color:#08346B; }
td.systemInfo_title {color:#FFFFFF; vertical-align:middle; text-align:center;}
td.systemInfo_date {vertical-align:middle; text-align:right;}
td.systemInfo_middle{background:url(/IB/images/top_systemInfo_bg.gif)}
td.systemInfo_anounce{ text-align:right;}
.personalInfo {color:#FF0000;text-transform : uppercase;}
#roleSelectDiv{position:relative; display:none; border:1px solid #000000; width:129px; height:18px; clip:rect(0px,126px,17px,0px);overflow:hidden;}
#roleSelect {font-size:12px; height:14px; position:relative; margin:-2px;width:129px;border:0px; }
#changeRoleDiv {cursor:hand; width:129px;}
</style>
<script type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body onLoad="MM_preloadImages('/IB/images/btn_loginOut_o.gif')" style="overflow-y:hidden;">
<table width="100%" height="8" border="0" cellpadding="0" cellspacing="0" background="/IB/images/topbg.gif">
  <tr>
    <td width="48%" rowspan="2" align="left"><img src="/IB/images/top_left.gif" width="252" height="88"></td>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td width="46%">&nbsp;</td>
    <td width="6%" align="left" valign="bottom"><a href="/IB/temp1.jsp" target="_self"><img
                    src="/IB/images/btn_loginOut.gif" name="Image31" width="40" height="40"
                    border="0" id="Image31" onMouseOver="MM_swapImage('Image31','','/IB/images/btn_loginOut_o.gif',1)" onMouseOut="MM_swapImgRestore()"></a></td>
  </tr>
</table>
</body>
</html>
