<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>                     Form of Guarantee for Maritime Accident</title>
<style>
<!--
 /* Font Definitions */
 body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	
 @font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:楷体_GB2312;
	panose-1:2 1 6 9 3 1 1 1 1 1;}
@font-face
	{font-family:"\@楷体_GB2312";
	panose-1:2 1 6 9 3 1 1 1 1 1;}
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
<table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" style="font-size:16px"><b>&nbsp;
Form of Guarantee for Maritime Accident</b></td>
    </tr>
</table>
<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span lang=EN-US>To:</span></b><b><span lang=EN-US
style='font-size:14.0pt;color:red'><%if(map.get("BFNM") != null){out.print((String)map.get("BFNM"));}%> </span></b><b><span lang=EN-US>&nbsp;&nbsp;&nbsp; Date:</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("ISDT") != null){out.print((String)map.get("ISDT"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><b><span lang=EN-US>N0.</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'>
    <%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>Dear Sirs:</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>Re:Our Letter of
Guarantee N0.</span> In consideration and on condition that you release and/or
refrain from arresting or otherwise detaining the vessel ------or any other vessel
or property of the shipowners ------,We hereby undertake to pay you on demand
any sum (inclusive </span>interest
and costs) not exceeding the amount of</span><b><span lang=EN-US
style='font-size:14.0pt;color:red'>
<%if(map.get("LCCY") != null){out.print((String)map.get("LCCY"));}%> 
<%if(map.get("LCAM") != null){out.print((String)map.get("LCAM"));}%>
</span></b><span
lang=EN-US> (say ----only),which may result or be adjudged as due to you in
respect of the damaged and short cargo from ------- as carriers of the goods
and/or, as responsible as owners of the vessel ------by written agreement
between the parties or final arbitration award or enforceable judgement of the
competent court at ----- or ------. This guarantee is given without admission
of any liability and without prejudice to any right and defence which the said
vessel and her owners may have, none of which is to be regarded as waived
including the right of limitation of the owners liability in accordance with
the applicable law.</span></p>

<p class=MsoNormal align=left style='margin-right:3.6pt;text-align:left;
text-autospace:none'><span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></p>

<p class=MsoNormal align=left style='margin-right:3.6pt;text-align:left;
text-autospace:none'><span lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US>For </span><span lang=EN-US>China Construction
Bank</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style='font-size:10.0pt'>&nbsp;</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>

</html>