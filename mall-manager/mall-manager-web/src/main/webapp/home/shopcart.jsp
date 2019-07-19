<%@ page import="com.mall.Car" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yanhuan
  Date: 2019/7/16
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>购物车页面</title>

    <link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="../css/optstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/jquery.js"></script>
</head>
<body>
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
            <div class="menu-hd MyShangcheng"><a href="../person/index.jsp" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
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

<!--购物车 -->

<div class="concent">
    <div id="cartTable">
        <div class="cart-table-th">
            <div class="wp">
                <div class="th th-chk">
                    <div id="J_SelectAll1" class="select-all J_SelectAll">

                    </div>
                </div>
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
                <div class="th th-op">
                    <div class="td-inner">操作</div>
                </div>
            </div>
        </div>
        <div class="clear"></div>

        <tr class="item-list">
            <div class="bundle  bundle-last ">
                <div class="bundle-hd">
                    <div class="bd-promos">
                        <span class="list-change theme-login">编辑</span>
                    </div>
                </div>
                <div class="clear"></div>
                <script>
                    $(function(){
                        $(".add").click(function(){
                            var t=$(this).parent().find('input[class*=text_box]');
                            t.val(parseInt(t.val())+1)
                            var price = t.parent().parent().parent().parent().prev().children().children().children().children().text()
                            t.parent().parent().parent().parent().next().children().children().text(price*t.val())
                            var check = t.parent().parent().parent().parent().siblings().eq(0).children().find('input');
                            if(check[0].checked){
                                var se = $("#J_Total");
                                se.text(parseInt(se.text())+parseInt(price));
                            }
                        })
                        $(".min").click(function(){
                            var t=$(this).parent().find('input[class*=text_box]');
                            t.val(parseInt(t.val())-1)
                            if(parseInt(t.val())<0){
                                t.val(0);
                            }
                            var price = t.parent().parent().parent().parent().prev().children().children().children().children().text()
                            t.parent().parent().parent().parent().next().children().children().text(price*t.val())
                            var check = t.parent().parent().parent().parent().siblings().eq(0).children().find('input');
                            if(check[0].checked && parseInt(t.val())>0){
                                var se = $("#J_Total");
                                se.text(parseInt(se.text())-parseInt(price));
                            }

                        })
                        $("#J_Go").click(function () {
                            var checks = document.getElementsByName("check");
                            var productInfo = "";
                            var numInfo = "";
                            for(var i=0;i<checks.length;i++){
                                if(checks[i].checked){
                                    productInfo = productInfo+$(checks[i]).val()+",";
                                    var t = $(checks[i]).parent().parent().siblings().eq(3).children().children().children().find('input[class*=text_box]');
                                    numInfo = numInfo+t.val()+",";
                                }
                            }
                            $.ajax({
                                url:"/pay.do",
                                type:"get",
                                data:{_method:"save",productId:productInfo,productNum:numInfo},
                                success:function(data){
                                    window.location.href="/pay.do?_method=jump&id="+data;
                                }
                            })
                        })
                    })
                </script>

                <%
                    List<Car> cars = (List<Car>)request.getAttribute("cars");
                    if(cars != null){
                    for (Car car : cars){
                %>
                <div class="bundle-main">
                    <ul class="item-content clearfix">
                        <li class="td td-chk">
                            <div class="cart-checkbox ">
                                <input class="check" id="J_CheckBox_170037950254" name="check" value="<%=car.getId()%>" type="checkbox">
                                <label for="J_CheckBox_170037950254"></label>
                            </div>
                        </li>
                        <li class="td td-item">
                            <div class="item-pic">
                                <a href="#" target="_blank" data-title="美康粉黛醉美东方唇膏口红正品 持久保湿滋润防水不掉色护唇彩妆" class="J_MakePoint" data-point="tbcart.8.12">
                                    <img src="<%=car.getMain_image()%>" class="itempic J_ItemImg" style="width: 100px;height: 100px;" class="itempic J_ItemImg"></a>
                            </div>
                            <div class="item-info">
                                <div class="item-basic-info">
                                    <a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=car.getName()%></a>
                                </div>
                            </div>
                        </li>
                        <li class="td td-info">
                            <div class="item-props item-props-can">
                                <span class="sku-line"><%=car.getProduct_specs()%></span>
                                <span tabindex="0" class="btn-edit-sku theme-login">修改</span>
                                <i class="theme-login am-icon-sort-desc"></i>
                            </div>
                        </li>
                        <li class="td td-price">
                            <div class="item-price price-promo-promo">
                                <div class="price-content">
                                    <div class="price-line">
                                        <em class="J_Price price-now" tabindex="0"><%=car.getProduct_price()%></em>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li class="td td-amount">
                            <div class="amount-wrapper ">
                                <div class="item-amount ">
                                    <div class="sl">
                                        <input class="min am-btn" name="" type="button" value="-" />
                                        <input class="text_box" name="" type="text" value="<%=car.getQuantity()%>" style="width:30px;" />
                                        <input class="add am-btn" name="" type="button" value="+" />
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="td td-sum">
                            <div class="td-inner">
                                <em tabindex="0" class="J_ItemSum number"><%=car.getQuantity()*car.getProduct_price()%></em>
                            </div>
                        </li>
                        <li class="td td-op">
                            <div class="td-inner">
                                <a href="/car.do?_method=deleteCar&id=<%=car.getId()%>" data-point-url="#" class="delete">
                                    删除</a>
                            </div>
                        </li>
                    </ul>
                </div>

                <%
                        }
                    }
                %>


            </div>

        </tr>
        <div class="clear"></div>


        <div class="clear"></div>
        <script type="text/javascript">
            window.onload = function(){
                var all = document.getElementById("all");
                var checks = document.getElementsByName("check");
                for(var i = 0;i < checks.length ; i++){
                    checks[i].onclick = function(){
                        var price = $(this).parent().parent().siblings().eq(4).children().children().text();
                        var t = document.getElementById("J_Total");
                        var quentity = document.getElementById("J_SelectedItemsCount");
                        if(this.checked){
                            t.innerText=parseInt(t.innerText)+parseInt(price);
                            quentity.innerText=parseInt(quentity.innerText)+1;


                        }else{
                            t.innerText=parseInt(t.innerText)-parseInt(price);
                            quentity.innerText=parseInt(quentity.innerText)-1;
                        }

                        for(var i = 0;i < checks.length ; i++){
                            if(!checks[i].checked){
                                all.checked = false;
                                break;
                            }else{
                                all.checked = true;
                            }
                        }
                    }
                }
                all.onclick = function(){
                    var t = document.getElementById("J_Total");
                    var quentity = document.getElementById("J_SelectedItemsCount");
                    t.innerText=0;
                    quentity.innerText=0;
                    for(var i = 0;i < checks.length ; i++){
                        var ch = all.checked;
                        checks[i].checked = ch;
                        if(checks[i].checked){
                            var price = $(checks[i]).parent().parent().siblings().eq(4).children().children().text();
                            t.innerText=parseInt(t.innerText)+parseInt(price);
                            quentity.innerText=parseInt(quentity.innerText)+1;
                        }
                    }
                }


            }
        </script>
        <div class="float-bar-wrapper">
            <div id="J_SelectAll2" class="select-all J_SelectAll">
                <div class="cart-checkbox">
                    <input class="check-all check" id="all" name="select-all" value="true" type="checkbox">
                    <label for="all"></label>
                </div>
                <span>全选</span>
            </div>
            <div class="operations">
                <a href="#" hidefocus="true" class="deleteAll"></a>

            </div>
            <div class="float-bar-right">
                <div class="amount-sum">
                    <span class="txt">已选商品</span>
                    <em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
                    <div class="arrow-box">
                        <span class="selected-items-arrow"></span>
                        <span class="arrow"></span>
                    </div>
                </div>
                <div class="price-sum">
                    <span class="txt">合计:</span>
                    <strong class="price">¥<em id="J_Total" >0.0</em></strong>
                </div>
                <div class="btn-area">
                    <a  id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
                        <span>结&nbsp;算</span></a>
                </div>
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

    <!--操作页面-->

    <div class="theme-popover-mask"></div>

    <div class="theme-popover">
        <div class="theme-span"></div>
        <div class="theme-poptit h-title">
            <a href="javascript:;" title="关闭" class="close">×</a>
        </div>
        <div class="theme-popbod dform">
            <form class="theme-signin" name="loginform" action="" method="post">

                <div class="theme-signin-left">

                    <li class="theme-options">
                        <div class="cart-title">颜色：</div>
                        <ul>
                            <li class="sku-line selected">12#川南玛瑙<i></i></li>
                            <li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
                        </ul>
                    </li>
                    <li class="theme-options">
                        <div class="cart-title">包装：</div>
                        <ul>
                            <li class="sku-line selected">包装：裸装<i></i></li>
                            <li class="sku-line">两支手袋装（送彩带）<i></i></li>
                        </ul>
                    </li>
                    <div class="theme-options">
                        <div class="cart-title number">数量</div>
                        <dd>
                            <input class="min am-btn am-btn-default" name="" type="button" value="-" />
                            <input class="text_box" name="" type="text" value="1" style="width:30px;" />
                            <input class="add am-btn am-btn-default" name="" type="button" value="+" />
                            <span  class="tb-hidden">库存<span class="stock">1000</span>件</span>
                        </dd>

                    </div>
                    <div class="clear"></div>
                    <div class="btn-op">
                        <div class="btn am-btn am-btn-warning">确认</div>
                        <div class="btn close am-btn am-btn-warning">取消</div>
                    </div>

                </div>
                <div class="theme-signin-right">
                    <div class="img-info">
                        <img src="../images/kouhong.jpg_80x80.jpg" />
                    </div>
                    <div class="text-info">
                        <span class="J_Price price-now">¥39.00</span>
                        <span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
                    </div>
                </div>

            </form>
        </div>
    </div>
    <!--引导 -->
    <div class="navCir">
        <li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
        <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
        <li class="active"><a href="shopcart.jsp"><i class="am-icon-shopping-basket"></i>购物车</a></li>
        <li><a href="../person/index.html"><i class="am-icon-user"></i>我的</a></li>
    </div>
</div>
</body>
</html>
