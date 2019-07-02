package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class xueshengxinxi_005fupdt_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>学生信息</title><script language=\"javascript\" src=\"js/Calendar.js\"></script>\r\n");
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
      out.write("\tif(document.form1.xuehao.value==\"\"){alert(\"请输入学号\");document.form1.xuehao.focus();return false;}if(document.form1.xingming.value==\"\"){alert(\"请输入姓名\");document.form1.xingming.focus();return false;}if(document.form1.mima.value==\"\"){alert(\"请输入密码\");document.form1.mima.focus();return false;}if(document.form1.banji.value==\"\"){alert(\"请输入班级\");document.form1.banji.focus();return false;}if(document.form1.zhuanye.value==\"\"){alert(\"请输入专业\");document.form1.zhuanye.focus();return false;}if(document.form1.dianhua.value==\"\"){alert(\"请输入电话\");document.form1.dianhua.focus();return false;}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("  <body >\r\n");
      out.write("  ");

  String id=request.getParameter("id");
   
      out.write("\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"xueshengxinxi_updt_post.jsp?id=");
      out.print(id );
      out.write("\">\r\n");
      out.write("  修改学生信息:\r\n");
      out.write("  <br><br>\r\n");
      out.write("  ");

  String sql="select * from xueshengxinxi where id="+id;
  String xuehao="";String xingming="";String mima="";String banji="";String zhuanye="";String zhaopian="";String shenfenzheng="";String jiguan="";String dizhi="";String dianhua="";String xingbie="";String beizhu="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");banji=RS_result.getString("banji");zhuanye=RS_result.getString("zhuanye");zhaopian=RS_result.getString("zhaopian");shenfenzheng=RS_result.getString("shenfenzheng");jiguan=RS_result.getString("jiguan");dizhi=RS_result.getString("dizhi");dianhua=RS_result.getString("dianhua");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
  }
   
      out.write("\r\n");
      out.write("   <table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("     <tr><td>学号：</td><td><input name='xuehao' type='text' id='xuehao' value='");
      out.print( xuehao);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='");
      out.print( xingming);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='");
      out.print( mima);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>班级：</td><td><input name='banji' type='text' id='banji' value='");
      out.print( banji);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>专业：</td><td><input name='zhuanye' type='text' id='zhuanye' value='");
      out.print( zhuanye);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='");
      out.print( zhaopian);
      out.write("' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick=\"up('zhaopian')\" style='border:solid 1px #000000; color:#666666'/></td></tr><tr><td>身份证：</td><td><input name='shenfenzheng' type='text' id='shenfenzheng' size='50' value='");
      out.print(shenfenzheng);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>籍贯：</td><td><input name='jiguan' type='text' id='jiguan' value='");
      out.print( jiguan);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='");
      out.print(dizhi);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='");
      out.print( dianhua);
      out.write("' style='border:solid 1px #000000; color:#666666' /></td></tr><tr><td>性别：</td><td><select name='xingbie' id='xingbie'><option value=\"男\">男</option><option value=\"女\">女</option></select></td></tr><script language=\"javascript\">document.form1.xingbie.value='");
      out.print(xingbie);
      out.write("';</script><tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'>");
      out.print(beizhu);
      out.write("</textarea></td></tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("      <td><input type=\"submit\" name=\"Submit\" value=\"提交\" onclick=\"return check();\" style='border:solid 1px #000000; color:#666666' />\r\n");
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
