<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h1>Listar Usuários</h1>


<table class="table table-condensed">
      <thead>
        <tr>
          <th>#</th>
          <th>Email</th>
          <th>Opções</th>
       </tr>
      </thead>
      <tbody>
        
            <c:forEach items="${users}" var="user">
             <tr>
                    <td><c:out value="${user.getId()}" /></td>
                    <td><c:out value="${user.getEmail()}" /></td>
                    <td>
                        <a href="UserController?action=update&id=<c:out value="${user.getId()}" />"><button type="button" class="btn btn-primary btn-xs"><span class="glyphicon glyphicon-pencil"></span></button></a>
                        <a href="UserController?action=delete&id=<c:out value="${user.getId()}" />"><button type="button" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></button></a>
                        <a href="javascript: activate('<c:out value="${user.getId()}" />')"><button type="button" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-trash"></span></button></a>

                    </td>
             </tr>
            </c:forEach>
         
      </tbody>
    </table>

<script>

function activate (id)
{
	$.ajax({
	  	url: "UserController?action=activate&id="+id,
	  	cache: false
	})
        .done(function( html ) {

        alert(html);
        
            $("").html( html );
        });	
}

</script>
