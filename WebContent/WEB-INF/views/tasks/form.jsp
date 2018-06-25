<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>


<c:if test="${errors != null }">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
        ・<c:out value="${error}" /><br />
        </c:forEach>
    </div>

</c:if>

<div id="form">
<label for="title">タイトル【必須】</label><br />
<input type="text" name="title" value="${task.title}" />
<br /><br />


<label for="content">内容</label><br />
<input type="text" name="content" value="${task.content}" />
<br /><br />

<label for="start_date">開始日</label><br />
<input type="date" name="start_date" value="${task.start_date}" />
<br /><br />

<label for="deadline_date">締切日</label><br />
<input type="date" name="deadline_date" value="${task.deadline_date}" />
<br /><br />

<label for="sintyoku">進捗</label><br />
<input type="text" name="sintyoku" value="${task.sintyoku}" />
<br /><br />


<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>


</div>



