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
 

String xuehao=request.getParameter("xuehao");String xingming=request.getParameter("xingming");String mima=request.getParameter("mima");String banji=request.getParameter("banji");String zhuanye=request.getParameter("zhuanye");String zhaopian=request.getParameter("zhaopian");String shenfenzheng=request.getParameter("shenfenzheng");String jiguan=request.getParameter("jiguan");String dizhi=request.getParameter("dizhi");String dianhua=request.getParameter("dianhua");String xingbie=request.getParameter("xingbie");String beizhu=request.getParameter("beizhu");
 ResultSet RS_result=connDbBean.executeQuery("select * from xueshengxinxi where xuehao='"+xuehao+"'");

 if(RS_result.next())
{
out.print("<script>alert('该学号已经存在,请换其他学号!');window.history.go(-1);</script>");
	}
else{

	
  	  	String sql="insert into xueshengxinxi(xuehao,xingming,mima,banji,zhuanye,zhaopian,shenfenzheng,jiguan,dizhi,dianhua,xingbie,beizhu) values('"+xuehao+"','"+xingming+"','"+mima+"','"+banji+"','"+zhuanye+"','"+zhaopian+"','"+shenfenzheng+"','"+jiguan+"','"+dizhi+"','"+dianhua+"','"+xingbie+"','"+beizhu+"') ";
  	  	
  	  	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('添加成功!!');location.href='xueshengxinxi_add.jsp';</script>");
  	  
	}
 RS_result.close();


 %>
  </body>
</html>

