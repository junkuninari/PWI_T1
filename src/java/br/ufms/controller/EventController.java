/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.controller;

import br.ufms.dao.EventDao;
import br.ufms.dao.UserDao;
import br.ufms.model.Event;
import br.ufms.model.User;
import br.ufms.util.Md5;
import br.ufms.util.Message;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vitor
 */
public class EventController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Message message = Message.singleton();

            EventDao eventDao = new EventDao();

            Event event = new Event();

            String action = request.getParameter("action");

            String day = request.getParameter("day");
            
            

            RequestDispatcher view = request.getRequestDispatcher("view/index/main.jsp");

            switch (action) {
                case "search":
                    int id_user = Integer.parseInt(request.getParameter("id_user"));
                    event = eventDao.getEvent(Integer.parseInt(day), id_user);
                    if (event != null) {
                        request.setAttribute("event", event);
                        request.setAttribute("page", "event/edit.jsp");
                    } else {
                        request.setAttribute("day", day);
                        request.setAttribute("page", "event/view.jsp");
                    }

                    break;

                case "delete":
                    
                    message.addMessage("Evento excluído com sucesso!");
                    
                    request.setAttribute("day", day);
                    
                    int id = Integer.parseInt(request.getParameter("id"));
                    
                    eventDao.delete(id);
                    
                    request.setAttribute("page", "event/view.jsp");
                    
                    break;
                    
                    
                case "back":
                    
                    request.setAttribute("page", "event/calendar.jsp");
                    
                    break;

            }

            request.setAttribute("message", message);

            view.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            Message message = Message.singleton();

            String action = request.getParameter("action");

            String id = request.getParameter("id");
            
            String dayX = request.getParameter("day");

            EventDao eventDao = new EventDao();

            Event event = new Event();

            switch (action) {
                case "create":
                case "update":

                    int id_user = Integer.parseInt(request.getParameter("id_user"));
                    String description = request.getParameter("description");
                    int day = Integer.parseInt(request.getParameter("day"));
                    int month = 9;
                    int year = 2016;

                    event.setId_user(id_user);
                    event.setDescription(description);
                    event.setDay(day);
                    event.setMonth(month);
                    event.setYear(year);

                    if (id == null) {
                        eventDao.create(event);

                        message.addMessage("Evento cadastrado com sucesso!");
                    } else {
                        event.setId(Integer.parseInt(id));

                        eventDao.update(event);

                        message.addMessage("Evento modificado com sucesso!");
                    }

                    RequestDispatcher view = request.getRequestDispatcher("view/index/main.jsp");
                    
                    if(action.equals("create")){
                        request.setAttribute("message", message);
                        request.setAttribute("event", eventDao.getEvent(day, id_user));
                        request.setAttribute("page", "event/edit.jsp");
                        view.forward(request, response);
                    } else if(action.equals("update")){
                        request.setAttribute("message", message);
                        request.setAttribute("page", "event/edit.jsp");
                        request.setAttribute("event", event);
                        view.forward(request, response);
                    }
                    
                    
                    break;
            }
        } catch (Exception ex) {
            Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
