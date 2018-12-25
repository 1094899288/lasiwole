<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="/jsp/header.jsp" %>
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
        <div class="login"><a href="/secondproject/jsp/store/storelogin.jsp">登录</a></div>
        <div class="sp-cart"><a href="/secondproject/jsp/store/storeprivate/shopcart.jsp">购物车</a><span>2</span></div>
      </div>
    </div>
  </div>



  <div class="header">
    <div class="headerLayout w1200">
      <div class="headerCon">
        <h1 class="mallLogo">

        </h1>
<!--         <div class="mallSearch"> -->
<!--           <form action="" class="layui-form" novalidate> -->
<!--             <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品"> -->
<!--             <button class="layui-btn" lay-submit lay-filter="formDemo"> -->
<!--                 <i class="layui-icon layui-icon-search"></i> -->
<!--             </button> -->
<!--             <input type="hidden" name="" value=""> -->
<!--           </form> -->
<!--         </div> -->
      </div>
    </div>
  </div>


  <div class="content content-nav-base commodity-content">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="/secondproject/jsp/store/storeprivate/commodity.jsp" class="active">所有商品</a>
            <a href="/secondproject/jsp/store/storeprivate/buytoday.jsp">今日团购</a>
            <a href="/secondproject/jsp/store/storeprivate/information.jsp">资讯</a>
            <a href="/secondproject/jsp/store/storeprivate/storeabout.jsp">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="commod-cont-wrap">
      <div class="commod-cont w1200 layui-clear">

        <div class="right-cont-wrap">
          <div class="right-cont">
            <div class="sort layui-clear">
              <a class="active" href="javascript:;" event = 'volume'>销量</a>
              <a href="javascript:;" event = 'price'>价格</a>
              <a href="javascript:;" event = 'newprod'>新品</a>
              <a href="javascript:;" event = 'collection'>收藏</a>
            </div>
            <div class="prod-number">
        
            </div>
            <div class="cont-list layui-clear" id="list-cont">
<!--               <div class="item"> -->
<!--                 <div class="img"> -->
<!--                   <a href="javascript:;"><img src="/secondproject/common/static/img/paging_img1.jpg"></a> -->
<!--                 </div> -->
<!--                 <div class="text"> -->
<!--                   <p class="title">森系小清新四件套</p> -->
<!--                   <p class="price"> -->
<!--                     <span class="pri">￥200</span> -->
<!--                     <span class="nub">1266付款</span> -->
<!--                   </p> -->
<!--                 </div> -->
<!--               </div> -->
       
              
              
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
            <div id="demo0" style="text-align: center;"></div>
             <div class="footer">
    <div class="ng-promise-box">
      <div class="ng-promise w1200">
        <p class="text">
          <a class="icon1" href="javascript:;">7天无理由退换货</a>
          <a class="icon2" href="javascript:;">满99元全场免邮</a>
          <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
        </p>
      </div>
    </div>
    <div class="mod_help w1200">                                     
      <p>
        <a href="javascript:;">关于我们</a>
        <span>|</span>
        <a href="javascript:;">帮助中心</a>
        <span>|</span>
        <a href="javascript:;">售后服务</a>
        <span>|</span>
        <a href="javascript:;">资讯</a>
        <span>|</span>
        <a href="javascript:;">关于货源</a>
      </p>
      
    </div>
  </div>
<script>
$(function(){
	var name='<%=request.getParameter("add")%>';
	console.log(name)
	var html='';
   $.ajax({
	   url:con.app+"/productcontroller/xiangqing.do?name="+name,
       dataType:'json',
       type:'POST',
       success:function(data){
    	   $.each(data.product,function(i,dom){
    		   console.log("1")
    		   
    		   html+=' <div class="item">';
               html+='<div class="img">';
               html+=  "<a  href='javascript:shopcart(\""+dom.productid+"\")' id='"+dom.productid+"'></a>"
               html+= '</div><div class="text"><p class="title">'+dom.name+'</p><p class="price"><span class="pri">￥'+dom.price+'</span><span class="nub">'+dom.number+'库存</span></p></div></div>'
            $.ajax({
            	 url:con.app+"/productcontroller/image.do?productid="+dom.productid+"&type=1",
                 dataType:'json',
                 type:'POST',
                 success:function(data){
                	 var html1='';
                	 $.each(data.image,function(i,dom){
                		 html1+='<img src="/image/'+dom.url+'" style="width:280px">';
                	 });
                	 $('#'+dom.productid).html(html1);
                 }
            })   
    	   
    	   });
    	   console.log(html)
    	   $('#list-cont').html(html);
    	   
       }
   })
	
})
function shopcart(add){
	location.href="/secondproject/jsp/store/storeprivate/details.jsp?productid="+add;
}
  layui.config({
    base: '/secondproject/common/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$,
     mm = layui.mm;
       laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });


    // 模版引擎导入
    //  var html = demo.innerHTML;
    //  var listCont = document.getElementById('list-cont');
    //  // console.log(layui.router("#/about.jsp"))
    // mm.request({
    //     url: '../json/commodity.json',
    //     success : function(res){
    //       console.log(res)
    //       listCont.innerHTML = mm.renderHtml(html,res)
    //     },
    //     error: function(res){
    //       console.log(res);
    //     }
    //   })

    $('.sort a').on('click',function(){
      $(this).addClass('active').siblings().removeClass('active');
    })
    $('.list-box dt').on('click',function(){
      if($(this).attr('off')){
        $(this).removeClass('active').siblings('dd').show()
        $(this).attr('off','')
      }else{
        $(this).addClass('active').siblings('dd').hide()
        $(this).attr('off',true)
      }
    })

});
</script>


</body>
</html>