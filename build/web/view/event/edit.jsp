<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="br.ufms.model.Event"%>
<%@page import="br.ufms.model.User"%>

<%
    Event event = new Event();

    event = (Event) request.getAttribute("event");

    User user = new User();

    user = (User) session.getAttribute("user");

%>

<div class="events">
    <div class="ca-header2">
        <h4 class="color19 center-align"> September <%= event.getDay()%>, 2016</h4>
    </div>
    <form class="col s12" action="EventController?action=update&id=<%= event.getId()%>&day=<%= event.getDay()%>&id_user=<%= user.getId()%>" method="post" role="form">
        <div class="row">
            <div class="input-field col s12">
                <input name="description" id="description" type="text" class="validate" value="<%= event.getDescription()%>">
                <label for="Description">Description</label>
            </div>
        </div>
        <button type="submit" class="btn-large waves-effect waves-light">Edit</button>
        <a href="EventController?action=delete&id=<%= event.getId()%>"><div class="btn-large waves-effect waves-light"><span>Delete</span></div></a>
        <a href="EventController?action=back"><div class="btn-large waves-effect waves-light"><span>Cancel</span></div></a>
    </form>
    <div class="col s12">            
        <p>            
        <h6 class="left-align color18"><c:import url = "/helper/message.jsp"/></h6>
        </p>
    </div>    

</div>
