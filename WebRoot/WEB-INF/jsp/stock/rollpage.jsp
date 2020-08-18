<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="page-bar">
		<ul class="page-num-ul clearfix">
			<li>共${totalCount }条记录&nbsp;&nbsp; ${currentPage }/${totalPage }页</li>
			<c:if test="${currentPage > 1}">
				<a
					href="${pageContext.request.contextPath}/sys/stock?currentPage=1&providerId=${providerId}&productName=${productName}">首页</a>
				<a
					href="${pageContext.request.contextPath}/sys/stock?currentPage=${currentPage-1}&providerId=${providerId}&productName=${productName}">上一页</a>
			</c:if>
			<c:if test="${currentPage < totalPage }">
				<a
					href="${pageContext.request.contextPath}/sys/stock?currentPage=${currentPage+1 }&providerId=${providerId}&productName=${productName}">下一页</a>
				<a
					href="${pageContext.request.contextPath}/sys/stock?currentPage=${totalPage}&providerId=${providerId}&productName=${productName}">最后一页</a>
			</c:if>
			&nbsp;&nbsp;
		</ul>
		<form id="jump" action="${pageContext.request.contextPath }/sys/stock">
			<span class="page-go-form"><label>跳转至</label> <!-- 这两个input标签用于保存传输数据 -->
				<input type="hidden" name="providerId" value="${providerId }">
				<input type="hidden" name="productName" value="${productName }">
				<input type="text" name="currentPage" id="inputPage"
				class="page-key" />页 <!-- <button type="button" class="page-btn" onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button> -->
				<button type="button" class="page-btn" onclick="jump_to()">GO</button>
			</span>
		</form>

	</div>
</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/rollpage.js"></script>
</html>