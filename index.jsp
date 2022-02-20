<%@ page import="ada.wm2.Calculator" %> 
<%@ page errorPage="errorPage.jsp" %>

<%
  int firstNumber = 0;
  int secondNumber = 0;
  String p1 = request.getParameter("p1");
  String p2 = request.getParameter("p2");
  String op = request.getParameter("op");

  try {
    firstNumber = Integer.parseInt(p1);
    secondNumber = Integer.parseInt(p2);
  } catch (Exception e) {}

  Calculator calculator = new Calculator(firstNumber, secondNumber, op);
%>

<html>
  <head>
    <title>Assignment 1 - Simple JSP Calculator</title>
    <link rel="stylesheet" href="style.css" />
  </head>

  <body>
    <h1>Simple JSP Calculator</h1>

    <form action="index.jsp" method="get">
      <div>
        <label for="p1">First number</label>
        <input type="number" name="p1" id="p1" required />
      </div>

      <div>
        <label for="p2">Second number</label>
        <input type="number" name="p2" id="p2" required />
      </div>

      <div>
        <label for="op">Operation</label>
        <select name="op" id="op" required>
          <option value="add">+</option>
          <option value="sub">-</option>
          <option value="mul">*</option>
          <option value="div">/</option>
        </select>
      </div>

      <button type="submit">Calculate</button>
        
      Result: 
        <%
          if (op != null) {
            out.print(calculator.run());
          }
        %>
    </form>

    <a href="clientInfo.jsp">Client Info</a>
  </body>
</html>