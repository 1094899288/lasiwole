<%@ page language="java" contentType="text/html; charset=UTF-8"
    isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="/jsp/header.jsp" %>
<link href="/secondproject/common/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="/secondproject/common/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="/secondproject/common/static/css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="/secondproject/common/static/css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="/secondproject/common/static/js/address.js"></script>
</head>
<body>

		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
						<a href="#" target="_top" class="h">欢迎你${username}</a>&nbsp;&nbsp;&nbsp;
						<a href="#" target="_top">免费注册</a>
					</div>
				</div>
			</ul>
<!-- 			<ul class="message-r"> -->
<!-- 				<div class="topMessage home"> -->
<!-- 					<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div> -->
<!-- 				</div> -->
<!-- 				<div class="topMessage my-shangcheng"> -->
<!-- 					<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div> -->
<!-- 				</div> -->
<!-- 				<div class="topMessage mini-cart"> -->
<!-- 					<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div> -->
<!-- 				</div> -->
<!-- 				<div class="topMessage favorite"> -->
<!-- 					<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div> -->
<!-- 			</ul> -->
			</div>

			<!--悬浮搜索框-->

			<div class="nav white">
				<div class="logo"><img src="/secondproject/common/images/logo.png" /style="
    /* right: 500px; */
    position: absolute;
    right: 500px;
    top: 20px;"
				></div>
				<div class="logoBig">
<!-- 					<li><img src="/secondproject/common/images/logobig.png" /></li> -->
				</div>

				<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form>
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off" style="position:absolute;left:865px;top:50px">
						<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit"style="
    position: absolute;
    top:50px;
    left: 800px;"
						>
					</form>
				</div>
			</div>

			<div class="clear"></div>
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
<!-- 						<h3>确认收货地址 </h3> -->
<!-- 						<div class="control"> -->
<!-- 							<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div> -->
<!-- 						</div> -->
						<div class="clear"></div>
						<ul>
							<div class="per-border"></div>
<!-- 							<li class="user-addresslist defaultAddr"> -->

<!-- 								<div class="address-left"> -->
<!-- 									<div class="user DefaultAddr"> -->

<!-- 										<span class="buy-address-detail">    -->
<!--                    <span class="buy-user">艾迪 </span> -->
<!-- 										<span class="buy-phone">15871145629</span> -->
<!-- 										</span> -->
<!-- 									</div> -->
<!-- 									<div class="default-address DefaultAddr"> -->
<!-- 										<span class="buy-line-title buy-line-title-type">收货地址：</span> -->
<!-- 										<span class="buy--address-detail"> -->
<!-- 								   <span class="province">湖北</span>省 -->
<!-- 										<span class="city">武汉</span>市 -->
<!-- 										<span class="dist">洪山</span>区 -->
<!-- 										<span class="street">雄楚大道666号(中南财经政法大学)</span> -->
<!-- 										</span> -->

<!-- 										</span> -->
<!-- 									</div> -->
<!-- 									<ins class="deftip">默认地址</ins> -->
<!-- 								</div> -->
<!-- 								<div class="address-right"> -->
<!-- 									<a href="/secondproject/common/person/address.html"> -->
<!-- 										<span class="am-icon-angle-right am-icon-lg"></span></a> -->
<!-- 								</div> -->
<!-- 								<div class="clear"></div> -->

<!-- 								<div class="new-addr-btn"> -->
<!-- 									<a href="#" class="hidden">设为默认</a> -->
<!-- 									<span class="new-addr-bar hidden">|</span> -->
<!-- 									<a href="#">编辑</a> -->
<!-- 									<span class="new-addr-bar">|</span> -->
<!-- 									<a href="javascript:void(0);" onclick="delClick(this);">删除</a> -->
<!-- 								</div> -->

<!-- 							</li> -->
<!-- 							<div class="per-border"></div> -->
<!-- 							<li class="user-addresslist"> -->
<!-- 								<div class="address-left"> -->
<!-- 									<div class="user DefaultAddr"> -->

