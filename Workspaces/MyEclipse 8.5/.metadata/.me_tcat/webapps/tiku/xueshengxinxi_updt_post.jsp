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
String id=request.getParameter("id");
String sql="update xueshengxinxi set xuehao='"+xuehao+"',xingming='"+xingming+"',mima='"+mima+"',banji='"+banji+"',zhuanye='"+zhuanye+"',zhaopian='"+zhaopian+"',shenfenzheng='"+shenfenzheng+"',jiguan='"+jiguan+"',dizhi='"+dizhi+"',dianhua='"+dianhua+"',xingbie='"+xingbie+"',beizhu='"+beizhu+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('�޸ĳɹ�!!');location.href='xueshengxinxi_list.jsp';</script>");
%>
  </body>
</html>


