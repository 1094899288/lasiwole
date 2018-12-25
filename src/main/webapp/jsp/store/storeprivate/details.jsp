<%@page import="com.mysql.jdbc.interceptors.SessionAssociationInterceptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   isELIgnored="false"   pageEncoding="UTF-8"%>
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
        <a href="#">首页</a>
      </p>
      <div class="sn-quick-menu">
       <div class="login"><a id="username" href="/secondproject/jsp/store/storelogin.jsp">${username}</a></div>
        <div class="sp-cart"><a href="/secondproject/jsp/store/storeprivate/shopcart.jsp">购物车</a><span>2</span></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">
          <a href="#" title="母婴商城">
            <img src="/secondproject/common/static/img/logo.png">
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


  <div class="content content-nav-base datails-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="/secondproject/jsp/store/storeprivate/commodity.jsp" class="active">所有商品</a>
            <a href="/secondproject/jsp/store/storeprivate/buytoday.jsp">今日团购</a>
            <a href="/secondproject/jsp/store/storeprivate/information.jsp">母婴资讯</a>
            <a href="/secondproject/jsp/store/storeprivate/storeabout.jsp">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="data-cont-wrap w1200">
      <div class="crumb">
        <a href="javascript:;">首页</a>
        <span>></span>
        <a href="javascript:;">所有商品</a>
        <span>></span>
        <a href="javascript:;">产品详情</a>
      </div>
      <div class="product-intro layui-clear">
        <div class="preview-wrap">
          <a id="zhutu"href="javascript:;"></a>
        </div>
        <div id="details"class="itemInfo-wrap">
          <div class="itemInfo">
            <div class="title">
              <h4>男女宝宝秋冬装套装0一1岁婴儿衣服潮加厚连体衣保暖冬季外出抱衣 </h4>
              <span><i class="layui-icon layui-icon-rate-solid"></i>收藏</span>
            </div>
            <div class="summary">
              <p class="reference"><span>参考价</span> <del>￥280.00</del></p>
              <p class="activity"><span>活动价</span><strong class="price"><i>￥</i>99.00</strong></p>
              <p class="address-box"><span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span><strong class="address">江西&nbsp;&nbsp;南昌&nbsp;&nbsp;东湖区</strong></p>
            </div>
            <div class="choose-attrs">
              <div class="color layui-clear"><span class="title">颜&nbsp;&nbsp;&nbsp;&nbsp;色</span> <div class="color-cont"><span class="btn">白色</span> <span class="btn active">粉丝</span></div></div>
              <div class="number layui-clear"><span class="title">数&nbsp;&nbsp;&nbsp;&nbsp;量</span><div class="number-cont"><span class="cut btn">-</span><input onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" maxlength="4" type="" name="" value="1"><span class="add btn">+</span></div></div>
            </div>
            <div class="choose-btns">
              <button class="layui-btn layui-btn-primary purchase-btn">立刻购买</button>
              <button class="layui-btn  layui-btn-danger car-btn"><i class="layui-icon layui-icon-cart-simple"></i>加入购物车</button>  
            </div>
          </div>
        </div>
      </div>
      <div class="layui-clear">
        <div class="aside">
          <h4>热销推荐</h4>
          <div class="item-list">
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/details_img2.jpg">
              <p><span>可爱宝宝粉色连体秋裤</span><span class="pric">￥99.00</span></p>
            </div>
          </div>
        </div>
        <div class="detail">
          <h4>详情</h4>
          <div class="item">
            <img src="/secondproject/common/static/img/details_imgbig.jpg">
          </div>
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript">
var name='<%= request.getParameter("productid") %>';
$(function(){
	var name='<%= request.getParameter("productid") %>';
	var html='';
   $.ajax({
	   url:con.app+"/productcontroller/xiangqing.do?productid="+name,
       dataType:'json',
       type:'POST',
       success:function(data){
    	   $.each(data.product,function(i,dom){
    		   html+='<div class="itemInfo">';
               html+='<div class="title">'
               html+= '<h4>'+dom.name+' </h4>'
               html+= '<span><i class="layui-icon layui-icon-rate-solid"></i>收藏</span>'
               html+='</div>'
               html+='<div class="summary">'
               html+=  '<p class="activity"><span>价格</span><strong class="price"><i>￥</i>'+dom.price+'</strong></p>'
               html+=  '<p class="address-box"><span>送&nbsp;&nbsp;&nbsp;&nbsp;至</span><input type="textarea" name="address"></p>'
               html+= ' </div>'
               html+= '<div class="choose-attrs">'
               html+=  '<div class="color layui-clear"><span class="title">颜&nbsp;&nbsp;&nbsp;&nbsp;色</span> <div class="color-cont"><span class="btn">白色</span> <span class="btn active">黑色</span></div></div>'
               html+='<input type="button" class="layui-btn" id="1" value="+" onclick="add()"><input type="text" value="1" id ="2"><input type="button"class="layui-btn" id="3" onclick="jian()" value="-">'
               html+= '</div>'
               html+= '<div class="choose-btns">'
               html+= ' <button class="layui-btn layui-btn-primary purchase-btn">立刻购买</button>'
               html+= "<button class='layui-btn  layui-btn-danger car-btn' onclick='shopcart(\""+dom.productid+"\")'><i class='layui-icon layui-icon-cart-simple'></i>加入购物车</button>"
               html+= ' </div>'
               html+=' </div>'
            $.ajax({
            	 url:con.app+"/productcontroller/image.do?productid="+dom.productid+"&type=1",
                 dataType:'json',
                 type:'POST',
                 success:function(data){
                	 var html1='';
                	 $.each(data.image,function(i,dom){
                		 html1+='<img style="position: relative;right: 70px;" src="/image/'+dom.url+'">';
                	 });
                	 $('#zhutu').html(html1);
                 }
            })   
    	   });
    	   $('#details').html(html);
    	   
    		
    	   
       }
   })
	
})	

function add(){
	var a =$("#2").val()
	$("#2").val(parseInt(a)+1)
	
}
function jian(){
	var a =$("#2").val()
	if(a==1){
		
	}else{
		
	$("#2").val(parseInt(a)-1)
	}
	
}

function shopcart(add){
	var username='${username}'
	console.log('${username}')
		var a =$("#2").val()
	$.ajax({
		url:con.app+"/shopcontroller/insert.do",
		data:{"username":username,"productid":add,"number":a},
	    dataType:'text',
	    type:'POST',
	    success:function(data){

	    	layer.msg("添加成功")
	    	location.href="/secondproject/jsp/store/storeprivate/shopcart.jsp"
	    	
	    }
	})
	
}


  layui.config({
    base: '/secondproject/common/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','jquery'],function(){
      var mm = layui.mm,$ = layui.$;
      var cur = $('.number-cont input').val();
      $('.number-cont .btn').on('click',function(){
        if($(this).hasClass('add')){
          cur++;
         
        }else{
          if(cur > 1){
            cur--;
          }  
        }
        $('.number-cont input').val(cur)
      })
      
  });
</script>


</body>
</html>