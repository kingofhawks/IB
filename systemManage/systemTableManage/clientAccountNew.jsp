<%--客户帐号(新建)--%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=GBK"%>
<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
        <title><bean:message key="common.systemName" /></title>
        <link href="/IB/common/default.css" rel="stylesheet"    type="text/css">
        <link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
        <script language="javascript" type="text/javascript"    src="/IB/common/default.js"></script>
    </head>

    <body>
    <div class="container">
        <form class="form-horizontal" role="form" action="/IB/clientAccountNew.do"   method="post">
            <div class="form-group">
                <label for="brno" class="col-sm-2 control-label">银行编号</label>
                <div class="col-sm-10">
                    <select name="brno" id="brno" title="brno"  class="form-control">
                        <%out.println(request.getAttribute("OPTION_BRNO"));%>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="acno" class="col-sm-2 control-label">客户帐号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="acno" id="acno" placeholder="客户帐号">
                </div>
            </div>
            <div class="form-group">
                <label for="clno" class="col-sm-2 control-label">客户号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="clno" id="clno" placeholder="客户号">
                </div>
            </div>
            <div class="form-group">
                <label for="clnona" class="col-sm-2 control-label">客户中文名称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="clnona" id="clnona" placeholder="客户中文名称">
                </div>
            </div>
            <div class="form-group">
                <label for="clnoad" class="col-sm-2 control-label">客户中文名称及地址</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="clnoad" id="clnoad" placeholder="客户中文名称及地址">
                </div>
            </div>
            <div class="form-group">
                <label for="cyno" class="col-sm-2 control-label">帐号币种</label>
                <div class="col-sm-10">
                    <select  name="cyno" id="cyno" class="form-control">
                        <logic:notEmpty name="OPTION_CYNO">
                            <logic:iterate id="list" name="OPTION_CYNO">
                                <%String[] cyno = (String[]) list;%>
                                <option value="<%=cyno[0]%>"> <%=cyno[1]%> </option>
                            </logic:iterate>
                        </logic:notEmpty>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="itcd" class="col-sm-2 control-label">业务代码</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="itcd" id="itcd" placeholder="业务代码">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button  class="btn btn-primary">完成</button>
                    <button  class="btn btn-primary" onclick="openReplace('clientAccountAction.do');return false">返回</button>
                </div>
            </div>
        </form>
    </div>

    </body>
</html:html>
