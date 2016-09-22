<%@page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page import="br.ufms.model.Event"%>
<%@page import="br.ufms.model.User"%>


<%
    String day = (String) request.getAttribute("day");

    User user = new User();

    user = (User) session.getAttribute("user");

%>

<div class="events">
    <div class="ca-header2">
        <h4 class="color19 center-align">September <%= day%>, 2016</h4>
    </div>
    <form class="col s12" action="EventController?action=create&day=<%= day%>&id_user=<%= user.getId()%>" role="form" method="post">
        <div class="row">
            <div class="input-field col s12">
                <input name="description" id="description" type="text">
                <label for="Description">Description</label>
            </div>
        </div>
        <button type="submit" class="btn-large waves-effect waves-light">Create</button>
        <a href="EventController?action=back"><div class="btn-large waves-effect waves-light"><span>Cancel</span></div></a>
    </form>
    <div class="col s12">            
        <p>            
        <h6 class="left-align color18"><c:import url = "/helper/message.jsp"/></h6>
        </p>
    </div>    
</div>