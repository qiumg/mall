<%@ page import="com.mall.user" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/7/14
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>首页</title>

    <link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

    <link href="${pageContext.request.contextPath}/basic/css/demo.css" rel="stylesheet" type="text/css" />

    <link href="${pageContext.request.contextPath}/css/hmstyle.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>


</head>

<body>
<div class="hmtop">
    <!--顶部导航条 -->
    <div class="am-container header">
        <ul class="message-l">
            <div class="topMessage">
                <div class="menu-hd">
                    <%
                        HttpSession hs=request.getSession(false);
                        String s= (String) hs.getAttribute("loginName");
                        user us= (user) hs.getAttribute("user");
                        if(s == null || s.isEmpty()){								%>
                    <a href="home/login.jsp" target="_top" class="h" style="color: red">请登录&nbsp</a>
                    <%}else{%>
                    <a href="home/login.jsp" target="_top" class="h" style="color: seagreen"><%="欢迎："+us.getName() %>&nbsp</a>
                    <%}%>
                    <%
                        if(s == null || s.isEmpty()){								%>
                    <a href="home/register.jsp" target="_top" >&nbsp免费注册</a>
                    <%}else{%>
                    <a href="/outajax.do" id="out" target="_top" style="color: red">&nbsp退出登录</a>
                    <%}%>
                </div>
            </div>
        </ul>
        <ul class="message-r">
            <div class="topMessage home">
                <div class="menu-hd"><a href="index.jsp" target="_top" class="h">商城首页</a></div>
            </div>
            <div class="topMessage my-shangcheng">
                <%
                    if(s == null || s.isEmpty()){								%>
                <div class="menu-hd MyShangcheng"><a href="home/login.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                <%}else{%>
                <div class="menu-hd MyShangcheng"><a href="person/index.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                <%}%>
            </div>
            <div class="topMessage mini-cart">
                <%
                    if(s == null || s.isEmpty()){								%>
                <div class="menu-hd"><a id="mc-menu-hd" href="home/login.jsp" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
                <%}else{%>
                <div class="menu-hd"><a id="mc-menu-hd" href="car.do?_method=selectCar" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
                <%}%>
            </div>
            <div class="topMessage favorite">
                <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div></div>
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


<div class="banner">
    <!--轮播 -->
    <div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
        <ul class="am-slides">
            <li class="banner1"><a href="home/introduction.html"><img src="images/ad1.jpg" style="width: 800px;height: 400px;"/></a></li>
            <li class="banner2"><a><img src="images/ad2.jpg" style="width: 800px;height: 400px;"/></a></li>
            <li class="banner3"><a><img src="images/ad3.jpg" style="width: 800px;height: 400px;"/></a></li>
            <li class="banner4"><a><img src="images/ad4.jpg" style="width: 800px;height: 400px;"/></a></li>

        </ul>
    </div>
    <div class="clear"></div>
</div>

<div class="shopNav">
    <div class="slideall">

        <div class="long-title"><span class="all-goods">全部分类</span></div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="#">首页</a></li>
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

        <!--侧边导航 -->
        <div id="nav" class="navfull">
            <div class="area clearfix">
                <div class="category-content" id="guide_2">

                    <div class="category">
                        <ul class="category-list" id="js_climit_li">


                        </ul>
                    </div>
                </div>

            </div>
        </div>
        <!--轮播 -->
        <script type="text/javascript">
            (function() {
                $('.am-slider').flexslider();
            });
            $(document).ready(function() {

                $("li").hover(function() {
                    $(".category-content .category-list li.first .menu-in").css("display", "none");
                    $(".category-content .category-list li.first").removeClass("hover");
                    $(this).addClass("hover");
                    $(this).children("div.menu-in").css("display", "block")
                }, function() {
                    $(this).removeClass("hover")
                    $(this).children("div.menu-in").css("display", "none")
                });
            })
        </script>


        <!--小导航 -->
        <div class="am-g am-g-fixed smallnav">
            <div class="am-u-sm-3">
                <a href="sort.html"><img src="images/navsmall.jpg" />
                    <div class="title">商品分类</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="images/huismall.jpg" />
                    <div class="title">大聚惠</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="images/mansmall.jpg" />
                    <div class="title">个人中心</div>
                </a>
            </div>
            <div class="am-u-sm-3">
                <a href="#"><img src="images/moneysmall.jpg" />
                    <div class="title">投资理财</div>
                </a>
            </div>
        </div>

        <!--走马灯 -->

        <div class="marqueen">
            <span class="marqueen-title">商城头条</span>
            <div class="demo">

                <ul>
                    <li class="title-first"><a target="_blank" href="#">
                        <img src="images/TJ2.jpg"></img>
                        <span>[特惠]</span>商城爆品1分秒
                    </a></li>
                    <li class="title-first"><a target="_blank" href="#">
                        <span>[公告]</span>商城与广州市签署战略合作协议
                        <img src="images/TJ.jpg"></img>
                        <p>XXXXXXXXXXXXXXXXXX</p>
                    </a></li>

                    <div class="mod-vip">
                        <div class="m-baseinfo">
                            <a href="person/index.html">
                                <img src="images/getAvatar.do.jpg">
                            </a>
                            <em>
                                Hi ,
                                <%if(s == null || s.isEmpty()){	%>
                                <span class="s-name">请登录</span>
                                <%}else{%>
                                <span class="s-name"><%=s%></span>
                                <%}%>
                                <a href="#"><p>点击更多优惠活动</p></a>
                            </em>
                        </div>
<%--                        <div class="member-logout">--%>
<%--                            <a class="am-btn-warning btn" href="home/login.html">登录</a>--%>
<%--                            <a class="am-btn-warning btn" href="home/register.html">注册</a>--%>
<%--                        </div>--%>
                        <div class="member-login">
                            <a href="#"><strong>0</strong>待收货</a>
                            <a href="#"><strong>0</strong>待发货</a>
                            <a href="#"><strong>0</strong>待付款</a>
                            <a href="#"><strong>0</strong>待评价</a>
                        </div>
                        <div class="clear"></div>
                    </div>

                    <li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
                    <li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
                    <li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>

                </ul>
                <div class="advTip"><img src="images/advTip.jpg"/></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <script type="text/javascript">
        if ($(window).width() < 640) {
            function autoScroll(obj) {
                $(obj).find("ul").animate({
                    marginTop: "-39px"
                }, 500, function() {
                    $(this).css({
                        marginTop: "0px"
                    }).find("li:first").appendTo(this);
                })
            }
            $(function() {
                setInterval('autoScroll(".demo")', 3000);
            })
        }
    </script>
</div>
<div class="shopMainbg">
    <div class="shopMain" id="shopmain">

        <!--今日推荐 -->

        <div class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3" >
                <img src="images/2019.jpg "></img>
                <p>今日<br>推荐</p>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>新品上市</h3>
                    <h4>开年福利篇</h4>
                </div>
                <div class="recommendationMain " id="newproduct">
                    <a><img></img></a>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>抢先一步</h3>
                    <h4>让爱早回家</h4>
                </div>
                <div class="recommendationMain ">
                    <a><img></img></a>
                </div>
            </div>
            <div class="am-u-sm-4 am-u-lg-3 ">
                <div class="info ">
                    <h3>浪漫情人节</h3>
                    <h4>甜甜蜜蜜</h4>
                </div>
                <div class="recommendationMain ">
                    <a><img></img></a>
                </div>
            </div>

        </div>
        <div class="clear "></div>
        <!--热门活动 -->

        <div class="am-container activity " id="activity">
            <div class="shopTitle ">
                <h4>活动</h4>
                <h3>每期活动 优惠享不停 </h3>
                <span class="more ">
                              <a class="more-link " href="# ">全部活动</a>
                            </span>
            </div>

            <div class="am-g am-g-fixed ">
                <div class="am-u-sm-3 ">
                    <div class="icon-sale one "></div>
                    <h4>秒杀</h4>
                    <div class="activityMain ">
                        <a href="/introduction?productid=54"><img src="images/activity1.jpg " ></img></a>
                    </div>
                    <div class="info ">
                        <h3>送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 ">
                    <div class="icon-sale two "></div>
                    <h4>特惠</h4>
                    <div class="activityMain ">
                        <a href="/introduction?productid=53"><img src="images/activity2.jpg "></img></a>
                    </div>
                    <div class="info ">
                        <h3>送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 ">
                    <div class="icon-sale three "></div>
                    <h4>团购</h4>
                    <div class="activityMain ">
                        <a href="/introduction?productid=52"><img src="images/activity3.jpg "></img></a>
                    </div>
                    <div class="info ">
                        <h3>送礼优选</h3>
                    </div>
                </div>

                <div class="am-u-sm-3 last ">
                    <div class="icon-sale "></div>
                    <h4>超值</h4>
                    <div class="activityMain ">
                        <a href="/introduction?productid=51"><img src="images/activity4.jpg "></img></a>
                    </div>
                    <div class="info ">
                        <h3>送礼优选</h3>
                    </div>
                </div>

            </div>
        </div>
        <div class="clear "></div>

        <!--休闲鞋-->

        <div class="am-container " >
            <div class="shopTitle ">
                <h4>休闲鞋</h4>
                <h3>每一双鞋子都有一个故事</h3>
                <div class="today-brands ">
                    <a href="# ">奥康</a>
                    <a href="# ">红蜻蜓</a>
                    <a href="# ">意尔康 </a>
                    <a href="# ">斯凯奇</a>
                    <a href="# ">蜘蛛王</a>
                    <a href="# ">康奈</a>
                </div>
                <span class="more ">
                    <a class="more-link " href="# ">更多品牌</a>
                        </span>
            </div>
        </div>

        <div class="am-g am-g-fixed floodOne " id ="CasualShoes">
            <div class="am-u-sm-5 am-u-md-3 am-u-lg-4 text-one ">
                <a >
                    <div class="outer-con ">
                        <div class="title ">
                            休闲时尚主题
                        </div>
                        <div class="sub-title ">
                            当小鱼儿恋上休闲
                        </div>
                    </div>
                    <img  />
                </a>
            </div>
            <div class="am-u-sm-7 am-u-md-5 am-u-lg-4">
                <div class="text-two">
                    <div class="outer-con ">
                        <div class="title ">
                            花花公子
                        </div>
                        <div class="sub-title ">
                            仅售：¥98
                        </div>

                    </div>
                    <a ><img  /></a>
                </div>
                <div class="text-two last">
                    <div class="outer-con ">
                        <div class="title ">
                            花花公子
                        </div>
                        <div class="sub-title ">
                            仅售：¥98
                        </div>

                    </div>
                    <a ><img  /></a>
                </div>
            </div>
            <div class="am-u-sm-12 am-u-md-4 ">
                <div class="am-u-sm-3 am-u-md-6 text-three">
                    <div class="outer-con ">
                        <div class="title ">
                            潮男优选
                        </div>

                        <div class="sub-title ">
                            尝鲜价：¥68
                        </div>
                    </div>
                    <a ><img  /></a>
                </div>

                <div class="am-u-sm-3 am-u-md-6 text-three">
                    <div class="outer-con ">
                        <div class="title ">
                            潮男优选
                        </div>

                        <div class="sub-title ">
                            尝鲜价：¥68
                        </div>
                    </div>
                    <a ><img /></a>
                </div>

                <div class="am-u-sm-3 am-u-md-6 text-three">
                    <div class="outer-con ">
                        <div class="title ">
                            潮男优选
                        </div>

                        <div class="sub-title ">
                            尝鲜价：¥68
                        </div>
                    </div>
                    <a ><img /></a>
                </div>

                <div class="am-u-sm-3 am-u-md-6 text-three last ">
                    <div class="outer-con ">
                        <div class="title ">
                            潮男优选
                        </div>

                        <div class="sub-title ">
                            尝鲜价：¥68
                        </div>
                    </div>
                    <a ><img /></a>
                </div>
            </div>

        </div>
        <div class="clear "></div>
        <!--运动鞋-->
        <div class="am-container " >
            <div class="shopTitle ">
                <h4>运动鞋</h4>
                <h3>飞一般的感觉</h3>
                <div class="today-brands ">
                    <a href="# ">奥康</a>
                    <a href="# ">红蜻蜓</a>
                    <a href="# ">意尔康 </a>
                    <a href="# ">斯凯奇</a>
                    <a href="# ">蜘蛛王</a>
                    <a href="# ">康奈</a>
                </div>
                <span class="more ">
                    <a class="more-link " href="# ">更多品牌</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed floodTwo " id = "GymShoes">


            <div class="am-u-sm-5 am-u-md-4 text-one ">
                <a >
                    <img  />
                    <div class="outer-con ">
                        <div class="title ">
                            运动时尚风格
                        </div>
                        <div class="sub-title ">
                            当小鱼儿恋上运动风
                        </div>

                    </div>
                </a>
            </div>
            <div class="am-u-sm-7 am-u-md-4 am-u-lg-2 text-two">
                <div class="outer-con ">
                    <div class="title ">
                        花花公子
                    </div>

                    <div class="sub-title ">
                        仅售：¥98
                    </div>
                </div>
                <a ><img  /></a>
            </div>

            <div class="am-u-md-4 am-u-lg-2 text-three">
                <div class="outer-con ">
                    <div class="title ">
                        潮男优选
                    </div>

                    <div class="sub-title ">
                        尝鲜价：¥68
                    </div>
                </div>
                <a ><img /></a>
            </div>
            <div class="am-u-md-4 am-u-lg-2 text-three">
                <div class="outer-con ">
                    <div class="title ">
                        潮男优选
                    </div>

                    <div class="sub-title ">
                        尝鲜价：¥68
                    </div>
                </div>
                <a ><img /></a>
            </div>
            <div class="am-u-sm-6 am-u-md-4 am-u-lg-2 text-two ">
                <div class="outer-con ">
                    <div class="title ">
                        花花公子
                    </div>

                    <div class="sub-title ">
                        仅售：¥98
                    </div>
                </div>
                <a ><img  /></a>
            </div>
            <div class="am-u-sm-6 am-u-md-3 am-u-lg-2 text-four ">
                <div class="outer-con ">
                    <div class="title ">
                        花花公子
                    </div>

                    <div class="sub-title ">
                        仅售：¥98
                    </div>
                </div>
                <a ><img  /></a>
            </div>
            <div class="am-u-sm-4 am-u-md-3 am-u-lg-4 text-five">
                <div class="outer-con ">
                    <div class="title ">
                        潮男优选
                    </div>

                    <div class="sub-title ">
                        尝鲜价：¥68
                    </div>

                </div>
                <a ><img /></a>
            </div>
            <div class="am-u-sm-4 am-u-md-3 am-u-lg-2 text-six">
                <div class="outer-con ">
                    <div class="title ">
                        潮男优选
                    </div>

                    <div class="sub-title ">
                        尝鲜价：¥68
                    </div>
                </div>
                <a ><img  /></a>
            </div>
            <div class="am-u-sm-4 am-u-md-3 am-u-lg-4 text-five">
                <div class="outer-con ">
                    <div class="title ">
                        潮男优选
                    </div>

                    <div class="sub-title ">
                        尝鲜价：¥68
                    </div>

                </div>
                <a ><img /></a>
            </div>
        </div>

        <div class="clear "></div>



        <div class="am-container " >
            <div class="shopTitle ">
                <h4>皮鞋</h4>
                <h3>倾心所在，足有所爱</h3>
                <div class="today-brands ">
                    <a href="# ">奥康</a>
                    <a href="# ">红蜻蜓</a>
                    <a href="# ">意尔康 </a>
                    <a href="# ">斯凯奇</a>
                    <a href="# ">蜘蛛王</a>
                    <a href="# ">康奈</a>
                </div>
                <span class="more ">
                    <a class="more-link " href="# ">更多品牌</a>
                        </span>
            </div>
        </div>
        <div class="am-g am-g-fixed flood method3 " >
            <ul class="am-thumbnails " id="leatherShoes">


            </ul>

        </div>

        <div class="footer ">
            <div class="footer-hd ">
                <p>
                    <a href="# ">蓝桥科技</a>
                    <b>|</b>
                    <a href="# ">商城首页</a>
                    <b>|</b>
                    <a href="# ">支付宝</a>
                    <b>|</b>
                    <a href="# ">物流</a>
                </p>
            </div>
            <div class="footer-bd ">
                <p>
                    <a href="# ">关于蓝桥</a>
                    <a href="# ">合作伙伴</a>
                    <a href="# ">联系我们</a>
                    <a href="# ">网站地图</a>
                    <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="潮鞋之家">潮鞋之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
                </p>
            </div>
        </div>
    </div>
</div>
</div>
</div>
<!--引导 -->

<div class="navCir">
    <li class="active"><a href="index.jsp"><i class="am-icon-home "></i>首页</a></li>
    <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
    <li><a href="home/shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="person/index.html"><i class="am-icon-user"></i>我的</a></li>
</div>
<!--菜单 -->
<div class=tip>
    <div id="sidebar">
        <div id="wrap">
            <div id="prof" class="item ">
                <a href="# ">
                    <span class="setting "></span>
                </a>
                <div class="ibar_login_box status_login ">
                    <div class="avatar_box ">
                        <p class="avatar_imgbox "><img src="images/no-img_mid_.jpg " /></p>
                        <ul class="user_info ">
                            <%if(s == null || s.isEmpty()){	%>
                            <li>用户名：未登录</li>
                            <%}else{%>
                            <li style="color: seagreen">用户名：<%=s%></li>
                            <%}%>
                            <li>级&nbsp;别：普通会员</li>
                        </ul>
                    </div>


                    <div class="login_btnbox ">
                        <a href="# " class="login_order ">我的订单</a>
                        <a href="# " class="login_favorite ">我的收藏</a>
                    </div>
                    <i class="icon_arrow_white "></i>
                </div>

            </div>
            <div id="shopCart " class="item ">
                <a href="car.do?_method=selectCar">
                    <span class="message "></span>
                </a>
                <p>
                    购物车
                </p>
                <p class="cart_num "></p>
            </div>

            <div id="foot " class="item ">
                <a href="# ">
                    <span class="zuji "></span>
                </a>
                <div class="mp_tooltip ">
                    我的足迹
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div id="brand " class="item ">
                <a href="#">
                    <span class="wdsc "><img src="images/wdsc.png " /></span>
                </a>
                <div class="mp_tooltip ">
                    我的收藏
                    <i class="icon_arrow_right_black "></i>
                </div>
            </div>

            <div class="quick_toggle ">
                <li class="qtitem ">
                    <a href="# "><span class="kfzx "></span></a>
                    <div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
                </li>
                <!--二维码 -->
                <li class="qtitem ">
                    <a href="#none "><span class="mpbtn_qrcode "></span></a>
                    <div class="mp_qrcode " style="display:none; "><img src="images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
                </li>
                <li class="qtitem ">
                    <a href="#top " class="return_top "><span class="top "></span></a>
                </li>
            </div>

            <!--回到顶部 -->
            <div id="quick_links_pop " class="quick_links_pop hide "></div>

        </div>

    </div>
    <div id="prof-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            我
        </div>
    </div>
    <div id="shopCart-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            购物车
        </div>
    </div>
    <div id="asset-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            资产
        </div>

        <div class="ia-head-list ">
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">优惠券</div>
            </a>
            <a href="# " target="_blank " class="pl ">
                <div class="num ">0</div>
                <div class="text ">红包</div>
            </a>
            <a href="# " target="_blank " class="pl money ">
                <div class="num ">￥0</div>
                <div class="text ">余额</div>
            </a>
        </div>

    </div>
    <div id="foot-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            足迹
        </div>
    </div>
    <div id="brand-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            收藏
        </div>
    </div>
    <div id="broadcast-content " class="nav-content ">
        <div class="nav-con-close ">
            <i class="am-icon-angle-right am-icon-fw "></i>
        </div>
        <div>
            充值
        </div>
    </div>
</div>
<script>

</script>
<script type="text/javascript " src="basic/js/quick_links.js "></script>
<script type="text/javascript">
    $(function () {
        $.get({
            //请求方式
            url:"/init",
            //请求的数据
            data:{_method:"newProduct"},
            //成功之后的调用函数
            success:function (data) {
                var newproduct = JSON.parse(data);
                var newImgs = $(".recommendationMain img")
                var newherfs = $(".recommendationMain>a")
                for(var i = 0 ; i < newproduct.length;i++) {
                    $(newImgs.get(i)).attr("src", newproduct[i].main_Image);
                    $(newherfs.get(i)).attr("href", newproduct[i].detail+"?productid="+newproduct[i].id);
                }
            }
        });
        $.get({
            //请求方式
            url:"/init",
            //请求的数据
            data:{_method:"getCategory"},
            //成功之后的调用函数
            success:function (data) {
                var categorys = JSON.parse(data);
                $("#js_climit_li").append("<li class='appliance js_toggle relative first'>\n" +
                    "                                <div class='category-info'>\n" +
                    "                                    <h3 class='category-name b-category-name'><i><img src='images/cake.png'></i><a href='/SearchProductServlet?index_none_header_sysc="+categorys[0].name+"' class='ml-22' title='"+categorys[0].name+"'>"+categorys[0].name+"</a></h3>\n" +
                    "                                    </div>\n" +
                    "                                </div>\n" +
                    "                                <b class='arrow'></b>\n" +
                    "                            </li>");
                for(var i = 1 ; i < categorys.length;i++){
                    $("#js_climit_li").append("<li class='appliance js_toggle relative'>\n" +
                        "                            <div class='category-info'>\n" +
                        "                            <h3 class='category-name b-category-name'><i><img src='images/cake.png'></i><a href='/SearchProductServlet?index_none_header_sysc="+categorys[i].name+"' class='ml-22' title='"+categorys[i].name+"'>"+categorys[i].name+"</a></h3>\n" +
                        "                        </div>\n" +
                        "                        </div>\n" +
                        "                        <b class='arrow'></b>\n" +
                        "                            </li>");
                }

            }
        });
        $("ul").delegate("li","mouseenter",function(){
            $(".category-content .category-list li.first .menu-in").css("display", "none");
            $(".category-content .category-list li.first").removeClass("hover");
            $(this).addClass("hover");
            $(this).children("div.menu-in").css("display", "block")
        })
        $("ul").delegate("li","mouseleave",function(){
            $(this).removeClass("hover")
            $(this).children("div.menu-in").css("display", "none")
        })
        $.get({
            url:"init",
            data:{_method:"getProduct",categoryname:"休闲鞋"},
            success:function (data) {
                var product = JSON.parse(data);
                var producthrefs = $("#CasualShoes a");
                var productImage = $("#CasualShoes img");
                for(var i = 0 ; i < 7;i++) {
                    $(productImage.get(i)).attr("src", product[i].main_Image);
                    $(producthrefs.get(i)).attr("href", product[i].detail+"?productid="+product[i].id);
                }
            }
        })
        $.get({
            url:"init",
            data:{_method:"getProduct",categoryname:"运动鞋"},
            success:function (data) {
                var product = JSON.parse(data);
                var producthrefs = $("#GymShoes a");
                var productImage = $("#GymShoes img");
                for(var i = 0 ; i < 9;i++) {
                    $(productImage.get(i)).attr("src", product[i].main_Image);
                    $(producthrefs.get(i)).attr("href", product[i].detail+"?productid="+product[i].id);
                }
            }
        })
        $.get({
            url:"init",
            data:{_method:"getProduct",categoryname:"皮鞋"},
            success:function (data) {
                var product = JSON.parse(data);
                var leatherShoes = $("#leatherShoes");

                for(var i = 0 ; i < 6;i++) {
                    leatherShoes.append("<li>\n" +
                        "                    <div class=\"list \">\n" +
                        "                        <a href='"+product[0].detail+"?productid="+product[0].id+"'>\n" +
                        "                            <img src='"+product[0].main_Image+"' />\n" +
                        "                            <div class=\"pro-title \">靓女精选</div>\n" +
                        "                            <span class=\"e-price \">￥118</span>\n" +
                        "                        </a>\n" +
                        "                    </div>\n" +
                        "                </li>\n" +
                        "                <li>\n" +
                        "                    <div class=\"list \">\n" +
                        "                        <a href='"+product[1].detail+"?productid="+product[1].id+"'>\n" +
                        "                            <img src='"+product[1].main_Image+"?productid="+product[1].id+"' />\n" +
                        "                            <div class=\"pro-title \">俊男优选</div>\n" +
                        "                            <span class=\"e-price \">￥108</span>\n" +
                        "                        </a>\n" +
                        "                    </div>\n" +
                        "                </li>")
                }
            }
        })
    });

</script>
</body>
</html>
