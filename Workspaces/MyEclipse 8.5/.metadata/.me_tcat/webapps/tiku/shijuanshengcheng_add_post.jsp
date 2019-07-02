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
String sql="select  id from xuanzeti where kemu='"+kemu+"' order by rand() limit 0, "+xuanzeti+"";
		 ResultSet RS_result=connDbBean.executeQuery(sql);
		 String id="";
 while(RS_result.next()){
	id=id+RS_result.getString("id")+",";
}
id=id.substring(0,id.length()-1);

sql="select  id from tiankongti where kemu='"+kemu+"' order by rand() limit 0, "+tiankongti+"";
		  RS_result=connDbBean.executeQuery(sql);
		 String id2="";
 while(RS_result.next()){
	id2=id2+RS_result.getString("id")+",";
}
id2=id2.substring(0,id2.length()-1);



sql="select  id from panduanti where  kemu='"+kemu+"' order by rand() limit 0, "+panduanti+"";
		  RS_result=connDbBean.executeQuery(sql);
		 String id5="";
 while(RS_result.next()){
	id5=id5+RS_result.getString("id")+",";
}
id5=id5.substring(0,id5.length()-1);

	
  	  	 sql="insert into shijuanshengcheng(shijuanbianhao,kemu,xuanzeti,tiankongti,panduanti,faburen) values('"+shijuanbianhao+"','"+kemu+"','"+id+"','"+id2+"','"+id5+"','"+faburen+"') ";
	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('Ìí¼Ó³É¹¦!!');location.href='shijuanshengcheng_add.jsp';</script>");



 %>
  </body>
</html>

