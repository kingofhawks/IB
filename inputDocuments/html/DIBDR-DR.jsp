<%@ page contentType="text/html; charset=GB2312"%>
<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>


<head>
<link rel=File-List href="DIBDR-AD.files/filelist.xml">
<link rel=Edit-Time-Data href="DIBDR-AD.files/editdata.mso">
<title>ORIGINAL</title>
<style>
<!--
 body{ 
		border: #3A8DCF solid;	border-width: 1px 1px 1px 1px; margin:2px;}	

 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;
	mso-font-charset:2;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:0 268435456 0 0 -2147483648 0;}
@font-face
	{font-family:宋体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimSun;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:黑体;
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:隶书;
	panose-1:2 1 5 9 6 1 1 1 1 1;
	mso-font-alt:宋体;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 135135232 16 0 262145 0;}
@font-face
	{font-family:"\@隶书";
	panose-1:2 1 5 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:1 135135232 16 0 262144 0;}
@font-face
	{font-family:"Arial Narrow";
	panose-1:2 11 5 6 2 2 2 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:647 0 0 0 159 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
h1
	{mso-style-next:正文;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	line-height:12.0pt;
	mso-pagination:none;
	page-break-after:avoid;
	mso-outline-level:1;
	layout-grid-mode:char;
	mso-layout-grid-align:none;
	font-size:12.0pt;
	font-family:"Times New Roman";
	font-variant:small-caps;
	mso-font-kerning:1.0pt;}
h2
	{mso-style-next:正文缩进;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-line-height-alt:12.0pt;
	mso-pagination:none;
	page-break-after:avoid;
	mso-outline-level:2;
	layout-grid-mode:char;
	mso-layout-grid-align:none;
	font-size:18.0pt;
	font-family:"Times New Roman";
	font-variant:small-caps;
	mso-font-kerning:1.0pt;}
h3
	{mso-style-next:正文缩进;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:center;
	mso-line-height-alt:12.0pt;
	mso-pagination:none;
	page-break-after:avoid;
	mso-outline-level:3;
	layout-grid-mode:char;
	mso-layout-grid-align:none;
	font-size:14.0pt;
	font-family:"Times New Roman";
	letter-spacing:-1.0pt;
	mso-font-kerning:1.0pt;}
p.MsoNormalIndent, li.MsoNormalIndent, div.MsoNormalIndent
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	mso-pagination:none;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:7.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoBodyText2, li.MsoBodyText2, div.MsoBodyText2
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	line-height:12.0pt;
	mso-pagination:none;
	layout-grid-mode:char;
	mso-layout-grid-align:none;
	font-size:6.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	font-variant:small-caps;
	letter-spacing:-1.0pt;}
