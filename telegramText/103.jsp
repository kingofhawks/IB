<%@ include file="/common/header.jsp"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="com.witsoft.common.ConvertOptions"%>
<%@ page import="com.witsoft.bean.common.StaticManageBean"%>
<%@ page contentType="text/html; charset=GB2312"%>
<%Map map = (HashMap)request.getAttribute("map");if(map == null){map = new HashMap();}%>
 
<html>
<head>

<title>国际结算模拟系统</title>
<link href="/IB/telegramText/telegramTextStyle.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">
    
            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0"><%if(request.getAttribute("error")!=null){out.print((String)request.getAttribute("error"));}%>
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td class="innerTable_main">
                        <div id="innerTable_div">

                            <!--内容开始-->
                            <form method="post" action="AccessTelegramText" onSubmit="checkForm(this)"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top" class="attR">*FM: +Sender&nbsp;</td>
                                                <td width="46%" valign="middle">&nbsp;
                                                    <input type="text" name="fmbk" maxlength="12" value="<%if(map.get("fmbk") != null){out.print(map.get("fmbk"));}%>" title="fmbk"></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*TO: +Receiver&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input type="text" name="tobk"  maxlength="12" value="<%if(map.get("tobk") != null){out.print(map.get("tobk"));}%>"
										         title="tobk" readonly="true" />&nbsp;<html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn" onclick="openWin('bank','tobk');return false"></html:image></td></tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*20:Sender's
                                                    Reference</td>
                                                <td valign="middle">
                                                    &nbsp;
