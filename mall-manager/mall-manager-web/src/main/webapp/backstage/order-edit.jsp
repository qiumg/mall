<%@ page import="com.mall.Order" %>
<%@ page import="java.util.List" %>
<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/html5shiv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backstage/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backstage/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backstage/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backstage/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/backstage/static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>编辑订单</title>
</head>
<body>
<%
    Order order=(Order) request.getAttribute("order");
%>



<form action="/OrderModifyServlet.do" method="get">
    订单编号：<input type="text" name="order_no" value="<%=order.getOrder_no()%>"><br/><br/>
    用户id：<input type="text" name="id" value="<%=order.getUser_id()%>"><br/><br/>
    物流id：<input type="text" name="shipping_id" value="<%=order.getShipping_id()%>"><br/><br/>
<%--    实际付款金额：<input type="text" name="payment" value="<%=order.getPayment()%>"><br/><br/>--%>
    支付类型：<input type="text" name="payment_type" value="<%=order.getPayment_type()%>"><br/><br/>
    运费：<input type="text" name="postage" value="<%=order.getPostage()%>"><br/><br/>
    订单状态：<input type="text" name="status"value="<%=order.getStatus()%>"><br/><br/>
<%--    支付时间：<input type="date" class="date" name="payment_time" value="<%=order.getPayment_time()%>"><br/><br/>--%>
<%--    发货时间<input type="date" class="date" name="send_time" value="<%=order.getSend_time()%>"><br/><br/>--%>
<%--    交易完成时间：<input type="date" class="date" name="end_time" value="<%=order.getEnd_time()%>"><br/><br/>--%>
<%--    交易关闭时间：<input type="date" class="date" name="close_time" value="<%=order.getClose_time()%>"><br/><br/>--%>
<%--    创建时间：<input type="date" class="date" name="creat_time" value="<%=order.getCreat_time()%>"><br/><br/>--%>
<%--    更新时间：<input type="date" class="date" name="upate_time" value="<%=order.getUpate_time()%>"><br/><br/>--%>
    <input type="submit" value="提交"> <input type="reset" value="取消">
</form>

</body>
</html>