<%--客户帐号(查看)--%>
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
<style>
/*银行编号*/
div.sele_div_no{border:1px solid #000000; width:285px; height:18px; clip:rect(0px,275px,17px,0px);overflow:hidden;}
.select_no{position:relative; margin:-2px;width:287px;border:0px;behavior:url('/IB/common/select.htc'); }
/*帐号币种*/
div.sele_div＿bz{border:1px solid #000000; width:122px; height:18px; clip:rect(0px,112px,17px,0px);overflow:hidden;}
.select_bz{position:relative; margin:-2px;width:124px;border:0px;behavior:url('/IB/common/select.htc'); }
</style>

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
                            <html:form action="clientAccountDetail.do" method="post" onsubmit="checkForm(this)">
                            <script language="javascript" type="text/javascript">showErrorMsg("<html:errors/>")</script>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="400" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="40%" height="20" align="right" valign="top">客户所在银行编号：</td>
                                                <td valign="top">
                                                    <html:text property="brno" readonly="true"/>
                                                </td>
                                            </tr>
                                             <tr>
                                                <td height="20" align="right" valign="top">客户帐号：</td>
                                                <td valign="top">
                                                  <html:text property="acno" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">客户号：</td>
                                              <td valign="top">
                                                    <html:text styleClass="clientNum" property="clno" readonly="true"/>
                                                    <html:button value="..." tabindex="1" property="more_btn" onclick="openWin('clientNum','clno')"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">客户中文名称：</td>
                                                <td valign="top">
                                                    <html:text property="clnona" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">客户中文名称及地址：</td>
                                                <td valign="top">
                                                    <html:text property="clnoad" readonly="true"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*帐号币种：</td>
                                                <td valign="top"><div class="sele_div_122"><html:select styleClass="select_122"
                                        property="cyno" disabled="true">
                                        <logic:notEmpty name="OPTION_CYNO">
                                            <logic:iterate id="list" name="OPTION_CYNO">
                                                <%String[] cyno = (String[]) list;%>
                                                <html:option value="<%=cyno[0]%>">
                                                    <%=cyno[1]%>
                                                </html:option>
                                            </logic:iterate>
                                        </logic:notEmpty>
                                    </html:select></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top">业务代码：</td>
                                                <td valign="top"><html:text property="itcd" readonly="true"/>                                           
                                                </td>
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
