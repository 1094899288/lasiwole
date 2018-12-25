<%@ page language="java" contentType="text/html; charset=UTF-8"
     isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/jsp/header.jsp" %>
<script type="text/javascript" src="/secondproject/common/layui/layui.js"></script>
</head>
 
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">欢迎光临</div>

    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="javascript:">订单管理</a>
      <dl class="layui-nav-child">
   <dd><a href="javascript:openUrl('/secondproject/jsp/private/order.jsp')">订单信息</a></dd>
      <dd><a href="javascript:openUrl('/secondproject/jsp/private/orderproduct.jsp')">订单商品信息</a></dd>
      </dl>
         </li>
      <li class="layui-nav-item"><a href="">商品管理</a>
      <dl class="layui-nav-child">
      <dd><a href="javascript:openUrl('/secondproject/jsp/private/Product.jsp')">商品信息</a></dd>
      <dd><a href="javascript:openUrl('/secondproject/jsp/private/productkind.jsp')">商品分类</a></dd></dl>
      </li>
      <li class="layui-nav-item"><a href="javascript:openUrl('/secondproject/jsp/private/List.jsp')">用户</a>
     
      </li>
      <li class="layui-nav-item">
        <a href="javascript:">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
    
      <li class="layui-nav-item ">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
          ${username}
         </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:openLayer('/Information.jsp',empty)">基本资料</a></dd>
          <dd><a href="javascript:openLayer('/Serciuty.jsp',empty1)">安全设置</a></dd>
        </dl>
       </li>
    
      <li class="layui-nav-item"><a href="javascript:goLogout()">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;" target='container'>所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="">云市场</a></li>
        <li class="layui-nav-item"><a href="">发布商品</a></li>
      </ul>
    </div>
  </div>
  

<div class="layui-body">
  <iframe name="frame" style="width: 100%; height: 100%" src=""></iframe>
</div>
<!-- <div class="layui-body"> -->
<!--   <iframe name="frame1" style="width: 100%; height: 100%" src=""></iframe> -->
<!-- </div> -->
<!-- <div class="layui-body"> -->
<!--   <iframe name="frame2" style="width: 100%; height: 100%" src=""></iframe> -->
<!-- </div> -->
  
</div>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
});
function empty1(){
	window.location.reload();
	
}

// function openUrl(url) {
// 	window.open(url, "frame");
// }
// function openUrl(url) {
// 	window.open(url, "frame1");
// }
function openUrl(url) {
	window.open(url, "frame");
}

function empty(){
<%-- 	if(<%=request.getSession().getAttribute("data")%>==1){ --%>
<%-- 		console.log(<%=request.getSession().getAttribute("data")%>); --%>
window.location.reload();
}

</script>
</body>
</html>