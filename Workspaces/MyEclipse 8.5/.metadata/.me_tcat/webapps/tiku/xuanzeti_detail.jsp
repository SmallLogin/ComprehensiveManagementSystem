
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
    
    <title>选择题详细</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  选择题详细:
  <br><br>
   <%
  String sql="select * from xuanzeti where id="+id;
  String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");xuanxiangA=RS_result.getString("xuanxiangA");xuanxiangB=RS_result.getString("xuanxiangB");xuanxiangC=RS_result.getString("xuanxiangC");xuanxiangD=RS_result.getString("xuanxiangD");daan=RS_result.getString("daan");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>编号：</td><td width='39%'><%=bianhao%></td><td width='11%'>科目：</td>
     <td width='39%'><%=kemu%></td></tr><tr><td width='11%'>答案：</td><td width='39%'><%=daan%></td>
     <td width='11%'>难易程度：</td><td width='39%'><%=nanyichengdu%></td></tr><tr><td width='11%'>选项A：</td>
     <td width='39%'><%=xuanxiangA%></td><td width='11%'>选项B：</td><td width='39%'><%=xuanxiangB%></td></tr>
     <tr><td width='11%'>选项C：</td><td width='39%'><%=xuanxiangC%></td><td width='11%'>
     选项D：</td><td width='39%'><%=xuanxiangD%></td></tr>
     <tr><td width='11%' height="133">试题：</td><td colspan="3"><%=shiti%></td>
     </tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /></td></tr>
  </table>

  </body>
</html>


