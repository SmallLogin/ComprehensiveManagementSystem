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
 

String bianhao=request.getParameter("bianhao");String kemu=request.getParameter("kemu");String shiti=request.getParameter("shiti");String nanyichengdu=request.getParameter("nanyichengdu");String daan=request.getParameter("daan");
 ResultSet RS_result=connDbBean.executeQuery("select * from tiankongti where bianhao='"+bianhao+"'");

 if(RS_result.next())
{
out.print("<script>alert('�ñ���Ѿ�����,�뻻�������!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into tiankongti(bianhao,kemu,shiti,nanyichengdu,daan) values('"+bianhao+"','"+kemu+"','"+shiti+"','"+nanyichengdu+"','"+daan+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('��ӳɹ�!!');location.href='tiankongti_add.jsp';</script>");
  	  
	}
 RS_result.close();


 %>
  </body>
</html>

