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
  <legend>删除</legend>
  <div class="layui-field-box">
 
 	<form class="layui-form" method='post'>
  <div class="layui-form-item">
    <label class="layui-form-label">账号</label>
    <div class="layui-input-block">
    <div class="layui-input-inline">
      <input type="text" name="username"    value='<%= request.getParameter("username2") %>' readonly="readonly" class="layui-input">
    </div>
    </div>
  </div>
		<div class="layui-form-item">
			<div class="layui-input-inline">
				<input type="button" class="layui-btn" lay-submit
					lay-filter="delete" value="删除">
			</div>
		</div>
		<input type='hidden' name='action' value='information'>


	</form>
  </div>
</fieldset>

	<script type="text/javascript">
		
		form.on('submit(delete)', function(data) {//form.on 是监听 layui-submit 中lay-filter的值为reg的所有输入的属性
			console.log(data)
			$.ajax({
				url : con.app + '/admincontroller/delete.do',
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