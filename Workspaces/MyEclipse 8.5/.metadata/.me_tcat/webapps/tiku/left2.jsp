
<%@ page language="java"  pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>试题题库管理和试卷生成系统</title>
<SCRIPT language=JavaScript src="js/crossbrowser.js" type=text/javascript></SCRIPT>

<SCRIPT language=JavaScript src="js/outlook.js" type=text/javascript></SCRIPT>

<SCRIPT>
  //create OutlookBar
  var o = new createOutlookBar('Bar',0,0,screenSize.width,screenSize.height,'#f7f7f7','blue');
  var p;
   p = new createPanel("f", "<font color='0B0588'><strong>个人资料管理</strong></font>");
      p.addButton('images/main/top/menu/logo_01.gif','个人资料管理','javascript:top.fs_main.location="xueshengxinxi_updt2.jsp";;');
    o.addPanel(p);
   //p = new createPanel("a", "<font color='0B0588'><strong>在线测试</strong></font>");
      //p.addButton('images/main/top/menu/logo_01.gif','在线测试','javascript:top.fs_main.location="shijuanshengcheng_list3.jsp";;');
  // o.addPanel(p);
    p = new createPanel("a", "<font color='0B0588'><strong>成绩查看</strong></font>");
      p.addButton('images/main/top/menu/logo_01.gif','成绩查看','javascript:top.fs_main.location="cj_list2.jsp";;');
   o.addPanel(p);
//   p = new createPanel("b", "<font color='0B0588'><strong>报表统计</strong></font>");
//      p.addButton('images/main/top/menu/logo_05.gif','资金报表','javascript:top.fs_main.location="Vcd_Report_M.jsp";;');
//      p.addButton('images/main/top/menu/logo_06.gif','分类报表','javascript:top.fs_main.location="Vcd_Report_R.jsp";;');
//   o.addPanel(p);
//   
//    p = new createPanel("b", "<font color='0B0588'><strong>系统管理</strong></font>");
//      p.addButton('images/main/top/menu/logo_13.gif','数据备份','javascript:top.fs_main.location="databack.jsp";;');
//      p.addButton('images/main/top/menu/logo_14.gif','留言管理','javascript:top.fs_main.location="liuyanban_list.jsp";;');
//	  p.addButton('images/main/top/menu/logo_15.gif','友情连接添加','javascript:top.fs_main.location="youqinglianjie_add.jsp";;');
//	  p.addButton('images/main/top/menu/logo_16.gif','友情连接查询','javascript:top.fs_main.location="youqinglianjie_list.jsp";;');
//	  p.addButton('images/main/top/menu/logo_17.gif','系统公告设置','javascript:top.fs_main.location="dx.jsp?lb=系统公告";;');
//	  p.addButton('images/main/top/menu/logo_18.gif','系统简介设置','javascript:top.fs_main.location="dx.jsp?lb=系统简介";;');
//	  
//   o.addPanel(p);

 o.draw();         //draw the OutlookBar

 // top.fs_main.setyou.cols="150,10,*,10,0";

//-----------------------------------------------------------------------------
//functions to manage window resize
//-----------------------------------------------------------------------------
//resize OP5 (test screenSize every 100ms)
function resize_op5() {
  o.showPanel(0);
  if (bt.op5) {
    o.showPanel(o.aktPanel);
    var s = new createPageSize();
     if (s.height>200){
       o.resize(0,0,s.width,s.height);
     }

    if ((screenSize.width!=s.width) || (screenSize.height!=s.height)) {
      screenSize=new createPageSize();
      //need setTimeout or resize on window-maximize will not work correct!
      //ben�ige das setTimeout oder das Maximieren funktioniert nicht richtig
      setTimeout("o.resize(0,0,screenSize.width,screenSize.height)",100);
    }
    setTimeout("resize_op5()",100);
  }
}

//resize IE & NS (onResize event!)
function myOnResize() {
  if (bt.ie4 || bt.ie5 || bt.ns5) {
    var s=new createPageSize();
     if (s.height>200){
	    o.resize(0,0,s.width,s.height);
	}
  }
  else
    if (bt.ns4) location.reload();
}
function Test()
{
   alert(top.bottomFrame.cols);
  if(top.bottomFrame.cols="150,10,*"){
     top.bottomFrame.cols="0,10,*";
  }
}
</SCRIPT>
<SCRIPT language=javascript>
//显示/隐藏左边帧( 默认情况下为显示左边帧 2003.4 )
var currentChoice = true;

</SCRIPT>
<META content="MSHTML 6.00.3790.2541" name=GENERATOR></HEAD>
<BODY onmousewheel=Onwheel() onresize=myOnResize(); onload=resize_op5();></BODY></HTML>
