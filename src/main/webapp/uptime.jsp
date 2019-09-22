<%@ page import="pl.piotrowskib.UptimeService" %>
<jsp:include page="header.jsp">
    <jsp:param name="active" value="2"/>
</jsp:include>
<div class="container">
    <h1>Uptime</h1>
    <hr/>
    <p>
        <%! private UptimeService uptimeService = new UptimeService(); %>
        <%= uptimeService.getUptimeMessage() %>
    </p>
</div>
<%@ include file="footer.jsp" %>
