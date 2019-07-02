package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class yhzhgl_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;


if (request.getSession().getAttribute("cx").equals("管理员"))
{
	
}
else
{
	out.print("<script>alert('对不起,您没有这个权限!!');history.back();</script>");
}
 
      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      db.db connDbBean = null;
      synchronized (_jspx_page_context) {
        connDbBean = (db.db) _jspx_page_context.getAttribute("connDbBean", PageContext.PAGE_SCOPE);
        if (connDbBean == null){
          connDbBean = new db.db();
          _jspx_page_context.setAttribute("connDbBean", connDbBean, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>修改密码</title>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function check()\r\n");
      out.write("{\r\n");
      out.write("\tif(document.form1.username.value==\"\")\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"请输入用户名\");\r\n");
      out.write("\t\tdocument.form1.username.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(document.form1.pwd1.value==\"\")\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"请输入密码\");\r\n");
      out.write("\t\tdocument.form1.pwd1.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(document.form1.pwd2.value==\"\")\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"请输入确认密码\");\r\n");
      out.write("\t\tdocument.form1.pwd2.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("\tif(document.form1.pwd2.value!=document.form1.pwd1.value)\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert(\"两次密码不一致,请确认\");\r\n");
      out.write("\t\tdocument.form1.pwd1.value=\"\";\r\n");
      out.write("\t\tdocument.form1.pwd2.value=\"\";\r\n");
      out.write("\t\tdocument.form1.pwd1.focus();\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("  <body >\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"yhzhgl_post.jsp\">\r\n");
      out.write("   <table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#00FFFF\" style=\"border-collapse:collapse\">    <tr>\r\n");
      out.write("      <td>用户名：</td>\r\n");
      out.write("      <td><input name=\"username\" type=\"text\" id=\"username\" />\r\n");
      out.write("      *</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>密码：</td>\r\n");
      out.write("      <td><input name=\"pwd1\" type=\"password\" id=\"pwd1\" />\r\n");
      out.write("      *</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>确认密码：</td>\r\n");
      out.write("      <td><input name=\"pwd2\" type=\"password\" id=\"pwd2\" />\r\n");
      out.write("      *</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("      <td><input type=\"submit\" name=\"Submit\" value=\"提交\" onClick=\"return check();\" />\r\n");
      out.write("      <input type=\"reset\" name=\"Submit2\" value=\"重置\" /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("<p>已有管理员列表：</p>\r\n");
      out.write("<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">序号</td>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">用户名</td>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">密码</td>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">权限</td>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">添加时间</td>\r\n");
      out.write("    <td bgcolor=\"A4B6D7\">操作</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");

 ResultSet RS_result=connDbBean.executeQuery("select * from allusers order by id desc" );
 String id="";
 String username="";
 String pwd="";
 String cx="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
 username=RS_result.getString("username");
 pwd=RS_result.getString("pwd");
 cx=RS_result.getString("cx");
 addtime=RS_result.getString("addtime");
 
 

      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td>");
      out.print(i );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(username );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(pwd );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(cx );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(addtime );
      out.write("</td>\r\n");
      out.write("    <td><a href=\"del.jsp?id=");
      out.print(id );
      out.write("&tablename=allusers\" onClick=\"return confirm('真的要删除？')\">删除</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \t");

  }
   
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
