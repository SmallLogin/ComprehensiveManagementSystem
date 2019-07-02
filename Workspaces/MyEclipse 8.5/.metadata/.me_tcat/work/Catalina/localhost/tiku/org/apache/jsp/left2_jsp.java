package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class left2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=utf-8");
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
      out.write("    <title>试题题库管理和试卷生成系统</title>\r\n");
      out.write("<SCRIPT language=JavaScript src=\"js/crossbrowser.js\" type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT language=JavaScript src=\"js/outlook.js\" type=text/javascript></SCRIPT>\r\n");
      out.write("\r\n");
      out.write("<SCRIPT>\r\n");
      out.write("  //create OutlookBar\r\n");
      out.write("  var o = new createOutlookBar('Bar',0,0,screenSize.width,screenSize.height,'#f7f7f7','blue');\r\n");
      out.write("  var p;\r\n");
      out.write("   p = new createPanel(\"f\", \"<font color='0B0588'><strong>个人资料管理</strong></font>\");\r\n");
      out.write("      p.addButton('images/main/top/menu/logo_01.gif','个人资料管理','javascript:top.fs_main.location=\"xueshengxinxi_updt2.jsp\";;');\r\n");
      out.write("    o.addPanel(p);\r\n");
      out.write("   //p = new createPanel(\"a\", \"<font color='0B0588'><strong>在线测试</strong></font>\");\r\n");
      out.write("      //p.addButton('images/main/top/menu/logo_01.gif','在线测试','javascript:top.fs_main.location=\"shijuanshengcheng_list3.jsp\";;');\r\n");
      out.write("  // o.addPanel(p);\r\n");
      out.write("    p = new createPanel(\"a\", \"<font color='0B0588'><strong>成绩查看</strong></font>\");\r\n");
      out.write("      p.addButton('images/main/top/menu/logo_01.gif','成绩查看','javascript:top.fs_main.location=\"cj_list2.jsp\";;');\r\n");
      out.write("   o.addPanel(p);\r\n");
      out.write("//   p = new createPanel(\"b\", \"<font color='0B0588'><strong>报表统计</strong></font>\");\r\n");
      out.write("//      p.addButton('images/main/top/menu/logo_05.gif','资金报表','javascript:top.fs_main.location=\"Vcd_Report_M.jsp\";;');\r\n");
      out.write("//      p.addButton('images/main/top/menu/logo_06.gif','分类报表','javascript:top.fs_main.location=\"Vcd_Report_R.jsp\";;');\r\n");
      out.write("//   o.addPanel(p);\r\n");
      out.write("//   \r\n");
      out.write("//    p = new createPanel(\"b\", \"<font color='0B0588'><strong>系统管理</strong></font>\");\r\n");
      out.write("//      p.addButton('images/main/top/menu/logo_13.gif','数据备份','javascript:top.fs_main.location=\"databack.jsp\";;');\r\n");
      out.write("//      p.addButton('images/main/top/menu/logo_14.gif','留言管理','javascript:top.fs_main.location=\"liuyanban_list.jsp\";;');\r\n");
      out.write("//\t  p.addButton('images/main/top/menu/logo_15.gif','友情连接添加','javascript:top.fs_main.location=\"youqinglianjie_add.jsp\";;');\r\n");
      out.write("//\t  p.addButton('images/main/top/menu/logo_16.gif','友情连接查询','javascript:top.fs_main.location=\"youqinglianjie_list.jsp\";;');\r\n");
      out.write("//\t  p.addButton('images/main/top/menu/logo_17.gif','系统公告设置','javascript:top.fs_main.location=\"dx.jsp?lb=系统公告\";;');\r\n");
      out.write("//\t  p.addButton('images/main/top/menu/logo_18.gif','系统简介设置','javascript:top.fs_main.location=\"dx.jsp?lb=系统简介\";;');\r\n");
      out.write("//\t  \r\n");
      out.write("//   o.addPanel(p);\r\n");
      out.write("\r\n");
      out.write(" o.draw();         //draw the OutlookBar\r\n");
      out.write("\r\n");
      out.write(" // top.fs_main.setyou.cols=\"150,10,*,10,0\";\r\n");
      out.write("\r\n");
      out.write("//-----------------------------------------------------------------------------\r\n");
      out.write("//functions to manage window resize\r\n");
      out.write("//-----------------------------------------------------------------------------\r\n");
      out.write("//resize OP5 (test screenSize every 100ms)\r\n");
      out.write("function resize_op5() {\r\n");
      out.write("  o.showPanel(0);\r\n");
      out.write("  if (bt.op5) {\r\n");
      out.write("    o.showPanel(o.aktPanel);\r\n");
      out.write("    var s = new createPageSize();\r\n");
      out.write("     if (s.height>200){\r\n");
      out.write("       o.resize(0,0,s.width,s.height);\r\n");
      out.write("     }\r\n");
      out.write("\r\n");
      out.write("    if ((screenSize.width!=s.width) || (screenSize.height!=s.height)) {\r\n");
      out.write("      screenSize=new createPageSize();\r\n");
      out.write("      //need setTimeout or resize on window-maximize will not work correct!\r\n");
      out.write("      //ben�ige das setTimeout oder das Maximieren funktioniert nicht richtig\r\n");
      out.write("      setTimeout(\"o.resize(0,0,screenSize.width,screenSize.height)\",100);\r\n");
      out.write("    }\r\n");
      out.write("    setTimeout(\"resize_op5()\",100);\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("//resize IE & NS (onResize event!)\r\n");
      out.write("function myOnResize() {\r\n");
      out.write("  if (bt.ie4 || bt.ie5 || bt.ns5) {\r\n");
      out.write("    var s=new createPageSize();\r\n");
      out.write("     if (s.height>200){\r\n");
      out.write("\t    o.resize(0,0,s.width,s.height);\r\n");
      out.write("\t}\r\n");
      out.write("  }\r\n");
      out.write("  else\r\n");
      out.write("    if (bt.ns4) location.reload();\r\n");
      out.write("}\r\n");
      out.write("function Test()\r\n");
      out.write("{\r\n");
      out.write("   alert(top.bottomFrame.cols);\r\n");
      out.write("  if(top.bottomFrame.cols=\"150,10,*\"){\r\n");
      out.write("     top.bottomFrame.cols=\"0,10,*\";\r\n");
      out.write("  }\r\n");
      out.write("}\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("<SCRIPT language=javascript>\r\n");
      out.write("//显示/隐藏左边帧( 默认情况下为显示左边帧 2003.4 )\r\n");
      out.write("var currentChoice = true;\r\n");
      out.write("\r\n");
      out.write("</SCRIPT>\r\n");
      out.write("<META content=\"MSHTML 6.00.3790.2541\" name=GENERATOR></HEAD>\r\n");
      out.write("<BODY onmousewheel=Onwheel() onresize=myOnResize(); onload=resize_op5();></BODY></HTML>\r\n");
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
