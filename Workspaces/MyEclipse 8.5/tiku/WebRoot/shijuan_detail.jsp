 <%
	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}
	 %>
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.text.*"%> 

<%@ page import="java.util.*"%> 
<%@ page import="java.text.SimpleDateFormat,java.util.Date"%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在线考试系统</title><LINK href="css.css" type=text/css rel=stylesheet>
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
//  String kssj="";
  ResultSet RS_result;
//  sql="select * from kaoshishijian";
//  RS_result =connDbBean.executeQuery(sql);
//  while(RS_result.next()){
//  	kssj=RS_result.getString("kssj");
//  }
//  java.util.Date date = new java.util.Date();
//java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss", java.util.Locale.CHINA);
//
//String result = format.format(date);
//
//SimpleDateFormat dfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
//   java.util.Date begin=dfs.parse(kssj);  
//   java.util.Date end = dfs.parse(result);  
//   long between=(end.getTime()-begin.getTime())/1000;//除以1000是为了转换成秒  
//   long day1=between/(24*3600);  
//   long hour1=between%(24*3600)/3600;  
//   long minute1=between%3600/60;  
//   long second1=between%60/60;  
//   out.print(""+day1+"天"+hour1+"小时"+minute1+"分"+second1+"秒");  
//
//
//
//
//
//if(day1<0 || hour1<0 || minute1<0 || second1<0)
//
//{
//		out.print("<script>javascript:alert('对不起，考试时间还没到，请稍后再试！');history.back();</script>");
//		
//}


  
											sql="select * from shijuanshengcheng where id="+id+"";
											RS_result =connDbBean.executeQuery(sql);
								 while(RS_result.next()){
								 nnn=RS_result.getString("xuanzeti");
								 bianhao=RS_result.getString("shijuanbianhao");
								 bbb=RS_result.getString("tiankongti");
								 ccc=RS_result.getString("panduanti");
								 //ddd=RS_result.getString("yueduchengxuti");
								 }
   %>
            <p>试卷编号：<%=bianhao%> 时间：0.5分钟，现在开始计时！剩余<SPAN id=tiao></SPAN>秒 <SCRIPT language=javascript>
<!--
function clock(){i=i-1
document.getElementById('tiao').innerHTML=i;
if(i>0) {
setTimeout("clock();",1000);
}
else {

alert("考试时间到，系统自动交卷！");
document.form1.submit();
}
}
var i=30
clock()
//-->
</SCRIPT> </p>
            <form name="form1" method="post" action="jiaojuan.jsp?bianhao=<%=bianhao%>">
              <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
                <tr>
                  <td height="33" colspan="2">选择题(每题2分)</td>
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
                  <td width="9%" height="33">试题<%=i%>：</td>
                  <td>题目：<%=timu%>
                      <input name="xztshitida<%=i%>" type="hidden" id="xztshitida<%=i%>" value="<%=daan%>"></td>
                </tr>
                <tr>
                  <td rowspan="4">选项</td>
                  <td width="91%"><input type="radio" name="xztxxa<%=i%>" value="A">
                    选项A：<%=xuanxiangA%></td>
                </tr>
                <tr>
                  <td><input type="radio" name="xztxxa<%=i%>" value="B">
选项B：<%=xuanxiangB%></td>
                </tr>
                <tr>
                  <td><input type="radio" name="xztxxa<%=i%>" value="C">
选项C：<%=xuanxiangC%></td>
                </tr>
                <tr>
                  <td><input type="radio" name="xztxxa<%=i%>" value="D">
选项D：<%=xuanxiangD%></td>
                </tr>
                <%
											  }
											  %>
              </table>
              <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
                <tr>
                  <td height="33" colspan="3">填空题(每题3分)</td>
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
                  <td width="9%" height="33">试题<%=i%>：</td>
                  <td colspan="2">题目：<%=timu%>
                      <input name="tdtshitida<%=i%>" type="hidden" id="tdtshitida<%=i%>" value="<%=daan%>"></td>
                </tr>
                <tr>
                  <td>答案：</td>
                  <td colspan="2"><input name="tktdaan<%=i%>" type="text" id="tktdaan<%=i%>"></td>
                </tr>
                <%
											  }
											  %>
              </table>
              <table width="98%" height="103" border="1" cellpadding="1" cellspacing="0" bordercolor="#F8C878">
                <tr>
                  <td height="33" colspan="3">判断题(每题10分)</td>
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
                  <td width="9%" height="33">试题<%=i%>：</td>
                  <td colspan="2">题目：<%=timu%>
                      <input name="pdtshitida<%=i%>" type="hidden" id="pdtshitida<%=i%>" value="<%=daan%>"></td>
                </tr>
                <tr>
                  <td>答案：</td>
                  <td colspan="2"><input type="radio" name="pdtxxa<%=i%>" value="对"> 
                  对
                    <input type="radio" name="pdtxxa<%=i%>" value="错">
                    错</td>
                </tr>
                <%
											  }
											  %>
              </table>
            
              <p>
                <input type="submit" name="Submit" value="交卷">
              </p>
        </form>
        <p>&nbsp;</p>
      </td>
    </tr>
  </table>
  </body>
</html>

