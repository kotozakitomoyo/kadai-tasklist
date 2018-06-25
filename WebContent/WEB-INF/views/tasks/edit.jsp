<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:choose>
            <c:when test="${task != null}">
                 <h2>メッセージの編集ページ</h2>

			     <form method="POST" action="${pageContext.request.contextPath}/update">
			         <c:import url="form.jsp" />
			     </form>

                <div class="link">
			      <a href="${pageContext.request.contextPath}/index" class="topbtn">TOP</a>
			      <a href="#" onclick="confirmDestroy();" class="btn">削除</a>
			    </div>
			      <form method="POST" action="${pageContext.request.contextPath}/destroy">
			         <input type="hidden" name="_token" value="${_token}" />
			      </form>
			      <script>
				      function confirmDestroy(){
					      if(confirm("本当に削除してよろしいですか？")){
					      document.forms[1].submit();
					      }
				      }
			      </script>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>