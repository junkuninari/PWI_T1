<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="br.ufms.model.User"%>

<%
    User user = new User();

    user = (User) session.getAttribute("user");
%>
<div class="events">
    <div class="ca-header2">
        <h4 class="color19 center-align">Update Account</h4>
    </div>

    <form class="col s12" role="form" action="UserController?action=update&id=<%= user.getId()%>" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input name="name" id="name" type="text" class="validate" value="<%= user.getName()%>">
                <label for="name">Name</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <input name="email" id="email" type="email" class="validate" value="<%= user.getEmail()%>">
                <label for="email">Email</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <input name="password" id="password" type="password" class="validate">
                <label for="password">Password</label>
            </div>
        </div>

        <button type="submit" class="btn-large waves-effect waves-light">Submit</button>
        <a href="EventController?action=back"><div class="btn-large waves-effect waves-light"><span>Cancel</span></div></a>
    </form>
    <div class="col s12">            
        <p>            
        <h6 class="left-align color18"><c:import url = "/helper/message.jsp"/></h6>
        </p>
    </div>
</div>   