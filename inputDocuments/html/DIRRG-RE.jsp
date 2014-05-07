<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>


<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
<title>邮划委托书</title>
<style> 
body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	

.title{font-size:18px;  font-weight:bold;}
.titlecn{font-size:20px;  font-weight:bold;}
</style>

</head>

<body >

<div >
    <table width="620" border="0" cellspacing="0" cellpadding="0" >
    <tr>
        <td height="80" colspan="3" align="center" valign="middle" class="title"><span class="titlecn">邮划委托书</span><br>
PAYMENT INSTRUCTION   </tr>
    <tr>
        <td width="17" rowspan="2">&nbsp;</td>
        <td width="298" rowspan="2" align="left" valign="top">致：<%if(map.get("IRBKNM") != null){out.print((String)map.get("IRBKNM"));}%></td>
        <td width="305" height="20" align="left">日期：<%if(map.get("APDT") != null){out.print((String)map.get("APDT"));}%></td>
    </tr>
    <tr>
        <td height="20">我行编号：<%if(map.get("ORNO") != null){out.print((String)map.get("ORNO"));}%></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">下列款项请付我册<%if(map.get("ACNO") != null){out.print((String)map.get("ACNO"));}%></td>
        <td align="left">付款方式：<%if(map.get("ORTP") != null){out.print((String)map.get("ORTP"));}%></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td colspan="2" align="left">
            <table width="100%" border="0" cellspacing="1" cellpadding="0" style="border:solid 1px #000">
                <tr>
                    <td rowspan="2" valign="top" bordercolor="#000000" >收款人:<%if(map.get("RVE") != null){out.print((String)map.get("RVE"));}%></td>
                    <td bordercolor="#000000" >金额：<%if(map.get("CYNO") != null){out.print((String)map.get("CYNO"));}%>&nbsp;&nbsp;
                                                                      <%if(map.get("AMTS") != null){out.print((String)map.get("AMTS"));}%></td>
                </tr>
                <tr>
                    <td bordercolor="#000000" >起息日：<%if(map.get("VLDT") != null){out.print((String)map.get("VLDT"));}%></td>
                </tr>
                <tr>
                    <td bordercolor="#000000" >收款行：<%if(map.get("IRBKNM") != null){out.print((String)map.get("IRBKNM"));}%></td>
                    <td bordercolor="#000000" >付款人：<%if(map.get("CLNM") != null){out.print((String)map.get("CLNM"));}%></td>
                </tr>
                <tr>
                    <td colspan="2" bordercolor="#000000" >备注：<%if(map.get("MEMO") != null){out.print((String)map.get("MEMO"));}%></td>
                    </tr>
            </table>
        </td>
        </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="center">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="center">For RURAL COMMERCIALBANK OF</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="center">
            <table width="80%" border="0" cellspacing="0" cellpadding="0" style="border-bottom-color:#000000; border-bottom-style:solid; border-bottom-width:1px;">
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="center">Authorized Signature(s)</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td height="20" colspan="2" align="left">&nbsp;</td>
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
