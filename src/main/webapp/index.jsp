<jsp:include page="header.jsp">
    <jsp:param name="active" value="1"/>
</jsp:include>
<div class="container">
    <h1>Main page</h1>
    <hr/>
    <p>
        <%--Hello, <%= (request.getParameter("firstName") != null && !request.getParameter("firstName").isEmpty()) ? request.getParameter("firstName") : "JSP" %>--%>
        <%
            String firstName = request.getParameter("firstName");
            if(firstName != null && !firstName.isEmpty()) {
                session.setAttribute("firstName", firstName);
            }
        %>
        Hello, <%= session.getAttribute("firstName") != null ? session.getAttribute("firstName") : "JSP" %>!
    </p>
</div>
<%@ include file="footer.jsp"%>
