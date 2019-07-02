package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class panduanti_005fupdt_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
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
      out.write("    <title>判断题</title><script language=\"javascript\" src=\"js/Calendar.js\"></script>\r\n");
      out.write("    <LINK href=\"css.css\" type=text/css rel=stylesheet>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/popup.js\"></script>\r\n");
      out.write("\t    <script type=\"text/javascript\">\r\n");
      out.write("\t    function up(tt)\r\n");
      out.write("\t    {\r\n");
      out.write("\t        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});\r\n");
      out.write("            pop.setContent(\"contentUrl\",\"upload.jsp?Result=\"+tt);\r\n");
      out.write("            pop.setContent(\"title\",\"文件上传\");\r\n");
      out.write("            pop.build();\r\n");
      out.write("            pop.show();\r\n");
      out.write("\t    }\r\n");
      out.write("\t</script>\r\n");
      out.write("  </head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function check()\r\n");
      out.write("{\r\n");
      out.write("\tif(document.form1.bianhao.value==\"\"){alert(\"请输入编号\");document.form1.bianhao.focus();return false;}if(document.form1.kemu.value==\"\"){alert(\"请输入科目\");document.form1.kemu.focus();return false;}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("  <body >\r\n");
      out.write("  ");

  String id=request.getParameter("id");
   
      out.write("\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"panduanti_updt_post.jsp?id=");
      out.print(id );
      out.write("\">\r\n");
      out.write("  修改判断题:\r\n");
      out.write("  <br><br>\r\n");
      out.write("  ");

  String sql="select * from panduanti where id="+id;
  String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String daan="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");daan=RS_result.getString("daan");
  }
   
      out.write("\r\n");
      out.write("   <table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("     <tr><td>编号：</td><td><input name='bianhao' type='text' id='bianhao' value='");
      out.print( bianhao);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>科目：</td><td><select name='kemu' id='kemu'>");
sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){
      out.write("<option value=\"");
      out.print( RS_result.getString("kemu"));
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print(RS_result.getString("kemu"));
      out.write("</option>");
}
      out.write("</select></td></tr><script language=\"javascript\">document.form1.kemu.value='");
      out.print(kemu);
      out.write("';</script><tr><td>试题：</td><td>\r\n");
      out.write("     <textarea name=\"shiti\" id=\"shiti\" rows=\"3\" cols=\"60\">");
      out.print(shiti);
      out.write("</textarea>\r\n");
      out.write("     </td></tr><tr><td>难易程度：</td><td><select name='nanyichengdu' id='nanyichengdu'>\r\n");
      out.write("       <option value=\"易\">易</option>\r\n");
      out.write("       <option value=\"中\">中</option>\r\n");
      out.write("       <option value=\"难\">难</option>\r\n");
      out.write("     </select></td></tr><script language=\"javascript\">document.form1.nanyichengdu.value='");
      out.print(nanyichengdu);
      out.write("';</script><tr><td>答案：</td><td><select name='daan' id='daan'>\r\n");
      out.write("       <option value=\"对\">对</option>\r\n");
      out.write("       <option value=\"错\">错</option>\r\n");
      out.write("     </select></td></tr><script language=\"javascript\">document.form1.daan.value='");
      out.print(daan);
      out.write("';</script>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("      <td><input type=\"submit\" name=\"Submit\" value=\"提交\" onClick=\"return check();\" style='border:solid 1px #000000; color:#666666' />\r\n");
      out.write("      <input type=\"reset\" name=\"Submit2\" value=\"重置\" style='border:solid 1px #000000; color:#666666' /></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