p.MsoBodyText3, li.MsoBodyText3, div.MsoBodyText3
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoDocumentMap, li.MsoDocumentMap, div.MsoDocumentMap
	{mso-style-noshow:yes;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	background:navy;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
span.GramE
	{mso-style-name:"";
	mso-gram-e:yes;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;
	mso-gutter-position:top;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:77.7pt 89.85pt 72.0pt 81.1pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:1639652630;
	mso-list-type:simple;
	mso-list-template-ids:67698695;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0A8;
	mso-level-tab-stop:21.25pt;
	mso-level-number-position:left;
	margin-left:21.25pt;
	text-indent:-21.25pt;
	mso-ansi-font-size:8.0pt;
	mso-bidi-font-size:8.0pt;
	font-family:Wingdings;
	mso-bidi-font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
#Layer1 {
	position:absolute;
	left:36px;
	top:1067px;
	width:29px;
	height:23px;
	z-index:2;
}
div.MsoNormal1 {mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
li.MsoNormal1 {mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoNormal1 {mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
-->
</style>
<!--[if gte mso 10]>
<style>
 /* Style Definitions */
 table.MsoNormalTable
	{mso-style-name:普通表格;
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-parent:"";
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;
	mso-para-margin:0cm;
	mso-para-margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:10.0pt;
	font-family:"Times New Roman";
	mso-ansi-language:#0400;
	mso-fareast-language:#0400;
	mso-bidi-language:#0400;}
</style>
<![endif]-->
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="2050"/>
</xml><![endif]-->
<!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1"/>
 </o:shapelayout></xml><![endif]-->
<script type="text/javascript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body lang=ZH-CN style='tab-interval:21.25pt;text-justify-trim:punctuation'>
<div class=Section1 style='layout-grid:15.6pt'>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><![if !vml]>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="65%" align="right">ORIGINAL</td>
        <td width="35%">&nbsp;</td>
    </tr>
</table>
<![endif]>
<p class=MsoNormal style='mso-line-height-alt:12.0pt;mso-outline-level:1;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:24.0pt;mso-fareast-font-family:隶书'><span
style='mso-spacerun:yes'>&nbsp;</span></span><b><span lang=EN-US
style='font-size:8.0pt;text-transform:uppercase'><o:p></o:p></span></b></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:8.0pt;text-transform:uppercase'>address</span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>PEDESTRIAN STREET NO.12.ZHANGJIAGANG <o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:10.0pt;text-transform:uppercase'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>JIANGSU CHINA 215600
<o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:8.0pt;text-transform:uppercase'>TEL<span
style='mso-spacerun:yes'>&nbsp; </span></span><span style='font-size:9.0pt;
font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　<span style="mso-spacerun:yes">&nbsp;</span></span><span
style='font-size:7.5pt;text-transform:uppercase'> </span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:9.0pt;text-transform:uppercase'>0512-<span
class=GramE>58131605<span style='mso-spacerun:yes'>&nbsp; </span>58131606</span>
        <o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>telex</span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　</span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>363835 ZJGCB CN</span><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>swift</span><span
style='font-size:8.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>　</span><span style='font-size:7.5pt;text-transform:uppercase'> </span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:9.0pt;text-transform:uppercase'>BKCHCNBJ95B</span><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>fax</span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　<span style="mso-spacerun:yes">&nbsp;</span></span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'> ：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>0512-58132632</span><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'>
<o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;mso-line-height-alt:
12.0pt;mso-outline-level:1;layout-grid-mode:char;mso-layout-grid-align:none'><span
class=GramE><b><span style='font-size:18.0pt;font-family:宋体;mso-ascii-font-family:
"Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
宋体;text-transform:uppercase'>电提不符</span></b></span><b><span style='font-size:
18.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>点通知书</span></b><b><span
lang=EN-US style='font-size:18.0pt;text-transform:uppercase'><o:p></o:p></span></b></p>

<h2><span lang=EN-US style='font-variant:normal !important;text-transform:uppercase'><span
style='mso-spacerun:yes'>&nbsp;</span><span style='mso-tab-count:1'>&nbsp;&nbsp; </span>DISCREPANCY
ADVICE<o:p></o:p></span></h2>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><!--[if gte vml 1]><v:shape id="_x0000_s1027" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:0;margin-top:8.1pt;
 width:27pt;height:18.6pt;z-index:1' o:allowincell="f" stroked="f">
 <v:textbox style='mso-next-textbox:#_x0000_s1027' inset="0"/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout'>

<table height="17" align=left cellpadding=0 cellspacing=0>
 <tr>
  <td width=7 height=2></td>
 </tr>
 <tr>
  <td></td>
  <td width=45 height=13 bgcolor=white style='vertical-align:top;background:
  white'><![endif]><![if !mso]><span style='position:absolute; mso-ignore:vglayout; left:11.25pt; z-index:1; top: 172px; width: 62px;'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td valign="top"><![endif]>
    <div v:shape="_x0000_s1027" style='padding:3.6pt 7.2pt 3.6pt 0pt'
    class=shape>
    <p class=MsoNormal><span lang=EN-US style='font-size:12.0pt'>TO <o:p></o:p></span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:41.4pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:71.85pt'>
  <td width=300 valign=top style='width:225.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><b><span lang=EN-US style='color:red'><o:p>&nbsp;</o:p></span></b></p>
  </td>
  <td width=215 valign=top style='width:161.25pt;border:none;mso-border-left-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'><br
  style='mso-ignore:vglayout' clear=ALL>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>日</span> <span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman";mso-bidi-font-family:宋体'>期：</span><u><span lang=EN-US><o:p></o:p></span></u></p>
  <p class=MsoNormal><span lang=EN-US>Date<span
  style='mso-spacerun:yes'>&nbsp;&nbsp; </span><u><o:p></o:p></u></span></p>
  <p class=MsoNormal><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>我行编号：</span><u><span
  lang=EN-US><o:p></o:p></span></u></p>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>Our Ref. No. </span><span
  lang=EN-US style='font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>敬启者：</span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>Dear Sirs,</span></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0
 style='margin-left:23.4pt;border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>RE:</span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>信用证号</span><span lang=EN-US>L/C NO. </span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=156 valign=top style='width:117.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>出票人</span><span lang=EN-US>Beneficiary</span></p>
  </td>
  <td width=336 valign=top style='width:252.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>汇票期限</span><span lang=EN-US>Tenor <span style='color:red'><span
  style='mso-spacerun:yes'>&nbsp;</span><span
  style='mso-spacerun:yes'>&nbsp;</span><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
  style='mso-spacerun:yes'>&nbsp;</span></span></span><span style='font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>金额</span><span lang=EN-US>Amount</span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span class=GramE><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>兹收到</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体'>下列<span class=GramE>银行电提的</span>信用证项下的不符点，</span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>We have received one copy of telex/swift advising the
discrepancy under <span class=GramE>the a/</span>m credit.</span></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:5.4pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:45.75pt'>
  <td width=564 colspan=2 valign=top style='width:423.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:45.75pt'>
  <p class=MsoNormal><span lang=EN-US style='color:red'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:13.5pt'>
  <td width=240 valign=top style='width:180.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'>
  <p class=MsoNormal style='margin-left:3.6pt;text-indent:-3.6pt;line-height:
  12.0pt;layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US>REF.NO.
  </span></p>
  </td>
  <td width=324 valign=top style='width:243.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'>
  <p class=MsoNormal style='margin-left:3.6pt;line-height:12.0pt;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US>Dated<span
  style='mso-spacerun:yes'>&nbsp; </span></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:10.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span style='font-size:9.0pt;font-family:宋体;
mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
mso-bidi-font-family:宋体'>不符点</span><span lang=EN-US style='font-size:10.0pt'>Discrepancy(ies)<o:p></o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="21%">公司签收：</td>
        <td width="15%">&nbsp;</td>
        <td width="64%" rowspan="16" valign="bottom">
            <table width="50%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" valign="middle"><b><span style="font-size:9.0pt;font-family:Arial">For
                        RURAL COMMERCIAL BANK OF ZHANGJIAGANG</span></b></td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:宋体"><strong>银行印签</strong></span></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:Arial"><strong>Authorized Signature(s)</strong></span></td>
                </tr>
            </table>
        </td>
        </tr>
    <tr>
        <td>Confirmation for Receipt</td>
        <td>&nbsp;</td>
        </tr>
    <tr>
        <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
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
    <tr>
        <td>日期： </td>
        <td>&nbsp;</td>
        </tr>
    <tr>
        <td align="left" valign="middle">Date</td>
        <td>&nbsp;</td>
        </tr>
    <tr>
        <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
        <td>&nbsp;</td>
        </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p></o:p></span></p>


<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><b><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><b><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><b><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'><o:p>&nbsp;</o:p></span></b></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;text-transform:uppercase'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;text-transform:uppercase'><o:p>&nbsp;</o:p></span></p>

<br style="page-break-after: always">

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:8.0pt;text-transform:uppercase'>address</span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>PEDESTRIAN STREET NO.12.ZHANGJIAGANG <o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:10.0pt;text-transform:uppercase'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>JIANGSU CHINA 215600<o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly;
layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
style='font-size:8.0pt;text-transform:uppercase'>TEL<span
style='mso-spacerun:yes'>&nbsp; </span></span><span style='font-size:9.0pt;
font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　</span><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:9.0pt;text-transform:uppercase'>0512-<span
class=GramE>58131605<span style='mso-spacerun:yes'>&nbsp; </span>58131606</span><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>telex</span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　</span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'><span style="mso-spacerun:yes">&nbsp;&nbsp;</span>：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>363835 ZJGCB CN</span><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>swift</span><span
style='font-size:8.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>　</span><span style='font-size:7.5pt;text-transform:uppercase'><span style="mso-spacerun:yes">&nbsp;&nbsp;</span><span style="mso-spacerun:yes">&nbsp;&nbsp;</span> </span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>：</span><span lang=EN-US style='font-size:9.0pt;text-transform:uppercase'>BKCHCNBJ95B</span><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:9.0pt;mso-line-height-rule:exactly'><span
lang=EN-US style='font-size:8.0pt;text-transform:uppercase'>fax</span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>　<span style="mso-spacerun:yes">&nbsp;&nbsp;</span></span><span
style='font-size:9.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'><span style="mso-spacerun:yes">&nbsp;</span>：</span><span lang=EN-US style='font-size:10.0pt;text-transform:
uppercase'>0512-58132632</span><span lang=EN-US style='font-size:8.0pt;
text-transform:uppercase'>
<o:p></o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;mso-layout-grid-align:none;
text-autospace:none'><span lang=EN-US style='font-family:宋体;mso-hansi-font-family:
"Times New Roman"'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;mso-line-height-alt:
12.0pt;mso-outline-level:1;layout-grid-mode:char;mso-layout-grid-align:none'><span
class=GramE><b><span style='font-size:18.0pt;font-family:宋体;mso-ascii-font-family:
"Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
宋体;text-transform:uppercase'>电提不符</span></b></span><b><span style='font-size:
18.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体;text-transform:uppercase'>点通知书</span></b><b><span
lang=EN-US style='font-size:18.0pt;text-transform:uppercase'><o:p></o:p></span></b></p>

<h2><span lang=EN-US style='font-variant:normal !important;text-transform:uppercase'><span
style='mso-spacerun:yes'>&nbsp;</span><span style='mso-tab-count:1'>&nbsp;&nbsp; </span>discrepancy
advice<o:p></o:p></span></h2>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><!--[if gte vml 1]><v:shape id="_x0000_s1035" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:0;margin-top:8.1pt;
 width:27pt;height:18.6pt;z-index:11' o:allowincell="f" stroked="f">
 <v:textbox style='mso-next-textbox:#_x0000_s1035' inset="0"/>
</v:shape><![endif]--><![if !vml]>
    <![endif]>
    <span lang=EN-US style='font-size:8.0pt'>
    <o:p>&nbsp;</o:p>
    </span></p>


<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="4%" align="right" valign="top"> <p class=MsoNormal><span lang=EN-US style='font-size:13.0pt'>TO <o:p></o:p></span></p></td>
        <td width="96%" align="left">
            <table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:41.4pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
                <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:71.85pt'>
                    <td width=300 valign=top style='width:225.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'>
                        <p class=MsoNormal1 style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><b><span lang=EN-US style='color:red'>
                            <o:p>&nbsp;</o:p>
                        </span></b></p>
                    </td>
                    <td width=215 valign=top style='width:161.25pt;border:none;mso-border-left-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'><br
  style='mso-ignore:vglayout' clear=ALL>
                            <p class=MsoNormal1><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>日</span> <span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman";mso-bidi-font-family:宋体'>期：</span><u><span lang=EN-US>
                                <o:p></o:p>
                            </span></u></p>
                        <p class=MsoNormal1><span lang=EN-US>Date<span style='mso-spacerun:yes'>&nbsp; </span></span></p>
                        <p class=MsoNormal1><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'><br>
                            我行编号：</span><u><span
  lang=EN-US>
                                <o:p></o:p>
                            </span></u></p>
                        <p class=MsoNormal1 style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>Our Ref. No. </span><span
  lang=EN-US style='font-size:8.0pt'>
                            <o:p></o:p>
                        </span></p>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>敬启者：</span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>Dear Sirs,</span></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0
 style='margin-left:23.4pt;border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>RE:</span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>信用证号</span><span lang=EN-US>L/C NO.<u><span style='color:red'> </span></u></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=156 valign=top style='width:117.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>出票人</span><span lang=EN-US>Beneficiary</span></p>
  </td>
  <td width=336 valign=top style='width:252.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>汇票期限</span><span lang=EN-US>Tenor<span style='color:red'><span
  style='mso-spacerun:yes'>&nbsp; </span></span></span><span style='font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>金额</span><span lang=EN-US>Amount<u> </u></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span class=GramE><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>兹收到</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:宋体'>下列<span class=GramE>银行电提的</span>信用证项下的不符点，</span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>We have received one copy of telex/swift advising the
discrepancy under <span class=GramE>the a/</span>m credit.</span></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:5.4pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:45.75pt'>
  <td width=564 colspan=2 valign=top style='width:423.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:45.75pt'>
  <p class=MsoNormal><span lang=EN-US style='color:red'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;mso-yfti-lastrow:yes;height:13.5pt'>
  <td width=240 valign=top style='width:180.0pt;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'>
  <p class=MsoNormal style='margin-left:3.6pt;text-indent:-3.6pt;line-height:
  12.0pt;layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US>REF.NO.
  </span></p>
  </td>
  <td width=324 valign=top style='width:243.0pt;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'>
  <p class=MsoNormal style='margin-left:3.6pt;line-height:12.0pt;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US>Dated<span
  style='mso-spacerun:yes'>&nbsp; </span></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:9.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:9.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:9.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span style='font-size:9.0pt;font-family:宋体;
mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
mso-bidi-font-family:宋体'>不符点</span><span lang=EN-US style='font-size:10.0pt'>Discrepancy(ies)<o:p></o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="25%">公司签收：</td>
        <td width="17%">&nbsp;</td>
        <td width="58%" rowspan="16" valign="bottom">
            <table width="50%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" valign="middle"><b><span style="font-size:9.0pt;font-family:Arial">For
                                RURAL COMMERCIAL BANK OF ZHANGJIAGANG</span></b></td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:宋体"><strong>银行印签</strong></span></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:Arial"><strong>Authorized
                                Signature(s)</strong></span></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>Confirmation for Receipt</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
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
    <tr>
        <td>日期： </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="left" valign="middle">Date</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="middle">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<span
lang=EN-US style='font-size:8.0pt;letter-spacing:-1.0pt'>
<o:p>&nbsp;</o:p></span></p></p>

<p style="page-break-after: always"></p>
<p class=MsoNormal align=center style='text-align:center;mso-line-height-alt:
12.0pt;mso-outline-level:1;layout-grid-mode:char;mso-layout-grid-align:none'><b><span
style='font-size:18.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;text-transform:
uppercase'>不符点确认书</span></b><span lang=EN-US style='font-size:22.0pt;
letter-spacing:-1.0pt'><o:p></o:p></span></p>

<h3><span lang=EN-US><o:p>&nbsp;</o:p></span></h3>

<p class=MsoNormal style='line-height:12.0pt;mso-outline-level:1;layout-grid-mode:
char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt'>TO</span><span
lang=EN-US style='font-size:8.0pt'><o:p></o:p></span></p>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0
 style='margin-left:5.4pt;border-collapse:collapse;border:none;mso-border-alt:
 solid windowtext .5pt;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;
  height:71.85pt'>
  <td width=300 valign=top style='width:225.0pt;border:solid windowtext 1.0pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><b><span lang=EN-US style='color:red'><o:p>&nbsp;</o:p></span></b></p>
  </td>
  <td width=252 valign=top style='width:189.0pt;border:none;mso-border-left-alt:
  solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:71.85pt'>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>日</span> <span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman";mso-bidi-font-family:宋体'>期：</span><u><span lang=EN-US><o:p></o:p></span></u></p>
  <p class=MsoNormal><span lang=EN-US>Date<span style='mso-spacerun:yes'>&nbsp;
  </span></span><br>
  </p>
  <p class=MsoNormal><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>我行编号：</span><u><span
  lang=EN-US><o:p></o:p></span></u></p>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>Our Ref. No. </span><span
  lang=EN-US style='font-size:8.0pt'><o:p></o:p></span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='font-size:8.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体'>敬启者：</span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>Dear Sirs,</span></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0
 style='margin-left:23.4pt;border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US>RE:</span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>信用证号</span><span lang=EN-US>L/C NO. </span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=156 valign=top style='width:117.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>出票人</span><span lang=EN-US>Beneficiary</span></p>
  </td>
  <td width=336 valign=top style='width:252.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes;height:14.25pt'>
  <td width=48 valign=top style='width:36.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width=492 colspan=2 valign=top style='width:369.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:14.25pt'>
  <p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-family:宋体;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
  宋体'>汇票期限</span><span lang=EN-US>Tenor <span style='color:red'><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></span><span
  style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
  "Times New Roman";mso-bidi-font-family:宋体'>金额</span><span lang=EN-US>Amount</span></p>
  </td>
 </tr>
</table>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US style='letter-spacing:2.1pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span class=GramE><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;letter-spacing:
2.1pt'>兹收到</span></span><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;letter-spacing:
2.1pt'>贵行寄来的信用证项<span class=GramE>下电提不符</span>点，我公司已审核完毕，</span><span
lang=EN-US style='letter-spacing:2.1pt'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span lang=EN-US>We have received one set of L/C documents from your good
bank, and have processed all the </span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:宋体;letter-spacing:
2.1pt'>请贵行依照下列标有</span><span class=GramE><span lang=EN-US style='letter-spacing:
2.1pt'>”</span></span><span lang=EN-US style='letter-spacing:2.1pt'>X<span
class=GramE>”</span></span><span style='font-family:宋体;mso-ascii-font-family:
"Times New Roman";mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:
宋体;letter-spacing:2.1pt'>的内容办理：</span><span lang=EN-US style='letter-spacing:
2.1pt'><o:p></o:p></span></p>

<p class=MsoNormal style='line-height:12.0pt;layout-grid-mode:char;mso-layout-grid-align:
none'><span class=GramE><span lang=EN-US>documents</span></span><span
lang=EN-US>. Please execute our instruction marked with “x”.</span></p>

<p class=MsoNormalIndent style='text-indent:0cm'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormalIndent style='text-indent:0cm'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>

<table class=MsoNormalTable border=0 cellspacing=0 cellpadding=0
 style='border-collapse:collapse;mso-padding-alt:0cm 5.4pt 0cm 5.4pt'>
 <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;height:37.95pt'>
  <td width=30 valign=top style='width:30;padding:0cm 5.4pt 0cm 5.4pt;
  height:37.95pt'>
  <p class=MsoNormalIndent align=right style='text-align:right;text-indent:
  0cm'><span lang=EN-US style='color:red'>[]<o:p></o:p></span></p>
  </td>
  <td width=532 valign=top style='width:378.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:37.95pt'>
  <p class=MsoNormalIndent style='text-indent:0cm'><span style='font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>我公司接受不符点，同意见单付款</span></p>
  <p class=MsoNormalIndent style='text-indent:0cm'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:1;height:39.1pt'>
  <td width=30 valign=top style='width:30;padding:0cm 5.4pt 0cm 5.4pt;
  height:39.1pt'>
  <p class=MsoNormalIndent align=right style='text-align:right;text-indent:
  0cm'><span lang=EN-US style='color:red'>[]<o:p></o:p></span></p>
  </td>
  <td width=532 valign=top style='width:378.0pt;padding:0cm 5.4pt 0cm 5.4pt;
  height:39.1pt'>
  <p class=MsoNormalIndent style='text-indent:0cm'><span style='font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>我公司接受不符点，同意见单承兑，请于</span> <span lang=EN-US><span
  style='mso-spacerun:yes'>&nbsp;&nbsp;</span><span
  style='mso-spacerun:yes'>&nbsp;</span></span><span style='font-family:宋体;
  mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>付款</span></p>
  <p class=MsoNormalIndent style='text-indent:0cm'><span lang=EN-US><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;mso-yfti-lastrow:yes'>
  <td width=30 valign=top style='width:30;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormalIndent align=right style='text-align:right;text-indent:
  0cm'><span lang=EN-US style='color:red'>[]<o:p></o:p></span></p>
  </td>
  <td width=532 valign=top style='width:378.0pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormalIndent style='text-indent:0cm'><span style='font-family:
  宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-bidi-font-family:宋体'>我公司不接受不符点</span><span lang=EN-US>.</span></p>
  <p class=MsoNormalIndent style='text-indent:0cm'><span lang=EN-US
  style='color:red'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="20%">&nbsp;</td>
        <td width="20%">&nbsp;</td>
        <td width="60%" rowspan="5" valign="bottom">
            <table width="41%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><img width=240 height=2 src="/IB/inputDocuments/html/xyztzs.files/image002.gif"></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:宋体"><strong>公司印签</strong></span></td>
                </tr>
                <tr>
                    <td align="center" valign="middle"><span style="font-size:9.0pt;font-family:Arial"><strong>Official Signature(s)/Seal
                                </strong></span></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
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
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<p class=MsoNormalIndent style='text-indent:0cm'>
</div>

</body>

</html>
