<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>Form of Guarantee for Payment </title>
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
        <td align="center" style="font-size:16px"><strong>Form of Guarantee for Payment </strong></td>
    </tr>
</table>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="3%" align="left">&nbsp;</td>
        <td width="14%" align="left"><strong>To</strong></td>
        <td width="1%" align="left"><strong>:</strong></td>
        <td width="21%" align="left"><strong><span style="font-size:14.0pt;color:red">
            <%if(map.get("BFNM") != null){out.print((String)map.get("BFNM"));}%>
        </span></strong></td>
        <td width="11%" align="left">&nbsp;</td>
        <td width="4%" align="left"><strong>Date</strong></td>
        <td width="1%" align="left"><strong>:</strong></td>
        <td width="45%" align="left"><strong><span style="font-size:14.0pt;color:red">
            <%if(map.get("ISDT") != null){out.print((String)map.get("ISDT"));}%>
        </span></strong></td>
    </tr>
    <tr>
        <td align="left">&nbsp;</td>
        <td align="left"><strong>Advised through</strong></td>
        <td align="left"><strong>:</strong></td>
        <td align="left"><strong><span style="font-size:14.0pt;color:red">
            <%if(map.get("ADBKNM") != null){out.print((String)map.get("ADBKNM"));}%>
        </span></strong></td>
        <td align="left">&nbsp;</td>
        <td align="left"><span style="font-family::Arial;"><strong>No</strong></span></td>
        <td align="left"><strong>:</strong></td>
        <td align="left"><strong><span style="font-size:14.0pt;color:red">
            <%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%>
        </span></strong></td>
    </tr>
</table>
<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-indent:-21.0pt;text-autospace:none'><span lang=EN-US style=''><br>
    Dear Sirs,</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style=''>Our irrevocable
Letter of Guarantee No. </span><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b><span lang=EN-US style=''>With
reference to the contract No </span><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("CRNO") != null){out.print((String)map.get("CRNO"));}%></span></b><span lang=EN-US style=''>signed
between your goodselves and</span><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("APNM") != null){out.print((String)map.get("APNM"));}%></span></b><span lang=EN-US style=''>(hereinafter
referred to as Party A)at ------on------ and at the request of Party A, we
hereby establish in your favour an irrevocable Letter of Guarantee No</span><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style=''>We guarantee that
Party A Shall effect payment, in accordance with the terms and conditions of
the above-mentioned contract, for your delivery to terms of ------ totalling</span><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("LCCY") != null){out.print((String)map.get("LCCY"));}%> <%if(map.get("LCAM") != null){out.print((String)map.get("LCAM"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style=''>Should Party A fail
to make payment wholly or partially within the time limit as stipulated in the
contract, we undertake to effect such payment to the extent of the guaranteed
amount for the unpaid value of goods you delivered to them plus interest at
----% p.a. calculated as from------up to ----, after our receipt from your bank
within the validity of this L/G, of your written demand to be verified by Party
A.</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style=''>The guaranteed amount
of this L/G will reduce in proportion to the sum plus interest already paid by
party A and /or by us.</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style=''>This Letter of
Guarantee is valid upto </span><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("EPDT") != null){out.print((String)map.get("EPDT"));}%></span></b><span lang=EN-US style=''>and should
be returned to us for cancellation upon its expiry date.</span></p>

<p class=MsoNormal align=left style='margin-right:3.6pt;text-align:left;
text-autospace:none'><span lang=EN-US style='font-family:楷体_GB2312;'>&nbsp;</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US style='font-family:楷体_GB2312;'>For
</span><span lang=EN-US>China Construction Bank</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>

</html>