<!-- 										<span class="buy-address-detail">    -->
<!--                    <span class="buy-user">艾迪 </span> -->
<!-- 										<span class="buy-phone">15871145629</span> -->
<!-- 										</span> -->
<!-- 									</div> -->
<!-- 									<div class="default-address DefaultAddr"> -->
<!-- 										<span class="buy-line-title buy-line-title-type">收货地址：</span> -->
<!-- 										<span class="buy--address-detail"> -->
<!-- 								   <span class="province">湖北</span>省 -->
<!-- 										<span class="city">武汉</span>市 -->
<!-- 										<span class="dist">武昌</span>区 -->
<!-- 										<span class="street">东湖路75号众环大厦2栋9层902</span> -->
<!-- 										</span> -->

<!-- 										</span> -->
<!-- 									</div> -->
<!-- 									<ins class="deftip hidden">默认地址</ins> -->
<!-- 								</div> -->
<!-- 								<div class="address-right"> -->
<!-- 									<span class="am-icon-angle-right am-icon-lg"></span> -->
<!-- 								</div> -->
<!-- 								<div class="clear"></div> -->

<!-- 								<div class="new-addr-btn"> -->
<!-- 									<a href="#">设为默认</a> -->
<!-- 									<span class="new-addr-bar">|</span> -->
<!-- 									<a href="#">编辑</a> -->
<!-- 									<span class="new-addr-bar">|</span> -->
<!-- 									<a href="javascript:void(0);"  onclick="delClick(this);">删除</a> -->
<!-- 								</div> -->

<!-- 							</li> -->

						</ul>

						<div class="clear"></div>
					</div>
					<!--物流 -->
					<div class="logistics">
<!-- 						<h3>选择物流方式</h3> -->
<!-- 						<ul class="op_express_delivery_hot"> -->
<!-- 							<li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li> -->
<!-- 							<li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li> -->
<!-- 							<li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li> -->
<!-- 							<li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li> -->
<!-- 							<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li> -->
<!-- 						</ul> -->
					</div>
					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
<!-- 						<h3>选择支付方式</h3> -->
<!-- 						<ul class="pay-list"> -->
<!-- 							<li class="pay card"><img src="/secondproject/common/images/wangyin.jpg" />银联<span></span></li> -->
<!-- 							<li class="pay qq"><img src="/secondproject/common/images/weizhifu.jpg" />微信<span></span></li> -->
<!-- 							<li class="pay taobao"><img src="/secondproject/common/images/zhifubao.jpg" />支付宝<span></span></li> -->
<!-- 						</ul> -->
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<tr class="item-list">
								<div class="bundle  bundle-last">

									<div class="bundle-main" id="bundle-main">

										<div class="clear"></div>

									</div>
							</tr>
							<div class="clear"></div>
							</div>

							
							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>
							<!--优惠券 -->
							<div class="buy-agio">
<!-- 								<li class="td td-coupon"> -->

<!-- 									<span class="coupon-title">优惠券</span> -->
<!-- 									<select data-am-selected> -->
<!-- 										<option value="a"> -->
<!-- 											<div class="c-price"> -->
<!-- 												<strong>￥8</strong> -->
<!-- 											</div> -->
<!-- 											<div class="c-limit"> -->
<!-- 												【消费满95元可用】 -->
<!-- 											</div> -->
<!-- 										</option> -->
<!-- 										<option value="b" selected> -->
<!-- 											<div class="c-price"> -->
<!-- 												<strong>￥3</strong> -->
<!-- 											</div> -->
<!-- 											<div class="c-limit"> -->
<!-- 												【无使用门槛】 -->
<!-- 											</div> -->
<!-- 										</option> -->
<!-- 									</select> -->
<!-- 								</li> -->

<!-- 								<li class="td td-bonus"> -->

<!-- 									<span class="bonus-title">红包</span> -->
<!-- 									<select data-am-selected> -->
<!-- 										<option value="a"> -->
<!-- 											<div class="item-info"> -->
<!-- 												¥50.00<span>元</span> -->
<!-- 											</div> -->
<!-- 											<div class="item-remainderprice"> -->
<!-- 												<span>还剩</span>10.40<span>元</span> -->
<!-- 											</div> -->
<!-- 										</option> -->
<!-- 										<option value="b" selected> -->
<!-- 											<div class="item-info"> -->
<!-- 												¥50.00<span>元</span> -->
<!-- 											</div> -->
<!-- 											<div class="item-remainderprice"> -->
<!-- 												<span>还剩</span>50.00<span>元</span> -->
<!-- 											</div> -->
<!-- 										</option> -->
<!-- 									</select> -->

