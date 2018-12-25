<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
 <%@ include file="/jsp/header.jsp" %>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="#">首页</a>
      </p>
      <div class="sn-quick-menu">
 
        <div class="sp-cart"><a href="/secondproject/jsp/store/storeprivate/shopcart.jsp">购物车</a><span></span></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">

        </h1>
        <div class="mallSearch">
          <form action="" class="layui-form" novalidate>
            <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
            <button class="layui-btn" lay-submit lay-filter="formDemo">
                <i class="layui-icon layui-icon-search"></i>
            </button>
            <input type="hidden" name="" value="">
          </form>
        </div>
      </div>
    </div>
  </div>


  <div class="content content-nav-base  login-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="/secondproject/jsp/store/storeprivate/commodity.jsp" class="active">所有商品</a>
            <a href="/secondproject/jsp/store/storeprivate/buytoday.jsp">今日团购</a>
            <a href="/secondproject/jsp/store/storeprivate/information.jsp">母婴资讯</a>
            <a href="/secondproject/jsp/store/storeprivate/about.jsp">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="login-bg">
      <div class="login-cont w1200">
        <div class="form-box">
          <form class="layui-form" action="">
            <legend>用户登录</legend>
            <div class="layui-form-item">
            
                <div class="layui-input-inline">
               
                  <input type="text" name="phone" id="username"  placeholder="请输入账号" autocomplete="off" class="layui-input"style="
    position: absolute;
    bottom: 10px;
                  ">
                </div>
                

                <div class="layui-input-inline">
                  <input id="pnum" type="password" name="password" lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                 
                </div>

            </div>
            <div class="layui-form-item login-btn">
              <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="demo1" onclick="return false">注册</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <div class="footer">
    <div class="ng-promise-box">
      <div class="ng-promise w1200">
        <p class="text">
          <a class="icon1" href="javascript:;">7天无理由退换货</a>
          <a class="icon2" href="javascript:;">满99元全场免邮</a>
          <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
        </p>
      </div>
    </div>
    <div class="mod_help w1200">                                     
      <p>
        <a href="javascript:;">关于我们</a>
        <span>|</span>
        <a href="javascript:;">帮助中心</a>
        <span>|</span>
        <a href="javascript:;">售后服务</a>
        <span>|</span>
        <a href="javascript:;">母婴资讯</a>
        <span>|</span>
        <a href="javascript:;">关于货源</a>
      </p>
      <p class="coty">母婴商城版权所有 &copy; 2012-2020</p>
    </div>
  </div>
  <script type="text/javascript">
  form.on('submit(demo1)',function(data){
	  $.ajax({
		  url:con.app+'/admincontroller/register.do',
			 data:data.field,//ayui-submit 中lay-filter的值为reg的所有输入的属性的值
			 dataType:'text',//dataType是下面function中的data的类型
			 type:'POST',
			 success:function(data){//data是SerVlet的response。getwriter().print(data)中的data的值
				 console.log(data)
				 if(data==1){
					 layer.msg("注册成功");
					 location.href="/secondproject/jsp/store/storelogin.jsp"
				 }
				 if(data==0){
					 layer.msg("输入框不能为空");
				 } 
				 if(data==2){
					 layer.msg("账号已存在请重新输入");
				 }
				
				 }
	  })
	  
  })
  
  </script>

</body>
</html>