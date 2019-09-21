<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<%!
    private  String makeItLower(String data) {
        return data.toLowerCase();
    }
%>
<body>
    <h1>Hello JSP!</h1>
    <p>
        <%= makeItLower("WIELKIE LITERY") %>
    </p>
</body>
</html>
