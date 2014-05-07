<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>
<head>
<title>COLLECTION INSTRUCTION</title>
<style>
 body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	

.font1{font-size:16px; font-weight:bold;}
.font2{font-size:14px; font-weight:bold;}	
</style>
</head>
<body lang=ZH-CN style='text-justify-trim:punctuation' scroll="yes">
<div class=Section1 style='layout-grid:15.6pt'>
<table width="100%" border="0" cellpadding="3" cellspacing="0">
    <tr>
        <td width="45%" valign="top" style="border-top-width:1px; border-top-style:solid; border-top-color:#000000;border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;">
           Item Processing Centre        
		</td>
        <td width="30%" valign="top" align="left" style="border-left-width:1px; border-left-style:solid; border-left-color:#000000;border-top-width:1px; border-top-style:solid; border-top-color:#000000;border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;"><span class="font2"><br>
                <br>
                </span><br>
                Date of Despatch<span class="font2"><br>
                </span></td>
        <td width="25%" valign="top" align="left" style="border-top-width:1px; border-top-style:solid; border-top-color:#000000;border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;"><span class="font2">CREDIT </span></td>
    </tr>
    <tr>
        <td valign="top" style="border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;">
            <strong class="font2">FROM</strong> Remitting Bank/Branch<br>
                Rural Commercial Bank of<br>
                <br>
                <br>
                <br>
</td>
        <td colspan="2" rowspan="2" align="left" valign="top" style="border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;border-left-width:1px; border-left-style:solid; border-left-color:#000000;">
            A/C No. <br>
            <br>
            <br>
            Total Amount<br>
            <br>
            <br>
            Reference No<br>
            <br>
            <br>
            Number of
            <br>
            Clean cheques<br>
        </td>
    </tr>
    <tr>
        <td valign="top" style="border-bottom-width:1px; border-bottom-style:solid; border-bottom-color:#000000;">
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td colspan="5" class="font2">For Bank Use Only</td>
                    </tr>
                <tr>
                    <td width="12%">Date</td>
                    <td width="13%">Time</td>
                    <td width="28%">A/C No./Amount</td>
                    <td width="14%">Cur.</td>
                    <td width="33%">Account Title</td>
                </tr>
                <tr>
                    <td height="156" colspan="5" valign="bottom" class="font1">Customer's
                        Copy</td>
                    </tr>
            </table>
        </td>
    </tr>
</table>
<h2>&nbsp;</h2>
</div>

<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>

</body>
</html>			