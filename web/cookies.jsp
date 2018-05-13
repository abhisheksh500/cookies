<%-- 
    Document   : cookies
    Created on : Apr 3, 2018, 10:11:10 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cookies Page</title>
    </head>
    <body>
        <%
            Cookie  dd = new Cookie("key","value");
            response.addCookie(dd);
            %>
            <% Cookie[] d= request.getCookies();
            %>
            <h1>
                <% 
                    for(int i =0;i<d.length;i++)
                    {
                        if("username".equals(d[i].getName()))
                        {
                            out.print(d[i].getValue());
                        }
                    }
                    %>
                   
            </h1>
    </body>
</html>
