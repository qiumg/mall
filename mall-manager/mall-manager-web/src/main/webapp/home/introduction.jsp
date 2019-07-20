<%@ page import="com.mall.user" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/17
  Time: 8:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>商品页面</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css"/>
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>
    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link type="text/css" href="../css/optstyle.css" rel="stylesheet"/>
    <link type="text/css" href="../css/style.css" rel="stylesheet"/>

    <script type="text/javascript" src="../basic/js/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="../basic/js/quick_links.js"></script>

    <script type="text/javascript" src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
    <script type="text/javascript" src="../js/jquery.imagezoom.min.js"></script>
    <script type="text/javascript" src="../js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="../js/list.js"></script>

</head>

<body>


<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <a href="login.html" target="_top" class="h">亲，请登录</a>
                <a href="register.html" target="_top">免费注册</a>
            </div>
        </div>
    </ul>
    <ul class="message-r">
        <div class="topMessage home">
            <div class="menu-hd"><a href="../index.jsp" target="_top" class="h">商城首页</a></div>
        </div>
        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a href="../person/index.jsp" target="_top"><i
                    class="am-icon-user am-icon-fw"></i>个人中心</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="car.do?_method=selectCar" target="_top"><i
                    class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                          class="h"></strong></a></div>
        </div>
        <div class="topMessage favorite">
            <div class="menu-hd"><a href="../person/collection.html" target="_top"><i
                    class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
            </div>
        </div>
    </ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
    <div class="logo"><img src="images/logo.png" /></div>
    <div class="logoBig">
        <li><img src="images/logobig.png" /></li>
    </div>

    <div class="search-bar pr">
        <a name="index_none_header_sysc" href="#"></a>
        <form action="/SearchProductServlet" method="get">
            <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
            <input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
        </form>
    </div>
</div>

<div class="clear"></div>
</div>

