
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
    
    <title>�Ծ�����</title><LINK href="css.css" type=text/css 
rel=stylesheet>
    

  </head>
<%
String sql;
ResultSet RS_result;
%>
  <body >
  <p>�����Ծ������б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:&nbsp;&nbsp;�Ծ��ţ�<input name="shijuanbianhao" type="text" id="shijuanbianhao" style='border:solid 1px #000000; color:#666666' size='15' />  ��Ŀ��<select name='kemu' id='kemu'><option value="">����</option><% sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select>
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�Ծ���</td><td bgcolor='#CCFFFF'>��Ŀ</td><td bgcolor='#CCFFFF'>ѡ����</td><td bgcolor='#CCFFFF'>�����</td><td bgcolor='#CCFFFF'>�ж���</td><td bgcolor='#CCFFFF'>������</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <%
  int curpage=1;//��ǰҳ
				int page_record=10;//ÿҳ��ʾ�ļ�¼��
				int zgs=0;
				int zys=0;
				//������ķ�����sql��ѯ��ɣ��ٶȿ죩
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from shijuanshengcheng where faburen='"+request.getSession().getAttribute("username")+"'";
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
				curpage=Integer.parseInt(request.getParameter("page"));//��ȡ���ݵ�ֵ����Ҫ��ʾ��ҳ
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
  sql="select  * from shijuanshengcheng where faburen='"+request.getSession().getAttribute("username")+"' ";
   }
   else
   {
   String tempsql="select  id from shijuanshengcheng where faburen='"+request.getSession().getAttribute("username")+"' order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from shijuanshengcheng where id not in ("+tempidstring+") and faburen='"+request.getSession().getAttribute("username")+"' ";
  }
  
  if(request.getParameter("shijuanbianhao")=="" ||request.getParameter("shijuanbianhao")==null ){}else{sql=sql+" and shijuanbianhao like '%"+new String(request.getParameter("shijuanbianhao").getBytes("8859_1"))+"%'";}if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+new String(request.getParameter("kemu").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String shijuanbianhao="";String kemu="";String xuanzeti="";String tiankongti="";String panduanti="";String faburen="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 

 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
shijuanbianhao=RS_result.getString("shijuanbianhao");kemu=RS_result.getString("kemu");xuanzeti=RS_result.getString("xuanzeti");tiankongti=RS_result.getString("tiankongti");panduanti=RS_result.getString("panduanti");faburen=RS_result.getString("faburen");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi
 
%>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=shijuanbianhao %></td><td><%=kemu %></td><td><%=xuanzeti %></td><td><%=tiankongti %></td><td><%=panduanti %></td><td><%=faburen %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="shijuanshengcheng_updt.jsp?id=<%=id%>">�޸�</a> <a href="shijuanshengcheng_detail.jsp?id=<%=id%>">��ϸ</a>  <a href="del.jsp?id=<%=id %>&tablename=shijuanshengcheng" onclick="return confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table>
<%//yougongzitongji%>
<br>
�������ݹ�<%=i %>��,<a style="cursor:hand" onclick="javascript:window.print();">��ӡ��ҳ</a>
<p align="center">&nbsp;��<%=zgs%>����¼&nbsp;&nbsp;<%=page_record %>��/ҳ��<a href="shijuanshengcheng_list2.jsp?page=1">��ҳ</a>��<a href="shijuanshengcheng_list2.jsp?page=<%= curpage-1%>">��һҳ</a>��<A href="shijuanshengcheng_list2.jsp?page=<%= curpage+1%>">��һҳ</A>��<a href="shijuanshengcheng_list2.jsp?page=<%=zys %>">βҳ</A>����ǰ��<FONT color=red><%=curpage %></FONT>ҳ/��<FONT color=red><%=zys %></FONT>ҳ</p>
  </body>
</html>