<!-- 								</li> -->

							</div>
							<div class="clear"></div>
							</div>
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
<!-- 									合计（含运费） <span>¥</span><em class="pay-sum"></em> -->
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee"><%=request.getParameter("feiyong") %></em>
											</span>
										</div>

										<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   <span class="province">湖北</span>省
												<span class="city">武汉</span>市
												<span class="dist">洪山</span>区
												<span class="street">雄楚大道666号(中南财经政法大学)</span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         <span class="buy-user">艾迪 </span>
												<span class="buy-phone">15871145629</span>
												</span>
											</p>
										</div>
									</div>

									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<a id="J_Go" href="javascript:dingdan()" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
										</div>
									</div>
									<div class="clear"></div>
								</div>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
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
      <p class="coty"> &copy; 2012-2020</p>
    </div>
				</div>
			</div>
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<form class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" placeholder="收货人">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="手机号必填" type="email">
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">所在地</label>
							<div class="am-form-content address">
								<select data-am-selected>
									<option value="a">浙江省</option>
									<option value="b">湖北省</option>
								</select>
								<select data-am-selected>
									<option value="a">温州市</option>
									<option value="b">武汉市</option>
								</select>
								<select data-am-selected>
									<option value="a">瑞安区</option>
									<option value="b">洪山区</option>
								</select>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址.</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger">保存</div>
								<div class="am-btn am-btn-danger close">取消</div>
							</div>
						</div>
					</form>
				</div>

			</div>

			<div class="clear"></div>
			<script type="text/javascript">
<%-- 			var num = '<%=request.getParameter("number")%>' --%>
			function ajax(url,data,dataType,type,fun){
				$.ajax({
				url:url,
				data:data,
				dataType:dataType,
				type:type,
				traditional:true,
				success:fun
				})
			}
			function dingdan(){
				var id = '<%=request.getParameter("id")%>';
				var feiyong='<%=request.getParameter("feiyong") %>'
// 				alert(feiyong)
                ajax("/secondproject/ordercontroller/insertorder.do",{"customer":"${username}","address":"青岛","status":1},"text","post",function(data){
                	if(data=="err"){
                		
                	}else{
                		ajax("/secondproject/ordercontroller/insertordercommodity.do",{"orderid":data,"name":commodity_code,"number":num},"text","post",function(data){
                			if(data=="success"){
                				ajax("/secondproject/shopcontroller/delete.do",{"id":id},"text","post",function(data){
                					console.log(data)
                					if(data == "success"){
                					location.href="/secondproject/jsp/store/storeprivate/pay1.jsp?id="+id+"&feiyong="+feiyong
                					}
                				});
                			}
                		})
                	}
                })
			}
			init();
			var commodity_code = new Array();
			var num = new Array();
			function init(){
			var id = '<%=request.getParameter("id")%>';
// 						console.log(id)
				ajax("/secondproject/shopcontroller/order.do",{"id":id},"json","post",function(data){
					console.log(data)
					var html = '';
					$.each(data.order,function(i,dom){
						html += '<ul class="item-content clearfix"><div class="pay-phone"><li class="td td-item"><div class="item-pic"><a href="#" class="J_MakePoint"><img style=""src="/image/'+dom.url+'" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">'+dom.name+'</a></div></div></li><li class="td td-info"><div class="item-props"><span class="sku-line">颜色：12#川南玛瑙</span><span class="sku-line">包装：裸装</span></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><em class="J_Price price-now">'+dom.price+'</em></div></div></li></div><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><span class="phone-title">购买数量</span><div class="sl"><input class="text_box"  name="" type="text" value="'+dom.number+'" style="width:30px;" /></div></div></div></li><li class="td td-sum"><div class="td-inner"><em tabindex="0" class="J_ItemSum number">'+parseInt(dom.number)*parseInt(dom.price)+'</em></div></li><li class="td td-oplist"><div class="td-inner"><span class="phone-title">配送方式</span><div class="pay-logis">快递<b class="sys_item_freprice">包</b>邮</div></div></li></ul>';
						commodity_code.push(dom.productid);
						num.push(dom.number)
					})
					$("#bundle-main").html(html)
				})
			}
			</script>
	</body>
</html>