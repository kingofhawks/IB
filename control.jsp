<%@ page contentType="text/html; charset=gb2312"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>control</title>
<SCRIPT>
		function Submit_onclick()
        {
	       if(parent.myFrame.cols=="222,9,*")
	        {
		       parent.myFrame.cols="0%,9,*";
		       document.getElementById("ImgArrow").src="/IB/images/aR.gif";
	        }
			else
			{
				parent.myFrame.cols="222,9,*"
				document.getElementById("ImgArrow").src="/IB/images/aL.gif";
			}
       }
       function MyLoad() 
       {
			if(window.parent.location.href.indexOf("MainUrl")>0)
			{
				window.top.midFrame.document.getElementById("ImgArrow").src="/IB/images/aR.gif";
			}
		}
		</SCRIPT>

<style type="text/css">
<!--
body {behavior: url('/IB/common/mouse.htc');
	margin:0px 0px 0px 0px;
	background-color: #E8F0F9;
}
-->
</style></head>

<body>
<table width="9" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="9" valign="middle"><A href="javascript:Submit_onclick()" onFocus="this.blur()"><IMG src="/IB/images/aR.gif" name=ImgArrow width="9" height="122" border=0 
      id=ImgArrow></A></td>
  </tr>
</table>
</body>
</html>
