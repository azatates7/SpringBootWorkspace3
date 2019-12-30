    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
            <% int counter = 0; %>
                <%@ page import="java.io.*"%>

        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
            <!DOCTYPE html>
            <html>
            <head>
        <script type="text/javascript" src="/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/jquery.min.js"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
        footer {
        background-color: #555;
        color: white;
        padding: 15px;
        }
</style>
        </head>
            <body>
            <%
    String filename = "src/main/resources/static/text/counter.txt";
    File file = new File(filename);
    if (!file.exists()) {
        file.createNewFile();
    }
    BufferedReader reader = new BufferedReader(new FileReader(filename));
    String line=null;
    while (reader.ready()) {
        line=reader.readLine();
    }
    int times = Integer.valueOf(line);
    //System.out.println(times);
    reader.close();

    FileWriter fileWriter = new FileWriter(filename);
    PrintWriter printWriter = new PrintWriter(fileWriter);
    printWriter.print(times+1);
    printWriter.close();

    BufferedReader reader2 = new BufferedReader(new FileReader(filename));
    String line2=null;
    while (reader2.ready()) {
        line2=reader2.readLine();
    }
    //System.out.println(line2);
    int gettime = Integer.valueOf(line2);
    reader2.close();
    %>

        <footer class="container-fluid text-center">
        <small> &copy; Copyright 2019 &nbsp;&nbsp;&nbsp;&nbsp; You come this link <%=gettime%> times </small>
        </footer>


        </body>
            </html>