<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<body>
    <h1>Hello JSP!</h1>
    <p>
        <%
            for (int i = 0; i < 10; i++) {
                out.println("Hello JSP " + i + "<br/>");
            }
        %>
    </p>
</body>
</html>
