<%@ page language="java"  pageEncoding="gb2312" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminyanzheng.jsp' starting page</title>
  </head>
  <body>
  <%
String shijuanbianhao=request.getParameter("shijuanbianhao");String kemu=request.getParameter("kemu");String xuanzeti=request.getParameter("xuanzeti");String tiankongti=request.getParameter("tiankongti");String panduanti=request.getParameter("panduanti");String faburen=request.getParameter("faburen");
String id=request.getParameter("id");
String sql="update shijuanshengcheng set shijuanbianhao='"+shijuanbianhao+"',kemu='"+kemu+"',xuanzeti='"+xuanzeti+"',tiankongti='"+tiankongti+"',panduanti='"+panduanti+"',faburen='"+faburen+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('ÐÞ¸Ä³É¹¦!!');location.href='shijuanshengcheng_list.jsp';</script>");
%>
  </body>
</html>


