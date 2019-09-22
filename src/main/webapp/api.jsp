<%@ page import="pl.piotrowskib.Person" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
    Person person = new Person.PersonBuilder().setImie("Imie").setNazwisko("Nazwisko").setEmail("email@em.pl").setNumber("123456789").build();
    Gson gson = new Gson();
    out.print(gson.toJson(person));
%>
