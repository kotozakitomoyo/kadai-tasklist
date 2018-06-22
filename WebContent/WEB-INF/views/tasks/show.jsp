<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">

		        <h2>タスク詳細ページ</h2>

		        <h3>予定</h3>
		        <p><c:out value="${task.content}" /></p>

		        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
		        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">編集</a></p>
            </c:when>
            <c:otherwise>
                <h2>お探しのページは見つかりませんでした</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>