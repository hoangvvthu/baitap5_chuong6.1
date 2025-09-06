<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="now" class="java.util.Date" scope="page" />
<hr>
<p>&copy; <fmt:formatDate value="${now}" pattern="yyyy"/> Murach's Java Servlets and JSP</p>
</body>
</html>
