<%@ include file="header.jsp" %>
<div class="container">
    <h1>Multiplication table</h1>
    <div id="multiplication">
        <table border="1">
            <%
                Cookie cookieX = new Cookie("rozmiarX", request.getParameter("rozmiarx"));
                Cookie cookieY = new Cookie("rozmiarY", request.getParameter("rozmiary"));
                cookieX.setMaxAge(60*60*24*360);
                cookieY.setMaxAge(60*60*24*360);
                response.addCookie(cookieX);
                response.addCookie(cookieY);

                for (int i = 1; i <= Integer.parseInt(cookieY.getValue()); i++) {
                    out.print("<tr>");
                    for (int j = 1; j <= Integer.parseInt(cookieX.getValue()) ; j++) {
                        if(i == j) {
                            out.print("<td class=\"multi-1\">" + i * j + "</td>");
                        } else if(i > j) {
                            out.print("<td class=\"multi-2\">" + i * j + "</td>");
                        } else {
                            out.print("<td class=\"multi-3\">" + i * j + "</td>");
                        }
                    }
                    out.print("</tr>");
                }
            %>
        </table>
    </div>
</div>
<%@ include file="footer.jsp"%>
