<%@ page import="pl.piotrowskib.MultiplicationService" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div class="container">
    <h1>Multiplication table</h1>
    <div id="multiplication">
        <form action="multiplication.jsp" method="POST">
            <label for="rozmiarx">Rozmiar X = </label>
            <input type="number" id="rozmiarx" name="rozmiarx"/><br/>
            <label for="rozmiary">Rozmiar Y = </label>
            <input type="number" id="rozmiary" name="rozmiary"/><br/>
            <input type="submit" value="Wyślij"/>
        </form>
        <%
            MultiplicationService multiplicationService = new MultiplicationService();
            int xFromCookie = multiplicationService.getRozmiarFromCookie("rozmiarX", request.getCookies());
            int yFromCookie = multiplicationService.getRozmiarFromCookie("rozmiarY", request.getCookies());

            if(request.getParameter("rozmiarx") != null && !request.getParameter("rozmiarx").isEmpty()) {
                Cookie cookieX = new Cookie("rozmiarX", request.getParameter("rozmiarx"));
                cookieX.setMaxAge(60 * 60 * 24 * 365);
                response.addCookie(cookieX);
                xFromCookie = Integer.parseInt(request.getParameter("rozmiarx"));
            }
            if(request.getParameter("rozmiary") != null && !request.getParameter("rozmiary").isEmpty()) {
                Cookie cookieY = new Cookie("rozmiarY", request.getParameter("rozmiary"));
                cookieY.setMaxAge(60 * 60 * 24 * 365);
                response.addCookie(cookieY);
                yFromCookie = Integer.parseInt(request.getParameter("rozmiary"));
            }
            if (xFromCookie > 0 && yFromCookie > 0) {
                out.print("<table class=\"table\">");
                for (int i = 1; i <= yFromCookie; i++) {
                    out.print("<tr>");
                    for (int j = 1; j <= xFromCookie; j++) {
                        if (i == j) {
                            out.print("<td class=\"table-success\">" + i * j + "</td>");
                        } else if (i > j) {
                            out.print("<td class=\"table-warning\">" + i * j + "</td>");
                        } else {
                            out.print("<td class=\"table-dark\">" + i * j + "</td>");
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
