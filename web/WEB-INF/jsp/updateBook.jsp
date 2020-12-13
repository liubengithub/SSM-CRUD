<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/2
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 colmn">
            <div class="page-header">
                <h1>
                    <small>书籍列表---------------修改书籍</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <%--出现的问题   ： 我们提交了修改的SQL请求，但是修改失败。初次考虑，是事务问题，配置完毕事务，依旧失败--%>
        <%--        看一下SQL语句，能否执行成功：执行失败，修改未完成--%>
        <%--    前端传递隐藏域--%>
        <input type="hidden" name="bookID" value="${Qbook.bookID}">
        <div class="form-group">
            <label for="input2" class="col-sm-2 control-label">书籍名字</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input2" name="bookName" value="${Qbook.bookName}" required>
            </div>
        </div>
        <div class="form-group">
            <label for="input3" class="col-sm-2 control-label">书籍数量</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input3" name="bookCounts" value="${Qbook.bookCounts}"
                       required>
            </div>
        </div>
        <div class="form-group">
            <label for="input4" class="col-sm-2 control-label">书籍详情</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="input4" name="detail" value="${Qbook.detail}" required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">修改</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>
