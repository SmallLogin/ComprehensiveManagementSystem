
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
    
    <title>ѧ����Ϣ</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.xuehao.value==""){alert("������ѧ��");document.form1.xuehao.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}if(document.form1.banji.value==""){alert("������༶");document.form1.banji.focus();return false;}if(document.form1.zhuanye.value==""){alert("������רҵ");document.form1.zhuanye.focus();return false;}if(document.form1.dianhua.value==""){alert("������绰");document.form1.dianhua.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xueshengxinxi_updt_post.jsp?id=<%=id %>">
  �޸�ѧ����Ϣ:
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
     <tr><td>ѧ�ţ�</td><td><input name='xuehao' type='text' id='xuehao' value='<%= xuehao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�༶��</td><td><input name='banji' type='text' id='banji' value='<%= banji%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>רҵ��</td><td><input name='zhuanye' type='text' id='zhuanye' value='<%= zhuanye%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= zhaopian%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr><tr><td>���֤��</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='<%=shenfenzheng%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>���᣺</td><td><input name='jiguan' type='text' id='jiguan' value='<%= jiguan%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��ַ��</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=beizhu%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>


