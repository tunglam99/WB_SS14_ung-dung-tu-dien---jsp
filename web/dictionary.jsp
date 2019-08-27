<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: tunglam
  Date: 8/27/2019
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String,String> dic =new HashMap<>();
%>
<%
    dic.put("hello","xin chào");
    dic.put("how","thế nào");
    dic.put("book","sách");

    String search = request.getParameter("txtSearch");
    String result = dic.get(search);
    if (result != null){
        out.println("Word: "+search);
        out.println("Result: "+result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
