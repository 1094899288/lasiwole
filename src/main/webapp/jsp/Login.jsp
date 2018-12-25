<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<%@ include file="/jsp/header.jsp" %>
</head>
<body>
<fieldset class="layui-elem-field"
                      style="top: 20%;margin:0 auto;padding:20px;width: 400px;">
                      <legend>登录</legend>
                     <div class="layui-field-box">
<form class="layui-form" method="post">

  <div class="layui-form-item">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-inline">
      <input type="text" name="username" required  lay-verify="required" placeholder="请输入用户名"
       autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">密码框</label>
    <div class="layui-input-inline">
      <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" 
      autocomplete="off" class="layui-input">
    </div>
  </div>   
  <div class="layui-form-item">
    <div class="layui-input-inline">
      <input type="button" class="layui-btn" lay-submit lay-filter="login" value="登录">
     </div>
      <input type="button" class="layui-btn"   value ="注册" onclick="goJspReg()">
      
   <input type ="hidden" name="action" value="login">
  </div>
</form>
</div>
</fieldset>
<script type="text/javascript">
 form.on('submit(login)',function(data){//form.on 是监听 layui-submit 中lay-filter的值为reg的所有输入的属性
	 console.log(data)
	 $.ajax({
		 url:con.app+'/admincontroller/login.do',
		 data:data.field,//ayui-submit 中lay-filter的值为reg的所有输入的属性的值
		 dataType:'text',//dataType是下面function中的data的类型
		 type:'POST',
		 success:function(data){//data是SerVlet的response。getwriter().print(data)中的data的值
			 console.log(data)
			 if(data=="1"){
				 console.log(data);
				 layer.msg("登录成功");
				 location.href="/secondproject/jsp/private/HomePage.jsp"
	
			 }
			 if(data=="0"){
				 layer.msg("输入框不能为空");
			 } 
			 if(data=="2"){
				 layer.msg("账号或密码错误");
			 }
			
			 }
		 })
		 
	 
	 })
	 


</script>
</body>
</html>


</body>
</html>