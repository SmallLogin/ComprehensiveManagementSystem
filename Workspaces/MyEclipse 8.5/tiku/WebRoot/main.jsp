<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>计算机语言类题库管理系统</title>
    
  </head>
  
<FRAMESET border=1 
frameSpacing=0 rows=60,* TOPMARGIN="0" LEFTMARGIN="0" MARGINHEIGHT="0" 
MARGINWIDTH="0"><FRAME border=0 name=fraToolbar marginWidth=0 marginHeight=0 
src="top.jsp" frameBorder=no noResize scrolling=no 
TOPMARGIN="0" LEFTMARGIN="0" target="contents"><FRAMESET border=1 name=fstMain 
frameSpacing=6 frameBorder=1 cols=150,* TOPMARGIN="0" LEFTMARGIN="0" 
MARGINHEIGHT="0" MARGINWIDTH="0"><FRAME border=1 name=left marginWidth=0 
borderColor=#b9d8ec marginHeight=0 src="mygo.jsp" 
frameBorder=0 scrolling=no TOPMARGIN="0" LEFTMARGIN="0" target="main"><FRAME 
border=0 name=fs_main borderColor=#6699cc src="sy.jsp" 
frameBorder=no></FRAMESET></FRAMESET><noframes></noframes></HTML>