<input type="text" name="_20"  title="_20" maxlength="16" value="<%if(map.get("_20") != null){out.print(map.get("_20"));}%>">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*23B:Bank
                                                    Operaction Code</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_23b" title="_23b" type="text"  size="4" maxlength="4" value="<%if(map.get("_23b") != null){out.print(map.get("_23b"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">23E:Instruction
                                                    Code</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_23ea" type="text"  size="4" maxlength="4" value="<%if(map.get("_23ea") != null){out.print(map.get("_23ea"));}%>">
                                                    <br>
                                                    &nbsp;
                                                    <input  name="_23eb" type="text" maxlength="16" value="<%if(map.get("_23eb") != null){out.print(map.get("_23eb"));}%>">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">23E:Instruction
                                                    Code</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_23ea2" type="text"  size="4" maxlength="4" value="<%if(map.get("_23ea2") != null){out.print(map.get("_23ea2"));}%>">
                                                    <br>    
                                                    &nbsp;
<input type="text" name="_23eb2" maxlength="16"  value="<%if(map.get("_23eb2") != null){out.print(map.get("_23eb2"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">26T:Transction
                                                    Type Code</td>
                                                <td align="left" valign="middle">&nbsp;

                                                    <input name="_26t" type="text" size="3" maxlength="3" value="<%if(map.get("_26t") != null){out.print(map.get("_26t"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="18" align="right" valign="top" class="attR">*32A:Value
                                                    Date/Currency/Interbank Settled</td>
                                                <td valign="middle">
                                                    &nbsp;
<input name="_32aa" title="_32aa" type="text" size="6" maxlength="6"  value="<%if(map.get("_32aa") != null){out.print(map.get("_32aa"));}%>">
                                                    <input name="_32ab"  title="_32ab" type="text" size="3" maxlength="3" value="<%if(map.get("_32ab") != null){out.print(map.get("_32ab"));}%>">
                                                    <br>
&nbsp;
<input type="text" name="_32ac"  title="_32ac" maxlength="15"  value="<%if(map.get("_32ac") != null){out.print(map.get("_32ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="18" align="right" valign="top">33B:Currency/Original
                                                    Ordered Amount</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input name="_33ba" type="text" size="3" maxlength="3" value="<%if(map.get("_33ba") != null){out.print(map.get("_33ba"));}%>">
                                                    <input name="_33bb" type="text" size="15" maxlength="15" value="<%if(map.get("_33bb") != null){out.print(map.get("_33bb"));}%>">
</td>
                                            </tr>
                                            <tr>
                                                <td height="18" align="right" valign="top">36:Exchange
                                                    Rate</td>
                                                <td valign="top">&nbsp;
<input name="_36" type="text" size="12" maxlength="12" value="<%if(map.get("_36") != null){out.print(map.get("_36"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="18" align="right" valign="top" class="attR">*50k:Orderig
                                                    Customer</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input name="_50ka"  title="_50ka" type="text" maxlength="34" value="<%if(map.get("_50ka") != null){out.print(map.get("_50ka"));}%>">&nbsp;
                                                    <br>
                                                    &nbsp;
<textarea name="_50kb" title="_50kb"><%if(map.get("_50kb") != null){out.print(map.get("_50kb"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">51A:Sending
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_51aa" class="select1">
                                                                        <%
                                                                        	StaticManageBean bean=new StaticManageBean();
                                                                        	out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_51aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_51ab" type="text" maxlength="34" value="<%if(map.get("_51ab") != null){out.print(map.get("_51ab"));}%>">&nbsp;<br>
                                                        &nbsp;
<input name="_51ac" type="text" size="11" maxlength="11" value="<%if(map.get("_51ac") != null){out.print(map.get("_51ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52A:Ordering
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52aa")));%>
                                                                    </select>
                                                                    </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                    <input name="_52ab" type="text" maxlength="34" value="<%if(map.get("_52ab") != null){out.print(map.get("_52ab"));}%>">
                                                    <br>
    &nbsp;
    <input name="_52ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_52ac") != null){out.print(map.get("_52ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">52D:Ordering
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_52da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_52da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_52db" type="text" maxlength="34" value="<%if(map.get("_52db") != null){out.print(map.get("_52db"));}%>">&nbsp;
                                                        <br>
                                                        &nbsp;
<textarea name="_52dc"><%if(map.get("_52dc") != null){out.print(map.get("_52dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53A:Sender's
                                                    Corresponden</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_53ab" type="text" maxlength="34" value="<%if(map.get("_53ab") != null){out.print(map.get("_53ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_53ac" type="text" size="11" maxlength="11" value="<%if(map.get("_53ac") != null){out.print(map.get("_53ac"));}%>" >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">53D:Sender's
                                                    Corresponden</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_53da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_53da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_53db" type="text" maxlength="34" value="<%if(map.get("_53db") != null){out.print(map.get("_53db"));}%>">
                                                    &nbsp; <br>
    &nbsp;
    <textarea name="_53dc"><%if(map.get("_53dc") != null){out.print(map.get("_53dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54A:Receiver's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54ab" type="text" maxlength="34" value="<%if(map.get("_54ab") != null){out.print(map.get("_54ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_54ac" type="text" size="11" maxlength="11" value="<%if(map.get("_54ac") != null){out.print(map.get("_54ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54B:Receiver's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54bb" type="text" maxlength="34" value="<%if(map.get("_54bb") != null){out.print(map.get("_54bb"));}%>">
                                                        <br>
                                                        &nbsp;
<input name="_54bc" type="text" maxlength="34" value="<%if(map.get("_54bc") != null){out.print(map.get("_54bc"));}%>">
&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">54D:Receiver's
                                                    Correspondent</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_54da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_54da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_54db" type="text" maxlength="34" value="<%if(map.get("_54db") != null){out.print(map.get("_54db"));}%>">
                                                        <br>
    &nbsp;
    <textarea name="_54dc"><%if(map.get("_54dc") != null){out.print(map.get("_54dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">55A:Third
                                                    Reimbursement Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_55aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_55aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_55ab" type="text" maxlength="34" value="<%if(map.get("_55ab") != null){out.print(map.get("_55ab"));}%>">
                                                        <br>
    &nbsp;
    <input name="_55ac" type="text" size="11" maxlength="11"  value="<%if(map.get("_55ac") != null){out.print(map.get("_55ac"));}%>">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="20" align="right" valign="top">55B:Third
                                                    Reimbursement Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_55ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_55ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_55bb" type="text" maxlength="34" value="<%if(map.get("_55bb") != null){out.print(map.get("_55bb"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_55bc" type="text" maxlength="34" value="<%if(map.get("_55bc") != null){out.print(map.get("_55bc"));}%>">
&nbsp;</td>
                                            </tr>
                                            
                                            <tr>
                                                <td height="20" align="right" valign="top">55D:Third
                                                    Reimbursement Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_55da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_55da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_55db" type="text" maxlength="34" value="<%if(map.get("_55db") != null){out.print(map.get("_55db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_55dc"><%if(map.get("_55dc") != null){out.print(map.get("_55dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">56A:Intermediary
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_56aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_56aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_56ab" type="text" maxlength="34" value="<%if(map.get("_56ab") != null){out.print(map.get("_56ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_56ac" type="text" size="11" maxlength="11" value="<%if(map.get("_56ac") != null){out.print(map.get("_56ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">56C:Intermediary
                                                    Institution</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input name="_56c" type="text" maxlength="34" value="<%if(map.get("_56c") != null){out.print(map.get("_56c"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">56D:Intermediary
                                                    Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_56da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_56da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_56db" type="text" maxlength="34" value="<%if(map.get("_56db") != null){out.print(map.get("_56db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_56dc"><%if(map.get("_56dc") != null){out.print(map.get("_56dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57A:Account
                                                    With Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57aa" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57aa")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_57ab" type="text" maxlength="34" value="<%if(map.get("_57ab") != null){out.print(map.get("_57ab"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_57ac" type="text" size="11" maxlength="11" value="<%if(map.get("_57ac") != null){out.print(map.get("_57ac"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57B:Account
                                                    With Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57ba" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57ba")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <input  name="_57bb" type="text"  maxlength="34" value="<%if(map.get("_57bb") != null){out.print(map.get("_57bb"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <input name="_57bc"  type="text" maxlength="35" value="<%if(map.get("_57bc") != null){out.print(map.get("_57bc"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57C:Account
                                                    With Institution</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_57c" type="text" maxlength="34" value="<%if(map.get("_57c") != null){out.print(map.get("_57c"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">57D:Account
                                                    With Institution</td>
                                                <td align="center" valign="middle">
                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td>
                                                                <div class="sele_div1">
                                                                    <select name="_57da" class="select1">
                                                                        <%out.println(ConvertOptions.ConvertArrayToString(bean.findByOptions("OPTION_BSUBF"), (String)map.get("_57da")));%>
                                                                    </select>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_57db" type="text" maxlength="34" value="<%if(map.get("_57db") != null){out.print(map.get("_57db"));}%>">
                                                        <br>
                                                    &nbsp;
                                                    <textarea name="_57dc"><%if(map.get("_57dc") != null){out.print(map.get("_57dc"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*59:Beneficiary
                                                    Customer</td>
                                                <td align="left" valign="middle">&nbsp;
                                                        <input name="_59a"  title="_59a" type="text" maxlength="34" value="<%if(map.get("_59a") != null){out.print(map.get("_59a"));}%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">&nbsp;</td>
                                                <td valign="middle">&nbsp;
                                                        <textarea name="_59b" title="_59b"><%if(map.get("_59b") != null){out.print(map.get("_59b"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">70:Remittance
                                                    Information</td>
                                                <td width="46%" align="left" valign="middle">&nbsp;
                                                    <textarea name="_70"><%if(map.get("_70") != null){out.print(map.get("_70"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*71A:Detail
                                                    of Charges</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_71a" title="_71a" type="text" size="3" maxlength="3" value="<%if(map.get("_71a") != null){out.print(map.get("_71a"));}%>">
                                                        &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71F:Sender's
                                                    Charges</td>
                                                <td valign="middle">&nbsp;
                                                        <input name="_71fa" type="text" size="3" maxlength="3" value="<%if(map.get("_71fa") != null){out.print(map.get("_71fa"));}%>">
                                                        <input name="_71fb" type="text" size="15" maxlength="15" value="<%if(map.get("_71fb") != null){out.print(map.get("_71fb"));}%>">
    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">71G:Receiver's
                                                    Charges</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <input name="_71ga" type="text" size="3" maxlength="3" value="<%if(map.get("_71ga") != null){out.print(map.get("_71ga"));}%>">
                                                    <input name="_71gb" type="text" size="15" maxlength="15" value="<%if(map.get("_71gb") != null){out.print(map.get("_71gb"));}%>">
&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">72:Sender
                                                    to Receiver Information</td>
                                                <td align="left" valign="middle">&nbsp;
                                                     <textarea name="_72" rows="6"><%if(map.get("_72") != null){out.print(map.get("_72"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">77B:Regulatory
                                                    Reporting</td>
                                                <td align="left" valign="middle">&nbsp;
                                                    <textarea name="_77b" rows="3"><%if(map.get("_77b") != null){out.print(map.get("_77b"));}%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">77T:Envelope
                                                    Contents</td>
                                                <td valign="middle">&nbsp;
                                                    <textarea name="_77t" rows="12"><%if(map.get("_77t") != null){out.print(map.get("_77t"));}%></textarea>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            
                            
                            
                            
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"><div class="footer">
                                <input name="errCode" type="hidden" value="<%if(map.get("errCode") != null){out.print(map.get("errCode"));}%>">
								<input name="swno" type="hidden" value="<%if(map.get("swno") != null){out.print(map.get("swno"));}%>">
								<input name="tstp" type="hidden" value="<%if(map.get("tstp") != null){out.print(map.get("prid"));}%>">
								<input name="swid" type="hidden" value="<%if(map.get("swid") != null){out.print(map.get("swid"));}%>">
								<input name="mgtp" type="hidden" value="<%if(map.get("mgtp") != null){out.print(map.get("mgtp"));}%>">
								<input name="prid" type="hidden"  value="<%if(map.get("prid") != null){out.print(map.get("prid"));}%>">
								<input name="brno" type="hidden"  value="<%if(map.get("brno") != null){out.print(map.get("brno"));}%>">
								<input name="rfno" type="hidden"  value="<%if(map.get("rfno") != null){out.print(map.get("rfno"));}%>">
                                <%=(String)request.getAttribute("button")%>
                            </div></td>
                    <td class="innerTable_bottom_right"></td>
                </tr>
            </table>
            <!--内表结束-->
    
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_bottom_left"></td>
        <td class="outerTable_bottom_x"></td>
        <td class="outerTable_bottom_right"></td>
    </tr>
</table>
</form></body> 
</html>