<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/17
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>结算页面</title>

    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />

    <link href="../css/jsstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/address.js"></script>

</head>

<body>

<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <a href="#" target="_top" class="h">亲，请登录</a>
                <a href="#" target="_top">免费注册</a>
            </div>
        </div>
    </ul>
    <ul class="message-r">
        <div class="topMessage home">
            <div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
        </div>
        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a href="../person/index.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="car.do?_method=selectCar" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
        </div>
        <div class="topMessage favorite">
            <div class="menu-hd"><a href="../person/collection.html" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
        </div></ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
    <div class="logo"><img src="../images/logo.png" /></div>
    <div class="logoBig">
        <li><img src="../images/logobig.png" /></li>
    </div>

    <div class="search-bar pr">
        <a name="index_none_header_sysc" href="#"></a>
        <form>
            <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
            <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
        </form>
    </div>
</div>

<div class="clear"></div>
<div class="concent">
    <!--地址 -->
    <div class="paycont">
        <div class="address">
            <h3>确认收货地址 </h3>
            <div class="control">
                <div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
            </div>
            <div class="clear"></div>
            <ul>
                <div class="per-border"></div>
                <li class="user-addresslist defaultAddr">

                    <div class="address-left">
                        <div class="user DefaultAddr">

										<span class="buy-address-detail">
                   <span class="buy-user">艾迪 </span>
										<span class="buy-phone">15888888888</span>
										</span>
                        </div>
                        <div class="default-address DefaultAddr">
                            <span class="buy-line-title buy-line-title-type">收货地址：</span>
                            <span class="buy--address-detail">
								   <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">洪山</span>区
										<span class="street">雄楚大道666号(中南财经政法大学)</span>
										</span>

                            </span>
                        </div>
                        <ins class="deftip">默认地址</ins>
                    </div>
                    <div class="address-right">
                        <a href="../person/address.html">
                            <span class="am-icon-angle-right am-icon-lg"></span></a>
                    </div>
                    <div class="clear"></div>

                    <div class="new-addr-btn">
                        <a href="#" class="hidden">设为默认</a>
                        <span class="new-addr-bar hidden">|</span>
                        <a href="#">编辑</a>
                        <span class="new-addr-bar">|</span>
                        <a href="javascript:void(0);" onclick="delClick(this);">删除</a>
                    </div>

                </li>
                <div class="per-border"></div>
                <li class="user-addresslist">
                    <div class="address-left">
                        <div class="user DefaultAddr">

										<span class="buy-address-detail">
                   <span class="buy-user">艾迪 </span>
										<span class="buy-phone">15877777777</span>
										</span>
                        </div>
                        <div class="default-address DefaultAddr">
                            <span class="buy-line-title buy-line-title-type">收货地址：</span>
                            <span class="buy--address-detail">
								   <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">武昌</span>区
										<span class="street">东湖路75号众环大厦9栋9层999</span>
										</span>

                            </span>
                        </div>
                        <ins class="deftip hidden">默认地址</ins>
                    </div>
                    <div class="address-right">
                        <span class="am-icon-angle-right am-icon-lg"></span>
                    </div>
                    <div class="clear"></div>

                    <div class="new-addr-btn">
                        <a href="#">设为默认</a>
                        <span class="new-addr-bar">|</span>
                        <a href="#">编辑</a>
                        <span class="new-addr-bar">|</span>
                        <a href="javascript:void(0);"  onclick="delClick(this);">删除</a>
                    </div>

                </li>

            </ul>

            <div class="clear"></div>
        </div>
        <!--物流 -->
        <div class="logistics">
            <h3>选择物流方式</h3>
            <ul class="op_express_delivery_hot">
                <li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li>
                <li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li>
                <li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li>
                <li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li>
                <li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li>
            </ul>
        </div>
        <div class="clear"></div>

        <!--支付方式-->
        <div class="logistics">
            <h3>选择支付方式</h3>
            <ul class="pay-list">
                <li class="pay card"><img src="../images/wangyin.jpg" />银联<span></span></li>
                <li class="pay qq"><img src="../images/weizhifu.jpg" />微信<span></span></li>
                <li class="pay taobao"><img src="../images/zhifubao.jpg" />支付宝<span></span></li>
            </ul>
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

                    </div>
                </div>
                <div class="clear"></div>

                <tr class="item-list">
                    <div class="bundle  bundle-last">
                        <c:forEach items="${cars}" var="car">
                        <div class="bundle-main">
                            <ul class="item-content clearfix">
                                <div class="pay-phone">
                                    <li class="td td-item">
                                        <div class="item-pic">
                                            <a href="#" class="J_MakePoint">

                                                <img src="${car.main_image}" class="itempic J_ItemImg" style="width: 100px;height: 100px;"></a>

                                        </div>
                                        <div class="item-info">
                                            <div class="item-basic-info">
                                                <a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11">${car.name}</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-info">
                                        <div class="item-props">
                                            <span class="sku-line">${car.product_specs}</span>

                                        </div>
                                    </li>
                                    <li class="td td-price">
                                        <div class="item-price price-promo-promo">
                                            <div class="price-content">
                                                <em class="J_Price price-now">${car.product_price}</em>
                                            </div>
                                        </div>
                                    </li>
                                </div>
                                <li class="td td-amount">
                                    <div class="amount-wrapper ">
                                        <div class="item-amount ">
                                            <span class="phone-title">购买数量</span>
                                            <div class="sl">
                                                <input class="min am-btn" name="" type="button" value="-" />
                                                <input class="text_box" name="" type="text" value="${car.quantity}" style="width:30px;" />
                                                <input class="add am-btn" name="" type="button" value="+" />
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-sum">
                                    <div class="td-inner">
                                        <em tabindex="0" class="J_ItemSum number">${car.quantity*car.product_price}</em>
                                    </div>
                                </li>


                            </ul>
                            <div class="clear"></div>

                        </div>
                        </c:forEach>
                    </div></tr>
                <div class="clear"></div>
            </div>


        </div>
        <div class="clear"></div>

        <!--含运费小计 -->
        <div class="buy-point-discharge ">
            <p class="price g_price ">
                合计（含运费） <span>¥</span><em class="pay-sum">244.00</em>
            </p>
        </div>

        <!--信息 -->
        <div class="order-go clearfix">
            <div class="pay-confirm clearfix">
                <div class="box">
                    <div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
                        <span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">244.00</em>
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
                        <a id="J_Go" href="success.jsp" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
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
    <div class="footer-hd">
        <p>
            <a href="#">恒望科技</a>
            <b>|</b>
            <a href="#">商城首页</a>
            <b>|</b>
            <a href="#">支付宝</a>
            <b>|</b>
            <a href="#">物流</a>
        </p>
    </div>
    <div class="footer-bd">
        <p>
            <a href="#">关于恒望</a>
            <a href="#">合作伙伴</a>
            <a href="#">联系我们</a>
            <a href="#">网站地图</a>
            <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
        </p>
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
                    <small>100字以内写出你的详细地址...</small>
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
</body>


</html>
