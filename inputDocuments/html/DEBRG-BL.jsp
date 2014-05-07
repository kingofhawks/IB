<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
<html>
<head>
<title>Bill of Exchange</title>
<style>
 body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	

 @page Section1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.Section1
	{page:Section1;}
</style>
</head>
<body lang=ZH-CN style='text-justify-trim:punctuation' scroll="yes">
<div class=Section1 style='layout-grid:15.6pt'>
    <table width="100%" border="0" cellspacing="0" cellpadding="5">
        <tr>
            <td width="39%">
                <p>&nbsp;</p>
            </td>
            <td width="37%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <p>&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>
                <p>&nbsp;</p>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
            RURAL COMMERCIAL BANK OF ZHANGJIAGANG
            </td>
        </tr>
        <tr>
            <td>SAY U.S DOLLARS  &nbsp; ONLY</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td width="39%">
                <p>&nbsp;</p>
            </td>
            <td width="37%">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <p>&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td>
                <p>&nbsp;</p>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                RURAL COMMERCIAL BANK OF ZHANGJIAGANG
            </td>
        </tr>
        <tr>
            <td>SAY U.S DOLLARS  &nbsp; ONLY</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>

<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>
</html>			