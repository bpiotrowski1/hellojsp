<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<body>
    <h1>Hello JSP!</h1>
    <p>
        <%= new Date() %><br/>
        <%= 100 * Math.PI %><br/>
        <%= 22 < 1 %>
    </p>
</body>
</html>
