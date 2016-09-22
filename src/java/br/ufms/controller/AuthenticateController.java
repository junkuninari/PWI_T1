/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.controller;

import br.ufms.dao.AuthenticateDao;
import br.ufms.dao.UserDao;
import br.ufms.model.User;
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
public class AuthenticateController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try
        {
            Message message = Message.singleton();    
            
            AuthenticateDao authenticateDao = new AuthenticateDao();
        
            String email = request.getParameter("email");
        
            String password = request.getParameter("password");
            
            UserDao userDao = new UserDao();
        
            User user = new User();
            
            user = authenticateDao.authenticate(email, password);
            
            RequestDispatcher view = request.getRequestDispatcher("view/index/main.jsp");
            
            if(user == null)
            {
                view = request.getRequestDispatcher("index.jsp");
                       
                message.addWarning("Usuário ou senha incorreto!");
            }
            else
            {
                
                view = request.getRequestDispatcher("view/index/main.jsp");
                
                //request.setAttribute("pageContent", "index/home.jsp");
                
                HttpSession session = request.getSession(true); 
                    
                session.setAttribute("user", user);
                
                request.setAttribute("page", "event/calendar.jsp");
                
                //request.setAttribute("user", userDao.getUser(email));
                    
                //message.addMessage("Usuário autenticado com sucesso!");
            } 
            
            request.setAttribute("message", message);
            
            view.forward(request, response);
        }
        catch (Exception ex) 
        {
            Logger.getLogger(AuthenticateController.class.getName()).log(Level.SEVERE, null, ex); 
        }  
    }   
}
