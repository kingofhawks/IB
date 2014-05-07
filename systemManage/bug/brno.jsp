<%@ include file="/common/header.jsp"%>
<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<script language="javascript" type="text/javascript" src="/IB/common/list.js"> </script>
</head>
<body>
<%String message = (String) request.getAttribute("message");
        if (message != null)
            out.println(message);
    %>
<form name="form1" method="post" action="/IB/bugBrno.do">
<div align="center"><input type="submit" name="Submit" value="Submit"></div>
</form>


<br>
<br>
<br>
<br>
<a href="/IB/bugBrno.do">清理数据</a></body>
</html>
