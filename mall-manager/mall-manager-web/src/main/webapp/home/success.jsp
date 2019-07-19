<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/17
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>付款成功页面</title>
    <link rel="stylesheet"  type="text/css" href="../AmazeUI-2.4.2/assets/css/amazeui.css"/>
    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />

    <link href="../css/sustyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../basic/js/jquery-1.7.min.js"></script>

</head>

<body>


<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <%
                    String s= (String) request.getSession(false).getAttribute("loginName");
                    if(s == null || s.isEmpty()){								%>
                <a href="home/login.jsp" target="_top" class="h" style="color: red">请登录&nbsp</a>
                <%}else{%>
                <a href="home/login.jsp" target="_top" class="h" style="color: seagreen"><%="欢迎："+s %>&nbsp</a>
                <%}%>
                <%
                    if(s == null || s.isEmpty()){								%>
                <a href="home/register.jsp" target="_top" >&nbsp免费注册</a>
                <%}else{%>
                <a href="home/login.jsp" target="_top" style="color: red">&nbsp退出登录</a>
                <%}%>
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
        </div></ul>
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



<div class="take-delivery">
    <div class="status">
        <h2>您已成功付款</h2>

        <div class="successInfo">
            <ul>
                <li>付款金额:¥<em>${price}</em></li>
                <div class="user-info">
                    <p>收货人：${username}</p>
                    <p>联系电话：${phone}</p>
                    <p>收货地址：${province} ${city} ${dist} ${street}</p>
                </div>
                请认真核对您的收货信息，如有错误请联系客服

            </ul>

        </div>
    </div>
</div>


<div class="footer" >
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


</body>
</html>

