package br.ufms.dao;

import br.ufms.util.ConnectionFactory;
import br.ufms.model.User;
import br.ufms.util.Md5;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author Vitor Mesaque
 */
public class AuthenticateDao 
{
    private Connection connection;

    public AuthenticateDao(){    
        
        try
        {
            this.connection =  ConnectionFactory.getConnection() ;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    
   public User authenticate(String email, String password) {

        try
        {
            String sql = "SELECT * FROM __user WHERE email = '" + email + "' AND password = '" + Md5.encrypt(password) + "'" ;
            
            Statement stmt = this.connection.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next())   
            {
                User user = new User();
                
                user.setId(rs.getInt("id"));
                
                user.setEmail(rs.getString("email"));
                
                user.setName(rs.getString("name"));
                
                return user;
            }
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
        return null;
    }
}