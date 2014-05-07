<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算模拟系统</title>
<link href="/IB/common/default.css" rel="stylesheet" type="text/css">
<SCRIPT lanuange="JavaScript">
//检查表单
function isNull()
{
    var iObj = document.forms[0].elements;
    for (i = 0; i<iObj.length; i++)
    {
        //iObj[i].disabled = false;
        //如果表单项的title不为空，而值为空时，把errCode赋值为前者的title
        if (iObj[i].title.Trim()!=""&&iObj[i].title.Trim()!="undefined"&&iObj[i].value.Trim() =="")
        {
        alert("请把红色的必填项填写完整！");
          return false; 
        }         
    }
   document.forms[0].submit();     
   return true; 
}

</SCRIPT>

</head>
<body>
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td></td>
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
                            <html:form action="lcModifySupplication.do" onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="50%" align="center" valign="top">
                                        <table width="320" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=center class="innercontent">
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*申请日期：</td>
                                                <td width="64%"><html:text styleClass="date" property="apdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" title="apdt"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','apdt');return false"></html:image>
                                              </td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*申请书编号：</td>
                                                <td><html:text property="number" maxlength="20" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="apdt"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*信用证编号：</td>
                                                <td><html:text property="lcno" maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" title="lcno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*修改次数：</td>
                                                <td><html:text property="adno" maxlength="2" size="3" onkeypress="regInput(/^[0-9]*$/)" title="adno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*通知方式：</td>
                                                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                        <tr>
                                                            <td width="38%" align="left">
                                                                <html:radio value="0" property="ammd"/>
                                                          信开</td>
                                                            <td width="62%" align="left">
                                                                <html:radio value="1" property="ammd"/>
                                                          电开</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*原证金额：</td>
                                                <td><html:text property="lcam"  maxlength="8" size="10" onkeypress="regInput(/^[0-9]*$/)" title="lcam"/></td>
                                            </tr>
                                            <tr>
                                                <td width="36%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*原证收益人：</td>
                                                <td><html:text property="adl1" title="adl1"/></td>
                                            </tr>
                                      </table>
                                  </td>
                                    <td width="50%" align="left" valign="top">
                                        <table width="340" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=left class="innercontent">
                                            <tr>
                                                <td width="42%" height="20" align="right" bgcolor="#EBEBEB">我单位业务编号：</td>
                                                <td width="58%">
                                                    <html:text property="trno" maxlength="30" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)"/>
                                              </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">我单位合同号：</td>
                                                <td>
                                                    <html:text property="crno" maxlength="30" size="15" onkeypress="regInput(/^[a-zA-Z0-9]*$/)"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB" class="attR">*修改内容：</td>
                                                <td>
                                                    <html:textarea property="mdcont"  title="mdcont"></html:textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">联系人：</td>
                                                <td>
                                                    <html:text property="cont" maxlength="30" size="15"/>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB">电话：</td>
                                                <td>
                                                    <html:text property="tel"  maxlength="30"  size="15" onkeypress="regInput(/^[0-9]*$/)"/>
                                                </td>
                                            </tr>
                                      </table>
                                  </td>
                                </tr>
                            </table>
                            
                            
                            <div class="footer">
                                <html:hidden property="id" />
                                <html:hidden property="usid"/>
                                <html:hidden property="prid" value="LCUP"/>
                                <html:hidden property="brno" value="9995"/>
                                <html:hidden property="errCode" />
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
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html:html>
