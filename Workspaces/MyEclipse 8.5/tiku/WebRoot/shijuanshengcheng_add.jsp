
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
    
    <title>试卷生成</title><LINK href="css.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	    <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script>
  </head>
<script language="javascript">
function check()
{
	if(document.form1.shijuanbianhao.value==""){alert("请输入试卷编号");document.form1.shijuanbianhao.focus();return false;}if(document.form1.kemu.value==""){alert("请输入科目");document.form1.kemu.focus();return false;}
}
function gow()
{
	document.location.href="shijuanshengcheng_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <%
  String sql;
  ResultSet RS_result;
 //islbdq String id=request.getParameter("id");
 //islbdq sql="select * from melieibaoduqubiaoiguo where id="+id;
 //islbdq gogogogogo
 //islbdq RS_result=connDbBean.executeQuery(sql);
 //islbdq while(RS_result.next()){
 //islbdq lelelelelele
 //islbdq }
   %>
  <form name="form1" id="form1" method="post" action="shijuanshengcheng_add_post.jsp">
  添加试卷生成:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>试卷编号：</td><td><input name='shijuanbianhao' type='text' id='shijuanbianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>科目：</td><td><select name='kemu' id='kemu'><%sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select>&nbsp;*</td></tr><tr><td>选择题：</td><td><input name='xuanzeti' type='text' id='xuanzeti' value='5' style='border:solid 1px #000000; color:#666666' />
   个</td>
   </tr><tr><td>填空题：</td><td><input name='tiankongti' type='text' id='tiankongti' value='5' style='border:solid 1px #000000; color:#666666' />
个</td>
   </tr><tr><td>判断题：</td><td><input name='panduanti' type='text' id='panduanti' value='5' style='border:solid 1px #000000; color:#666666' />
个</td>
   </tr><tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

