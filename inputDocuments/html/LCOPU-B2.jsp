<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>                         Form of Guarantee for Overdraft</title>
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
	{font-family:楷体_GB2312;
	panose-1:2 1 6 9 3 1 1 1 1 1;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
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
<table width="100%" height="50" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td align="center" style="font-size:16px">&nbsp; <b>Form of Guarantee for Overdraft</b></td>
    </tr>
</table>

<div class=Section1>
    <p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US>To:</span></b><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("BFNM") != null){out.print((String)map.get("BFNM"));}%> </span></b><b><span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;Date:</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("ISDT") != null){out.print((String)map.get("ISDT"));}%></span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US>No:</span></b><b><span lang=EN-US style='font-size:14.0pt;
color:red'><%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Dear Sirs,</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>Re: <br>
    Our Irrevocable Letter
of Guarantee No</span><b><span lang=EN-US style='font-size:14.0pt;color:red'>
<%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b><span
lang=EN-US>At the request of ---- we hereby issue this Letter of Guarantee in
your favour to the extent of------(Say------ only)for the purpose of your
providing the overdraft facility to the account held by-----.</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>We
hereby undertake to refund you, should-------fail to repay you duly the overdue
amount which they have overdrawn on the A/M account, the amount not exceeding
the above-mentioned sum upon our receipt of your written claim despatched
within the validity of this I/G.</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>This
guarantee remains valid until</span><b><span lang=EN-US style='font-size:14.0pt;
color:red'>
<%if(map.get("EPDT") != null){out.print((String)map.get("EPDT"));}%></span></b></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'>Upon its expiration please confirm to us by tested telex for our cancellation.</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='font-family:楷体_GB2312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US>For </span><span lang=EN-US>China
Construction Bank</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US style='font-size:10.0pt;font-family:宋体'>&nbsp;</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">


</div>
</body>

</html>