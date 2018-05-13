<%-- 
    Document   : session
    Created on : Apr 4, 2018, 10:00:13 AM
    Author     : Abhishek
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>session Page</title>
    </head>
    <body>
         <% HttpSession h= request.getSession();
                    ArrayList a1 = new ArrayList();
                    a1.add(1);
                    a1.add(2);
                    h.setAttribute("key", a1);
                    %>
                    <h2>
                        <%
                            HttpSession hg = request.getSession();
                            String s = (String) hg.getAttribute("key");
                            out.print(s);
                            %>
                    </h2>
    </body>
</html>
