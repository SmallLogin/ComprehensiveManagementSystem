package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.text.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class shijuan_005fdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');

	
	if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")  //判断用户是否已经登陆，如果没有，则给出登陆框，如果有则显示当前用户信息
	{
			out.print("<script>alert('对不起,请您先登陆!');window.history.go(-1);</script>");
	}
	 
      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write(" \r\n");
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
      out.write("    <title>在线考试系统</title><LINK href=\"css.css\" type=text/css rel=stylesheet>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write(".STYLE2 {color: #FFFFFF}\r\n");
      out.write(".STYLE4 {color: #FFFFFF; font-weight: bold; }\r\n");
      out.write(".STYLE6 {color: #198A95; font-weight: bold; }\r\n");
      out.write(".STYLE5 {\tcolor: #72AC27;\r\n");
      out.write("\tfont-size: 26pt;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<link href=\"qtimages/StyleSheet.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("  <body bgcolor=\"#FFFFFF\" leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\">\r\n");
      out.write("  <table id=\"__01\" width=\"100%\" height=\"193\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("    \r\n");
      out.write("    <tr>\r\n");
      out.write("      <td height=\"162\" align=\"center\">\r\n");
      out.write("\t  ");

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
   
      out.write("\r\n");
      out.write("            <p>试卷编号：");
      out.print(bianhao);
      out.write(" 时间：0.5分钟，现在开始计时！剩余<SPAN id=tiao></SPAN>秒 <SCRIPT language=javascript>\r\n");
      out.write("<!--\r\n");
      out.write("function clock(){i=i-1\r\n");
      out.write("document.getElementById('tiao').innerHTML=i;\r\n");
      out.write("if(i>0) {\r\n");
      out.write("setTimeout(\"clock();\",1000);\r\n");
      out.write("}\r\n");
      out.write("else {\r\n");
      out.write("\r\n");
      out.write("alert(\"考试时间到，系统自动交卷！\");\r\n");
      out.write("document.form1.submit();\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("var i=30\r\n");
      out.write("clock()\r\n");
      out.write("//-->\r\n");
      out.write("</SCRIPT> </p>\r\n");
      out.write("            <form name=\"form1\" method=\"post\" action=\"jiaojuan.jsp?bianhao=");
      out.print(bianhao);
      out.write("\">\r\n");
      out.write("              <table width=\"98%\" height=\"103\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" bordercolor=\"#F8C878\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=\"33\" colspan=\"2\">选择题(每题2分)</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											
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
 
											
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"9%\" height=\"33\">试题");
      out.print(i);
      out.write("：</td>\r\n");
      out.write("                  <td>题目：");
      out.print(timu);
      out.write("\r\n");
      out.write("                      <input name=\"xztshitida");
      out.print(i);
      out.write("\" type=\"hidden\" id=\"xztshitida");
      out.print(i);
      out.write("\" value=\"");
      out.print(daan);
      out.write("\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td rowspan=\"4\">选项</td>\r\n");
      out.write("                  <td width=\"91%\"><input type=\"radio\" name=\"xztxxa");
      out.print(i);
      out.write("\" value=\"A\">\r\n");
      out.write("                    选项A：");
      out.print(xuanxiangA);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td><input type=\"radio\" name=\"xztxxa");
      out.print(i);
      out.write("\" value=\"B\">\r\n");
      out.write("选项B：");
      out.print(xuanxiangB);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td><input type=\"radio\" name=\"xztxxa");
      out.print(i);
      out.write("\" value=\"C\">\r\n");
      out.write("选项C：");
      out.print(xuanxiangC);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td><input type=\"radio\" name=\"xztxxa");
      out.print(i);
      out.write("\" value=\"D\">\r\n");
      out.write("选项D：");
      out.print(xuanxiangD);
      out.write("</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											  }
											  
      out.write("\r\n");
      out.write("              </table>\r\n");
      out.write("              <table width=\"98%\" height=\"103\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" bordercolor=\"#F8C878\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=\"33\" colspan=\"3\">填空题(每题3分)</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											
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
 
											
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"9%\" height=\"33\">试题");
      out.print(i);
      out.write("：</td>\r\n");
      out.write("                  <td colspan=\"2\">题目：");
      out.print(timu);
      out.write("\r\n");
      out.write("                      <input name=\"tdtshitida");
      out.print(i);
      out.write("\" type=\"hidden\" id=\"tdtshitida");
      out.print(i);
      out.write("\" value=\"");
      out.print(daan);
      out.write("\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>答案：</td>\r\n");
      out.write("                  <td colspan=\"2\"><input name=\"tktdaan");
      out.print(i);
      out.write("\" type=\"text\" id=\"tktdaan");
      out.print(i);
      out.write("\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											  }
											  
      out.write("\r\n");
      out.write("              </table>\r\n");
      out.write("              <table width=\"98%\" height=\"103\" border=\"1\" cellpadding=\"1\" cellspacing=\"0\" bordercolor=\"#F8C878\">\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td height=\"33\" colspan=\"3\">判断题(每题10分)</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											
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
 
											
      out.write("\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td width=\"9%\" height=\"33\">试题");
      out.print(i);
      out.write("：</td>\r\n");
      out.write("                  <td colspan=\"2\">题目：");
      out.print(timu);
      out.write("\r\n");
      out.write("                      <input name=\"pdtshitida");
      out.print(i);
      out.write("\" type=\"hidden\" id=\"pdtshitida");
      out.print(i);
      out.write("\" value=\"");
      out.print(daan);
      out.write("\"></td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>答案：</td>\r\n");
      out.write("                  <td colspan=\"2\"><input type=\"radio\" name=\"pdtxxa");
      out.print(i);
      out.write("\" value=\"对\"> \r\n");
      out.write("                  对\r\n");
      out.write("                    <input type=\"radio\" name=\"pdtxxa");
      out.print(i);
      out.write("\" value=\"错\">\r\n");
      out.write("                    错</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                ");

											  }
											  
      out.write("\r\n");
      out.write("              </table>\r\n");
      out.write("            \r\n");
      out.write("              <p>\r\n");
      out.write("                <input type=\"submit\" name=\"Submit\" value=\"交卷\">\r\n");
      out.write("              </p>\r\n");
      out.write("        </form>\r\n");
      out.write("        <p>&nbsp;</p>\r\n");
      out.write("      </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
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
