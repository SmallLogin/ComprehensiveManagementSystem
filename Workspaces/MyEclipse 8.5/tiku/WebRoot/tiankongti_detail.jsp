
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>

<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�������ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	fewgidsoidfjdkgds
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>

  �������ϸ:
  <br><br>
   <%
  String sql="select * from tiankongti where id="+id;
  String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String daan="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");daan=RS_result.getString("daan");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>��ţ�</td><td width='39%'><%=bianhao%></td><td width='11%'>��Ŀ��</td><td width='39%'><%=kemu%></td></tr><tr><td width='11%'>�𰸣�</td><td width='39%'><%=daan%></td>
     <td width='11%'>���׳̶ȣ�</td><td width='39%'><%=nanyichengdu%></td></tr><tr><td width='11%' height="108">���⣺</td><td colspan="3"><%=shiti%></td>
     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /></td></tr>
  </table>

  </body>
</html>


