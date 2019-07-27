<%@ page import="com.mall.Car" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/17
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>结算页面</title>

    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css"/>

    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css"/>

    <link href="../css/jsstyle.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="../js/address.js"></script>
    <script type="text/javascript" src="../basic/js/jquery-1.7.min.js"></script>

</head>

<body>

<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <%
                    String s = (String) request.getSession(false).getAttribute("loginName");
                    if (s == null || s.isEmpty()) { %>
                <a href="home/login.jsp" target="_top" class="h" style="color: red">请登录&nbsp</a>
                <%} else {%>
                <a href="home/login.jsp" target="_top" class="h" style="color: seagreen"><%="欢迎：" + s %>&nbsp</a>
                <%}%>
                <%
                    if (s == null || s.isEmpty()) { %>
                <a href="home/register.jsp" target="_top">&nbsp免费注册</a>
                <%} else {%>
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
        </div>
    </ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
    <div class="logo"><img src="images/logo.png"/></div>
    <div class="logoBig">
        <li><img src="images/logobig.png"/></li>
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
<div class="concent">
    <!--地址 -->
    <div class="paycont">
        <div class="address">
            <h3>确认收货地址 </h3>
            <div class="control">
                <div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
            </div>
            <div class="clear"></div>
            <ul id="showAddress">

            </ul>

            <div class="clear"></div>
        </div>
        <!--物流 -->
        <div class="logistics">
            <h3>选择物流方式</h3>
            <ul class="op_express_delivery_hot">
                <li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right"
                                                                  style="background-position:0px -468px"></i>圆通<span></span>
                </li>
                <li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right"
                                                                  style="background-position:0px -1008px"></i>申通<span></span>
                </li>
                <li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right"
                                                               style="background-position:0px -576px"></i>韵达<span></span>
                </li>
                <li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right"
                                                                                               style="background-position:0px -324px"></i>中通<span></span>
                </li>
                <li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right"
                                                                                                style="background-position:0px -180px"></i>顺丰<span></span>
                </li>
            </ul>
        </div>
        <div class="clear"></div>

        <!--支付方式-->
        <div class="logistics">
            <h3>选择支付方式</h3>
            <ul class="pay-list">
                <li class="pay card"><img src="../images/wangyin.jpg"/>银联<span></span></li>
                <li class="pay qq"><img src="../images/weizhifu.jpg"/>微信<span></span></li>
                <li class="pay taobao"><img src="../images/zhifubao.jpg"/>支付宝<span></span></li>
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
                        <div class="th th-oplist">
                            <div class="td-inner">配送方式</div>
                        </div>

                    </div>
                </div>
                <div class="clear"></div>

                <tr class="item-list">
                    <div class="bundle  bundle-last" id="getId">
                        <c:forEach items="${cars}" var="car">
                            <div class="bundle-main">
                                <ul class="item-content clearfix">
                                    <div class="pay-phone">
                                        <li class="td td-item">
                                            <div class="item-pic">
                                                <a href="#" class="J_MakePoint">
                                                    <input type="hidden" value="${car.id}"/>
                                                    <img src="${car.main_image}" class="itempic J_ItemImg"
                                                         style="width: 100px;height: 100px;"></a>

                                            </div>
                                            <div class="item-info">
                                                <div class="item-basic-info">
                                                    <a href="#" class="item-title J_MakePoint"
                                                       data-point="tbcart.8.11">${car.name}</a>
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

                                                    <em tabindex="0" class="J_ItemSum number">${car.quantity}</em>

                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-sum">
                                        <div class="td-inner">
                                            <em tabindex="0"
                                                class="J_ItemSum number">${car.quantity*car.product_price}</em>
                                        </div>
                                    </li>


                                </ul>
                                <div class="clear"></div>

                            </div>
                        </c:forEach>
                    </div>
                </tr>
                <div class="clear"></div>
            </div>


        </div>
        <div class="clear"></div>

        <!--含运费小计 -->
        <%
            List<Car> cars = (List<Car>) request.getAttribute("cars");
            int money = 0;
            if (cars != null) {
                for (Car car : cars) {
                    money += car.getQuantity() * car.getProduct_price();
                }
        %>
        <div class="buy-point-discharge ">
            <p class="price g_price ">
                合计 <span>¥</span><em class="pay-sum"><%=money%>
            </em>
            </p>
        </div>

        <!--信息 -->
        <div class="order-go clearfix">
            <div class="pay-confirm clearfix">
                <div class="box">
                    <div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
                        <span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee"><%=money%></em>
											</span>
                    </div>
                    <%
                        }
                    %>
                    <div id="holyshit268" class="pay-address">


                    </div>
                </div>

                <div id="holyshit269" class="submitOrder">
                    <div class="go-btn-wrap">
                        <a id="J_Go" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
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
            <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank"
                                                       title="模板之家">模板之家</a> - Collect from <a
                    href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
        </p>
    </div>
</div>
</div>
<div class="theme-popover-mask" id="test"></div>
<div class="theme-popover" id="modal">

    <!--标题 -->
    <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> /
            <small>Add address</small>
        </div>
    </div>
    <hr/>

    <div class="am-u-md-12" id="addAddress">
        <form class="am-form am-form-horizontal">

            <div class="am-form-group">
                <label for="user-name" class="am-form-label">收货人</label>
                <div class="am-form-content">
                    <input type="text" id="user-name" placeholder="收货人" name="receive_name">
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-phone" class="am-form-label">手机号码</label>
                <div class="am-form-content">
                    <input id="user-phone" placeholder="手机号必填" type="email" name="recrive_phone">
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-phone" class="am-form-label">所在地</label>
                <div class="am-form-content address">
                    <select data-am-selected id="province" onchange="selectCity()" name="province">
                        <option value="--">--省</option>
                    </select>
                    <select data-am-selected id="city" onchange="selectArea()" name="city">
                        <option value="--">--市</option>
                    </select>
                    <select data-am-selected id="area" name="area">
                        <option value="--">--区</option>
                    </select>
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-intro" class="am-form-label">详细地址</label>
                <div class="am-form-content">
                    <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址" name="addresss"></textarea>
                    <small>100字以内写出你的详细地址...</small>
                </div>
            </div>

            <div class="am-form-group theme-poptit">
                <div class="am-u-sm-9 am-u-sm-push-3">
                    <div class="am-btn am-btn-danger" id="save">保存</div>
                    <div class="am-btn am-btn-danger close">取消</div>
                </div>
            </div>
        </form>
    </div>

</div>

<div class="clear"></div>
<script type="text/javascript">
    $(function () {
        $.ajax({
                url: "/change.do",
                type: "post",
                data: {_method: "selectProvinces"},
                success: function (data) {
                    var pList = JSON.parse(data);
                    var pSelect = $("#province");
                    for (var i = 0; i < pList.length; i++) {
                        pSelect.append("<option value='" + pList[i].provinceId + "'>" + pList[i].province + "</option>")
                    }
                }
            }
        )

        reloadAddress();
        $("#save").click(function () {
            $.ajax({
                url: "/address?_method=add",
                data: $("#addAddress form").serialize(),
                type: "get",
                success: function () {
                    $("#modal").css("display", "none");
                    $("#test").css("display", "none");
                    $("body").css("overflow", "visible");
                    reloadAddress();
                }
            })
        })
        $("#showAddress").delegate("li", "click", function () {
            $(this).addClass("defaultAddr").siblings().removeClass("defaultAddr");
            $("#holyshit268").find(".buy-user").text($(this).find(".buy-user").text())
            $("#holyshit268").find(".buy-phone").text($(this).find(".buy-phone").text())
            $("#holyshit268").find(".province").text($(this).find(".province").text())
            $("#holyshit268").find(".city").text($(this).find(".city").text())
            $("#holyshit268").find(".dist").text($(this).find(".dist").text())
            $("#holyshit268").find(".street").text($(this).find(".street").text())
        })
    })

    function reloadAddress() {
        $.ajax({
            url: "/address",
            type: "get",
            data: {_method: "query"},
            success: function (data) {
                var addList = JSON.parse(data);
                $("#holyshit268").empty();
                if (addList.length != 0) {
                    $("#holyshit268").append("<p class=\"buy-footer-address\">\n" +
                        "                            <span class=\"buy-line-title buy-line-title-type\">寄送至：</span>\n" +
                        "                            <span class=\"buy--address-detail\">\n" +
                        "\t\t\t\t\t\t\t\t   <span class=\"province\">" + addList[0].receiver_province + "</span>省\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"city\">" + addList[0].receiver_city + "</span>市\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"dist\">" + addList[0].receiver_district + "</span>区\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"street\">" + addList[0].receiver_address + "</span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t</span>\n" +
                        "                            </span>\n" +
                        "                        </p>\n" +
                        "                        <p class=\"buy-footer-address\">\n" +
                        "                            <span class=\"buy-line-title\">收货人：</span>\n" +
                        "                            <span class=\"buy-address-detail\">\n" +
                        "                                         <span class=\"buy-user\">" + addList[0].receiver_name + " </span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t<span class=\"buy-phone\">" + addList[0].receiver_mobile + "</span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t\t\t</span>\n" +
                        "                        </p>");
                }
                $("#showAddress").empty();
                if (addList.length != 0) {
                    $("#showAddress").append("<div class=\"per-border\"></div>\n" +
                        "                <li class=\"user-addresslist defaultAddr\">\n" +
                        "                    <div class=\"address-left\">\n" +
                        "                        <div class=\"user DefaultAddr\">\n" +
                        "\n" +
                        "\t\t\t\t\t\t\t\t\t\t<span class=\"buy-address-detail\">\n" +
                        "                   <span class=\"buy-user\">" + addList[0].receiver_name + " </span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t<span class=\"buy-phone\">" + addList[0].receiver_mobile + "</span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t</span>\n" +
                        "                        </div>\n" +
                        "                        <div class=\"default-address DefaultAddr\">\n" +
                        "                            <span class=\"buy-line-title buy-line-title-type\">收货地址：</span>\n" +
                        "                            <span class=\"buy--address-detail\">\n" +
                        "\t\t\t\t\t\t\t\t   <span class=\"province\">" + addList[0].receiver_province + "</span>省\n" +
                        "\t\t\t\t\t\t\t\t\t\t<span class=\"city\">" + addList[0].receiver_city + "</span>市\n" +
                        "\t\t\t\t\t\t\t\t\t\t<span class=\"dist\">" + addList[0].receiver_district + "</span>区\n" +
                        "\t\t\t\t\t\t\t\t\t\t<span class=\"street\">" + addList[0].receiver_address + "</span>\n" +
                        "\t\t\t\t\t\t\t\t\t\t</span>\n" +
                        "\n" +
                        "                            </span>\n" +
                        "                        </div>\n" +
                        "                        <ins class=\"deftip hidden\">默认地址</ins>\n" +
                        "                    </div>\n" +
                        "                    <div class=\"address-right\">\n" +
                        "                        <span class=\"am-icon-angle-right am-icon-lg\"></span>\n" +
                        "                    </div>\n" +
                        "                    <div class=\"clear\"></div>\n" +
                        "\n" +
                        "                    <div class=\"new-addr-btn\">\n" +
                        "                        <a href=\"#\"  onclick=\"delClick(" + addList[0].id + ");\">删除</a>\n" +
                        "                    </div>\n" +
                        "\n" +
                        "                </li>");

                    for (var i = 1; i < addList.length; i++) {
                        $("#showAddress").append("<div class=\"per-border\"></div>\n" +
                            "                <li class=\"user-addresslist\">\n" +
                            "                    <div class=\"address-left\">\n" +
                            "                        <div class=\"user DefaultAddr\">\n" +
                            "\n" +
                            "\t\t\t\t\t\t\t\t\t\t<span class=\"buy-address-detail\">\n" +
                            "                   <span class=\"buy-user\">" + addList[i].receiver_name + " </span>\n" +
                            "\t\t\t\t\t\t\t\t\t\t<span class=\"buy-phone\">" + addList[i].receiver_mobile + "</span>\n" +
                            "\t\t\t\t\t\t\t\t\t\t</span>\n" +
                            "                        </div>\n" +
                            "                        <div class=\"default-address DefaultAddr\">\n" +
                            "                            <span class=\"buy-line-title buy-line-title-type\">收货地址：</span>\n" +
                            "                            <span class=\"buy--address-detail\">\n" +
                            "\t\t\t\t\t\t\t\t   <span class=\"province\">" + addList[i].receiver_province + "</span>省\n" +
                            "\t\t\t\t\t\t\t\t\t\t<span class=\"city\">" + addList[i].receiver_city + "</span>市\n" +
                            "\t\t\t\t\t\t\t\t\t\t<span class=\"dist\">" + addList[i].receiver_district + "</span>区\n" +
                            "\t\t\t\t\t\t\t\t\t\t<span class=\"street\">" + addList[i].receiver_address + "</span>\n" +
                            "\t\t\t\t\t\t\t\t\t\t</span>\n" +
                            "\n" +
                            "                            </span>\n" +
                            "                        </div>\n" +
                            "                        <ins class=\"deftip hidden\">默认地址</ins>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"address-right\">\n" +
                            "                        <span class=\"am-icon-angle-right am-icon-lg\"></span>\n" +
                            "                    </div>\n" +
                            "                    <div class=\"clear\"></div>\n" +
                            "\n" +
                            "                    <div class=\"new-addr-btn\">\n" +
                            "                        <a href=\"#\"  onclick=\"delClick(" + addList[i].id + ");\">删除</a>\n" +
                            "                    </div>\n" +
                            "\n" +
                            "                </li>");
                    }
                }
            }
        })
    }

    function delClick(i) {
        if (confirm("你确定要删除此地址信息吗？")) {
            $.ajax({
                url: "/address",
                data: {id: i, _method: "delete"},
                type: "get",
                success: function () {
                    reloadAddress();
                }
            })
        }
    }

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
                    selectArea()
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

    $("#J_Go").click(function () {
        var username = $("#holyshit268").find(".buy-user").text();
        if (username == "") {
            alert("请选择有效的收货地址，亲！")
        } else {
            var phone = $("#holyshit268").find(".buy-phone").text();
            var province = $("#holyshit268").find(".province").text();
            var city = $("#holyshit268").find(".city").text();
            var dist = $("#holyshit268").find(".dist").text();
            var street = $("#holyshit268").find(".street").text();
            var price = $("#J_ActualFee").text();
            var carId = $("#getId").find(":input");
            var carList = "";
            for (var i = 0; i < carId.length; i++) {
                carList = carList + $(carId[i]).val() + ",";

            }
            window.location.href = "/commit.do?username=" + username + "&phone=" + phone + "&province=" + province + "&city=" + city + "&dist=" + dist + "&street=" + street + "&price=" + price + "&carList=" + carList;
        }
    })
</script>
</body>


</html>
