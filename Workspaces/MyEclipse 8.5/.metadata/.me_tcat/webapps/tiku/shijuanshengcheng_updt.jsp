
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
    
    <title>�Ծ�����</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","�ļ��ϴ�");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.shijuanbianhao.value==""){alert("�������Ծ���");document.form1.shijuanbianhao.focus();return false;}if(document.form1.kemu.value==""){alert("�������Ŀ");document.form1.kemu.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="shijuanshengcheng_updt_post.jsp?id=<%=id %>">
  �޸��Ծ�����:
  <br><br>
  <%
  String sql="select * from shijuanshengcheng where id="+id;
  String shijuanbianhao="";String kemu="";String xuanzeti="";String tiankongti="";String panduanti="";String faburen="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  shijuanbianhao=RS_result.getString("shijuanbianhao");kemu=RS_result.getString("kemu");xuanzeti=RS_result.getString("xuanzeti");tiankongti=RS_result.getString("tiankongti");panduanti=RS_result.getString("panduanti");faburen=RS_result.getString("faburen");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>�Ծ��ţ�</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='<%= shijuanbianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ŀ��</td><td><select name='kemu' id='kemu'><%sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select></td></tr><script language="javascript">document.form1.kemu.value='<%=kemu%>';</script><tr><td>ѡ���⣺</td><td><input name='xuanzeti' type='text' id='xuanzeti' value='<%= xuanzeti%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>����⣺</td><td><input name='tiankongti' type='text' id='tiankongti' value='<%= tiankongti%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�ж��⣺</td><td><input name='panduanti' type='text' id='panduanti' value='<%= panduanti%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�����ˣ�</td><td><input name='faburen' type='text' id='faburen' value='<%= faburen%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


