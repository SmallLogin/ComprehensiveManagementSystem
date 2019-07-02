
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
    
    <title>学生信息</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>已有学生信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:&nbsp;&nbsp;学号：<input name="xuehao" type="text" id="xuehao" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;班级：<input name="banji" type="text" id="banji" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;专业：<input name="zhuanye" type="text" id="zhuanye" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;身份证：<input name="shenfenzheng" type="text" id="shenfenzheng" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;电话：<input name="dianhua" type="text" id="dianhua" style='border:solid 1px #000000; color:#666666' size='15' />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>学号</td><td bgcolor='#CCFFFF'>姓名</td><td bgcolor='#CCFFFF'>密码</td><td bgcolor='#CCFFFF'>班级</td><td bgcolor='#CCFFFF'>专业</td><td bgcolor='#CCFFFF' width='90' align='center'>照片</td><td bgcolor='#CCFFFF'>身份证</td><td bgcolor='#CCFFFF'>籍贯</td><td bgcolor='#CCFFFF'>地址</td><td bgcolor='#CCFFFF'>电话</td><td bgcolor='#CCFFFF' width='40' align='center'>性别</td>
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
				String fysql="select count(id) as ss from xueshengxinxi";
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
  sql="select  * from xueshengxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from xueshengxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from xueshengxinxi where id not in ("+tempidstring+")  ";
  }
  
  if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+new String(request.getParameter("xuehao").getBytes("8859_1"))+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+new String(request.getParameter("banji").getBytes("8859_1"))+"%'";}if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null ){}else{sql=sql+" and zhuanye like '%"+new String(request.getParameter("zhuanye").getBytes("8859_1"))+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String xuehao="";String xingming="";String mima="";String banji="";String zhuanye="";String zhaopian="";String shenfenzheng="";String jiguan="";String dizhi="";String dianhua="";String xingbie="";String beizhu="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");banji=RS_result.getString("banji");zhuanye=RS_result.getString("zhuanye");zhaopian=RS_result.getString("zhaopian");shenfenzheng=RS_result.getString("shenfenzheng");jiguan=RS_result.getString("jiguan");dizhi=RS_result.getString("dizhi");dianhua=RS_result.getString("dianhua");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=xuehao %></td><td><%=xingming %></td><td><%=mima %></td><td><%=banji %></td><td><%=zhuanye %></td><td width='90'><a href='<%=zhaopian %>' target='_blank'><img src='<%=zhaopian %>' width=88 height=99 border=0 /></a></td><td><%=shenfenzheng %></td><td><%=jiguan %></td><td><%=dizhi %></td><td><%=dianhua %></td><td align='center'><%=xingbie %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="xueshengxinxi_updt.jsp?id=<%=id%>">修改</a> <a href="xueshengxinxi_detail.jsp?id=<%=id%>">详细</a>  <a href="del.jsp?id=<%=id %>&tablename=xueshengxinxi" onclick="return confirm('真的要删除？')">删除</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
以上数据共<%=i %>条,<a style="cursor:hand" onclick="javascript:window.print();">打印本页</a>
<p align="center">&nbsp;共<%=zgs%>条记录&nbsp;&nbsp;<%=page_record %>条/页　<a href="xueshengxinxi_list.jsp?page=1">首页</a>　<a href="xueshengxinxi_list.jsp?page=<%= curpage-1%>">上一页</a>　<A href="xueshengxinxi_list.jsp?page=<%= curpage+1%>">下一页</A>　<a href="xueshengxinxi_list.jsp?page=<%=zys %>">尾页</A>　当前第<FONT color=red><%=curpage %></FONT>页/共<FONT color=red><%=zys %></FONT>页</p>
  </body>
</html>

