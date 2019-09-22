<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container">
    <h1>Multiplication table</h1>
    <div id="multiplication">
        <form action="multiplication.jsp" method="GET">
            <label for="rozmiarx">Rozmiar X = </label>
            <input type="number" id="rozmiarx" name="rozmiarx"/><br/>
            <label for="rozmiary">Rozmiar Y = </label>
            <input type="number" id="rozmiary" name="rozmiary"/><br/>
            <input type="submit" value="Wyślij"/>
        </form>
        <%
            int x = 0, y = 0;
            if (request.getParameter("rozmiarx") != null && !request.getParameter("rozmiarx").isEmpty()) {
                x = Integer.parseInt(request.getParameter("rozmiarx"));
                Cookie cookieX = new Cookie("rozmiarX", request.getParameter("rozmiarx"));
                cookieX.setMaxAge(60 * 60 * 24 * 360);
                response.addCookie(cookieX);
            }
            if (request.getParameter("rozmiary") != null && !request.getParameter("rozmiary").isEmpty()) {
                y = Integer.parseInt(request.getParameter("rozmiarx"));
                Cookie cookieY = new Cookie("rozmiary", request.getParameter("rozmiary"));
                cookieY.setMaxAge(60 * 60 * 24 * 360);
                response.addCookie(cookieY);
            }
            if (x > 0 && y > 0) {
                out.print("<table>");
                for (int i = 1; i <= y; i++) {
                    out.print("<tr>");
                    for (int j = 1; j <= x; j++) {
                        if (i == j) {
                            out.print("<td class=\"multi-1\">" + i * j + "</td>");
                        } else if (i > j) {
                            out.print("<td class=\"multi-2\">" + i * j + "</td>");
                        } else {
                            out.print("<td class=\"multi-3\">" + i * j + "</td>");
                        }
                    }
                    out.print("</tr>");
                }
                out.print("</table>");
            }
        %>
    </div>
</div>
<%@ include file="footer.jsp" %>
