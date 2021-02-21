<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2021/2/16
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
<%--<script charset="utf8" src="https://code.jquery.com/jquery-1.10.2.min.js"/>--%>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

<%--<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" />--%>
<link href="https://cdn.datatables.net/buttons/1.5.0/css/buttons.dataTables.min.css" rel="stylesheet" />
<%--<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>--%>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/buttons.colVis.min.js"></script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Commodity</title>
</head>
<body>

<%--<script>--%>
<%--    $('.table-sort').dataTable().fnDestroy();//注意这句话，作用是在翻页的时候，需要将先前实用datatable生成的table摧毁，以便在翻页或者条件查找的时候，新的表格的搭建。--%>
<%--    $('.table-sort').DataTable( {--%>
<%--        dom: 'Bit',--%>
<%--        paging: false,--%>
<%--        "info": false,--%>
<%--        "searching": false,--%>
<%--        "ordering": false,--%>
<%--        "stateSave": true,--%>
<%--        buttons: [--%>
<%--            'colvis'--%>
<%--        ]--%>
<%--    } );--%>
<%--</script>--%>

<table id="commodity" class="display">
    <thead>
    <tr>
        <th>index</th>
        <th>name</th>
        <th>price</th>
        <th>user</th>
        <th>state</th>
        <th>edit_status</th>
        <th>tag</th>
        <th>type</th>
        <th>last_modified</th>
        <th>summary</th>
        <th>description</th>
        <th>phone_number</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
<%--    <tr>--%>
<%--        <td>Row 1 Data 1</td>--%>
<%--        <td>Row 1 Data 2</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>Row 2 Data 1</td>--%>
<%--        <td>Row 2 Data 2</td>--%>
<%--    </tr>--%>
    </tbody>
</table>

<script>
    $(document).ready(function() {
        $('#commodity').DataTable({
            "dom":"Blfrtip",
            // 是否开启本地分页
            "paging": true,
            // 是否开启本地排序
            "ordering": true,
            // 是否显示左下角信息
            "info": true,
            // 是否允许用户改变表格每页显示的记录数
            "lengthChange": true,
            // 是否显示处理状态(排序的时候，数据很多耗费时间长的话，也会显示这个)
            "processing": true,
            // 是否允许 DataTables 开启本地搜索
            "searching": true,
            // 是否开启服务器模式
            "serverSide": false,
            // 控制 DataTables 的延迟渲染，可以提高初始化的速度
            "deferRender": true,
            // 增加或修改通过 Ajax 提交到服务端的请求数据
            "ajax": {
                "url": "./CommodityAjax",
                "type":"GET"
            },
            // 分页按钮显示选项
            "pagingType": "full_numbers",
            "stateSave": true,
            buttons: [
                'colvis'
            ],
            // 设置列的数据源
            "columns": [
                {"data": "index"},
                {"data": "name"},
                {"data":"price"},
                {"data":"user"},
                {"data":"state"},
                {"data":"edit_status"},
                {"data":"tag"},
                {"data":"type"},
                {"data":"last_modified"},
                {"data":"summary"},
                {"data":"description"},
                {"data":"phone_number"}
                // {"data": function (row, type, val, meta) {
                //         var path = row.articleUrl;
                //         return '<img src= "'+path+'" alt="文章展示图" style="width: 100px;height: 100px;text-align: center;">'
                //     }},
                // {"data": function (row, type, val, meta) {
                //         if(row.password >= 100){
                //             return '<p style="color:orangered;">置顶</p>'
                //         }
                //         else{
                //             return '<p>未置顶</p>'
                //         }
                //     }},
                // {
                //     "data": function (row, type, val, meta) {
                //         return '<a href="#" type="button" class="btn btn-sm btn-default"><i class="fa fa-search"></i> 查看</a>&nbsp;&nbsp;&nbsp;' +
                //             '<a href="#" type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i> 编辑</a>&nbsp;&nbsp;&nbsp;' +
                //             '<a href="#" type="button" class="btn btn-sm btn-danger"><i class="fa fa-trash-o"></i> 删除</a>'
                //     }
                // }
            ],
            // 国际化
            "language": {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            }
        })
    // $('.buttons-colvis').detach().appendTo("#colvis")
    });
</script>

</body>
</html>
