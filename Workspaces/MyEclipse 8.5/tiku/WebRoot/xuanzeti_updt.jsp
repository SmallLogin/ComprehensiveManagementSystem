
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
    
    <title>ѡ����</title><script language="javascript" src="js/Calendar.js"></script>
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
	if(document.form1.bianhao.value==""){alert("��������");document.form1.bianhao.focus();return false;}if(document.form1.nanyichengdu.value==""){alert("���������׳̶�");document.form1.nanyichengdu.focus();return false;}if(document.form1.xuanxiangA.value==""){alert("������ѡ��A");document.form1.xuanxiangA.focus();return false;}if(document.form1.xuanxiangB.value==""){alert("������ѡ��B");document.form1.xuanxiangB.focus();return false;}if(document.form1.xuanxiangC.value==""){alert("������ѡ��C");document.form1.xuanxiangC.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="xuanzeti_updt_post.jsp?id=<%=id %>">
  �޸�ѡ����:
  <br><br>
  <%
  String sql="select * from xuanzeti where id="+id;
  String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");xuanxiangA=RS_result.getString("xuanxiangA");xuanxiangB=RS_result.getString("xuanxiangB");xuanxiangC=RS_result.getString("xuanxiangC");xuanxiangD=RS_result.getString("xuanxiangD");daan=RS_result.getString("daan");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>��ţ�</td><td><input name='bianhao' type='text' id='bianhao' value='<%= bianhao%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>��Ŀ��</td><td><select name='kemu' id='kemu'><%sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select></td></tr><script language="javascript">document.form1.kemu.value='<%=kemu%>';</script><tr><td>���⣺</td><td>
     <textarea name="shiti" id="shiti" rows="3" cols="60" ><%=shiti%></textarea>
     </td></tr><tr><td>���׳̶ȣ�</td><td><select name='nanyichengdu' id='nanyichengdu'>
       <option value="��">��</option>
       <option value="��">��</option>
       <option value="��">��</option>
     </select></td></tr><script language="javascript">document.form1.nanyichengdu.value='<%=nanyichengdu%>';</script><tr><td>ѡ��A��</td><td><input name='xuanxiangA' type='text' id='xuanxiangA' size='50' value='<%=xuanxiangA%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ѡ��B��</td><td><input name='xuanxiangB' type='text' id='xuanxiangB' size='50' value='<%=xuanxiangB%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ѡ��C��</td><td><input name='xuanxiangC' type='text' id='xuanxiangC' size='50' value='<%=xuanxiangC%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>ѡ��D��</td><td><input name='xuanxiangD' type='text' id='xuanxiangD' size='50' value='<%=xuanxiangD%>' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>�𰸣�</td><td><select name='daan' id='daan'>
       <option value="A">A</option>
       <option value="B">B</option>
       <option value="C">C</option>
       <option value="D">D</option>
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


