
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
    
    <title>科目信息</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有科目信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;科目：<input name="kemu" type="text" id="kemu" style='border:solid 1px #000000; color:#666666' size='15' />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>科目</td>
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <%
  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from kemuxinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if((zgs % page_record)==0)
  {
  zys=zgs/page_record;
  }
  else
  {
  	zys=zgs/page_record+1;
  }
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
if(((curpage-1)*page_record)==0 || curpage==0)
   {
  sql="select  * from kemuxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from kemuxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from kemuxinxi where id not in ("+tempidstring+")  ";
  }
  
  if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+new String(request.getParameter("kemu").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String kemu="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
kemu=RS_result.getString("kemu");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=kemu %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="kemuxinxi_updt.jsp?id=<%=id%>">修改</a>  <a href="del.jsp?id=<%=id %>&tablename=kemuxinxi" onclick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="kemuxinxi_list.jsp?page=1">首页</a>　<a href="kemuxinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="kemuxinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="kemuxinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

