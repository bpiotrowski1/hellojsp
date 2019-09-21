<%@ page import="java.util.Date" %>
<%@ include file="header.jsp" %>
<div id="container">
    <h1>Uptime</h1>
    <p>
        <%! Date uptime = new Date(); %>
        <%= uptime - new Date() %>
    </p>
</div>
<%@ include file="footer.jsp"%>
