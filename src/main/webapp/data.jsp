<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>simple-jsp-ee7-test</title>
</head>
<body>
  <h1>Hello World</h1>
  <p>You're at ${pageContext.request.requestURI}</p>
  <p>Query parameter name is: ${param.name}</p>
  <h2>BigHello: ${viewCtrl.bigHello(param.name)}</h2>
  <p>Calling bigHello again with "someone" should still 
    return the original value (due to caching at requestscope: ${viewCtrl.bigHello(someone)}</p>
  <p>Now lets loop through our dummyUsers:</p>
  <ul>
    <c:forEach items="${viewCtrl.dummyUsers}" var="user">
      <li>User ${user.id} is "${user.name}"</li>
    </c:forEach>
  </ul>
</body>
</html>
