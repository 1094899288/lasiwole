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
					<td name='1' width='25%'>订单号</td>
					<td name='2' width='55%'>商品</td>
					<td name='3' width='20%'>数量</td>
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
	<input type='hidden' name='pageLimit' value='10'>

	</form>





	<script type="text/javascript">

 $(function(){
	 $('#chaxun').click()
 })
 var code='<%=request.getParameter("order")%>';


 form.on('submit(search)',function(data){
	 $.ajax({
		 url:con.app+'/ordercontroller/orderproductpager.do',
		 data:{"orderid":code},
		 dataType:'json',
		 type:'Post',
		 success:function(data){
			 console.log(data);
			
			 var pageindex=$("input[name='pageIndex']").val();
			 var pagelimit=$("input[name='pageLimit']").val();			 
			 laypage.render({
				    elem: 'demo9'
				    ,count: data.list
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
			 $.each(data.count,function(i,dom){
				 console.log(dom.password)
				 html += "<tr><td>"+(i+1+(pageindex-1)*pagelimit)+"</td>"
					html +="<td>"+dom.orderid+"</td>"
					html +="<td>"+dom.name+"</td>"
					html +="<td>"+dom.number+"</td>"
					
					
					

				
				 
			 })
			 $('#tbody').html(html);
			 form.render();
		 }
	 })
	 
 })
//  function update1(abb,acd){
//    var html="";
//    html += "<tr><td>"+acd+"</td>"
//    html+="<td>"+abb.orderid+"</td>";
//    html+="<td><input type='text' name='name' value='"+abb.name+"'style='width:100%'></td>";
//    html+="<td><input type='text' name='number' value='"+abb.number+"'style='width:100%'></td>";
//    html +="<td><input type='button' id='baocun' class='layui-btn' lay-submit lay-filter='baocun' value='保存'></a></tr>"
//    $('#tbody').html(html); 
	 
//  }
//  form.on('submit(baocun)',function(data){
// 	 $.ajax({
// 		 url:con.app+'/ordercontroller/orderproductpager1.do',
// 		 data:data.field,
// 		 dataType:'json',
// 		 type:'Post',
// 		 success:function(data){
			
// 			 var pageindex=$("input[name='pageIndex']").val();
// 			 var pagelimit=$("input[name='pageLimit']").val();			 
// 			 laypage.render({
// 				    elem: 'demo9'
// 				    ,count: data.count
// 				    ,layout: ['limit', 'prev', 'page', 'next']
// 					,curr:pageindex
// 					,limit:pagelimit
// 					,
// 					jump:function(obj,first){
// 						$("input[name='pageIndex']").val(obj.curr);
// 						$("input[name='pageLimit']").val(obj.limit);
						
// 						if(!first){
// 							$('#baocun').click();
// 						}
// 					}
// 				  })
// 				   var html="";
// 			 $.each(data.list,function(i,dom){
// 				 console.log(dom.password)
// 				 html += "<tr><td>"+(i+1+(pageindex-1)*pagelimit)+"</td>"
// 					html +="<td>"+dom.orderid+"</td>"
// 					html +="<td>"+dom.name+"</td>"
// 					html +="<td>"+dom.number+"</td>"
			
// 					html +="<td><a href='javascript:update1(\""+dom+"\""+",\""+(i+1+(pageindex-1)*pagelimit)+"\")'>修改</a></tr>"
					
					

				
				 
// 			 })
// 			 $('#tbody').html(html);
// 			 form.render();
// 		 }
// 	 })
	 
//  })
	
	
	

 function delete2(abb){
	 <%-- 	<% request.getSession().setAttribute("username1",abb);%> --%>
	 	openLayer("/Productchange.jsp?username2="+abb,empty)
	 	 
	 	 
	  }
 function empty(){
	 window.location.reload();
 }
$('#add').click(function(){
// 	openLayer("/addorderproduct.jsp",empty)
location.href="/secondproject/jsp/private/addorderproduct.jsp?code1="+code
})
</script>

</body>
</html>