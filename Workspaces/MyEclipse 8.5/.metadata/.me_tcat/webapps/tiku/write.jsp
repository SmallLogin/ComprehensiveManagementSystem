 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //�ж��û��Ƿ��Ѿ���½�����û�У��������½�����������ʾ��ǰ�û���Ϣ
	{
			out.print("<script>alert('�Բ���,�����ȵ�½!');window.history.go(-1);</script>");
	}
	 %>
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<%@ page language="java" import="java.io.*" %>
<%
	
	
	File file =new File("E:\\TEST.txt");
	FileWriter fw=new FileWriter(file);
	String str="�Ծ���";
	fw.write(str);
	
	
	/*if(file.exists())
	{
		fw.write(str);
	}
	else
	{
		file.createNewFile();
		fw.write(str);
	}
	FileReader fr =new FileReader(file);
	int length=0;
	char[] charBuffer=new char[10];
	while((length=fr.read(charBuffer))!=-1)
	{
		out.write(charBuffer,0,length);
	}*/
	fw.close();
 %>
 
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����������γ�����ۺϹ���ϵͳ</title><LINK href="css.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE2 {color: #FFFFFF}
.STYLE4 {color: #FFFFFF; font-weight: bold; }
.STYLE6 {color: #198A95; font-weight: bold; }
.STYLE5 {	color: #72AC27;
	font-size: 26pt;
}
-->
</style>

<link href="qtimages/StyleSheet.css" rel="stylesheet" type="text/css">
  </head>

  <body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
  <table id="__01" width="100%" height="193" border="0" cellpadding="0" cellspacing="0">
    
    <tr>
      <td height="162" align="center">
	  <%
  String id=request.getParameter("id");
  String sql="",nnn="",bianhao="",bbb="",ccc="",ddd="";
											sql="select * from shijuanshengcheng where id="+id+"";
											 ResultSet RS_result=connDbBean.executeQuery(sql);
								 while(RS_result.next()){
								 nnn=RS_result.getString("xuanzeti");
								 bianhao=RS_result.getString("shijuanbianhao");
								 bbb=RS_result.getString("tiankongti");
								 ccc=RS_result.getString("panduanti");
								
								 }
   %>
            <p>�Ծ��ţ�<%=bianhao%></p>
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="2">ѡ����(ÿ��2��)</td>
              </tr>
              <%
											
  sql="select * from xuanzeti where id in ("+nnn+")";
  
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
String timu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";String nanyichengdu="";
 String addtime="";
 int i=0;
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
timu=RS_result.getString("shiti");xuanxiangA=RS_result.getString("xuanxiangA");
xuanxiangB=RS_result.getString("xuanxiangB");xuanxiangC=RS_result.getString("xuanxiangC");xuanxiangD=RS_result.getString("xuanxiangD");
daan=RS_result.getString("daan");
//nanyichengdu=RS_result.getString("nanyichengdu");
 addtime=RS_result.getString("addtime");
 
											%>
              <tr>
                <td width="8%" height="33">����<%=i%>��</td>
                <td>��Ŀ��<%=timu%>
                    <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td rowspan="4">ѡ��</td>
                <td width="92%"><input type="radio" name="xztxxa<%=i%>" value="A">
                  ѡ��A��<%=xuanxiangA%></td>
              </tr>
              <tr>
                <td><input type="radio" name="xztxxa<%=i%>" value="B">
ѡ��B��<%=xuanxiangB%></td>
              </tr>
              <tr>
                <td><input type="radio" name="xztxxa<%=i%>" value="C">
ѡ��C��<%=xuanxiangC%></td>
              </tr>
              <tr>
                <td><input type="radio" name="xztxxa<%=i%>" value="D">
ѡ��D��<%=xuanxiangD%></td>
              </tr>
              <%
											  }
											  %>
            </table>
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="3">�����(ÿ��3��)</td>
              </tr>
              <%
											
  sql="select * from tiankongti where id in ("+bbb+")";
  
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
  i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
timu=RS_result.getString("shiti");
daan=RS_result.getString("daan");
//nanyichengdu=RS_result.getString("nanyichengdu");
 addtime=RS_result.getString("addtime");
 
											%>
              <tr>
                <td width="9%" height="33">����<%=i%>��</td>
                <td colspan="2">��Ŀ��<%=timu%>
                    <input name="tdtshitida<%=i%>" type="hidden" id="tdtshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td>�𰸣�</td>
                <td colspan="2"><input name="tktdaan<%=i%>" type="text" id="tktdaan<%=i%>"></td>
              </tr>
              
              <%
											  }
											  %>
            </table>            
            <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
              <tr>
                <td height="33" colspan="3">�ж���(ÿ��10��)</td>
              </tr>
              <%
											
  sql="select * from panduanti where id in ("+ccc+")";
  
  sql=sql+" order by id desc";
  RS_result=connDbBean.executeQuery(sql);
  id="";
  i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
timu=RS_result.getString("shiti");
daan=RS_result.getString("daan");
//nanyichengdu=RS_result.getString("nanyichengdu");
 addtime=RS_result.getString("addtime");
 
											%>
              <tr>
                <td width="9%" height="33">����<%=i%>��</td>
                <td colspan="2">��Ŀ��<%=timu%>
                    <input name="pdtshitida<%=i%>" type="hidden" id="pdtshitida<%=i%>" value="<%=daan%>"></td>
              </tr>
              <tr>
                <td>�𰸣�</td>
                <td colspan="2"><input type="radio" name="pdtxxa<%=i%>" value="��"> 
                  ��
                    <input type="radio" name="pdtxxa<%=i%>" value="��">
                    ��</td>
              </tr>
              <%
											  }
											  %>
            </table>            
          <p>&nbsp;</p>
      </td>
    </tr>
  </table>
  
  </body>
</html>

