<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>simple-jsp-ee7-test</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
    <header class="navbar navbar-expand">
      <nav class="navbar fixed-top navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Hello World</a>
      </nav>
    </header>
    <div class="container-fluid">
      <h3>You're at ${pageContext.request.requestURI}</h3>
      <p>Query parameter name is: ${param.name}</p>
      <h2>BigHello: ${viewCtrl.bigHello(param.name)}</h2>
      <p>Calling bigHello again with "someone" should still 
        return the original value (due to caching at requestscope: ${viewCtrl.bigHello(someone)}</p>
      <p>Now lets loop through our dummyUsers:</p>

      <!-- lets keep the table a bit slimmer -->

      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>id</th>
            <th>name</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${viewCtrl.dummyUsers}" var="user">
            <tr>
              <th scope="row">${user.id}</th>
              <td>${user.name}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
    <!-- Optional Bootstrap JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>