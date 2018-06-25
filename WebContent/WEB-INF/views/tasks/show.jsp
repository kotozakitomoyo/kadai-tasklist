<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">

		        <h2><c:out value="${task.title}" /></h2>

		        <h3>内容</h3>
		        <p class="naiyou"><c:out value="${task.content}" /></p><br /><br />

		        <h3>開始日</h3><span class="naiyou">：<fmt:formatDate value="${task.start_date}" pattern="yyyy/MM/dd" /></span>
		        <h3>締切日</h3><span class="naiyou">：<fmt:formatDate value="${task.deadline_date}" pattern="yyyy/MM/dd" /></span>
		        <br /><br />
		        <h3>進捗</h3><span class="naiyou">：<c:out value="${task.sintyoku}" /></span>

                <div class="link">
			        <a href="${pageContext.request.contextPath}/index" class="topbtn">TOP</a>
			        <a href="${pageContext.request.contextPath}/edit?id=${task.id}" class="btn">編集</a>
		        </div>
            </c:when>
            <c:otherwise>
                <h2>お探しのページは見つかりませんでした</h2>

            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>