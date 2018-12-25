<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/jsp/header.jsp"%>
</head>
<body>

<form  id="aaa"class="layui-form" onsubmit="return false">
  <div class="layui-form-item">
			<label class="layui-form-label">订单号</label> 
			 <div class="layui-input-block">
    <div class="layui-input-inline"><input type='text'
				name='orderid' value='<%=request.getParameter("code1")%>' disabled="disabled" >
				</div> </div>
		</div>
  <div class="layui-form-item">
    <label class="layui-form-label">商品名</label>
    <div class="layui-input-block">
    <div class="layui-input-inline">
      <input type="text" name="name" required  lay-verify="required" placeholder="请输入商品名" autocomplete="off" class="layui-input">
   </div> </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">商品编号</label>
    <div class="layui-input-block">
    <div class="layui-input-inline">
      <input type="text" name="productid" required  lay-verify="required" placeholder="请输入商品名" autocomplete="off" class="layui-input">
   </div> </div>
  </div>

     <div class="layui-form-item">
    <label class="layui-form-label">商品数量</label>
    <div class="layui-input-block">
    <div class="layui-input-inline">
      <input type="text" name="number" required  lay-verify="required" placeholder="请输入商品名" autocomplete="off" class="layui-input">
   </div> </div>
  </div>

 
  <div class="layui-form-item">
    <label class="layui-form-label">一级分类</label>
    <div class="layui-input-block">
      <select name="bigparentcode" lay-verify="required" lay-filter="first">
   
      </select>
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">二级分类</label>
    <div class="layui-input-block">
      <select name="code" >
   
      </select>
    </div>
  </div>

  <div class="layui-form-item">
    <div class="layui-input-block">
      <input type="button" class="layui-btn" lay-submit lay-filter="shangjia" value="添加">
      <input type="reset" class="layui-btn layui-btn-primary" value="重置">
    </div>
  </div>
</form>
 

<script type="text/javascript">
log();
function log(){
	$.ajax({
		url : con.app + '/productcontroller/find.do?bigparentcode="无上级"',
// 		data : $("#aaa").serialize(),//ayui-submit 中lay-filter的值为reg的所有输入的属性的值
		dataType : 'json',//dataType是下面function中的data的类型
		type : 'POST',
		success : function(data){
			var html=''
			
			$.each(data.parentcode,function(i,dom){
				console.log(dom.bigname);
				html+='<option value='+dom.code+'>'+dom.bigname+'</option>'
				
			})
			$('select[name="bigparentcode"]').html(html)
			form.render()
			}
				
	
		})
	
}

	
form.on('select(first)', function(data){
// 	console.log("1");
	console.log(data.value)
			$.ajax({
			url : con.app + '/productcontroller/findcode.do?bigparentcode='+data.value,
// 			data : data.value,//ayui-submit 中lay-filter的值为reg的所有输入的属性的值
			dataType : 'json',//dataType是下面function中的data的类型
			type : 'POST',
	
			success : function(data){
				var html=''
// 				console.log(data)
				$.each(data.code,function(i,dom){
					console.log(dom.name)
					html+='<option value='+dom.bigname+'>'+dom.bigname+'</option>'
					
				})
				$('select[name="code"]').html(html)
				form.render()
				} 
			})
})
var name1=<%=request.getParameter("name")%>;
var number1=<%=request.getParameter("number")%>;
var orderid1=<%=request.getParameter("order")%>;
 form.on('submit(shangjia)',function(data){
	 console.log(data.field)
	 $.ajax({
		 url:con.app+'/ordercontroller/orderproductinsert.do',
		 data:data.field,
		 dataType:'text',
		 type:'Post',
		 success:function(data){
			 console.log("------------------------")
			 if(data=="2"){
				 layer.msg("商品已存在请重新输入");
			 }if (data =="1") {
					layer.msg("添加成功",{icon:6, time: 800}, function() {
						
						
					});

				}
		 
		 }
		 })
 })

</script>
</body>
</html>