<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>Student List</title></head>
<body>
<h2>Student List</h2>

<form method="get" action="/students">
    <input type="text" name="keyword" value="${keyword}" placeholder="Search by name or email" />
    <button type="submit">Search</button>
</form>

<table border="1">
    <tr>
        <th>ID</th><th>Name</th><th>Email</th><th>Score</th>
    </tr>
    <c:forEach items="${students}" var="s">
        <tr>
            <td>${s.id}</td><td>${s.name}</td><td>${s.email}</td><td>${s.score}</td>
        </tr>
    </c:forEach>
</table>

<div>
    <c:forEach begin="0" end="${totalPages - 1}" var="i">
        <c:choose>
            <c:when test="${i == currentPage}">
                <strong>${i + 1}</strong>
            </c:when>
            <c:otherwise>
                <a href="/students?page=${i}&keyword=${keyword}">${i + 1}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
</div>
</body>
</html>