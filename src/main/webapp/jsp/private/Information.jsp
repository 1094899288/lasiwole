<%@page import="javafx.beans.property.ReadOnlyBooleanProperty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	 isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/jsp/header.jsp"%>
<script type="text/javascript" src="/secondproject/common/layui/layui.js"></script>

</head>
<body>
<fieldset class="layui-elem-field layui-field-title">
  <legend>修改</legend>
  <div class="layui-field-box">
    <form class="layui-form" method='post'>
		<div>
			<label class="layui-label">账号</label> <input type='text'
				name='username' value='${username }' disabled="disabled">
		</div>
		<br>
		<br>
		<div>
			<label class="layui-label">昵称：</label> <input type='text'
				name='usercode'
			>
		</div>
			<br>
		<br>
		<div>
			<label class="layui-label">请输入您想修改的密码：</label> <input type='password'
				name='password'
				>
		</div>
		
			<br>
		<br>
		<div class="layui-form-item">
			<div class="layui-input-inline">
				<input type="button" class="layui-btn" lay-submit
					lay-filter="change" value="修改"> <input type="reset"
					class="layui-btn layui-btn-primary" value="重置">
			</div>
		</div>
		<input type='hidden' name='action' value='information'>


	</form>
  </div>
</fieldset>
	
	<script type="text/javascript">
		form.on('submit(change)', function(data) {//form.on 是监听 layui-submit 中lay-filter的值为reg的所有输入的属性
			console.log(data)
			$.ajax({
				url : con.app + '/admincontroller/change.do',
				data : data.field,//ayui-submit 中lay-filter的值为reg的所有输入的属性的值
				dataType : 'text',//dataType是下面function中的data的类型
				type : 'POST',
				success : function(data) {//data是SerVlet的response。getwriter().print(data)中的data的值
					console.log(data)
					if (data ==1) {
						layer.msg("修改成功",{icon:6, time: 800}, function() {
							
						
						});

					}
					if (data ==0) {
						layer.msg("前后密码请保持一致且输入框不能为空");
					}
				

				}
			})

		})
	</script>
</body>
</html>