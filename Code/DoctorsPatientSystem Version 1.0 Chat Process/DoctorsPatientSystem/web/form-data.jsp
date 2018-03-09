<%@page import="dto.TestForm"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Commons File Upload Example</title>
</head>
<body>
    <%
    String error = (String)request.getAttribute("ERROR");
    if (error != null) {
    %>
        <h3><%= error %></h3>
    <%
    } else {
        TestForm form = (TestForm)request.getAttribute("DATA");
    %>
    <h2>Data Submitted is:</h2>
    <p>
        Your Name: <%=form.getName()%><br/>
        File Name: <%= form.getDocument().getName() %><br/>
        File Size: <%= form.getDocument().getSize() %><br/>
        File Type: <%= form.getDocument().getContentType() %><br/>
    <% } %>
    </p>
</body>
</html>