<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ page contentType="text/html; charset=gb2312"%>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><bean:message key="common.systemName" /></title>
<link href="/IB/common/default.css" rel="stylesheet"  type="text/css">
<link href="/IB/resources/bootstrap-3.1.1/css/bootstrap.min.css" rel="stylesheet">
<script language="javascript" type="text/javascript"   src="/IB/common/default.js"></script>
</head>
<body>

<div class="container col-sm-4">
    <form class="form-horizontal" role="form" action="/IB/userUgNew.do" onsubmit="checkForm(this)"   method="post" styleClass="form-horizontal">
        <div class="form-group">
            <label for="ugds" class="col-sm-2 control-label">班级名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="ugnm" id="ugnm" placeholder="班级名" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="ugds" class="col-sm-2 control-label">备注</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="ugds" id="ugds" placeholder="备注">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button  class="btn btn-primary">完成</button>
                <button  class="btn btn-primary" onclick="JavaScript:document.location='/IB/userUg.do';return false">返回</button>
            </div>
        </div>
    </form>
</div>

</body> 
</html:html>
