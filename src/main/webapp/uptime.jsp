<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<div id="container">
    <h1>Uptime</h1>
    <p>
        <%! private long uptime = System.nanoTime(); %>
        <%
            out.print((System.nanoTime() - uptime) / Math.pow(10,9) + "s");
        %>
    </p>
</div>
<%@ include file="footer.jsp"%>
