
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
    
    <title>�ж���</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.kemu.value==""){alert("�������Ŀ");document.form1.kemu.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="panduanti_updt_post.jsp?id=<%=id %>">
  �޸��ж���:
  <br><br>
  <%
  String sql="select * from panduanti where id="+id;
  String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String daan="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");daan=RS_result.getString("daan");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ŀ��</td><td><select name='kemu' id='kemu'><%sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select></td></tr><script language="javascript">document.form1.kemu.value='<%=kemu%>';</script><tr><td>���⣺</td><td>
     <textarea name="shiti" id="shiti" rows="3" cols="60"><%=shiti%></textarea>
     </td></tr><tr><td>���׳̶ȣ�</td><td><select name='nanyichengdu' id='nanyichengdu'>
       <option value="��">��</option>
       <option value="��">��</option>
       <option value="��">��</option>
     </select></td></tr><script language="javascript">document.form1.nanyichengdu.value='<%=nanyichengdu%>';</script><tr><td>�𰸣�</td><td><select name='daan' id='daan'>
       <option value="��">��</option>
       <option value="��">��</option>
     </select></td></tr><script language="javascript">document.form1.daan.value='<%=daan%>';</script>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


