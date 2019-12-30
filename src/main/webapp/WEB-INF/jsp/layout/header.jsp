    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
        <%@ page import="java.io.*"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
        <!DOCTYPE html>
        <html>
        <head></head>
        <body>
        <script type="text/javascript" src="/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/jquery.min.js"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

            <style>

            .navbar {
            margin-bottom: 0;
            border-radius: 0;
            }
            .row.content {height: 450px}

            </style>

            <nav class="navbar navbar-inverse">
            <div class="container-fluid">
            <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="" class="digital-clock"></a></li>
            <li><a href="#">About</a></li>
            <li><a href="https://github.com/azatates7">Github</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <li><a onlick="closeWin();"><span class="glyphicon glyphicon-log-in"></span>Close</a>
            </li>
            </ul>
            </div>
            </div>
            </nav>
        </body>
        </html>