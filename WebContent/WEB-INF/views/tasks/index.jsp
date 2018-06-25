<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null}">
            <div id="flush_success">
                <c:out value="${flush}"></c:out>
            </div>
        </c:if>

        <div class="head">タスク一覧</div>

        <ul>
            <c:forEach var="task" items="${ tasks }">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${task.id}">▼</a>
                    <span class="indextitle"><c:out value="${task.title}" /></span>
                    <span class="shintyoku"><c:out value="${task.sintyoku}" /></span>
                </li>
            </c:forEach>
        </ul>

        <a href="${pageContext.request.contextPath}/new" class="btn">追加</a>



    </c:param>
</c:import>