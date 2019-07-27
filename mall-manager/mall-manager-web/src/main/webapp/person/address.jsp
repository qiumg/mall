<%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/24
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

    <title>地址管理</title>

    <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

    <link href="../css/personal.css" rel="stylesheet" type="text/css">
    <link href="../css/addstyle.css" rel="stylesheet" type="text/css">
    <script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>

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
                        <div class="menu-hd MyShangcheng"><a href="#" target="_top"><i
                                class="am-icon-user am-icon-fw"></i>个人中心</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i
                                class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum"
                                                                                                      class="h">0</strong></a>
                        </div>
                    </div>
                    <div class="topMessage favorite">
                        <div class="menu-hd"><a href="#" target="_top"><i
                                class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
                </ul>
            </div>

            <!--悬浮搜索框-->

            <div class="nav white">
                <div class="logoBig">
                    <li><img src="../images/logobig.png"/></li>
                </div>

                <div class="search-bar pr">
                    <a name="index_none_header_sysc" href="#"></a>
                    <form>
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索"
                               autocomplete="off">
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

            <div class="user-address">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> /
                        <small>Address&nbsp;list</small>
                    </div>
                </div>
                <hr/>
                <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails" id="showAddress">


                </ul>
                <div class="clear"></div>
                <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                <!--例子-->
                <div class="am-modal am-modal-no-btn" id="doc-modal-1" >

                    <div class="add-dress">

                        <!--标题 -->
                        <div class="am-cf am-padding">
                            <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> /
                                <small>Add&nbsp;address</small>
                            </div>
                        </div>
                        <hr/>

                        <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;" id="addAddress">
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
                                    <label for="user-address" class="am-form-label">所在地</label>
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

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <a class="am-btn am-btn-danger" id="save">保存</a>
                                        <a href="javascript: void(0)" class="am-close am-btn am-btn-danger"
                                           data-am-modal-close>取消</a>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    $(".new-option-r").click(function () {
                        $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
                    });

                    var $ww = $(window).width();
                    if ($ww > 640) {
                        $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                    }

                })
            </script>
            <script type="text/javascript">
                $(function () {
                    $.ajax({
                            url: "/change.do",
                            type: "post",
                            data: {_method: "selectProvinces"},
                            success: function (data) {
                                var pList = JSON.parse(data);
                                var pSelect = $("#province");
                                pSelect.empty()
                                for (var i = 0; i < pList.length; i++) {
                                    pSelect.append("<option value='" + pList[i].provinceId + "'>" + pList[i].province + "</option>")
                                }
                            }
                        }
                    )
                    reloadAddress()
                    $("#save").click(function () {
                        $.ajax({
                            url:"/address?_method=add",
                            data:$("#addAddress form").serialize(),
                            type:"get",
                            success:function () {
                                reloadAddress();
                            }
                        })
                    })
                    $("#showAddress").delegate("li","click",function () {
                        $(this).addClass("defaultAddr").siblings().removeClass("defaultAddr");
                    })

                })
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
                function reloadAddress(){
                    $.ajax({
                        url:"/address",
                        type:"get",
                        data:{_method:"query"},
                        success:function (data) {
                            var addList = JSON.parse(data);
                            $("#showAddress").empty();
                            if(addList.length != 0) {
                                $("#showAddress").append("<li class=\"user-addresslist defaultAddr\">\n" +
                                    "                        <p class=\"new-tit new-p-re\">\n" +
                                    "                            <span class=\"new-txt\">"+addList[0].receiver_name+"</span>\n" +
                                    "                            <span class=\"new-txt-rd2\">"+addList[0].receiver_mobile+"</span>\n" +
                                    "                        </p>\n" +
                                    "                        <div class=\"new-mu_l2a new-p-re\">\n" +
                                    "                            <p class=\"new-mu_l2cw\">\n" +
                                    "                                <span class=\"title\">地址：</span>\n" +
                                    "                                <span class=\"province\">"+addList[0].receiver_province+"</span>\n" +
                                    "                                <span class=\"city\">"+addList[0].receiver_city+"</span>\n" +
                                    "                                <span class=\"dist\">"+addList[0].receiver_district+"</span>\n" +
                                    "                                <span class=\"street\">"+addList[0].receiver_address+"</span></p>\n" +
                                    "                        </div>\n" +
                                    "                        <div class=\"new-addr-btn\">\n" +
                                    "                            <a  onclick=\"delClick("+addList[0].id+");\"><i class=\"am-icon-trash\"></i>删除</a>\n" +
                                    "                        </div>\n" +
                                    "                    </li>");

                                for(var i=1;i<addList.length;i++) {
                                    $("#showAddress").append("<li class=\"user-addresslist \">\n" +
                                        "                        <p class=\"new-tit new-p-re\">\n" +
                                        "                            <span class=\"new-txt\">"+addList[i].receiver_name+"</span>\n" +
                                        "                            <span class=\"new-txt-rd2\">"+addList[i].receiver_mobile+"</span>\n" +
                                        "                        </p>\n" +
                                        "                        <div class=\"new-mu_l2a new-p-re\">\n" +
                                        "                            <p class=\"new-mu_l2cw\">\n" +
                                        "                                <span class=\"title\">地址：</span>\n" +
                                        "                                <span class=\"province\">"+addList[i].receiver_province+"</span>\n" +
                                        "                                <span class=\"city\">"+addList[i].receiver_city+"</span>\n" +
                                        "                                <span class=\"dist\">"+addList[i].receiver_district+"</span>\n" +
                                        "                                <span class=\"street\">"+addList[i].receiver_address+"</span></p>\n" +
                                        "                        </div>\n" +
                                        "                        <div class=\"new-addr-btn\">\n" +
                                        "                            <a  onclick=\"delClick("+addList[i].id+");\"><i class=\"am-icon-trash\"></i>删除</a>\n" +
                                        "                        </div>\n" +
                                        "                    </li>");
                                }
                            }
                        }
                    })
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
            </script>

            <div class="clear"></div>

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
                    <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank"
                                                               title="模板之家">模板之家</a> - Collect from <a
                            href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
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
                    <li><a href="information.jsp">个人信息</a></li>
                    <li><a href="safety.jsp">安全设置</a></li>
                    <li><a href="address.jsp">地址管理</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-balance-scale"></i>我的交易</p>
                <ul>
                    <li><a href="order.jsp">订单管理</a></li>
                    <li><a href="change.jsp">退款售后</a></li>
                    <li><a href="comment.jsp">评价商品</a></li>
                </ul>
            </li>


            <li class="person">
                <p><i class="am-icon-tags"></i>我的足迹</p>
                <ul>
                    <li><a href="foot.jsp">浏览记录</a></li>
                </ul>
            </li>


        </ul>

    </aside>
</div>

</body>

</html>
