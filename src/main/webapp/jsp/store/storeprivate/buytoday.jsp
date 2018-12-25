<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="/jsp/header.jsp" %>
  <script type="text/javascript" src="../res/layui/layui.js"></script>
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
          <a href="#" title="电子商城">
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


  <div class="content content-nav-base buytoday-content">
    <div id="list-cont">
      <div class="main-nav">
        <div class="inner-cont0">
          <div class="inner-cont1 w1200">
            <div class="inner-cont2">
              <a href="/secondproject/jsp/store/storeprivate/commodity.jsp">所有商品</a>
              <a href="/secondproject/jsp/store/storeprivate/buytoday.jsp" class="active">今日团购</a>
              <a href="/secondproject/jsp/store/storeprivate/information.jsp">母婴资讯</a>
              <a href="/secondproject/jsp/store/storeprivate/storeabout.jsp">关于我们</a>
            </div>
          </div>
        </div>
      </div>
      <div class="banner-box">
        <div class="banner"></div>
      </div>
      <div class="product-list-box">
        <div class="product-list w1200">  
          <div class="tab-title">
            <a href="javascript:;" class="active tuang" data-content="tuangou">今日团购</a>
            <a href="javascript:;" data-content="yukao">明日预告</a>
          </div>
          <div class="list-cont" cont = 'tuangou'>
            <div class="item-box layui-clear">
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
            </div>
            <div id="demo0" style="text-align: center;"></div>
          </div>
          <div class="list-cont layui-hide" cont = 'yukao'>
            <div class="item-box layui-clear">
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img1.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img2.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img3.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
              <div class="item">
                <img src="/secondproject/common/static/img/tuan_img4.jpg" alt="">
                <div class="text-box">
                  <p class="title">宝宝专用硅胶环保饭碗四套+调羹+筷子自助学吃饭套装</p>
                  <p class="plic">
                    <span class="ciur-pic">￥100.00</span>
                    <span class="Ori-pic">￥208.00</span>
                    <span class="discount">5折</span>
                  </p>
                </div>
              </div>
            </div>
            <div id="demo0" style="text-align: center;"></div>
          </div>
        </div>  
      </div>
      <div class="footer-wrap">
        <div class="footer w1200">
          <div class="title">
            <h3>团购销量榜</h3>
          </div>
          <div class="list-box layui-clear" id="footerList">
            <div class="item">
              <img src="/secondproject/common/static/img/tuan_img5.jpg" alt="">
              <div class="text">
                <div class="right-title-number">1</div>
                <div class="commod">
                  <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                  <span>￥100.00</span>
                </div>
              </div>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/tuan_img6.jpg" alt="">
              <div class="text">
                <div class="right-title-number">1</div>
                <div class="commod">
                  <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                  <span>￥100.00</span>
                </div>
              </div>
            </div>
            <div class="item">
              <img src="/secondproject/common/static/img/tuan_img7.jpg" alt="">
              <div class="text">
                <div class="right-title-number">1</div>
                <div class="commod">
                  <p>宝宝打底衣棉麻透气不起球白色多色可选</p>
                  <span>￥100.00</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>

  <!-- 模版引擎导入 -->
 <!--  <script type="text/html" id="demo">
    <div class="main-nav">
      <div class="inner-cont0">
        <div class="inner-cont1 w1200">
          <div class="inner-cont2">
            <a href="commodity.jsp">所有商品</a>
            <a href="buytoday.jsp" class="active">今日团购</a>
            <a href="information.jsp">母婴资讯</a>
            <a href="about.jsp">关于我们</a>
          </div>
        </div>
      </div>
    </div>
    <div class="banner-box">
      <div class="banner"></div>
    </div>
    <div class="product-list-box">
      <div class="product-list w1200">  
        <div class="tab-title">
          <a href="javascript:;" class="active tuang">今日团购</a>
          <a href="javascript:;">明日预告</a>
        </div>
        <div class="list-cont">
          <div class="item-box layui-clear">
              {{# layui.each(d.productList,function(index,item){}}
              <div class="item">
                <img src="{{item.img}}" alt="">
                <div class="text-box">
                  <p class="title">{{item.title}}</p>
                  <p class="plic">
                    <span class="ciur-pic">{{item.ciurPic}}</span>
                    <span class="Ori-pic">{{item.OriPic}}</span>
                    <span class="discount">{{item.discount}}</span>
                  </p>
                </div>
              </div>
              {{#})}}
          </div>
         <div id="demo0" style="text-align: center;"></div>
        </div>
      </div>  
    </div>
    <div class="footer-wrap">
      <div class="footer w1200">
        <div class="title">
          <h3>团购销量榜</h3>
        </div>
        <div class="list-box layui-clear" id="footerList">
             {{# layui.each(d.footerList,function(index,item){}}
              <div class="item">
                <img src="{{item.img}}" alt="">
                <div class="text">
                  <div class="right-title-number">1</div>
                  <div class="commod">
                    <p>{{item.title}}</p>
                    <span>{{item.price}}</span>
                  </div>
                </div>
              </div>
              {{# });}}
        </div>
      </div>
    </div>
  </script> -->
<script>

  layui.config({
    base: '/secondproject/common/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
  }).use(['mm','laypage','jquery'],function(){
      var laypage = layui.laypage,$ = layui.$;
     mm = layui.mm;
      laypage.render({
        elem: 'demo0'
        ,count: 100 //数据总数
      });


      $('body').on('click','*[data-content]',function(){
        $(this).addClass('active').siblings().removeClass('active')
        var dataConte = $(this).attr('data-content');
        $('*[cont]').each(function(i,item){
          var itemCont = $(item).attr('cont');
          console.log(item)
          if(dataConte === itemCont){
            $(item).removeClass('layui-hide');
          }else{
            $(item).addClass('layui-hide');
          }
        })
      })
    // 模版引擎导入
    //  var html = demo.innerHTML;
    //  var listCont = document.getElementById('list-cont');
    //  // console.log(layui.router("#/about.jsp"))
    // mm.request({
    //     url: '../json/buytoday.json',
    //     success : function(res){
    //       console.log(res)
    //       listCont.innerHTML = mm.renderHtml(html,res)
    //     },
    //     error: function(res){
    //       console.log(res);
    //     }
    //   })

});
</script>


</body>
</html>