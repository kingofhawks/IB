<%--费率(新建)--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ page contentType="text/html; charset=GBK" %>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName"/></title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript" src="/IB/common/default.js"></script>
</head>

<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="outerTable_top_left"></td>
        <td class="outerTable_top_x"></td>
        <td class="outerTable_top_right"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_mainContent">

            <!--内表格开始-->
            <table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td class="innerTable_top_left"></td>
                    <td class="innerTable_top_x"></td>
                    <td class="innerTable_top_right"></td>
                </tr>
                <tr>
                    <td class="innerTable_left_y"></td>
                    <td align="center" class="innerTable_main">
                        <div id="innerTable_div">

                            <!--内容开始-->
                            <html:form action="/feeRateNew.do" onsubmit="checkForm(this)" method="post">
                            <script language="javascript" type="text/javascript">showErrorMsg("<html:errors/>")</script>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top"><bean:message key="system.bank.number" /></td>
                                                <td valign="top"><html:text property="brno"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">客户号：</td>
                                                <td valign="top"><html:text property="clno"/>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*收费类型：</td>
                                                <td valign="top">
												    <%--div class="sele_div">
                                                        <html:select property="chtp" title="chtp">
														    <html:option value=""></html:option>
                                                            <html:option value="">买入票据费</html:option>
                                                            <html:option value="">光票托收费</html:option>
                                                            <html:option value="">收汇后退票</html:option>
                                                            <html:option value="">退票费</html:option>
                                                            <html:option value="">保兑费</html:option>
                                                            <html:option value="">电提不符费</html:option>
                                                            <html:option value="">议付费</html:option>
                                                            <html:option value="">通知费</html:option>
                                                            <html:option value="">预先通知费</html:option>
                                                            <html:option value="">保兑费</html:option>
                                                            <html:option value="">出口撤证费</html:option>
                                                            <html:option value="">电提议付费</html:option>
                                                        </html:select>
                                                    </div--%>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">收费币种：</td>
                                                <td valign="top"><html:text styleClass="coin" property="chcy"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('coin','chcy')"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">最低收费：</td>
                                                <td valign="top"><html:text property="amle" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/>
												</td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">最高收费：</td>
                                                <td valign="top"><html:text property="amgt" onkeypress="regInput(/^\d{1,}\.?\d{0,2}$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">费率分子项：</td>
                                                <td valign="top"><html:text property="nmr1"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">费率分母项：</td>
                                                <td valign="top"><html:text property="dmr1"/></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">其他：</td>
                                                <td valign="top"><html:text property="txpc"/></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="50%" valign="top">&nbsp;</td>
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                                <html:hidden property="errCode" /><html:button property="save" onclick="submitKind(0,'save')">保存</html:button><html:button property="go" onclick="submitKind(0,'submit')">提交</html:button>
                                <html:button property="back_btn" disabled="true"><bean:message key="common.previous"/></html:button>
                                <html:submit><bean:message key="common.next"/></html:submit>
                            </div>
                            </html:form>
                            <!--内容结束-->
                        </div>
                    </td>
                    <td class="innerTable_right_y"></td>
                </tr>
                <tr>
                    <td class="innerTable_bottom_left"></td>
                    <td class="innerTable_bottom_x"></td>
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
</body>
</html:html>
