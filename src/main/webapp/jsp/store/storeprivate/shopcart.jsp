<%@ page language="java" contentType="text/html; charset=UTF-8"
    isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="/jsp/header.jsp" %>
<!--   <script type="text/javascript" src="/secondproject/common/layui/layui.js"></script> -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

  <div class="site-nav-bg">
    <div class="site-nav w1200">
      <p class="sn-back-home">
        <i class="layui-icon layui-icon-home"></i>
        <a href="/secondproject/jsp/store/storeprivate/index.jsp">首页</a>
      </p>
      <div class="sn-quick-menu">
        <div class="login"><a id="username" href="/secondproject/jsp/store/storelogin.jsp">${username }</a></div>
        <div class="sp-cart"><a href="/secondproject/jsp/store/storeprivate/shopcart.jsp">购物车</a><span></span></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="百货商城">
            
          </a>
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

  <div class="content content-nav-base shopcart-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity.jsp" class="active">所有商品</a>
            <a href="buytoday.jsp">今日团购</a>
            <a href="information.jsp">母婴资讯</a>
            <a href="about.jsp">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="banner-bg w1200">
      <h3>夏季清仓</h3>
      <p>宝宝被子、宝宝衣服3折起</p>
    </div>
    <div class="cart w1200">
      <div class="cart-table-th">
        <div class="th th-chk">
          <div class="select-all">
            <div class="cart-checkbox">
              <input class="" type="checkbox" id="quanxuan" value="true">
            </div>
          <label>&nbsp;&nbsp;全选</label>
          </div>
        </div>
        <div class="th th-item">
          <div class="th-inner">
            商品
          </div>
        </div>
        <div class="th th-price">
          <div class="th-inner">
            单价
          </div>
        </div>
        <div class="th th-amount">
          <div class="th-inner">
            数量
          </div>
        </div>
        <div class="th th-sum">
          <div class="th-inner">
            小计
          </div>
        </div>
        <div class="th th-op">
          <div class="th-inner">
            操作
          </div>
        </div>  
      </div>
      <div class="OrderList">
        <div class="order-content" id="list-cont">
<!--         <ul class="item-content layui-clear"><li class="th th-chk"><div class="select-all"><div class="cart-checkbox"><input class="CheckBoxShop check" id="" type="checkbox" num="all" name="select-all" value="true"></div></div></li><li class="th th-item"><div class="item-cont"><a id="tupian37" href="javascript:"></a><div class="text"><div class="title">苹果9</div></div></div></li><li class="th th-price"><span class="th-su">78978</span></li><li class="th th-amount"><div class="box-btn layui-clear"><div class="less layui-btn">-</div><input class="Quantity-input" type="" name="" value="5" disabled="disabled"><div class="add layui-btn">+</div></div></li><li class="th th-sum"><span class="sum">189.00</span></li><li class="th th-op"><input type="button" class="layui-btn" id="shanchu37"value="删除"></li></ul> -->
<!--          <ul class="item-content layui-clear"><li class="th th-chk"><div class="select-all"><div class="cart-checkbox"><input class="CheckBoxShop check" id="" type="checkbox" num="all" name="select-all" value="true"></div></div></li><li class="th th-item"><div class="item-cont"><a id="tupian36" href="javascript:"></a><div class="text"><div class="title">苹果8</div></div></div></li><li class="th th-price"><span class="th-su">8888</span></li><li class="th th-amount"><div class="box-btn layui-clear"><div class="less layui-btn">-</div><input class="Quantity-input" type="" name="" value="7" disabled="disabled"><div class="add layui-btn">+</div></div></li><li class="th th-sum"><span class="sum">189.00</span></li><li class="th th-op"><input type="button" class="layui-btn" id="shanchu36"value="删除"></li></ul> -->
        </div>
      </div>
      <div class="FloatBarHolder layui-clear">
        <div class="th th-chk">
          <div class="select-all">
<!--             <div class="cart-checkbox"> -->
<!--               <input class="" id="quanxuan" name="" type="checkbox"  value="true"> -->
<!--             </div> -->
<!--             <label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件</label> -->
          </div>
        </div>
<!--         <div class="th batch-deletion"> -->
<!--           <span class="batch-dele-btn">批量删除</span> -->
<!--         </div> -->
        <div class="th Settlement">
          <button class="layui-btn" onclick="dingdan()">结算</button>
        </div>
        <div class="th total">
          <p>应付：<span id="jiesuan"class="pieces-total">0</span></p>
        </div>
      </div>
    </div>
    
  </div>
 

