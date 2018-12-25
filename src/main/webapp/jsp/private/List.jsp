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
<form class="layui-form" method="post">
	<div class="layui-form-item">
		<div class="layui-input-inline">
			<input type="text" name="search" placeholder="查询条件"
				class="layui-input"> 
				<input type='button' class='layui-btn'
				lay-submit lay-filter='search' id='chaxun' value='查询'>
		</div>

		<table class="layui-table" lay-filter="EditListTable">
			<thead>
				<tr>
					<td>序号</td>
					<td name='1' width='25%'>账号</td>
					<td name='2' width='25%'>密码</td>
					<td name='3' width='25%'>昵称</td>
					<td name='4' width='25%'>操作</td>
				</tr>
			</thead>
			<tbody id ="tbody"></tbody>
		</table>
		<table class="layui-hide" id="test">
		</table>
		<div id="demo8"></div>



	</div>




	<input type='hidden' name='pageIndex' value='1'>
	<input type='hidden' name='pageLimit' value='10'>

	</form>





	<script type="text/javascript">

 $(function(){
	 $('#chaxun').click()
 })
 form.on('submit(search)',function(data){
	 $.ajax({
		 url:con.app+'/admincontroller/list.do',
		 data:data.field,
		 dataType:'json',
		 type:'Post',
		 success:function(data){
			 var pageindex=$("input[name='pageIndex']").val();
			 var pagelimit=$("input[name='pageLimit']").val();			 
			 laypage.render({
				    elem: 'demo8'
				    ,count: data.count
				    ,layout: ['limit', 'prev', 'page', 'next']
					,curr:pageindex
					,limit:pagelimit
					,
					jump:function(obj,first){
						$("input[name='pageIndex']").val(obj.curr);
						$("input[name='pageLimit']").val(obj.limit);
						
						if(!first){
							$('#chaxun').click();
						}
					}
				  })
				   var html="";
			 $.each(data.list,function(i,dom){
				 console.log(dom.password)
				 html += "<tr><td>"+(i+1+(pageindex-1)*pagelimit)+"</td>"
					html +="<td>"+dom.username+"</td>"
					html +="<td>"+dom.password+"</td>"
					html +="<td>"+dom.usercode+"</td>"
					html +="<td><a href='javascript:update(\""+dom.username+"\")'>修改</a>&nbsp&nbsp<a href='javascript:delete1(\""+dom.username+"\")'>删除</a></tr>"
					
  
				
				 
			 })
			 $('#tbody').html(html);
		 }
	 })
	 
 })
function update(abb){
<%-- 	<% request.getSession().setAttribute("username1",abb);%> --%>
	openLayer("/Informationuser.jsp?username1="+abb,empty)
	 
	 
 }
 function empty(){
	 window.location.reload();
 }
 function delete1(add){
	 openLayer("/Information1.jsp?username2="+add,empty)
 }
 
</script>

</body>
</html>