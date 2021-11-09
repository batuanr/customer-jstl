<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="model.manage" %><%--
  Created by IntelliJ IDEA.
  User: kasawoa
  Date: 2021/11/09
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <%
    List<Customer> customerList = manage.getCustomerList();
    request.setAttribute("ds", customerList);
  %>
  <body>
  <table>
    <tr>
      <th>id</th>
      <th>Name</th>
      <th>address</th>
    </tr>
    <c:forEach items="${ds}" var="customerList">
      <tr>
        <td>${customerList.id}</td>
        <td>${customerList.name}</td>
        <td>${customerList.address}</td>
      </tr>
    </c:forEach>
  </table>

  </body>
</html>
