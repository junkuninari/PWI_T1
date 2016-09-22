<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="events">
    <div class="ca-header2">
        <h4 class="color19 center-align">New User Account</h4>
    </div>

    <form class="col s12" role="form" action="UserController?action=create" method="POST">
        <div class="row">
            <div class="input-field col s12">
                <input name="name" id="name" type="text" class="validate">
                <label for="name">Name</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <input name="email" id="email" type="email" class="validate">
                <label for="email">Email</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s12">
                <input name="password" id="password" type="password" class="validate">
                <label for="password">Password</label>
            </div>
        </div>
        <button type="submit" class="btn-large waves-effect waves-light">Sign up</button>
        <a href="index.jsp"><div class="btn-large waves-effect waves-light"><span>Cancel</span></div></a>
    </form>
    <c:import url = "/helper/message.jsp"/>
</div>