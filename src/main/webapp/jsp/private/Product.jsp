<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/jsp/header.jsp"%>
<!-- <script type="text/javascript" src="/secondproject/common/layui/layui.js"></script> -->

</head>
<body>
<form class="layui-form" method="post">
	<div class="layui-form-item">
		<div class="layui-input-inline">
			
				<input type='button' class='layui-btn'
				lay-submit lay-filter='search' id='chaxun' value='查询'>
		</div>
		<div class="layui-input-inline">
			<input type="text" name="search" placeholder="查询条件"
				class="layui-input"> 
      </div>

			
				<input type='button' class='layui-btn'
				lay-submit lay-filter='add' id='add' value='添加商品'>

		<table class="layui-table" lay-filter="EditListTable">
			<thead>
				<tr>
					<td>序号</td>
					<td name='1' width='15%'>产品编号</td>
					<td name='2' width='10%'>产品名</td>
					<td name='3' width='15%'>产品信息</td>
					<td name='4' width='5%'>价格</td>
					<td name='5' width='10%'>库存</td>
					<td name='6' width='10%'>状态</td>
					<td name='7' width='5%'>父级</td>
<!-- 					<td name='8' width='25%'>图片</td> -->
					<td name='9' width='30%'>操作</td>
					
				</tr>
			</thead>
			<tbody id ="tbody"></tbody>
		</table>
		<table class="layui-hide" id="test">
		</table>
		<div id="demo9"></div>



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
		 url:con.app+'/productcontroller/pager.do',
		 data:data.field,
		 dataType:'json',
		 type:'Post',
		 success:function(data){
			 var pageindex=$("input[name='pageIndex']").val();
			 var pagelimit=$("input[name='pageLimit']").val();			 
			 laypage.render({
				    elem: 'demo9'
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
					html +="<td>"+dom.productid+"</td>"
					html +="<td>"+dom.name+"</td>"
					html +="<td>"+dom.information+"</td>"
					html +="<td>"+dom.price+"</td>"
					html +="<td>"+dom.number+"</td>"
					html +="<td>"+dom.status+"</td>"
					html +="<td>"+dom.code+"</td>"
// 					html +="<td>"+dom.img+"</td>"
					html +="<td><a href='javascript:update1(\""+dom.productid+"\")'>修改</a>&nbsp&nbsp<a href='javascript:delete2(\""+dom.productid+"\")'>删除</a>&nbsp&nbsp<a href='javascript:imageOperation(\""+dom.productid+"\")'>图片操作</a></tr>"
					
					

				
				 
			 })
			 $('#tbody').html(html);
		 }
	 })
	 
 })
 function update1(abb){
<%-- 	<% request.getSession().setAttribute("username1",abb);%> --%>
	openLayer("/Productchange.jsp?username2="+abb,empty)
	 
	 
 }
 function delete2(abb){
	 <%-- 	<% request.getSession().setAttribute("username1",abb);%> --%>
	 	openLayer("/Productchange.jsp?username2="+abb,empty)
	 	 
	 	 
	  }
 function imageOperation(abb){
	 location.href="/secondproject/jsp/private/commodity_img.jsp?code1="+abb
 }
 function empty(){
	 window.location.reload();
 }
$('#add').click(function(){
	openLayer("/AddProduct.jsp",empty)
})
</script>

</body>
</html>