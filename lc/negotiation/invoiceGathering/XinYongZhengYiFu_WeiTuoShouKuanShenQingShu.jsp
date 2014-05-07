<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html:html>
<head>
<title>国际结算模拟系统</title>
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
<table width="100%" height="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
        <td align="left" valign="top">                        
            <div id="innerTable_div">

                            <!--内容开始-->
                           <html:form action="lcPayEnCoSupplication.do"	onsubmit="checkForm(this)" method="post">
                            <div id="errMsgDiv"><html:errors /></div>
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="kuangScroll">
                                <tr>
                                    <td width="98%" align="center" valign="top">
                                        <table width="450" cellSpacing=0 borderColorDark=#ffffff cellPadding=0  borderColorLight="#c0c0c0" border=1 align=left class="innercontent" >
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*申请日期：</td>
                                                <td width="62%">
                                                    <html:text styleClass="date" property="apdt"  maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="apdt" readonly="true"/>
                                              <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','apdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*申请书编号：</td>
                                                <td><html:text property="bpno"  maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled" title="glcdt"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*银行名称：</td>
                                                <td><html:text property="bknm"  maxlength="30" size="15" style="ime-mode:Disabled" title="bknm" readonly="true"/>
                                                <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','bknm');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td height="20" align="right" bgcolor="#EBEBEB" class="attR">*请办理：</td>
                                                <td><div class="sele_div">
                                                    <html:select property="bpty">
                                                        <html:option value="1">议付</html:option>
                                                        <html:option value="0">委托收款</html:option>
                                                    </html:select>
                                                    </div></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*开证行名称：</td>
                                                <td>
                                                    <html:text styleClass="bank" property="isbknm"  maxlength="30" size="15"  style="ime-mode:Disabled" title="isbknm" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','isbknm');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*信用证编号：</td>
                                                <td><html:text property="lcno"  maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled" title="lcno"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">信用证通知书编号：</td>
                                                <td><html:text property="adno"  maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">信用证修改通知书编号：</td>
                                                <td><html:text property="adchno"  maxlength="16" size="16" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*通知行名称：</td>
                                                <td><html:text styleClass="bank" property="adbk" maxlength="30" size="15" style="ime-mode:Disabled" title="adbk" readonly="true"/>
                                                    <html:image src="/IB/images/winsearch.gif" tabindex="1" property="more_btn2" onclick="openWin('bank','adbk');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*有效期：</td>
                                                <td><html:text styleClass="date" property="epdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="epdt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','epdt');return false"></html:image></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*交单期限：</td>
                                                <td><html:text styleClass="kuang" property="psbl" size="3" maxlength="3" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="glcdt" /></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">单据种类及张数：</td>
                                                <td><html:text property="vokn" maxlength="30" size="15"  style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">单据金额：</td>
                                                <td><html:text property="dlam" maxlength="10" size="15" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" /></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">附信用证及修改书共几页：</td>
                                                <td><html:text property="lcnum" maxlength="30" size="15" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">本单位联系人：</td>
                                                <td><html:text property="cont" maxlength="30" size="15" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">本单位电话：</td>
                                                <td><html:text property="tel" maxlength="30" size="15" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">本单位传真：</td>
                                                <td><html:text property="fax" maxlength="30" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">银行审单记录：</td>
                                                <td><html:text property="cvlog" maxlength="30" size="15"  style="ime-mode:Disabled"/></td>
                                            </tr>
                                            <tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB" class="attR">*银行接单日期：</td>
                                                <td><html:text styleClass="date" property="acdt" maxlength="10" size="10" onkeypress="regInput(/^[0-9]*$/)" style="ime-mode:Disabled" title="acdt" readonly="true"/>
                                                    <html:image src="/IB/images/date.gif" tabindex="1" property="more_btn2" onclick="openWin('date','acdt');return false"></html:image></td>
                                            </tr>
											<tr>
                                                <td width="38%" height="20" align="right" bgcolor="#EBEBEB">业务编号：</td>
                                                <td><html:text property="trno" maxlength="30" size="10" onkeypress="regInput(/^[a-zA-Z0-9]*$/)" style="ime-mode:Disabled"/></td>
                                            </tr>
                                      </table>
                                      </td>
                                </tr>
                            </table>
                             <div>
                                <html:hidden property="id" />
                                <html:hidden property="prid"/>
                                <html:hidden property="usid" />
                                <html:hidden property="brno" value="9997"/>
                                <html:hidden property="errCode" />
                             </div>
                    </html:form>
                            <!--内容结束-->
          </div>
</td>
    </tr>
</table>
</body>
</html:html>
