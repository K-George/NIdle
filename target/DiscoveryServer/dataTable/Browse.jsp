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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Browse</title>
</head>
<body>

<table id="Browse" class="display">
    <thead>
    <tr>
        <th>user</th>
        <th>commodity</th>
        <th>time</th>
    </tr>
    </thead>
    <tbody>
    </tbody>
</table>

<script>
    $(document).ready(function() {
        $('#Browse').DataTable({
            // 是否开启本地分页
            "paging": true,
            // 是否开启本地排序
            "ordering": true,
            // 是否显示左下角信息
            "info": true,
            // 是否允许用户改变表格每页显示的记录数
            "lengthChange": true,
            // 是否显示处理状态(排序的时候，数据很多耗费时间长的话，也会显示这个)
            //"processing": true,
            // 是否允许 DataTables 开启本地搜索
            "searching": true,
            // 是否开启服务器模式
            "serverSide": false,
            // 控制 DataTables 的延迟渲染，可以提高初始化的速度
            "deferRender": true,
            // 增加或修改通过 Ajax 提交到服务端的请求数据
            "ajax": {
                "url": "./BrowseAjax",
                "type":"GET"
            },
            // 分页按钮显示选项
            "pagingType": "full_numbers",
            // 设置列的数据源
            "columns": [
                {"data": "user"},
                {"data": "commodity"},
                {"data":"time"},
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
    });
</script>

</body>
</html>
