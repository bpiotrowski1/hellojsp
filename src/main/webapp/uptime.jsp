<%@ page import="java.util.Date" %>
<%@ page import="pl.piotrowskib.UptimeService" %>
<%@ include file="header.jsp" %>
<div id="container">
    <h1>Uptime</h1>
    <p>
        <%! private UptimeService uptimeService = new UptimeService(); %>
        <%= uptimeService.getUptimeMessage() %>
    </p>
</div>
<%@ include file="footer.jsp" %>
