<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>信用证授权委托书</title>
<style>
<!--
 /* Font Definitions */
 body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman";}
 /* Page Definitions */
 @page Section1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=ZH-CN style='text-justify-trim:punctuation' scroll="yes">

<div class=Section1>

<p class=MsoNormal align=center style='text-align:center;text-autospace:none'><b><span
style='font-size:18.0pt;font-family:宋体'><br>
    信用证授权委托书</span></b></p>

<p class=MsoNormal align=center style='text-align:center;text-autospace:none'><b><span
lang=EN-US style='font-size:24.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>现授权<u> <span
lang=EN-US style='color:red'><%if(map.get("APNM") != null){out.print((String)map.get("APNM"));}%></span><span lang=EN-US> </span>（开证申请人） </u>可以开出下列信用证，内容如下：</span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>信用证号码：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>信用证金额：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("LCCY") != null){out.print((String)map.get("LCCY"));}%><%if(map.get("LCAM") != null){out.print((String)map.get("LCAM"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>远期天数：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("TENR") != null){out.print((String)map.get("TENR"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>保证金比例：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("MGRT") != null){out.print((String)map.get("MGRT"));}%>%</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US style='font-size:14.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US style='font-size:14.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US style='font-size:14.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US style='font-size:14.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=right style='margin-left:21.0pt;text-align:right;
text-autospace:none'><b><span lang=EN-US style='font-size:14.0pt;font-family:
宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=right style='margin-left:21.0pt;text-align:right;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>授权人</span></b><b><u><span
lang=EN-US style='font-size:14.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></u></b><span lang=EN-US style='font-size:14.0pt'>&nbsp;&nbsp;</span></p>

</div>

<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">
</div>
</body>

</html>