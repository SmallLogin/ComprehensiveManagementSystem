
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
    
    <title>ѧ����Ϣ��ϸ</title><script language="javascript" src="js/Calendar.js"></script>
	
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

  ѧ����Ϣ��ϸ:
  <br><br>
   <%
  String sql="select * from xueshengxinxi where id="+id;
  String xuehao="";String xingming="";String mima="";String banji="";String zhuanye="";String zhaopian="";String shenfenzheng="";String jiguan="";String dizhi="";String dianhua="";String xingbie="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");banji=RS_result.getString("banji");zhuanye=RS_result.getString("zhuanye");zhaopian=RS_result.getString("zhaopian");shenfenzheng=RS_result.getString("shenfenzheng");jiguan=RS_result.getString("jiguan");dizhi=RS_result.getString("dizhi");dianhua=RS_result.getString("dianhua");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>ѧ�ţ�</td><td width='39%'><%=xuehao%></td><td  rowspan=10 align=center><a href=<%=zhaopian%> target=_blank><img src=<%=zhaopian%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>������</td><td width='39%'><%=xingming%></td></tr><tr><td width='11%' height=44>���룺</td><td width='39%'><%=mima%></td></tr><tr><td width='11%' height=44>�༶��</td><td width='39%'><%=banji%></td></tr><tr><td width='11%' height=44>רҵ��</td><td width='39%'><%=zhuanye%></td></tr><tr><td width='11%' height=44>���֤��</td><td width='39%'><%=shenfenzheng%></td></tr><tr><td width='11%' height=44>���᣺</td><td width='39%'><%=jiguan%></td></tr><tr><td width='11%' height=44>��ַ��</td><td width='39%'><%=dizhi%></td></tr><tr><td width='11%' height=44>�绰��</td><td width='39%'><%=dianhua%></td></tr><tr><td width='11%' height=44>�Ա�</td><td width='39%'><%=xingbie%></td></tr><tr><td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=beizhu%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" /></td></tr>
    
  </table>

  </body>
</html>


