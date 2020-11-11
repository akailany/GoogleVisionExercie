<%--
  Created by IntelliJ IDEA.
  User: atiyakailany
  Date: 11/11/20
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page
        import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>


<%@ page import="com.google.cloud.vision.v1.EntityAnnotation"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Google Vision API Output</title>
</head>
<body>

<table>
    <tr>
        <td align="center"><h1>Label Detection</h1></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>

</table>

<table>
    <tr>
        <td><h3>Image</h3></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>

        <td><img src="<%=request.getAttribute("url")%>"></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <%
        List<EntityAnnotation> labels = (List<EntityAnnotation>) request.getAttribute("labels");
    %>
    <tr>
        <td><h3>Google Vision API Label Detection</h3></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>

        <table style="width:512px"; class="table table-striped">
            <thead>

            <tr>
                <th scope="col"; style="width:512px">Detected Label</th>
                <th scope="col"; style="width:512px">Score</th>
            </tr>
            </thead>

            <tbody>
            <c:forEach items="${labels}" var="label">
                <tr>
                    <td>${label.getDescription()}</td>
                    <td>${label.getScore()}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <td><br></td>
        <td><br></td>

    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>

    <tr>
        <td><a href="/">Try Again!</</a></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
    <tr>
        <td><br></td>
    </tr>
</table>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
