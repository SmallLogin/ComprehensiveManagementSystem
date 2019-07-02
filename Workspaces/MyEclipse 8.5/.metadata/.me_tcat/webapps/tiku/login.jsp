<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
<head>
    <base href="<%=basePath%>">
    
<title>用户登录</title>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {s
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	/*background-image: url(images/bg.gif);*/
	background-repeat: repeat-x;
	background-color: #B7DBFF;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CC0000;
	font-size: 26pt;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<script language="javascript">
function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="")
	{
		alert('请输入完整');
		return false;
	}
}
</script>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"><table width="1102" height="700" border="0" align="center" cellpadding="0" cellspacing="0" background="images/bg.jpg" id="__01">
<table width="1102" height="700" border="0" align="center" cellpadding="0" cellspacing="0" background="images/hsg.jpg" id="__01">
	<tr>
		<td height="180" colspan="3" ><div style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
          <div align="center" class="STYLE5">计算机语言类题库管理系统</div>
	    </div></td>
	</tr>
	<tr>
		<td width="717" rowspan="2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
		<td width="324" height="319" ><table width="190" border="0" align="center" cellpadding="0" cellspacing="0">
          <form name="form1" method="post" action="adminyanzheng.jsp">
		  <tr>
            <td width="44" height="30"><span class="STYLE3 STYLE6">用户:</span></td>
            <td width="142" height="30"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE3 STYLE6">密码:</span></td>
            <td height="30"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE3 STYLE6">权限:</span></td>
            <td height="30"><select name="cx" id="cx">
                <option value="管理员">管理员</option>
                <option value="学生">学生</option>
              </select></td>
          </tr>
          <tr>
            <td height="30" align="center">&nbsp;</td>
            <td height="30" align="left"><input type="submit" name="Submit" value="登录" onClick="return check();">
              <input type="reset" name="Submit2" value="重置"></td>
          </tr></form>
      </table></td>
		<td width="61" rowspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
</table>

</body>
</html>

