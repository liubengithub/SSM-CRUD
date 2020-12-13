<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/1
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询全部书籍</title>
    <%--    BootStrap美化界面--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>书籍展示</h1>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colmn">
            <div class="page-header">
                <h1>
                    <small>书籍列表---------------显示所有数据</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 colmn">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名字</th>
                    <th>书籍数量</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <%--                书籍从数据库中查询出来，从list遍历出来--%>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.bookID}">修改</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row clearfix" style="float: left">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示所有书籍</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-4 column" style="float: left">
            <%--           查询书籍--%>
            <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: left">
                <input type="text" class="form-control" placeholder="请输入查询的书籍名称" name="queryBookName">
                <input type="submit" value="查询">
            </form>
        </div>
    </div>
</div>


</body>
</html>
