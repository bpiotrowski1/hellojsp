<%@ page import="java.util.Random" %>
<jsp:include page="header.jsp">
    <jsp:param name="active" value="3"/>
</jsp:include>
<div class="container">
    <h1>Random number</h1>
    <hr/>
    <p>
        <%
            Random rand = new Random();
            int liczba = rand.nextInt(100);
            if (liczba < 50) {
                out.print("Liczba mniejsza od 50 - <font color=\"#0000ff\">" + liczba + "</font>");
            } else {
                out.print("Liczba wieszka badz rowna 50 - <font color=\"#00ff00\">" + liczba + "</font>");
            }
        %>
    </p>
</div>
<%@ include file="footer.jsp" %>
