<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html><head>
<script language="javascript" type="text/javascript"
    src="/IB/common/list.js"></script>
<script language="javascript" type="text/javascript"
    src="/IB/systemManage/affiche/xmlhttp.js"></script>
<link href="resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<style>
#innerTable_divLis {
		border: #CCCCCC solid; 
		border-width: 1px 1px 1px 1px;
		margin:0px 0px 4px 4px; 
		overflow:auto; overflow-x:hidden;
		vertical-align:top;
}
.title1{
        padding:2px 0px 0px 16px;
		margin:0px 4px 0px 4px;
		border:#CCCCCC solid;
		border-width:1px 1px 0px 1px;
		display:block;
		table-layout:fixed; 
		word-break:keep-all;
		font-weight:bold;
		overflow:auto;
		overflow-x:hidden;
		vertical-align:top;
		filter: progid:DXImageTransform.Microsoft.Gradient(startColorStr=#FFFFFF, endColorStr=#9DD3FF, gradientType=0);
		}
.cont{ 
        padding:2px 0px 0px 16px;
		margin:0px 4px 0px 4px;
		border:#CCCCCC solid;
		border-width:0px 1px 0px 1px;
		display:block;
		table-layout:fixed; 
		word-break:keep-all;
		font-weight:bold;
		overflow:auto;
		overflow-x:hidden;
		vertical-align:top;
        background-color:#ffffff;
		}
		
.cont1{ 
color:#000000;
height:160px;
        padding:2px 0px 0px 16px;
		margin:0px 4px 0px 4px;
		border:#CCCCCC solid;
		border-width:0px 1px 1px 1px;
		display:block;
		table-layout:fixed; 
		word-break:keep-all;
		overflow:auto;
		overflow-x:hidden;
		vertical-align:top;
		filter: progid:DXImageTransform.Microsoft.Gradient(startColorStr=#FFFFFF, endColorStr=#F3F3F3, gradientType=0);}
		</style>
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
        <td height="22" class="outerTable_left_y"></td>
        <td align="right" class="outerTable_head">
            <span
            class="tab_unactive_right"> </span>

        <table border="0" cellpadding="0" cellspacing="0" align="center"  valign="bottom" >
            <tr>
                <td class="tab_unactive_btn" id="tab_btn"><h2><strong>公告信息</strong></h2></td>
            </tr>
        </table>
        </td>
        <td class="outerTable_right_y"></td>
    </tr>
    <tr>
        <td class="outerTable_left_y"></td>
        <td class="outerTable_main"><!--?????-->
        <table width="100%" height="100%" border="0" align="center"
            cellpadding="0" cellspacing="0">
            <tr>
                <td class="innerTable_top_left"></td>
                <td class="innerTable_top_x"></td>
                <td class="innerTable_top_right"></td>
            </tr>
            <tr>
                <td class="innerTable_left_y"></td>
                <td align="left" valign="top">
                <div id="innerTable_divLis" style='width:98%;height:200;'>
                <table width="100%" border="0" cellpadding="0" cellspacing="1" id="item_list" class="table">
                    <thead>
                        <th><h5><strong>编号</strong></h5></th>
                        <th><h5><strong>标题</strong></h5></th>
                        <th><h5><strong>发布人</strong></h5></th>
                        <th><h5><strong>发布时间</strong></h5></th>
                    </thead>

                    <logic:notEmpty name="list">
                        <logic:iterate id="list" name="list"
                            indexId="index" scope="request">
										 <%if ((index.intValue() % 2) == 1) {
            out.print("<tr bgcolor=\"#ECF4FC\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ECF4FC\';\">");
             } else {
             out.print("<tr bgcolor=\"#ffffff\" onmouseover=\"this.style.backgroundColor=\'#FFCC99\';\" onmouseout=\"this.style.backgroundColor=\'#ffffff\';\">");
              }%>
                            <span
 onClick="rqstBull('<bean:write name='list' property='id' />','<bean:write name='list' property='title' />')">                    
                            <td align="left"><bean:write name="list" property="id" /> </td>
                            <td align="left" sytle="overflow:hidden;text-overflow:ellipsis"><bean:write name="list" property="title" /></td>
                            <td align="left"><bean:write name="list" property="mkus" /></td>
                            <td align="left"><bean:write name="list" property="mkdt" /></td>
                            </tr>
                            </span>
                        </logic:iterate>
                    </logic:notEmpty>
                </table></div>
				<div style='width:99%;'>
					<div id="bullTitle" class="title1" style="width:100%">公告标题：</div>
					<div class="cont" style="width:100%;height:80%">公告内容：</div>
					<div id="bullContent" class="cont1" style="width:100%"></div>
				</div> 			
              <!--????-->              </td>
                <td class="innerTable_right_y"></td>
            </tr>
            <tr>
                <td class="innerTable_bottom_left"></td>
                <td class="innerTable_bottom_x"></td>
                <td class="innerTable_bottom_right"></td>
            </tr>
        </table>
        <!--????--></td>
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

