
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
    
    <title>选择题</title><LINK href="css.css" type=text/css rel=stylesheet>
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
	if(document.form1.bianhao.value==""){alert("请输入编号");document.form1.bianhao.focus();return false;}if(document.form1.nanyichengdu.value==""){alert("请输入难易程度");document.form1.nanyichengdu.focus();return false;}if(document.form1.xuanxiangA.value==""){alert("请输入选项A");document.form1.xuanxiangA.focus();return false;}if(document.form1.xuanxiangB.value==""){alert("请输入选项B");document.form1.xuanxiangB.focus();return false;}if(document.form1.xuanxiangC.value==""){alert("请输入选项C");document.form1.xuanxiangC.focus();return false;}
}
function gow()
{
	document.location.href="xuanzeti_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
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
  <form name="form1" id="form1" method="post" action="xuanzeti_add_post.jsp">
  添加选择题:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>科目：</td><td><select name='kemu' id='kemu'><%sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){%><option value="<%= RS_result.getString("kemu")%>" ><%=RS_result.getString("kemu")%></option><%}%></select></td></tr><tr><td>试题：</td>
   <td><textarea name="shiti" id="shiti" rows="3" cols="60"></textarea>
   </td></tr><tr><td>难易程度：</td><td><select name='nanyichengdu' id='nanyichengdu'>
     <option value="易">易</option>
     <option value="中">中</option>
     <option value="难">难</option>
   </select>     &nbsp;*</td>
   </tr><tr><td>选项A：</td><td><input name='xuanxiangA' type='text' id='xuanxiangA' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>选项B：</td><td><input name='xuanxiangB' type='text' id='xuanxiangB' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>选项C：</td><td><input name='xuanxiangC' type='text' id='xuanxiangC' value='' size='50' style='border:solid 1px #000000; color:#666666' />&nbsp;*</td></tr><tr><td>选项D：</td><td><input name='xuanxiangD' type='text' id='xuanxiangD' value='' size='50' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>答案：</td><td><select name='daan' id='daan'>
     <option value="A">A</option>
     <option value="B">B</option>
     <option value="C">C</option>
     <option value="D">D</option>
   </select></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return check();" style='border:solid 1px #000000; color:#666666'/>
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