<div class="clear"></div>
<b class="line"></b>
<div class="listMain">

    <!--分类-->
    <div class="nav-table">
        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="../index.jsp">首页</a></li>
                <li class="qc"><a href="#">闪购</a></li>
                <li class="qc"><a href="#">限时抢</a></li>
                <li class="qc"><a href="#">团购</a></li>
                <li class="qc last"><a href="#">大包装</a></li>
            </ul>
            <div class="nav-extra">
                <i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
                <i class="am-icon-angle-right" style="padding-left: 10px;"></i>
            </div>
        </div>
    </div>
    <ol class="am-breadcrumb am-breadcrumb-slash">
        <li><a href="../index.jsp">首页</a></li>
        <li><a href="#">分类</a></li>
        <li class="am-active">内容</li>
    </ol>
    <script type="text/javascript">
        $(function () {
        });
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
    </script>
    <div class="scoll">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <img src="../images/01.jpg" title="pic"/>
                    </li>

                </ul>
            </div>
        </section>
    </div>

    <!--放大镜-->

    <div class="item-inform">
        <div class="clearfixLeft" id="clearcontent">

            <div class="box">
                <script type="text/javascript">
                    $(document).ready(function () {
                        $(".jqzoom").imagezoom();
                        $("#thumblist li a").click(function () {
                            $(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
                            $(".jqzoom").attr('src', $(this).find("img").attr("mid"));
                            $(".jqzoom").attr('rel', $(this).find("img").attr("big"));
                        });
                    });
                </script>

                <div class="tb-booth tb-pic tb-s310">
                    <c:if test="${product != null}">
                        <img src="../${product.main_Image}"/></a>
                    </c:if>
                </div>
                <ul class="tb-thumb" id="thumblist">
                    <li class="tb-selected">
                        <div class="tb-pic tb-s40">
                            <c:if test="${product != null}">
                            <a href="#"><img src="../${product.main_Image}"/></a>
                            </c:if>
                        </div>
                    </li>

                </ul>
            </div>

            <div class="clear"></div>
        </div>

        <div class="clearfixRight">

            <!--规格属性-->
            <!--名称-->
            <div class="tb-detail-hd">
                <h1>
                    ${product.name}
                </h1>
            </div>
            <div class="tb-detail-list">
                <!--价格-->
                <div class="tb-detail-price">
                    <li class="price iteminfo_price">
                        <dt>促销价</dt>
                        <c:if test="${product != null}">
                        <dd><em>¥</em><b class="sys_item_price">${product.price}</b></dd>
                        </c:if>
                    </li>
                    <li class="price iteminfo_mktprice">
                        <dt>原价</dt>
                        <dd><em>¥</em><b class="sys_item_mktprice">208.00</b></dd>
                    </li>
                    <div class="clear"></div>
                </div>

                <!--地址-->
                <dl class="iteminfo_parameter freight">
                    <dt>配送至</dt>
                    <div class="iteminfo_freprice">
                        <div class="am-form-content address">
                            <select id="province" onchange="selectCity()">
                                <option value="--">--省</option>
                            </select>
                            <select id="city" onchange="selectArea()">
                                <option value="--">--市</option>
                            </select>
                            <select id="area">
                                <option value="--">--区</option>
                            </select>
                        </div>
                        <div class="pay-logis">
                            快递<b class="sys_item_freprice">10</b>元
                        </div>
                    </div>
                </dl>
                <div class="clear"></div>


                <!--销量-->
                <ul class="tm-ind-panel">
                    <li class="tm-ind-item tm-ind-sellCount canClick">
                        <div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count">1015</span></div>
                    </li>
                    <li class="tm-ind-item tm-ind-sumCount canClick">
                        <div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">6015</span>
                        </div>
                    </li>
                    <li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
                        <div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count">640</span></div>
                    </li>
                </ul>
                <div class="clear"></div>

                <!--各种规格-->
                <dl class="iteminfo_parameter sys_item_specpara">
                    <dt class="theme-login">
                        <div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div>
                    </dt>
                    <dd>
                        <!--操作页面-->

                        <div class="theme-popover-mask"></div>

                        <div class="theme-popover">
                            <div class="theme-span"></div>
                            <div class="theme-poptit">
                                <a href="javascript:;" title="关闭" class="close">×</a>
                            </div>
                            <div class="theme-popbod dform">
                                <form class="theme-signin" name="loginform" action="" method="post">

                                    <div class="theme-signin-left">

                                        <div class="theme-options">
                                            <div class="cart-title">颜色</div>
                                            <ul id="color">
                                            </ul>
                                        </div>
                                        <div class="theme-options">
                                            <div class="cart-title">尺寸</div>
                                            <ul id="size">

                                            </ul>
                                        </div>
                                        <div class="theme-options">
                                            <div class="cart-title number">数量</div>
                    <dd>
                        <input id="min" class="am-btn am-btn-default" name="" type="button" value="-"/>
                        <input id="text_box" name="" type="text" value="1" style="width:30px;"/>
                        <input id="add" class="am-btn am-btn-default" name="" type="button" value="+"/>
                    <c:if test="${product != null}">
                        <span id="Stock" class="tb-hidden">库存<span class="stock">${product.stock}</span>件</span>
                    </c:if>
                    </dd>

                </dl>
            </div>
            <div class="clear"></div>

            <div class="btn-op">
                <div class="btn am-btn am-btn-warning">确认</div>
                <div class="btn close am-btn am-btn-warning">取消</div>
            </div>
        </div>
        <div class="theme-signin-right">
            <div class="img-info">
                <img src="../images/zs1.jpg"/>
            </div>
            <div class="text-info">
                <span class="J_Price price-now">¥39.00</span>
                <span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
            </div>
        </div>

        </form>
    </div>
</div>

</dd>
</dl>
<div class="clear"></div>
<!--活动	-->
<div class="shopPromotion gold">
    <div class="hot">
        <dt class="tb-metatit">店铺优惠</dt>
        <div class="gold-list">
            <p>购物满2件打8折，满3件7折<span>点击领券<i class="am-icon-sort-down"></i></span></p>
        </div>
    </div>
    <div class="clear"></div>
    <div class="coupon">
        <dt class="tb-metatit">优惠券</dt>
        <div class="gold-list">
            <ul>
                <li>125减5</li>
                <li>198减10</li>
                <li>298减20</li>
            </ul>
        </div>
    </div>
</div>
</div>
<%
    HttpSession hs=request.getSession(false);
    String s= (String) hs.getAttribute("loginName");
    user us= (user) hs.getAttribute("user");
							%>
<div class="pay" style="margin-left: 600px">
    <div class="pay-opt">
        <a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
        <a><span class="am-icon-heart am-icon-fw">收藏</span></a>

    </div>
    <li>
        <div class="clearfix tb-btn tb-btn-buy theme-login">
           <% if(s == null || s.isEmpty()){%>
            <a id="LikBuy1" title="点此按钮到下一步确认购买信息" href="../home/login.jsp">立即购买</a>
            <%}else{%>
            <a id="LikBuy" title="点此按钮到下一步确认购买信息" href="#">立即购买</a>
            <%}%>
        </div>
    </li>
    <li>
        <div class="clearfix tb-btn tb-btn-basket theme-login">
            <% if(s == null || s.isEmpty()){%>
            <a id="LikBasket1" title="加入购物车" href="../home/login.jsp"><i></i>加入购物车</a>
            <%}else{%>
            <a id="LikBasket" title="加入购物车" href="#"><i></i>加入购物车</a>
            <%}%>
        </div>
    </li>
</div>

</div>

<div class="clear"></div>

</div>

<!--优惠套装-->
<div class="match">
    <div class="match-title">优惠套装</div>
    <div class="match-comment">
        <ul class="like_list">
            <li>
                <div class="s_picBox">
                    <a class="s_pic" href="#"><img src="../images/zs1.jpg"></a>
                </div>
                <a class="txt" target="_blank" href="#">精品</a>
                <div class="info-box"><span class="info-box-price">¥ 79.00</span> <span class="info-original-price">￥ 199.00</span>
                </div>
            </li>
            <li class="plus_icon"><i>+</i></li>
            <li>
                <div class="s_picBox">
                    <a class="s_pic" href="#"><img src="../images/zs2.jpg"></a>
                </div>
                <a class="txt" target="_blank" href="#">精品</a>
                <div class="info-box"><span class="info-box-price">¥ 109.00</span> <span class="info-original-price">￥ 299.00</span>
                </div>
            </li>
            <li class="plus_icon"><i>=</i></li>
            <li class="total_price">
                <p class="combo_price"><span class="c-title">套餐价:</span><span>￥149.00</span></p>
                <p class="save_all">共省:<span>￥39.00</span></p> <a href="#" class="buy_now">立即购买</a></li>
            <li class="plus_icon"><i class="am-icon-angle-right"></i></li>
        </ul>
    </div>
</div>
<div class="clear"></div>


<!-- introduce-->

<div class="introduce">
    <div class="browse">
        <div class="mc">
            <ul>
                <div class="mt">
                    <h2>看了又看</h2>
                </div>

                <li class="first">
                    <div class="p-img">
                        <a href="#"> <img class="" src="../images/act1.jpg"> </a>
                    </div>
                    <div class="p-name"><a href="#">
                        精品男鞋
                    </a>
                    </div>
                    <div class="p-price"><strong>￥79.00</strong></div>
                </li>
                <li>
                    <div class="p-img">
                        <a href="#"> <img class="" src="../images/act2.jpg"> </a>
                    </div>
                    <div class="p-name"><a href="#">
                        精品男鞋
                    </a>
                    </div>
                    <div class="p-price"><strong>￥79.00</strong></div>
                </li>
                <li>
                    <div class="p-img">
                        <a href="#"> <img class="" src="../images/act3.jpg"> </a>
                    </div>
                    <div class="p-name"><a href="#">
                        精品男鞋
                    </a>
                    </div>
                    <div class="p-price"><strong>￥79.00</strong></div>
                </li>
                <li>
                    <div class="p-img">
                        <a href="#"> <img class="" src="../images/b-51.jpg"> </a>
                    </div>
                    <div class="p-name"><a href="#">
                        精品男鞋
                    </a>
                    </div>
                    <div class="p-price"><strong>￥79.00</strong></div>
                </li>
                <li>
                    <div class="p-img">
                        <a href="#"> <img class="" src="../images/b-52.jpg"> </a>
                    </div>
                    <div class="p-name"><a href="#">
                        精品男鞋
                    </a>
                    </div>
                    <div class="p-price"><strong>￥79.00</strong></div>
                </li>

            </ul>
        </div>
    </div>
    <div class="introduceMain">
        <div class="am-tabs" data-am-tabs>
            <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active">
                    <a href="#">

                        <span class="index-needs-dt-txt">宝贝详情</span></a>

                </li>

                <li>
                    <a href="#">

                        <span class="index-needs-dt-txt">全部评价</span></a>

                </li>

                <li>
                    <a href="#">

                        <span class="index-needs-dt-txt">猜你喜欢</span></a>
                </li>
            </ul>

            <div class="am-tabs-bd">

                <div class="am-tab-panel am-fade am-in am-active">
                    <div class="J_Brand">

                        <div class="attr-list-hd tm-clear">
                            <h4>产品参数：</h4></div>
                        <div class="clear"></div>
                        <ul id="J_AttrUL">
                            <li title="">产品类型:&nbsp;休闲鞋</li>
                            <li title="">产品商家:&nbsp;花花公子</li>
                            <li title="">产地:&nbsp;湖北省武汉市</li>
                            <li title="">产品规格:&nbsp;</li>
                            <li title="">产品标准号:&nbsp;GB/T 22165</li>
                            <li title="">生产许可证编号：&nbsp;QS4201 1801 0226</li>
                        </ul>
                        <div class="clear"></div>
                    </div>

                    <div class="details">
                        <div class="attr-list-hd after-market-hd">
                            <h4>商品细节</h4>
                        </div>
                        <div class="twlistNews">
                            <img src="../images/act1.jpg"/>
                            <img src="../images/act2.jpg"/>
                            <img src="../images/act3.jpg"/>
                            <img src="../images/b-51.jpg"/>
                            <img src="../images/b-52.jpg"/>
                            <img src="../images/b-53.jpg"/>
                            <img src="../images/b-54.jpg"/>
                        </div>
                    </div>
                    <div class="clear"></div>

                </div>

                <div class="am-tab-panel am-fade">

                    <div class="actor-new">
                        <div class="rate">
                            <strong>100<span>%</span></strong><br> <span>好评度</span>
                        </div>
                        <dl>
                            <dt>买家印象</dt>
                            <dd class="p-bfc">
                                <q class="comm-tags"><span>鞋子不错</span><em>(2177)</em></q>
                                <q class="comm-tags"><span>颜色真实</span><em>(1860)</em></q>
                                <q class="comm-tags"><span>穿着舒服</span><em>(1823)</em></q>
                                <q class="comm-tags"><span>质量不错</span><em>(1689)</em></q>
                                <q class="comm-tags"><span>价格便宜</span><em>(1119)</em></q>
                                <q class="comm-tags"><span>特价买的</span><em>(865)</em></q>
                                <q class="comm-tags"><span>很透气</span><em>(831)</em></q>
                            </dd>
                        </dl>
                    </div>
                    <div class="clear"></div>
                    <div class="tb-r-filter-bar">
                        <ul class=" tb-taglist am-avg-sm-4">
                            <li class="tb-taglist-li tb-taglist-li-current">
                                <div class="comment-info">
                                    <span>全部评价</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>

                            <li class="tb-taglist-li tb-taglist-li-1">
                                <div class="comment-info">
                                    <span>好评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>

                            <li class="tb-taglist-li tb-taglist-li-0">
                                <div class="comment-info">
                                    <span>中评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>

                            <li class="tb-taglist-li tb-taglist-li--1">
                                <div class="comment-info">
                                    <span>差评</span>
                                    <span class="tb-tbcr-num">(32)</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>

                    <ul class="am-comments-list am-comments-list-flip">
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年10月28日 11:33</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255095758792">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">h***n (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月25日 12:48</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="258040417670">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>
                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>

                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年10月28日 11:33</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255095758792">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">h***n (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月25日 12:48</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="258040417670">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>
                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">l***4 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年10月28日 11:33</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255095758792">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">b***1 (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月02日 17:46</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="255776406962">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            穿起来合脚轻松，不厚，没色差，颜色好看！买这个鞋子还接到诈骗电话，我很好奇他们是怎么知道我买了这双鞋子，并且还知道我的电话的！
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：白色&nbsp;&nbsp;尺码：42码
                                        </div>
                                    </div>

                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>
                        <li class="am-comment">
                            <!-- 评论容器 -->
                            <a href="">
                                <img class="am-comment-avatar" src="../images/hwbn40x40.jpg"/>
                                <!-- 评论者头像 -->
                            </a>

                            <div class="am-comment-main">
                                <!-- 评论内容容器 -->
                                <header class="am-comment-hd">
                                    <!--<h3 class="am-comment-title">评论标题</h3>-->
                                    <div class="am-comment-meta">
                                        <!-- 评论元数据 -->
                                        <a href="#link-to-user" class="am-comment-author">h***n (匿名)</a>
                                        <!-- 评论者 -->
                                        评论于
                                        <time datetime="">2015年11月25日 12:48</time>
                                    </div>
                                </header>

                                <div class="am-comment-bd">
                                    <div class="tb-rev-item " data-id="258040417670">
                                        <div class="J_TbcRate_ReviewContent tb-tbcr-content ">
                                            式样不错，初冬穿
                                        </div>
                                        <div class="tb-r-act-bar">
                                            颜色分类：黑色&nbsp;&nbsp;尺码：41码
                                        </div>
                                    </div>
                                </div>
                                <!-- 评论内容 -->
                            </div>
                        </li>

                    </ul>

                    <div class="clear"></div>

                    <!--分页 -->
                    <ul class="am-pagination am-pagination-right">
                        <li class="am-disabled"><a href="#">&laquo;</a></li>
                        <li class="am-active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                    <div class="clear"></div>

                    <div class="tb-reviewsft">
                        <div class="tb-rate-alert type-attention">购买前请查看该商品的 <a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。
                        </div>
                    </div>

                </div>

                <div class="am-tab-panel am-fade">
                    <div class="like">
                        <ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>

                                </div>
                            </li>
                            <li>
                                <div class="i-pic limit">
                                    <img src="../images/f-2.jpg"/>
                                    <p>【鳄鱼】精品皮鞋
                                        <span>体验舒服的皮鞋</span></p>
                                    <p class="price fl">
                                        <b>¥</b>
                                        <strong>298.00</strong>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>

                    <!--分页 -->
                    <ul class="am-pagination am-pagination-right">
                        <li class="am-disabled"><a href="#">&laquo;</a></li>
                        <li class="am-active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&raquo;</a></li>
                    </ul>
                    <div class="clear"></div>

                </div>

            </div>

        </div>

        <div class="clear"></div>

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
                    <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank"
                                                               title="模板之家">模板之家</a> - Collect from <a
                            href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
                </p>
            </div>
        </div>
    </div>

</div>
</div>
<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item">
                <a href="#">
                    <span class="setting"></span>
                </a>
                <div class="ibar_login_box status_login">
                    <div class="avatar_box">
                        <p class="avatar_imgbox"><img src="../images/no-img_mid_.jpg"/></p>
                        <ul class="user_info">
                            <li>用户名：sl1903</li>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>
                    <div class="login_btnbox">
                        <a href="#" class="login_order">我的订单</a>
                        <a href="#" class="login_favorite">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white"></i>
                </div>

            </div>
            <div id="shopCart" class="item">
                <a href="#">
                    <span class="message"></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num">0</p>
            </div>
            <div id="asset" class="item">
                <a href="#">
                    <span class="view"></span>
                </a>
                <div class="mp_tooltip">
                    我的资产
                    <i class="icon_arrow_right_black"></i>
                </div>
            </div>

            <div id="foot" class="item">
                <a href="#">
                    <span class="zuji"></span>
                </a>
                <div class="mp_tooltip">
                    我的足迹
                    <i class="icon_arrow_right_black"></i>
                </div>
            </div>

            <div id="brand" class="item">
                <a href="#">
                    <span class="wdsc"><img src="../images/wdsc.png"/></span>
                </a>
                <div class="mp_tooltip">
                    我的收藏
                    <i class="icon_arrow_right_black"></i>
                </div>
            </div>

            <div id="broadcast" class="item">
                <a href="#">
                    <span class="chongzhi"><img src="../images/chongzhi.png"/></span>
                </a>
                <div class="mp_tooltip">
                    我要充值
                    <i class="icon_arrow_right_black"></i>
                </div>
            </div>

            <div class="quick_toggle">
                <li class="qtitem">
                    <a href="#"><span class="kfzx"></span></a>
                    <div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
                </li>
                <!--二维码 -->
                <li class="qtitem">
                    <a href="#none"><span class="mpbtn_qrcode"></span></a>
                    <div class="mp_qrcode" style="display:none;"><img src="../images/weixin_code_145.png"/><i
                            class="icon_arrow_white"></i></div>
                </li>
                <li class="qtitem">
                    <a href="#top" class="return_top"><span class="top"></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop" class="quick_links_pop hide"></div>

        </div>

    </div>
    <div id="prof-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list">
            <a href="#" target="_blank" class="pl">
                <div class="num">0</div>
                <div class="text">优惠券</div>
            </a>
            <a href="#" target="_blank" class="pl">
                <div class="num">0</div>
                <div class="text">红包</div>
            </a>
            <a href="#" target="_blank" class="pl money">
                <div class="num">￥0</div>
                <div class="text">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content" class="nav-content">
        <div class="nav-con-close">
            <i class="am-icon-angle-right am-icon-fw"></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>

</body>

<script type="text/javascript">
    $(function () {
        $.ajax({
                url: "/change.do",
                type: "post",
                data: {_method: "selectProvinces"},
                success: function (data) {
                    var pList = JSON.parse(data);
                    //alert(data)
                    var pSelect = $("#province");
                    for (var i = 0; i < pList.length; i++) {
                        pSelect.append("<option value='" + pList[i].provinceId + "'>" + pList[i].province + "</option>")
                    }
                }
            }
        )
        var List = ${product.attribute_List};
        $("#color").append("<li class='sku-line selected'>"+List.color[0]+"<i></i></li>");
        for(var i=1 ;i<List.color.length; i++){
            $("#color").append("<li class='sku-line '>"+List.color[i]+"<i></i></li>");
        }
        $("#size").append("<li class='sku-line selected'>"+List.size[0]+"<i></i></li>");
        for(var i=1 ;i<List.size.length; i++){
            $("#size").append("<li class='sku-line '>"+List.size[i]+"<i></i></li>");
        }
        $("#color").delegate("li","click",function(){
            $(this).siblings("li").removeClass("selected");
            $(this).addClass("selected");
        })
        $("#size").delegate("li","click",function(){
            $(this).siblings("li").removeClass("selected");
            $(this).addClass("selected");
        })
        $("#LikBuy").click(function () {
            var productId = ${product.id};
            var provinceInfo = $("#province").val();
            var cityInfo = $("#city").val();
            var areaInfo = $("#area").val();
            var colorInfo = $("#color").find(".selected").text();
            var sizeInfo = $("#size").find(".selected").text();
            var productNum = $("#text_box").val();
            $.ajax({
                url:"/pay.do",
                type:"get",
                data:{_method:"addInfo",productid:productId,province:provinceInfo,city:cityInfo,area:areaInfo,color:colorInfo,size:sizeInfo,productnum:productNum},
                success:function(data){
                    window.location.href="/pay.do?_method=jump&id="+data;
                }
            })
        })
        $("#LikBasket").click(function () {
            var productId = ${product.id};
            var provinceInfo = $("#province").val();
            var cityInfo = $("#city").val();
            var areaInfo = $("#area").val();
            var colorInfo = $("#color").find(".selected").text();
            var sizeInfo = $("#size").find(".selected").text();
            var productNum = $("#text_box").val();
            $.ajax({
                url:"/pay.do",
                type:"get",
                data:{_method:"addInfo",productid:productId,province:provinceInfo,city:cityInfo,area:areaInfo,color:colorInfo,size:sizeInfo,productnum:productNum},
                success:function(){
                    window.location.href="/car.do?_method=selectCar";
                }
            })
        })
    })

    function selectCity() {
        var pId = $("#province").val();
        $.ajax({
                url: "/change.do",
                type: "post",
                data: {_method: "selectCities", provinceid: pId},
                success: function (data) {
                    var cList = JSON.parse(data);
                    var cSelect = $("#city");
                    cSelect.empty();
                    for (var i = 0; i < cList.length; i++) {
                        cSelect.append(" <option value='" + cList[i].cityId + "'>" + cList[i].city + "</option>")
                    }
                }
            }
        )
    }

    function selectArea() {
        var cId = $("#city").val();
        $.ajax({
                url: "/change.do",
                type: "post",
                data: {_method: "selectAreas", cityid: cId},
                success: function (data) {
                    var aList = JSON.parse(data);
                    var aSelect = $("#area");
                    aSelect.empty();
                    for (var i = 0; i < aList.length; i++) {
                        aSelect.append(" <option value='" + aList[i].areaId + "'>" + aList[i].area + "</option>")
                    }
                }
            }
        )
    }

</script>


</html>