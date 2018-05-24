<%--
  Created by IntelliJ IDEA.
  User: zsc
  Date: 2017/6/20
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>${type}</title>
    <link href="<c:url value='/static/css/bootstrap.css'/>" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="<c:url value='/static/js/jquery-3.2.1.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/static/js/bootstrap.js'/>"></script>
</head>
<body>
<%--head--%>
<jsp:include page="head.jsp" flush="true"/>

<div class="container">

    <jsp:include page="${type}Nav.jsp"/>

    <c:choose>
        <c:when test="${idCount == 0}">
            <h4>没有找到相关内容</h4>
        </c:when>
        <c:otherwise>
            <jsp:include page="content.jsp"/>
            <jsp:include page="page.jsp">
                <jsp:param name="url" value="search?type=${type}&q=${q}"/>
            </jsp:include>
        </c:otherwise>
    </c:choose>
    <br><br>
</div>
</body>
</html>
