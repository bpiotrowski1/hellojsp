<%@ include file="header.jsp" %>
<div id="container">
    <h1>Multiplication table</h1>
    <div id="multiplication">
        <table border="1">
            <%
                for (int i = 1; i <= 10; i++) {
                    out.print("<tr>");
                    for (int j = 1; j <= 10 ; j++) {
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
