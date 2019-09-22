<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<div id="container">
    <h1>Uptime</h1>
    <p>
        <%! private long startTime = System.currentTimeMillis(); %>
        <%
            long uptime = System.currentTimeMillis() - startTime;
            long hours = uptime / 3600000;
            long minutes = uptime / 60000 % 60;
            long seconds = uptime / 1000 % 60;
            String uptimeMessage = String.format("%dh %dm %ds", hours, minutes, seconds);

            out.print(uptimeMessage);
        %>
    </p>
</div>
<%@ include file="footer.jsp" %>
