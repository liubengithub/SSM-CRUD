<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/2
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--    BootStrap美化界面--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colmn">
            <div class="page-header">
                <h1>
                    <small>书籍列表---------------新增书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">

        <div class="form-group">
            <label for="input2" class="col-sm-2 control-label">书籍名字</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input2" name="bookName" required>
            </div>
        </div>
        <div class="form-group">
            <label for="input3" class="col-sm-2 control-label">书籍数量</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input3" name="bookCounts" required>
            </div>
        </div>
        <div class="form-group">
            <label for="input4" class="col-sm-2 control-label">书籍详情</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input4" name="detail" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">提交</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>
