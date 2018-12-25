<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/jsp/header.jsp"%>
<title>Insert title here</title>
<script type="text/javascript"src="<%=path%>/layui/layui.js"></script>
</head>
<body>
	<table class="layui-table" style="font-size: 20px;">
		<colgroup>
			<col width="150">
			<col width="200">
			<col width="200">
			<col width="200">
			<col>
		</colgroup>
		<thead>
			<tr>
				<th>序号</th>
				<th>产品名称</th>
				<th>图片</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
		</tbody>
	</table>
	<input type="hidden" value="1" name="pageindex">
	<input type="hidden" value="10" name="pagelimit">
		<div id="demo7"></div>
	<script type="text/javascript">
	function img(){
		var l = "";
		var html="";
		var index = $("input[name='pageindex']").val();
		var limit = $("input[name='pagelimit']").val();
		var code = '<%=request.getParameter("commodity_code")%>';
		ajax("/commcodity_img/select.do?",{"commodity_code":code},"json",function(data){
			$.each(data.img,function(i,dom){
				html += "<tr><td id='"+i+"'>"+(i+1+(index-1)*limit)+"</td>";
				html += "<td id='"+i+"' value='"+dom.commodity_code+"'>"+dom.name+"</td>";
				html += "<td id='"+i+"'><img src='/image/"+dom.img_url+"''/></td>";
				if(dom.img_type==1){
					l = "主图";
				}else{
					l = "设为主图";
				}
				var a = "<a value='"+dom.img_type+"' href='javascript:update1(\""+dom.img_url+"\",\""+dom.commodity_code+"\")'>"+l+"</a>&nbsp;&nbsp;&nbsp;&nbsp;";
				a += "<a href='javascript:delete1(\""+dom.img_url+"\")'>删除</a>";
				html += "<td id="+i+">"+a+"</td></tr>";
				$("a[value='1']").html("主图");
			});
			$("#tbody").append(html);
		});
	}
	img();
		function delete1(url){
			layer.confirm("是否删除",{icon:3,title:"是否删除"},function(index){
				ajax("/commcodity_img/delete.do",{"img_url":url},"text",function(data){
					if(data=="success"){
						layer.alert("删除成功");
						window.location.reload();
					}else if(data=="Occupy"){
						layer.alert('编号被占用,无法删除');
					}else if(data == "err"){
						layer.alert("删除失败");
					}
				});
			});
		}
		function update1(url,code){
			ajax("/commcodity_img/log.do",{"img_url":url,"commodity_code":code},"text",function(data){
				window.location.reload();
			});
		}
	</script>
</body>
</html>