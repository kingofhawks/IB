<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean"	prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html"	prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>国际结算模拟系统</title>
    <link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/app.css" rel="stylesheet">
    <link rel="stylesheet" href="/IB/resources/font-awesome-4.0.3/css/font-awesome.min.css">
    <style>
        .table{
            margin-top:20px;
            width:96%;
        }
    </style>

<script language="javascript" src="/IB/common/rightsManage.js"></script>
</head>
<body>
<table width="100%" height="100%" border="0" align="center"
	cellpadding="0" cellspacing="0">
	<tr>
		<td class="outerTable_top_left"></td>
		<td class="outerTable_top_x"></td>
		<td class="outerTable_top_right"></td>
	</tr>
	<tr>
		<td class="outerTable_left_y"></td>
		<td align="center" class="outerTable_main">
		<html:form styleId="form1" action="popedomShow.do">
			<!--内表格开始-->
					<table width="80%" border="0" class="innerTable_main" cellpadding="0" cellspacing="0">
						<tr>
						  <td colspan="3" height="40"></td>
					  </tr>
						<tr>
							<td width="50%" align="center"><strong>银行编号：</strong><br>

							    <html:select property="brno"
								style="18px;"
								onchange="window.location='popedomShow.do?brno='+this.value+'&rlid='">
								<%out.println(request.getAttribute("OPTION_BRNO"));%>
						  </html:select></td>
							<td width="40%" align="center"><strong>角色名称：</strong><br>

							    <html:select property="rlid"
								style="18px;"
								onchange="window.location='popedomShow.do?brno='+$('brno').value+'&rlid='+this.value">
								<%out.println(request.getAttribute("OPTION_RLID"));%>
						  </html:select></td>
							<td width="10%">

                            </td>
						</tr>
		  </table>
							<table width="80%" border="0" cellpadding="0" cellspacing="1" class="table table-bordered" >
                                <thead>
                                    <th class="table_title">交易名称</th>
                                    <th class="table_title">经办</th>
                                    <th class="table_title">复核</th>
                                    <th class="table_title">授权</th>
                                    <th class="table_title">金额授权</th>
                                    <th class="table_title">期限</th>
                                    <th class="table_title">金额</th>
                                    <th class="table_title">交易码</th>
                                    <th width="25"></th>
                                </thead>
                             </table>
							<div id="container" style="overflow:auto; width:80%; height:280">
							<table width="99%" border="0" cellpadding="0" cellspacing="1" bgcolor="#C0C0C0" id="rightsEnabled"
								style="table-layout:fixed; word-break:keep-all; ">
								<%
        //      java.util.Map map = (java.util.Map) request.getAttribute("list");
        //      int j = 0;
        //      for (j = 0; j < map.size(); j++) {
        //         com.witsoft.bean.systemManage.popedomManage.PopeInfo info = (com.witsoft.bean.systemManage.popedomManage.PopeInfo) map
        //                 .get((j + "").trim());

        //         out.print("--------" + info.getRsnm());
        //   }
    %>
								<logic:notEmpty name="list">
									<logic:iterate id="list" name="list" scope="request">

										<tr class="ntr">
											<td class="td1" nowrap><bean:write name="list"
												property="rsnm" /></td>

											<logic:notEmpty name="list" property="oper_auid">
												<td class="td2_on" onClick="tdOnClick()" nowrap></td>
											</logic:notEmpty>

											<logic:empty name="list" property="oper_auid">
												<td class="td2" onClick="tdOnClick()" nowrap></td>
											</logic:empty>

											<logic:notEmpty name="list" property="chce_auid">
												<td class="td3_on" onClick="tdOnClick()" nowrap></td>
											</logic:notEmpty>

											<logic:empty name="list" property="chce_auid">
												<td class="td3" onClick="tdOnClick()" nowrap></td>
											</logic:empty>

											<logic:notEmpty name="list" property="grnt_auid">
												<td class="td4_on" onClick="tdOnClick()" nowrap></td>
											</logic:notEmpty>
											<logic:empty name="list" property="grnt_auid">
												<td class="td4" onClick="tdOnClick()" nowrap></td>
											</logic:empty>
											<logic:notEmpty name="list" property="amgr_auid">
												<td class="td5_on" onClick="tdOnClick()" nowrap></td>
											</logic:notEmpty>
											<logic:empty name="list" property="amgr_auid">
												<td class="td5" onClick="tdOnClick()" nowrap></td>
											</logic:empty>


											<td class="td6" nowrap><input type="text"
												onBlur="setTerm(this.value)"
												value="<bean:write name="list"
                                    property="rrte" />"
												maxlength="2"></td>
											<td class="td7" nowrap><input type="text"
												onBlur="setSum(this.value)"
												value="<bean:write name="list"
                                    property="rram" />"></td>
											<td class="td8" nowrap><bean:write name="list"
												property="prid" /></td>
										</tr>
									</logic:iterate>
								</logic:notEmpty>
							</table>
							</div>
	<table width="80%" height="35" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="bottom">
	    <button class="btn btn-primary" onclick="JavaScript:document.location='/IB/roleManage.do?prid=RLMT';return false">
            <i class="fa fa-level-up fa-2x"></i>返 回
        </button>
    </td>
  </tr>
</table>

	</html:form>
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
</html>