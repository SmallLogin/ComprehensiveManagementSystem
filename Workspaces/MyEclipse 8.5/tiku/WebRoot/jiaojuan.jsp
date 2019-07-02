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
 

String tmp1;
String tmp2;
int i=0;
int df=0,df2=0,df3=0,df4=0,dfz=0;
for (i=1;i<=15;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("xztshitida"+String.valueOf(i));
	tmp2=request.getParameter("xztxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		//out.print(i);
		if(tmp1.equals(tmp2))
		{
		df=df+2;
		}
	}
}
for (i=1;i<=10;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("tdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("tktdaan"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df2=df2+3;
		}
	}
}
for (i=1;i<=10;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("pdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("pdtxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df3=df3+10;
		}
	}
}
dfz=df+df2+df3;
//out.print(df);
String sql;
sql="insert into cj(username,cj,sjbh) values('"+request.getSession().getAttribute("username")+"',"+dfz+",'"+request.getParameter("bianhao")+"')";
	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('交卷成功!!您本次成绩为"+String.valueOf(dfz)+"分');location.href='cj_list2.jsp';</script>");


 %>
  </body>
</html>

