<%@ page import="com.mall.Product" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: liyu
  Date: 2019/7/18
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
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
    <title>商品管理</title>
    <link rel="stylesheet" href="lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body class="pos-r">
<div class="pos-a" style="width:200px;left:0;top:0; bottom:0; height:100%; border-right:1px solid #e5e5e5; background-color:#f5f5f5; overflow:auto;">
    <ul id="treeDemo" class="ztree"></ul>
</div>
<div style="margin-left:200px;">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 产品列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="page-container">
        <%--<div class="text-c">
            <input type="text" name="" id="" placeholder=" 产品名称" style="width:250px" class="input-text">
            <button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜产品</button>
        </div>--%>
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l">
                <a class="btn btn-primary radius" onclick="product_add('添加产品','/productAddServlet.do')"  href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加产品</a></span> <span class="r">
        <div class="mt-20">
            <%
                List<Product> list=(List<Product>) request.getAttribute("productList");
            %>
            <table class="table table-border table-bordered table-bg table-hover table-sort">
                <thead>
                <tr class="text-c">
                    <th width="20"><input name="" type="checkbox" value=""></th>
                    <th width="45">分类id</th>
                    <th width="65">商品名称</th>
                    <th width="65">商品副标题</th>
                    <th width="60">产品主图</th>
                    <th width="60">属性列表</th>
                    <th width="40">单价</th>
                    <th width="20">库存数量</th>
                    <th width="20">商品状态</th>
                   <%-- <th width="20">创建时间</th>
                    <th width="20">更新时间</th>--%>
                    <th width="100">操作</th>
                </tr>
                </thead>
                <tbody>
                <%
                    for(Product product : list){
                %>
                <tr class="text-c va-m">
                    <td><input name="" type="checkbox" value=""></td>
                    <td><%=product.getCategory_id()%></td>
                    <td><%=product.getName()%></td>
                    <td><%=product.getSubTitle()%></td>
                    <td><img src="<%=product.getMain_Image()%>"/></td>
                    <td><%=product.getAttribute_List()%></td>
                    <td><%=product.getPrice()%></td>
                    <td><%=product.getStock()%></td>
                    <td><%=product.getStatus()%></td>
                    <%--<td><%=product.getCreate_time()%></td>
                    <td><%=product.getUpdate_time()%></td>--%>
                    <td class="f-14">

                        <a title="编辑" href="javascript:;" onclick="product_edit('商品编辑','/productUpdateServlet.do?id=<%=product.getId()%>',<%=product.getId()%>)" style="text-decoration:none">编辑<i class="Hui-iconfont">&#xe6df;</i></a>
                       <%-- <a style="text-decoration:none" class="ml-5" onClick="product_del(this,'10001',<%=product.getId()%>)" href="javascript:;" title="删除">删除<i class="Hui-iconfont">&#xe6e2;</i></a></td>--%>
                <a title="删除" href="javascript:;" onclick="product_del(this,<%=product.getId()%>)" class="ml-5" style="text-decoration:none">删除<i class="Hui-iconfont">&#xe6e2;</i></a></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
        </div>
    </div>

    <!--_footer 作为公共模版分离出去-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/layer/2.4/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/static/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

    <!--请在下方写此页面业务相关的脚本-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/My97DatePicker/4.8/WdatePicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/backstage/lib/laypage/1.2/laypage.js"></script>
    <script type="text/javascript">
        var setting = {
            view: {
                dblClickExpand: false,
                showLine: false,
                selectedMulti: false
            },
            data: {
                simpleData: {
                    enable:true,
                    idKey: "id",
                    pIdKey: "pId",
                    rootPId: ""
                }
            },
            callback: {
                beforeClick: function(treeId, treeNode) {
                    var zTree = $.fn.zTree.getZTreeObj("tree");
                    if (treeNode.isParent) {
                        zTree.expandNode(treeNode);
                        return false;
                    } else {
                        //demoIframe.attr("src",treeNode.file + ".html");
                        return true;
                    }
                }
            }
        };
        $(document).ready(function(){
            var t = $("#treeDemo");
            t = $.fn.zTree.init(t, setting, zNodes);
            //demoIframe = $("#testIframe");
            //demoIframe.on("load", loadReady);
            var zTree = $.fn.zTree.getZTreeObj("tree");
            //zTree.selectNode(zTree.getNodeByParam("id",'11'));
        });

        $('.table-sort').dataTable({
            "aaSorting": [[ 1, "desc" ]],//默认第几个排序
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                {"orderable":false,"aTargets":[0,7]}// 制定列不参与排序
            ]
        });
        /*产品-添加*/
        function product_add(title,url){
            var index = layer.open({
                type: 2,
                title: title,
                content: url
            });
            layer.full(index);
        }
        /*产品-查看*/
        function product_show(title,url,id){
            var index = layer.open({
                type: 2,
                title: title,
                content: url
            });
            layer.full(index);
        }

        function product_edit(title,url,id){

            layer_show(title,url);

        }

        /*产品-删除*/
        /* function product_del(obj,id,url){
             layer.confirm('确认要删除吗？',function(index){
                 $.ajax({
                     type: 'POST',
                     url: '/productDelServlet.do?id='+id,
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
         }*/
        function product_del(obj,id){
            layer.confirm('确认要删除吗？',function(index){
                $.ajax({
                    type: 'POST',
                    url: '/productDelServlet.do?id='+id,
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
