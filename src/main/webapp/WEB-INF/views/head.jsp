<%--
  Created by IntelliJ IDEA.
  User: zsc
  Date: 2017/6/19
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-custom">
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <div class="navbar-header" style="margin-top:6px;">
                    <a class="" href="#">
                        <img alt="Brand" src="<c:url value='/static/img/head3.png'/>">
                    </a>
                </div>

                <%--value="${q}"一定加引号，否则识别不出空格--%>
                <form action="search" method="get">
                    <div class="col-lg-5" style="margin-top:6px;">
                        <div class="input-group">
                            <input type="hidden" name="type" value="question">
                            <input class="form-control" type="text" name="q" value="${q}">
                            <%--<span class="input-group-btn"><button class="btn btn-default" type="submit">Go!</button></span>--%>
                    <span class="input-group-btn">
                        <button class="btn btn-default" style="height:34px;" type="submit">
                            <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                        </button>
                    </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</nav>

