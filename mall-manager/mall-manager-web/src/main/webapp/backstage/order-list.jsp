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
    <title>订单列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c">
<%--        <button onclick="removeIframe()" class="btn btn-primary radius">关闭选项卡</button>--%>

<%--        <span class="select-box inline">--%>
<%--		<select name="" class="select">--%>
<%--			<option value="0">全部分类</option>--%>
<%--			<option value="1">分类一</option>--%>
<%--			<option value="2">分类二</option>--%>
<%--		</select>--%>
<%--		</span>--%>


<%--        日期范围：--%>
<%--        <input type="text" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'logmax\')||\'%y-%M-%d\'}' })" id="logmin" class="input-text Wdate" style="width:120px;">--%>
<%--        ---%>
<%--        <input type="text" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'logmin\')}',maxDate:'%y-%M-%d' })" id="logmax" class="input-text Wdate" style="width:120px;">--%>


<%--        <input type="text" name="" id="" placeholder=" 订单编号" style="width:250px" class="input-text">--%>
<%--        <button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜订单</button>--%>
    </div>



<%--    <div class="cl pd-5 bg-1 bk-gray mt-20">--%>
<%--        <span class="l">--%>
<%--            <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>--%>
<%--&lt;%&ndash;            <a class="btn btn-primary radius" data-title="添加订单" data-href="article-add.html" onclick="Hui_admin_tab(this)" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加订单</a>&ndash;%&gt;--%>
<%--        </span>--%>
<%--&lt;%&ndash;            <span class="r">共有数据：<strong>54</strong> 条</span>&ndash;%&gt;--%>
<%--    </div>--%>




    <div class="mt-20">

                <table class="table table-border table-bordered table-bg table-hover table-sort table-responsive" >
                    <thead>
                    <tr class="text-c" >
                        <th width="100px"><input type="checkbox" name="" value=""></th>
                        <th width="100px">订单编号</th>
                        <th width="100px">用户id</th>
                        <th width="100px">物流id</th>
<%--                        <th width="100px">实际付款金额</th>--%>
                        <th width="100px">支付类型</th>
                        <th width="100px">运费</th>
                        <th width="100px">订单状态</th>
                        <th width="100px">支付时间</th>
                        <th width="100px">发货时间</th>
                        <th width="100px">交易完成时间</th>
                        <th width="100px">交易关闭时间</th>
<%--                        <th width="100px">创建时间</th>--%>
<%--                        <th width="100px">更新时间</th>--%>
                        <th width="100px">操作</th>

                    </tr>
                    </thead>
                    <tbody>
                    <%
                        List<Order> orderList =(List<Order>) request.getAttribute("orderList");
                        if (orderList != null){
                        for(Order order : orderList){
                    %>
                    <tr >
                        <td><input name="" type="checkbox" value=""></td>
                        <td><%=order.getOrder_no()%></td>
                        <td ><%=order.getUser_id()%></td>
                        <td><%=order.getShipping_id()%></td>
<%--                        <td><%=order.getPayment()%></td>--%>
                        <td><%=order.getPayment_type()%></td>
                        <td><%=order.getPostage()%></td>
                        <td><%=order.getStatus()%></td>
                        <td><%=order.getPayment_time()%></td>
                        <td><%=order.getSend_time()%></td>
                        <td><%=order.getEnd_time()%></td>
                        <td><%=order.getClose_time()%></td>
<%--                        <td><%=order.getCreat_time()%>></td>--%>
<%--                        <td><%=order.getUpate_time()%></td>--%>
<%--                        <td>编辑 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="order-list.jsp">删除</a></td>--%>


                        <td class="f-14">
                            &nbsp;&nbsp;&nbsp;
                            <a title="编辑" href="javascript:;" onclick="order_edit('订单编辑','/OrderUpdateServlet.do?id=<%=order.getId()%>',<%=order.getId()%>)" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                            &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
                            <a title="删除" href="javascript:;" onclick="order_del(this,<%=order.getId()%>)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
                        </td>


                    </tr>
                    <%
                        }
                        }
                    %>

                    </tbody>
                </table>

                <!--_footer 作为公共模版分离出去-->
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/jquery/1.9.1/jquery.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/layer/2.4/layer.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/static/h-ui/js/H-ui.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

                <!--请在下方写此页面业务相关的脚本-->
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/My97DatePicker/4.8/WdatePicker.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/laypage/1.2/laypage.js"></script>
                <script type="text/javascript">

                    $('.table-sort').dataTable({
                        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
                        "bStateSave": true,//状态保存
                        "pading":false,
                        "aoColumnDefs": [
                            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                            {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
                        ]
                    });

                    // 编辑订单
                    function order_edit(title,url,id){
                        layer_show(title,url);
                    }

                    // 删除订单
                    function order_del(obj,id){
                        layer.confirm('订单删除须谨慎，确认要删除吗？',function(index){
                            $.ajax({
                                type: 'POST',
                                url: '/OrderDeleteServlet.do?id='+id,
                                dataType: 'json',
                                success: function(data){
                                    $(obj).parents("tr").remove();
                                    layer.msg('已删除!',{icon:1,time:1000});
                                },
                                error:function(data) {
                                    console.log(data.msg);
                                },
                            });
                        });
                    }



                </script>
</body>
</html>