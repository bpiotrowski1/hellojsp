<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<div id="container">
    <h1>Multiplication table form</h1>
    <form action="multiplication.jsp" method="POST">
        <label for="rozmiarx">Rozmiar X = </label>
        <input type="number" id="rozmiarx" name="rozmiarx"/><br/>
        <label for="rozmiary">Rozmiar Y = </label>
        <input type="number" id="rozmiary" name="rozmiary"/><br/>
        <input type="submit" value="Wyślij"/>
    </form>
</div>
<%@ include file="footer.jsp"%>