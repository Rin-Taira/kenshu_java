<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
        <%
        String numX = request.getParameter("num_x");
        String numY = request.getParameter("num_y");
        
        int x = Integer.parseInt(numX);
        int y = Integer.parseInt(numY);
        %>
        <p><%= x %> + <%= y %> = <%= x + y %></p>
        <%
        out.println("<p>大きいほうの値は、" + Math.max(x, y) + "です。");
        %>
    </body>
</html>