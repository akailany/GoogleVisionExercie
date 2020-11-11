<%--
  Created by IntelliJ IDEA.
  User: atiyakailany
  Date: 11/11/20
  Time: 12:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>Image Upload Page</title>
    <style>
        .files input {
            outline: 5px dotted #807d7d;
            outline-offset: -10px;
            -webkit-transition: outline-offset .15s ease-in-out, background-color .15s linear;
            transition: outline-offset .15s ease-in-out, background-color .15s linear;
            padding: 120px 0px 85px 35%;
            text-align: center !important;
            margin: 0;
            width: 100% !important;
        }
        .files input:focus{     outline: 2px dashed #000000;  outline-offset: -10px;
            -webkit-transition: outline-offset .15s ease-in-out, background-color .15s linear;
            transition: outline-offset .15s ease-in-out, background-color .15s linear; border:1px solid #000000;
        }
        .files{ position:relative}
        .files:after {  pointer-events: none;
            position: absolute;
            top: 60px;
            left: 0;
            width: 50px;
            right: 0;
            height: 56px;
            content: "";
            background-image: url(https://www.flaticon.com/svg/static/icons/svg/725/725008.svg);
            display: block;
            margin: 0 auto;
            background-size: 100%;
            background-repeat: no-repeat;
        }
        .color input{ background-color:#f0fffd;}
        .files:before {
            position: absolute;
            bottom: 10px;
            left: 0;  pointer-events: none;
            width: 100%;
            right: 0;
            height: 57px;
            content: "Drag image file here or Browse from your computer";
            display: block;
            margin: 0 auto;
            color: #000000;
            font-weight: 600;
            text-transform: capitalize;
            text-align: center;
        }
    </style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <h1>Google Vision Exercise</h1>
            <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">




                <div class="form-group files">

                    <input type="file" name="myFile" class="form-control" multiple="">
                </div>

                <input type="submit" class="btn btn-default btn-block" value="Submit">
            </form>


        </div>

    </div>
</div>

</body>
</html>
