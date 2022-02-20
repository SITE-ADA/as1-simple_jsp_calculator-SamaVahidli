<%
  String ua=request.getHeader("user-agent");
%>

<html>
  <head>
    <title>Assignment 1 - Simple JSP Calculator</title>
    <link rel="stylesheet" href="style.css">

    <style>
      div {
        background-color: white;
        padding: 20px;
        border-radius: 6px;
      }
    </style>
  </head>

  <body>
    <h1>Client Info</h1>

    <div>
      <h2>User agent</h2>
      <h4><%=ua%></h4>
    </div>
  </body>
</html>
