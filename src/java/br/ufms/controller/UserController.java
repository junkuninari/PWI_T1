/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.controller;

import br.ufms.dao.UserDao;
import br.ufms.model.User;
import br.ufms.util.Md5;
import br.ufms.util.Message;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
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
public class UserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try
        {
            Message message = Message.singleton();

            String action = request.getParameter("action");

            String id = request.getParameter("id");

            UserDao userDao = new UserDao();

            RequestDispatcher view = request.getRequestDispatcher("view/index/main.jsp");
            
            switch(action)
            {
                case "create": 

                    request.setAttribute("page", "user/create.jsp");

                break; 

                case "update": 

                    //request.setAttribute("user", userDao.getUser(Integer.parseInt(id)));

                    request.setAttribute("page", "user/update.jsp");

                break; 

                case "delete": 

                    userDao.delete(Integer.parseInt(id));

                    message.addMessage("Usuário apagado com sucesso!");

                    request.setAttribute("users", userDao.list());

                    request.setAttribute("page", "user/list.jsp");

                break; 

                case "list":

                    
                    
                    request.setAttribute("users", userDao.list());

                    request.setAttribute("page", "user/list.jsp");

                break;
                
                case "home":
                    view = request.getRequestDispatcher("index.jsp");
                    
                break;  
                    
                case "config":
                    
                    view = request.getRequestDispatcher("view/user/config.jsp");
                    request.setAttribute("page", "user/create.jsp");
                    
                break;  
            }
            
            request.setAttribute("message", message);

            view.forward(request, response);
        }
        catch (Exception ex) 
        {
            Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex); 
        }  
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try
        {
            Message message = Message.singleton();

            String action = request.getParameter("action");

            String id = request.getParameter("id");

            UserDao userDao = new UserDao();

            switch(action)
            {
                case "create":
                case "update":

                    String email = request.getParameter("email");
                    String password = request.getParameter("password");
                    String name = request.getParameter("name");

                    User user = new User();

                    user.setEmail(email);
                    user.setName(name);
                    
                    //if(id==null)
                        user.setPassword(Md5.encrypt(password));

                    if(id == null)
                    {
                        userDao.create(user);

                        message.addMessage("Usuário inserido com sucesso!");
                    }
                    else
                    {
                        user.setId(Integer.parseInt(id));

                        userDao.update(user);

                        message.addMessage("Usuário modificado com sucesso!");
                    }
                    HttpSession session = request.getSession(true); 
                    session.setAttribute("user", user);
                    RequestDispatcher view = request.getRequestDispatcher("view/index/main.jsp");
                    if(action.equals("create")){
                        view = request.getRequestDispatcher("view/user/config.jsp");

                        request.setAttribute("message", message);
                        request.setAttribute("page", "user/create.jsp");

                        //request.setAttribute("page", "user/list.jsp");

                        //request.setAttribute("users", userDao.list());
                        view.forward(request, response);
                    } else if(action.equals("update")) {
                        
                        request.setAttribute("message", message);
                        request.setAttribute("page", "user/update.jsp");

                        //request.setAttribute("page", "user/list.jsp");

                        //request.setAttribute("users", userDao.list());
                        view.forward(request, response);
                    }
                    

                break;
            }
        }
        catch (Exception ex) 
        {
            Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex); 
        }  
    }
}
