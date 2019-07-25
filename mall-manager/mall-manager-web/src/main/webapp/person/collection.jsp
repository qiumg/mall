<%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/24
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>我的收藏</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/colstyle.css" rel="stylesheet" type="text/css">

</head>

<body>
<!--头 -->
<header>
    <article>
        <div class="mt-logo">
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
                        <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
                    </div>
                    <div class="topMessage favorite">
                        <div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
                </ul>
            </div>

            <!--悬浮搜索框-->

            <div class="nav white">
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
        </div>
        </div>
    </article>
</header>
<div class="nav-table">
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
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">

            <div class="user-collection">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的收藏</strong> / <small>My&nbsp;Collection</small></div>
                </div>
                <hr/>

                <div class="you-like">
                    <div class="s-bar">
                        我的收藏
                        <a class="am-badge am-badge-danger am-round">降价</a>
                        <a class="am-badge am-badge-danger am-round">下架</a>
                    </div>
                    <div class="s-content">
                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="s-item-wrap">
                            <div class="s-item">

                                <div class="s-pic">
                                    <a href="#" class="s-pic-link">
                                        <img src="../images/act1.jpg" alt="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰" class="s-pic-img s-guess-item-img">
                                    </a>
                                </div>
                                <div class="s-info">
                                    <div class="s-title"><a href="#" title="s925纯银千纸鹤锁骨链短款简约时尚韩版素银项链小清新秋款女配饰">客户心中的好鞋子</a></div>
                                    <div class="s-price-box">
                                        <span class="s-price"><em class="s-price-sign">¥</em><em class="s-value">49.90</em></span>
                                        <span class="s-history-price"><em class="s-price-sign">¥</em><em class="s-value">88.00</em></span>
                                    </div>
                                    <div class="s-extra-box">
                                        <span class="s-comment">好评: 99.74%</span>
                                        <span class="s-sales">月销: 69</span>
                                    </div>
                                </div>
                                <div class="s-tp">
                                    <span class="ui-btn-loading-before">找相似</span>
                                    <i class="am-icon-shopping-cart"></i>
                                    <span class="ui-btn-loading-before buy">加入购物车</span>
                                    <p>
                                        <a href="javascript:;" class="c-nodo J_delFav_btn">取消收藏</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="s-more-btn i-load-more-item" data-screen="0"><i class="am-icon-refresh am-icon-fw"></i>更多</div>

                </div>

            </div>

        </div>
        <!--底部-->
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

    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="index.jsp"><i class="am-icon-user"></i>个人中心</a>
            </li>
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="information.jsp">个人信息</a></li>
                    <li> <a href="safety.jsp">安全设置</a></li>
                    <li> <a href="address.jsp">地址管理</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的交易</p>
                <ul>
                    <li><a href="order.jsp">订单管理</a></li>
                    <li> <a href="change.jsp">退款售后</a></li>
                    <li> <a href="comment.jsp">评价商品</a></li>
                </ul>
            </li>


            <li class="person">
                <p><i class="am-icon-tags"></i>我的足迹</p>
                <ul>
                    <li> <a href="foot.jsp">浏览记录</a></li>
                </ul>
            </li>


        </ul>

    </aside>
</div>

</body>

</html>