<script type="text/javascript">
layui.config({
    base: '/secondproject/common/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery','element','car'],function(){
    var mm = layui.mm,$ = layui.$,element = layui.element,car = layui.car;
    
//     模版导入数据
//     var html = demo.innerHTML,
//     listCont = document.getElementById('list-cont');
//     mm.request({
//       url: '../json/shopcart.json',
//       success : function(res){
//         listCont.innerHTML = mm.renderHtml(html,res)
//         element.render();
//         car.init()
//       },
//       error: function(res){
//       }
//     })
    
    car.init()


});

$('#quanxuan').click(function(){
	if($('#quanxuan').prop("checked")){
		var price = parseInt($(".pieces-total").html());
		$("input[id^='check']").each(function(i,d){
// 			console.log(d.value)
			price += parseInt($(".sum"+d.value).html());
// 		console.log($(".sum"+d.value).html())
		})
		$(".pieces-total").html(price);
		$('input[type="checkbox"]').prop("checked","checked");
	}else{
		$('input[type="checkbox"]').prop("checked",'');
		$(".pieces-total").html("0");
	}
})


$(function(){
	var username=$('#username').html();
	var html1='';
	var id = new Array();
	$.ajax({
		 url:con.app+"/shopcontroller/xiangqing.do?username="+username,
	       dataType:'json',
	       type:'POST',
	       success:function(data){
	    	   var html = '';
	    	   $.each(data.product,function(i,dom){
	    		   html+='<ul class="item-content layui-clear">';
			    	html+='<li class="th th-chk">';
			    	html+='<div class="select-all">';
			    	html+='<div class="cart-checkbox">';
			    	html+='<input class=" " onclick="onc(this,'+dom.id+')" id="check'+dom.id+'"  type="checkbox" num="all" name="select-all" value="'+dom.id+'">';
			    	html+='</div>';
			    	html+='</div>';
			    	html+='</li>';
			    	html+='<li class="th th-item">';
			    	html+='<div class="item-cont">';
			    	html+='<a id="tupian'+dom.id+'" href="javascript:"><img src="/image/'+dom.url+'" alt=""></a>';
			    	html+='<div class="text">';
			    	html+='<div class="title">'+dom.name+'</div>';
			    	html+='</div>';
			    	html+='</div>';
			    	html+='</li>';
			        html+='<li class="th th-price">';
			    	html+='<span class="th-su">'+dom.price+'</span>';
			    	html+='</li>';
			    	html+='<li class="th th-amount">';
			    	html+='<div class="box-btn layui-clear">';
			    	html+='<div class="less layui-btn">-</div>';
			    	html+='<input class="Quantity-input'+dom.id+'" type="" name="" value="'+dom.number+'" disabled="disabled">';
			    	html+='<div class="add layui-btn">+</div>';
			 		html+='</div>';
			        html+='</li>';
			    	html+='<li class="th th-sum">';
			        html+='<span class="sum'+dom.id+'">'+parseInt(dom.price)*parseInt(dom.number)+'</span>';
			        html+='</li>';
			        html+='<li class="th th-op">';
			  	    html+='<input type="button" class="layui-btn" id="shanchu'+dom.id+'" onclick="shanchu('+dom.id+')" value="删除">';
			        html+='</li>';
					html+='</ul>';
	    	   })
	    		    	   $('#list-cont').append(html)
	       }
		
	})
})

function onc(obj,id){
	if($(obj).prop("checked")){
		$(".pieces-total").html(parseInt($(".pieces-total").html())+parseInt($("span[class='sum"+id+"']").html()));
	}else{
		$(".pieces-total").html(parseInt($(".pieces-total").html())-parseInt($("span[class='sum"+id+"']").html()));
	}
	if($("input[id^='check']:checked").length==$("input[id^='check']").length){
		$("#quanxuan").prop("checked",true);
	}else{
		$("#quanxuan").prop("checked",false);
	}
}


function dingdan(){
	var id = new Array();
	var feiyong=$('#jiesuan').html()
	

	$("input[id^='check']:checked").each(function(i,d){
		id.push(d.value);
	})
	location.href="/secondproject/jsp/store/storeprivate/pay.jsp?id="+id+'&feiyong='+feiyong;
}
function shanchu(add){
	$.ajax({
		 url:con.app+"/shopcontroller/delete1.do?id="+add,
	       dataType:'text',
	       type:'POST',
	       success:function(data){
	    	   if(data=="success"){
	    		   layer.msg("删除成功")
	    		   window.location.reload()
	    	   }
	       }
})
}
	 
	
	
	


</script>
</body>
</html>