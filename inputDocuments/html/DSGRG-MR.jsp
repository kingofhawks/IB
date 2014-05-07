<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>寄提单销保面函</title>
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
p.MsoDocumentMap, li.MsoDocumentMap, div.MsoDocumentMap
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	background:navy;
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
style='font-size:22.0pt;font-family:宋体'>寄提单销保面函</span></b></p>

<p class=MsoNormal align=center style='text-align:center;text-autospace:none'><b><span
lang=EN-US style='font-size:22.0pt'>&nbsp;</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Please always quote our ref. (R/G no.) <span style='color:red'><%if(map.get("SGNO") != null){out.print((String)map.get("SGNO"));}%>
</span></span><span style='font-family:宋体;color:red'>提货担保编号</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>To: </span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='color:red'><%if(map.get("GUBKAD") != null){out.print((String)map.get("GUBKAD"));}%></span><span style='font-family:宋体;
color:red'>船公司名称</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='color:red'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Date: <span style='color:red'><%if(map.get("APDT") != null){out.print((String)map.get("APDT"));}%></span></span><span style='font-family:
宋体;color:red'>日期</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Re: REDEMPTION FOR SHIPPING GUARANTEE</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;&nbsp;&nbsp; for <span style='color:red'><%if(map.get("CLNM") != null){out.print((String)map.get("CLNM"));}%></span></span><span
style='font-family:宋体;color:red'>开证人名称</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;&nbsp;&nbsp; Under L/C no. <span style='color:red'><%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></span><span
style='font-family:宋体;color:red'>信用证号</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Dear sirs,</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>We send herewith original transport document(s) for the redemption
of your shipping guarantee under the captioned ref.</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Please confirm the redemption to us by authenticated advice so that
we can close our file accordingly.</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Thanks for your kind cooperation.</span></p>

<p class=MsoNormal align=left style='margin-right:28.3pt;text-align:left;
text-autospace:none'><span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Yours faithfully</span></p>

<p class=MsoNormal align=left style='margin-right:28.3pt;text-align:left;
text-autospace:none'><span lang=EN-US>ENCL:&nbsp; <span style='color:red'><%if(map.get("ENCL") != null){out.print((String)map.get("ENCL"));}%></span></span><span
style='font-family:宋体;color:red'>附件</span></p>

<p class=MsoNormal align=right style='margin-right:28.3pt;text-align:right;
text-autospace:none;word-break:break-all'><span lang=EN-US style='font-size:
8.0pt'>For</span><span lang=EN-US style='font-size:10.0pt'> </span><b><span
lang=EN-US style='font-size:9.0pt'>RURAL COMMERCIAL BANK OF ZHANGJIAGANG.</span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='font-size:8.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='font-size:8.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=right style='margin-right:91.3pt;text-align:right;
text-autospace:none'><span lang=EN-US style='font-size:9.0pt'>Authorized
Signature(s)</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>

</html>