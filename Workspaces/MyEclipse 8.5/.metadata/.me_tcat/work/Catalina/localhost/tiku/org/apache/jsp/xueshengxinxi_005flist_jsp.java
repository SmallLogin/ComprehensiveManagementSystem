package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class xueshengxinxi_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>学生信息</title><LINK href=\"css.css\" type=text/css rel=stylesheet>\r\n");
      out.write("    <script language=\"javascript\" src=\"js/Calendar.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");

String sql;
ResultSet RS_result;

      out.write("\r\n");
      out.write("  <body >\r\n");
      out.write("  <p>已有学生信息列表：</p>\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("   搜索:&nbsp;&nbsp;学号：<input name=\"xuehao\" type=\"text\" id=\"xuehao\" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;姓名：<input name=\"xingming\" type=\"text\" id=\"xingming\" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;班级：<input name=\"banji\" type=\"text\" id=\"banji\" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;专业：<input name=\"zhuanye\" type=\"text\" id=\"zhuanye\" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;身份证：<input name=\"shenfenzheng\" type=\"text\" id=\"shenfenzheng\" style='border:solid 1px #000000; color:#666666' size='15' />&nbsp;&nbsp;电话：<input name=\"dianhua\" type=\"text\" id=\"dianhua\" style='border:solid 1px #000000; color:#666666' size='15' />\r\n");
      out.write("     <input type=\"submit\" name=\"Submit\" value=\"查找\" style='border:solid 1px #000000; color:#666666' />\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\" bgcolor=\"CCFFFF\">序号</td>\r\n");
      out.write("    <td bgcolor='#CCFFFF'>学号</td><td bgcolor='#CCFFFF'>姓名</td><td bgcolor='#CCFFFF'>密码</td><td bgcolor='#CCFFFF'>班级</td><td bgcolor='#CCFFFF'>专业</td><td bgcolor='#CCFFFF' width='90' align='center'>照片</td><td bgcolor='#CCFFFF'>身份证</td><td bgcolor='#CCFFFF'>籍贯</td><td bgcolor='#CCFFFF'>地址</td><td bgcolor='#CCFFFF'>电话</td><td bgcolor='#CCFFFF' width='40' align='center'>性别</td>\r\n");
      out.write("    <td width=\"138\" align=\"center\" bgcolor=\"CCFFFF\">添加时间</td>\r\n");
      out.write("    \r\n");
      out.write("    <td width=\"60\" align=\"center\" bgcolor=\"CCFFFF\">操作</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");

  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from xueshengxinxi";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if((zgs % page_record)==0)
  {
  zys=zgs/page_record;
  }
  else
  {
  	zys=zgs/page_record+1;
  }
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
if(((curpage-1)*page_record)==0 || curpage==0)
   {
  sql="select  * from xueshengxinxi where 1=1 ";
   }
   else
   {
   String tempsql="select  id from xueshengxinxi order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from xueshengxinxi where id not in ("+tempidstring+")  ";
  }
  
  if(request.getParameter("xuehao")=="" ||request.getParameter("xuehao")==null ){}else{sql=sql+" and xuehao like '%"+new String(request.getParameter("xuehao").getBytes("8859_1"))+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+new String(request.getParameter("xingming").getBytes("8859_1"))+"%'";}if(request.getParameter("banji")=="" ||request.getParameter("banji")==null ){}else{sql=sql+" and banji like '%"+new String(request.getParameter("banji").getBytes("8859_1"))+"%'";}if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null ){}else{sql=sql+" and zhuanye like '%"+new String(request.getParameter("zhuanye").getBytes("8859_1"))+"%'";}if(request.getParameter("shenfenzheng")=="" ||request.getParameter("shenfenzheng")==null ){}else{sql=sql+" and shenfenzheng like '%"+new String(request.getParameter("shenfenzheng").getBytes("8859_1"))+"%'";}if(request.getParameter("dianhua")=="" ||request.getParameter("dianhua")==null ){}else{sql=sql+" and dianhua like '%"+new String(request.getParameter("dianhua").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String xuehao="";String xingming="";String mima="";String banji="";String zhuanye="";String zhaopian="";String shenfenzheng="";String jiguan="";String dizhi="";String dianhua="";String xingbie="";String beizhu="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");mima=RS_result.getString("mima");banji=RS_result.getString("banji");zhuanye=RS_result.getString("zhuanye");zhaopian=RS_result.getString("zhaopian");shenfenzheng=RS_result.getString("shenfenzheng");jiguan=RS_result.getString("jiguan");dizhi=RS_result.getString("dizhi");dianhua=RS_result.getString("dianhua");xingbie=RS_result.getString("xingbie");beizhu=RS_result.getString("beizhu");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi 

      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\">");
      out.print(i );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(xuehao );
      out.write("</td><td>");
      out.print(xingming );
      out.write("</td><td>");
      out.print(mima );
      out.write("</td><td>");
      out.print(banji );
      out.write("</td><td>");
      out.print(zhuanye );
      out.write("</td><td width='90'><a href='");
      out.print(zhaopian );
      out.write("' target='_blank'><img src='");
      out.print(zhaopian );
      out.write("' width=88 height=99 border=0 /></a></td><td>");
      out.print(shenfenzheng );
      out.write("</td><td>");
      out.print(jiguan );
      out.write("</td><td>");
      out.print(dizhi );
      out.write("</td><td>");
      out.print(dianhua );
      out.write("</td><td align='center'>");
      out.print(xingbie );
      out.write("</td>\r\n");
      out.write("    <td width=\"138\" align=\"center\">");
      out.print(addtime );
      out.write("</td>\r\n");
      out.write("    <td width=\"60\" align=\"center\"><a href=\"xueshengxinxi_updt.jsp?id=");
      out.print(id);
      out.write("\">修改</a> <a href=\"xueshengxinxi_detail.jsp?id=");
      out.print(id);
      out.write("\">详细</a>  <a href=\"del.jsp?id=");
      out.print(id );
      out.write("&tablename=xueshengxinxi\" onclick=\"return confirm('真的要删除？')\">删除</a></td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \t");

  }
   
      out.write("\r\n");
      out.write("</table>\r\n");
//yougongzitongji
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("以上数据共");
      out.print(i );
      out.write("条,<a style=\"cursor:hand\" onclick=\"javascript:window.print();\">打印本页</a>\r\n");
      out.write("<p align=\"center\">&nbsp;共");
      out.print(zgs);
      out.write("条记录&nbsp;&nbsp;");
      out.print(page_record );
      out.write("条/页　<a href=\"xueshengxinxi_list.jsp?page=1\">首页</a>　<a href=\"xueshengxinxi_list.jsp?page=");
      out.print( curpage-1);
      out.write("\">上一页</a>　<A href=\"xueshengxinxi_list.jsp?page=");
      out.print( curpage+1);
      out.write("\">下一页</A>　<a href=\"xueshengxinxi_list.jsp?page=");
      out.print(zys );
      out.write("\">尾页</A>　当前第<FONT color=red>");
      out.print(curpage );
      out.write("</FONT>页/共<FONT color=red>");
      out.print(zys );
      out.write("</FONT>页</p>\r\n");
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
