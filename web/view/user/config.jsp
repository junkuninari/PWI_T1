<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="ico/ic_accessible_black_24dp/web/ic_accessible_black_24dp_2x.png">
        <link rel="stylesheet" type="text/css" href="css/colors.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>Show App Web</title>

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

    </head>
    <body>

        <nav class="dark-green z-depth-5" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="#" class="brand-logo">ShowApp</a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="UserController?action=home"></a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="UserController?action=home">sair</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div class="container">
            <div class="section">
                <div class="row">
                    <div class="z-depth-5 theme-bg2 calendar col s12 m12">

                            <c:if test="${page !=  NULL}">
                                <c:import url = "../${page}"/>
                            </c:if>

                    </div>
                </div>
            </div>
        </div>
        <div class="main-footer footer-copyright dark-green">
            <div class="container">
                Made by <a href="about.html">国成潤</a>
            </div>
        </div> 

        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>                    
    </body>
</body>
</html>
