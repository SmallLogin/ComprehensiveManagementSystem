
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
    
    <title>�Ծ�������ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  �Ծ�������ϸ:
  <br><br>
   <%
  String sql="select * from shijuanshengcheng where id="+id;
  String shijuanbianhao="";String kemu="";String xuanzeti="";String tiankongti="";String panduanti="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  shijuanbianhao=RS_result.getString("shijuanbianhao");kemu=RS_result.getString("kemu");xuanzeti=RS_result.getString("xuanzeti");tiankongti=RS_result.getString("tiankongti");panduanti=RS_result.getString("panduanti");faburen=RS_result.getString("faburen");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>�Ծ��ţ�</td>
     <td width='39%'><%=shijuanbianhao%></td>
     <td width='11%'>��Ŀ��</td>
     <td width='39%'><%=kemu%></td>
   </tr>
   <tr>
     <td width='11%'>ѡ���⣺</td>
     <td width='39%'><%=xuanzeti%></td>
     <td width='11%'>����⣺</td>
     <td width='39%'><%=tiankongti%></td>
   </tr>
   <tr>
   	<td width='11%'>�ж��⣺</td>
   	<td width='39%'><%=panduanti%></td>
   	<td width='11%'>�����ˣ�</td>
   	<td width='39%'><%=faburen%></td>
   </tr>
   <tr>
    <td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /></td>
   </tr>
    
  </table>

  </body>
</html>


