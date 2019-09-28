<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/styles.css">
</head>

<body>
<header id="header">
    <div id="menu">
        <h3 class="masthead-brand"><a href="/">HELLO JSP!</a></h3>
        <nav class="nav nav-masthead justify-content-center">
            <a class="nav-link <%= "1".equals(request.getParameter("active")) ? "active" : "" %>" href="/">Main page</a>
            <a class="nav-link <%= "2".equals(request.getParameter("active")) ? "active" : "" %>" href="uptime.jsp">Uptime</a>
            <a class="nav-link <%= "3".equals(request.getParameter("active")) ? "active" : "" %>" href="number.jsp">Random number</a>
            <a class="nav-link <%= "4".equals(request.getParameter("active")) ? "active" : "" %>" href="multiplication.jsp">Multiplication table</a>
            <a class="nav-link" href="api.jsp">JSON</a>
            <%--
                if(Integer.parseInt(request.getParameter("active")) == 1) {
                    out.print("<a class=\"nav-link active\" href=\"/\">Main page</a>");
                } else {
                    out.print("<a class=\"nav-link\" href=\"/\">Main page</a>");
                }
                if(Integer.parseInt(request.getParameter("active")) == 2) {
                    out.print("<a class=\"nav-link active\" href=\"uptime.jsp\">Uptime</a>");
                } else {
                    out.print("<a class=\"nav-link\" href=\"uptime.jsp\">Uptime</a>");
                }
                if(Integer.parseInt(request.getParameter("active")) == 3) {
                    out.print("<a class=\"nav-link active\" href=\"number.jsp\">Random number</a>");
                } else {
                    out.print("<a class=\"nav-link\" href=\"number.jsp\">Random number</a>");
                }
                if(Integer.parseInt(request.getParameter("active")) == 4) {
                    out.print("<a class=\"nav-link active\" href=\"multiplication.jsp\">Multiplication table</a>");
                } else {
                    out.print("<a class=\"nav-link\" href=\"multiplication.jsp\">Multiplication table</a>");
                }
                out.print("<a class=\"nav-link\" href=\"api.jsp\">JSON</a>");
            --%>
        </nav>
    </div>
</header>