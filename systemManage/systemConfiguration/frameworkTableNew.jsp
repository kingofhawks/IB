<%--机构表(新建)--%>
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
                            <html:form  method="post" action="/frameworkTableNew.do" onsubmit="checkForm(this)">
                            <script language="javascript" type="text/javascript">showErrorMsg("<html:errors/>")</script>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" valign="top">                                        
                                        <table width="375" border="0" cellpadding="0" cellspacing="0">
                                           <tr>
                                                <td width="40%" height="20" align="right" valign="top"><bean:message key="systemManage.popedomManage.frameworkNum"/>：</td>
                                                <td valign="top">
                                                <html:text  property="brno"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.frameworkName"/>：</td>
                                                <td valign="top">
                                                 <html:text property="brnm" title="brnm"></html:text>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.isBillCenter"/>：</td>
                                                <td valign="top">
                                                    <div class="sele_div">
                                                    <html:select property="mkut" title="mkut">
                                                    <html:option value=""></html:option>
                                                    <html:option value="Y">YES</html:option>
                                                    <html:option value="N">NO</html:option>
                                                    </html:select>
                                                </div>                                                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.affiliatedFrameworkNum"/>：</td>
                                                <td valign="top">
                                                    <div class="sele_div">
                                                    <html:select property="utno" title="utno">
                                                    <html:option value=""></html:option>
                                                    </html:select>
                                                    </div>                                                        
                                                </td>
                                            </tr>
                                            
                                            
                                            <tr>
                                                <td height="20" align="right" valign="top"><bean:message key="systemManage.systemConfiguration.systemManageNum"/>：</td>
                                                <td valign="top">
                                                 <html:text  property="sysid" disabled="true"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><bean:message key="systemManage.systemConfiguration.systemManageName"/>：</td>
                                                <td valign="top">
                                                <html:text  property="sysnm" disabled="true"></html:text>
                                               
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><bean:message key="systemManage.systemConfiguration.systemSafeNum"/>：</td>
                                                <td valign="top">
                                                <html:text  property="secid" disabled="true"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" valign="top"><bean:message key="systemManage.systemConfiguration.sysSafeName"/>：</td>
                                                <td valign="top">
                                                <html:text  property="secnm" disabled="true"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                            <!--在数据库里目前还没有找到该字段-->
                                                <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.abbreviatekFrameworNum"/>：</td>
                                                <td valign="top">
                                                <html:text  property="text1" title="text1"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                           <!--在数据库里目前还没有找到该字段-->
                                                <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.internationPaymentFrameworNum"/>：</td>
                                                <td valign="top">
                                                <html:text property="text2" title="text2"></html:text>
                                                </td>
                                            </tr>
                                            <tr>
                                            <td height="20" align="right" valign="top" class="attR">*<bean:message key="systemManage.systemConfiguration.isUsed"/>：</td>
                                                <td valign="top">
                                                    <div class="sele_div">
	                                                    <html:select property="stcd" title="stcd">
	                                                    <html:option value=""></html:option>
	                                                    <html:option value="Y"></html:option>
	                                                    <html:option value="N"></html:option>
	                                                    </html:select>
                                                    </div>                                                    
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
