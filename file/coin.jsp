<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>选择货币</title>
<base target="_self">
<script language="javascript" type="text/javascript">
<!--
function sendData()
{
	var myObj = window.dialogArguments;
	
	/*
	 *modified in 2005/09/22, by 肖斌
	 *增加了对输入框的判断，如果只读取不返回值
	 */
	if(myObj)
	{
		if (!myObj.disabled&&!myObj.readOnly)
		{
			myObj.value = document.getElementById("showCoinCode").innerText;
		}
	}
	else
	{
		alert("程序调试过程出错，传递参数错误！\n所传递的对象为空");
	}
	window.close();
}

function radionClick()
{
	document.getElementsByName("showCoinCode")[0].innerText = window.event.srcElement.parentNode.nextSibling.innerHTML;
}

document.onkeydown = function ()
{
	if (event.keyCode==27)
	{
		window.close();
	}
}
-->
</script>
<link href="dialog.css" rel="stylesheet" type="text/css">
</head>
<style>.on {background-color:#000084; color:#FFFFFF}</style>

<body border="0">
<table width="386" border="0" cellspacing="0" cellpadding="0"
	style="padding-left:4px;">
	<tr>
		<td>
		<table width="386" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td width="455" height="25">&nbsp;</td>
				<td width="45" align="right"><input type="button" name="Submit"
					value="提 交" onClick="sendData()"></td>
			</tr>
			<tr>
				<td height="25" style="padding-left:10px">选择币种代码：<span
					id="showCoinCode">CNY</span></td>
				<td align="right"><input type="button" name="Submit2" value="退 出"
					onclick="window.close()"></td>
			</tr>
			<tr>
				<td height="25">&nbsp;</td>
				<td align="right">
				    <!--coinAction.do -->
				    </td>
			</tr>
		</table>
		<table width="386" height="160" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top">
				<div id="innerTable_div">
				<table width="400" border="0" cellpadding="0" cellspacing="1"
					id="conTab" class="item_list_display">
					<tr>
						<th width="25">&nbsp;</th>
						<th width="35">币种</th>
						<th width="46">币种名称</th>
						<th width="91">CurrencyName</th>
						<th width="103">Decimal Digits</th>
						<th width="66">MNNM</th>
					</tr>
					<logic:notEmpty name="list">
						<logic:iterate id="list" name="list" indexId="index" scope="request"> 
							
								<td><input name="coinBtn" type="radio" onClick="radionClick()"
									value="radiobutton" checked></td>
								<td><bean:write name="list" property="cycd" /></td>
								<td><bean:write name="list" property="cynm" /></td>
								<td><bean:write name="list" property="dmit" /></td>
								<td><bean:write name="list" property="mnnm" /></td>
							</tr>
						</logic:iterate>
					</logic:notEmpty>
				</table>
				</div>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<a id="reload" href="/IB/file/coin.jsp" style="display:none">reload...</a>
<script>
var tds = document.getElementById("conTab").getElementsByTagName("TD");
for (i = 0; i<tds.length; i++)
{
	tds[i].id = i;
	tds[i].onclick = function()
	{
		this.parentNode.firstChild.firstChild.click();
		for (j=0; j<i; j++)
		{
			tds[j].className ="";
		}
		if(tds[this.id].innerHTML.indexOf("onclick")== -1)
		{
			tds[this.id].className = "on";
		}
	}
}
var trs = document.getElementById("conTab").getElementsByTagName("TR");
var rs = document.getElementById("conTab").getElementsByTagName("INPUT")
for (k =1; k<trs.length; k++)
{
	trs[k].id = k;
	trs[k].ondblclick = function()
	{
		//alert(this.id);
		rs[this.id-1].click();
		sendData();
		window.close();
	}
}
</script>
</body>
</html>
