<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>

<html>

<head>

<meta name=Generator content="Microsoft Word 11 (filtered)">
<title>进口信用证、托收承兑/付汇情况表</title>
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
	{font-family:"Courier \(W1\)";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	layout-grid:15.6pt;}
div.Section1
	{page:Section1;}
div.MsoNormal1 {margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman";}
li.MsoNormal1 {margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman";}
p.MsoNormal1 {margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Times New Roman";}
-->
</style>
</head>

<body lang=ZH-CN style='text-justify-trim:punctuation' scroll="yes">

<div class=Section1 style='layout-grid:15.6pt'>

<table width="583" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td align="center"><span class="MsoNormal" style="text-align:center"><b><span
style='font-size:14.0pt;font-family:宋体'>进口信用证、托收承兑</span></b><b><span
lang=EN-US style='font-size:14.0pt'>/</span></b><b><span style='font-size:14.0pt;
font-family:宋体'>付汇情况表</span></b></span></td>
    </tr>
</table>
<p class=MsoNormal align=center style='text-align:center'><span lang=EN-US>&nbsp;</span><span lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
12.0pt;font-family:宋体'><span style="font-size:12.0pt;font-family:宋体">&nbsp;&nbsp;</span>付汇行承兑</span><span lang=EN-US style='font-size:12.0pt'>/</span><span
style='font-size:12.0pt;font-family:宋体'>付汇情况表编号：</span><span lang=EN-US
style='font-family:"Courier New";color:red'><%if(map.get("ICNO") != null){out.print((String)map.get("ICNO"));}%></span><span lang=EN-US
style='font-size:12.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='font-size:12.0pt;font-family:宋体'>付汇币别：</span><span
lang=EN-US style='font-family:"Courier \(W1\)";color:red'><%if(map.get("ICCY") != null){out.print((String)map.get("ICCY"));}%></span></p>

<table width="595" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td align="right">
            <table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width=583
 style='width:437.4pt;border-collapse:collapse;border:none'>
                <tr style='page-break-inside:avoid;height:30.95pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;padding:
  0cm 5.4pt 0cm 5.4pt;height:30.95pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>付汇行名称</span></p>
                    </td>
                    <td colspan=2 style='width:144.7pt;border:solid windowtext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:30.95pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("BRNM") != null){out.print((String)map.get("BRNM"));}%>
                        </span></p>
                    </td>
                    <td width=95 style='width:71.8pt;border:solid windowtext 1.0pt;border-left:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:30.95pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>收汇行名称</span></p>
                    </td>
                    <td colspan=2 style='width:5.0cm;border:solid windowtext 1.0pt;
  border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:30.95pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("OCBKAD") != null){out.print((String)map.get("OCBKAD"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:30.65pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:30.65pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>付汇人名称</span></p>
                    </td>
                    <td colspan=2 style='width:144.7pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.65pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("CLNM") != null){out.print((String)map.get("CLNM"));}%>
                        </span></p>
                    </td>
                    <td width=95 style='width:71.8pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:30.65pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>付汇人帐号</span></p>
                    </td>
                    <td colspan=2 style='width:5.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.65pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("PYAC") != null){out.print((String)map.get("PYAC"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:30.3pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:30.3pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>结算方式</span></p>
                    </td>
                    <td colspan=5 style='width:358.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.3pt'>
                        <p class=MsoNormal1 align=center style='text-align:center;text-indent:12.0pt'><span
  style='font-size:12.0pt;font-family:宋体'>□即期<span lang=EN-US>/</span>□远期<span
  lang=EN-US>&nbsp;&nbsp;&nbsp; </span>信用证<span lang=EN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>□托收</span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:30.0pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:30.0pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>信用证号</span></p>
                    </td>
                    <td colspan=5 style='width:358.25pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.0pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("DOCS2") != null){out.print((String)map.get("DOCS2"));}%>
                        </span><span
  style='position:absolute;z-index:1;left:0px;margin-left:469px;margin-top:
  8px;width:52px;height:137px'><img width=37 height=126
  src="/IB/inputDocuments/html/jkxyz-tscdfhnkb1.files/image001.gif" alt="文本框: （报关专用）"></span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:31.1pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:31.1pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>合同号</span></p>
                    </td>
                    <td style='border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:31.1pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("DOCS3") != null){out.print((String)map.get("DOCS3"));}%>
                        </span></p>
                    </td>
                    <td colspan=2 style='width:79.4pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:31.1pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>合同总金额</span></p>
                    </td>
                    <td colspan=2 style='width:5.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:31.1pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("DOCS4") != null){out.print((String)map.get("DOCS4"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:30.8pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:30.8pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>单据总金额</span></p>
                    </td>
                    <td style='border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.8pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("ICCY") != null){out.print((String)map.get("ICCY"));}%>
                            </span><span
  lang=EN-US style='font-family:"Courier New";color:red'>
                                <%if(map.get("ICAM") != null){out.print((String)map.get("ICAM"));}%>
                            </span></p>
                    </td>
                    <td colspan=2 style='border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.8pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>本次付汇金额</span></p>
                    </td>
                    <td colspan=2 style='width:5.0cm;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:30.8pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("ICCY") != null){out.print((String)map.get("ICCY"));}%>
                            <%if(map.get("ICAM") != null){out.print((String)map.get("ICAM"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:45.4pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:45.4pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>提（运）单号</span></p>
                    </td>
                    <td colspan=3 style='width:216.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:45.4pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("DOCS6") != null){out.print((String)map.get("DOCS6"));}%>
                        </span></p>
                    </td>
                    <td width=60 style='width:45.6pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:45.4pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>份数</span></p>
                    </td>
                    <td width=127 style='width:96.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:45.4pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("PPNO") != null){out.print((String)map.get("PPNO"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:46.7pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:46.7pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>发票号</span></p>
                    </td>
                    <td colspan=3 style='width:216.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.7pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier \(W1\)";color:red'>
                            <%if(map.get("IVNO") != null){out.print((String)map.get("IVNO"));}%>
                        </span></p>
                    </td>
                    <td width=60 style='width:45.6pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:46.7pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>张数</span></p>
                    </td>
                    <td width=127 style='width:96.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.7pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("DOCS7") != null){out.print((String)map.get("DOCS7"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr style='page-break-inside:avoid;height:46.6pt'>
                    <td width=104 style='width:79.15pt;border:solid windowtext 1.0pt;border-top:
  none;padding:0cm 5.4pt 0cm 5.4pt;height:46.6pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>装箱单号</span></p>
                    </td>
                    <td colspan=3 style='width:216.5pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.6pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("DOCS8") != null){out.print((String)map.get("DOCS8"));}%>
                        </span></p>
                    </td>
                    <td width=60 style='width:45.6pt;border-top:none;border-left:none;border-bottom:
  solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:46.6pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span
  style='font-size:12.0pt;font-family:宋体'>份数</span></p>
                    </td>
                    <td width=127 style='width:96.15pt;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:46.6pt'>
                        <p class=MsoNormal1 align=center style='text-align:center'><span lang=EN-US
  style='font-family:"Courier New";color:red'>
                            <%if(map.get("DOCS9") != null){out.print((String)map.get("DOCS9"));}%>
                        </span></p>
                    </td>
                </tr>
                <tr height=0>
                    <td width=104 style='border:none'></td>
                    <td width=138 style='border:none'></td>
                    <td width=51 style='border:none'></td>
                    <td width=95 style='border:none'></td>
                    <td width=60 style='border:none'></td>
                    <td width=127 style='border:none'></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<p class=MsoNormal><span lang=EN-US>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
12.0pt;font-family:宋体'><span style="font-size:12.0pt;font-family:宋体">&nbsp;&nbsp;</span>付汇行（印章）</span><span lang=EN-US style='font-size:12.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='font-size:12.0pt;font-family:宋体'>付汇单位（印章）</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp; </span><span style='font-size:12.0pt;
font-family:宋体'><span style="font-size:12.0pt;font-family:宋体">&nbsp;&nbsp;</span>年</span><span lang=EN-US style='font-size:12.0pt'>&nbsp; </span><span
style='font-size:12.0pt;font-family:宋体'>月</span><span lang=EN-US
style='font-size:12.0pt'>&nbsp; </span><span style='font-size:12.0pt;
font-family:宋体'>日</span><span lang=EN-US style='font-size:12.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='font-size:12.0pt;font-family:宋体'>年</span><span lang=EN-US
style='font-size:12.0pt'>&nbsp; </span><span style='font-size:12.0pt;
font-family:宋体'>月</span><span lang=EN-US style='font-size:12.0pt'>&nbsp; </span><span
style='font-size:12.0pt;font-family:宋体'>日</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
12.0pt;font-family:宋体'><span style="font-size:12.0pt;font-family:宋体">&nbsp;&nbsp;</span>经办人：</span><span lang=EN-US style='font-size:12.0pt'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style='font-size:12.0pt;font-family:宋体'>经办人：</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:12.0pt'>&nbsp;</span></p>

<p class=MsoNormal><span style='font-size:12.0pt;font-family:宋体'>&nbsp;&nbsp;此表由进口单位随报关单一并交海关</span></p>

</div>


<div class="footer">
<input type="image" src="/IB/images/print.gif" onClick="self.print();return false">
<input type="image" src="<bean:message key="common.returnLetter"/>"
onClick="openReplace('letterManageAction.do?rfno=<%=map.get("rfno")%>&prid=<%=map.get("prid")%>&swno=<%=map.get("swno")%>');return false">

</div>
</body>

</html>