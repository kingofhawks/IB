<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>                                 Form of Bond for Supply of</title>
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
.STYLE1 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>

</head>

<body lang=ZH-CN style='text-justify-trim:punctuation' scroll="yes">

<div class=Section1>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="50" align="center"><span class="STYLE1"> Form of Bond for Supply of</span></td>
    </tr>
</table>
<p ><b><span lang=EN-US>To:</span></b><b><span lang=EN-US
style='font-size:14.0pt;color:red'><%if(map.get("BFNM") != null){out.print((String)map.get("BFNM"));}%> </span></b><b><span lang=EN-US>(beneficiary)&nbsp;&nbsp;&nbsp;
Date:</span></b><b><span lang=EN-US style='font-size:14.0pt;color:red'><%if(map.get("ISDT") != null){out.print((String)map.get("ISDT"));}%></span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><b><span
lang=EN-US>No:</span></b><b><span
lang=EN-US style='font-size:14.0pt;color:red'>
    <%if(map.get("LCNO") != null){out.print((String)map.get("LCNO"));}%></span></b></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>Dear Sirs:</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>This Bond hereby issued as a bid of--- (the name of the Applicant)(
hereinafter called the Bidder) for ---- (the bid No.-----) for supply of ----
(the name of the goods).</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-indent:-21.0pt;text-autospace:none'><span lang=EN-US>The-----(name of
issuing Bank)hereby irrevocably guarantees itself its successors and assigns to
pay you immediately the sum of ----representing ---- percent of the Bid value
upon receipt of your written notification stating any of the following effects:</span></p>

<p class=MsoNormal align=left style='margin-left:42.0pt;text-align:left;
text-indent:-21.0pt;text-autospace:none'><span lang=EN-US>a.&nbsp;&nbsp;&nbsp;&nbsp; The
Bidder has withdrawn his bid after submission of bid and before the expiration
of its validity period or,</span></p>

<p class=MsoNormal align=left style='margin-left:42.0pt;text-align:left;
text-indent:-21.0pt;text-autospace:none'><span lang=EN-US>b.&nbsp;&nbsp;&nbsp; The
Bidder has failed to enter into a contract with you after notification of the
contract awards or,</span></p>

<p class=MsoNormal align=left style='margin-left:42.0pt;text-align:left;
text-indent:-21.0pt;text-autospace:none'><span lang=EN-US>c.&nbsp;&nbsp;&nbsp; The
Bidder as successful bidder has failed to establish performance bond within -----
calendar days after the effective date of contract.</span></p>

<p class=MsoNormal align=left style='text-align:left;text-autospace:none'><span
lang=EN-US>It is fully understood that this guarantee takes effect from the
issuing date and shall remain valid for period of -----calendar days after the
opening date of bid and during the period of any extension thereof that may be
agreed by us after we are noticed by you and/or the Bidder unless earlier
terminated and/or released by you.</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US>Upon expiry, this bid bond should be
returned to us for cancellation.</span></p>

<p class=MsoNormal align=left style='margin-right:3.6pt;text-align:left;
text-autospace:none'><span lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US>For </span><span lang=EN-US>China
Construction Bank</span></p>

<p class=MsoNormal align=left style='margin-left:21.0pt;text-align:left;
text-autospace:none'><span lang=EN-US>&nbsp;</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>

</html>