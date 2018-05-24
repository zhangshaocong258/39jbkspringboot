<%--
  Created by IntelliJ IDEA.
  User: zsc
  Date: 2017/6/20
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
    <c:when test="${type == 'question'}">
        <c:choose>
            <c:when test="${nav == '0'}">
                <c:forEach items="${forwards}" var="forward">
                    <div class="row">
                        <div class="col-md-8">
                            <a href="${forward.url}"> ${forward.title}</a>
                        </div>
                        <div class="col-md-2">
                            <h5><span class="glyphicon glyphicon-user"
                                      aria-hidden="true"/>&thinsp;${forward.tQuality}&thinsp;个关注
                            </h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1" style="margin-top:6px;">
                            <button type="button" class="btn btn-xs btn-primary">${forward.pro}</button>
                        </div>

                        <div class="col-md-4">
                            <h5><strong>${forward.user}</strong></h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7 col-md-offset-1">
                            <h5>${forward.qDescription}</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <hr>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <c:forEach items="${sortedForwards}" var="forward">
                    <div class="row">
                        <div class="col-md-8">
                            <a href="${forward.url}"> ${forward.title}</a>
                        </div>
                        <div class="col-md-2">
                            <h5><span class="glyphicon glyphicon-user"
                                      aria-hidden="true"/>&thinsp;${forward.tQuality}&thinsp;个关注
                            </h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-1" style="margin-top:6px;">
                            <button type="button" class="btn btn-xs btn-primary">${forward.pro}</button>
                        </div>

                        <div class="col-md-4">
                            <h5><strong>${forward.user}</strong></h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-7 col-md-offset-1">
                            <h5>${forward.qDescription}</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10">
                            <hr>
                        </div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </c:when>

    <c:when test="${type == 'people'}">
        <c:forEach items="${forwards}" var="forward">
            <div class="row">
                <div class="col-md-8">
                    <a href="${forward.url}"> ${forward.title}</a>
                </div>
                <div class="col-md-2">
                    <h5><span class="glyphicon glyphicon-user"
                              aria-hidden="true"/>&thinsp;${forward.quality}&thinsp;个关注
                    </h5>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <h5>${forward.description}</h5>
                </div>
            </div>

            <div class="row">
                <div class="col-md-10">
                    <hr>
                </div>
            </div>
        </c:forEach>
    </c:when>

    <c:when test="${type == 'topic'}">
        <c:forEach items="${forwards}" var="forward">
            <div class="row">
                <div class="col-md-4">
                    <a href="${forward.url}"> ${forward.title}</a>
                </div>
                <div class="col-md-offset-4 col-md-2">
                    <h5><span class="glyphicon glyphicon-user" aria-hidden="true"/>&thinsp;${forward.quality}&thinsp;个关注
                    </h5>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <h5>${forward.description}</h5>
                </div>
            </div>

            <div class="row">
                <div class="col-md-10">
                    <hr>
                </div>
            </div>
        </c:forEach>
    </c:when>

</c:choose>


<%--<div class="row">--%>
<%--<h1>${type} List</h1>--%>
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
<%--<hr>--%>
<%--</c:forEach>--%>
<%--</table>--%>
<%--</div>--%>
