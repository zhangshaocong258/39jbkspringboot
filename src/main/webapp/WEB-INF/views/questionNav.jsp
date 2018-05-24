<%--
  Created by IntelliJ IDEA.
  User: zsc
  Date: 2017/1/18
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<html>--%>
<%--<head>--%>
<%--<title>Question</title>--%>
<%--<link href="<c:url value='/static/css/bootstrap.css'/>" rel="stylesheet" type="text/css">--%>
<%--<script type="text/javascript" src="<c:url value='/static/js/jquery-3.2.1.min.js'/>"></script>--%>
<%--<script type="text/javascript" src="<c:url value='/static/js/bootstrap.js'/>"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="head.jsp" flush="true"/>--%>

<%--<div class="container">--%>
<div class="row">
    <div class="col-md-10">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active">
                <%--使用<%=request.getContextPath()%>得到工程名SearchEngine--%>
                <a href="<%=request.getContextPath()%>/search?type=question&q=${q}">内容</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/search?type=people&q=${q}">用户</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/search?type=topic&q=${q}">话题</a>
            </li>
        </ul>
    </div>
</div>
<div class="row">
    <div class="col-md-10">
        <hr>
    </div>
</div>

<c:if test="${idCount != 0}">
    <jsp:include page="sortNav.jsp"/>
</c:if>
<%--<div class="row">--%>
<%--<h1>Question List</h1>--%>
<%--<table>--%>
<%--<tr>--%>
<%--<th>ID</th>--%>
<%--<th>Url</th>--%>
<%--<th>Title</th>--%>
<%--<th>&nbsp;</th>--%>
<%--</tr>--%>
<%--<c:forEach items="${forwards}" var="forward">--%>
<%--<tr>--%>
<%--<td>${forward.id}</td>--%>
<%--<td><a href="${forward.url}"> ${forward.url}</a></td>--%>
<%--<td><a href="${forward.url}"> ${forward.title}</a></td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>
<%--&lt;%&ndash;<jsp:include page="page.jsp">&ndash;%&gt;--%>
<%--&lt;%&ndash;<jsp:param name="url" value="search?type=question&q=${q}"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;</jsp:include>&ndash;%&gt;--%>
<%--</table>--%>
<%--</div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
