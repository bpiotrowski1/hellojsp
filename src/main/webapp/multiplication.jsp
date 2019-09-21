<%@ include file="header.jsp" %>
<div id="container">
    <h1>Multiplication table</h1>
    <div id="multiplication">
        <table border="1">
            <%
                int x = Integer.parseInt(request.getParameter("rozmiarx"));
                int y = Integer.parseInt(request.getParameter("rozmiary"));
                for (int i = 1; i <= y; i++) {
                    out.print("<tr>");
                    for (int j = 1; j <= x ; j++) {
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
