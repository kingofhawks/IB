<%--承兑付汇情况表--%>

<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>信用证授权委托书</title>
<style>
<!--
 /* Font Definitions */
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
<%//System.out.println(request.getParameter("apnm"));%>
<body lang=ZH-CN style='text-justify-trim:punctuation'>

<div class=Section1>

<p class=MsoNormal align=center style='text-align:center;text-autospace:none'><b><span
style='font-size:24.0pt;font-family:宋体'>信用证授权委托书</span></b></p>

<p class=MsoNormal align=center style='text-align:center;text-autospace:none'><b><span
lang=EN-US style='font-size:24.0pt;font-family:宋体'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>现授权<u> <span
style='color:red'><%if(request.getParameter("apnm") != null){
out.print(request.getParameter("apnm"));
}%></span><span lang=EN-US> </span>（开证申请人） </u>可以开出下列信用证，内容如下：</span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>信用证号码：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(request.getParameter("lcno") != null){
out.print(request.getParameter("lcno"));
}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>信用证金额：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(request.getParameter("lccy") != null){
out.print(request.getParameter("lccy"));}%><%if(request.getParameter("lcam") != null){
out.print(request.getParameter("lcam"));
}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>远期天数：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(request.getParameter("tenr") != null){
out.print(request.getParameter("tenr"));
}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span style='font-size:14.0pt;font-family:宋体'>保证金比例：</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(request.getParameter("mgrt") != null){
out.print(request.getParameter("mgrt"));
}%>%</span></b></p>

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

</body>

</html>
