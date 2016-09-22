package br.ufms.dao;

import br.ufms.util.ConnectionFactory;
import br.ufms.model.User;
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
public class UserDao 
{
    private Connection connection;

    public UserDao(){    
        
        try
        {
            this.connection =  ConnectionFactory.getConnection() ;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public void create(User user) {

        try
        {
           String sql = "INSERT INTO __user (email, password, name) VALUES ('"+user.getEmail()+"', '"+user.getPassword()+"', '"+user.getName()+"')";
          
           PreparedStatement stmt = this.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
           
           stmt.executeUpdate(); 
           
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
    }
    
    public ArrayList<User> list() {

        try
        {
            String sql = "SELECT * FROM __user ORDER BY id";
            
            Statement stmt = this.connection.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            ArrayList<User> users = new ArrayList();
            
            while(rs.next())   
            {
                User user = new User();
                
                user.setId(rs.getInt("id"));
                
                user.setEmail(rs.getString("email"));
                
                user.setName(rs.getString("name"));
                
                users.add(user);
            }
            
            return users;
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
        return null;
    }
    
    public void update(User user)
    {
        try
        {
           String sql = "UPDATE __user SET email = '"+user.getEmail()+"', name = '"+user.getName()+"', password = '"+user.getPassword()+"'WHERE id = " + user.getId();
          
           PreparedStatement stmt = this.connection.prepareStatement(sql);
           
           stmt.executeUpdate();
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
    }
    
    public void delete(int id)
    {
        try
        {
           String sql = "DELETE FROM __user WHERE id = " + id;
          
           PreparedStatement stmt = this.connection.prepareStatement(sql);
           
           stmt.executeUpdate();
          
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
    }
    
    
    public void activate(int id)
    {
        try
        {
           String sql = "UPDATE __user SET active = '1' WHERE id = " + id;
          
            PreparedStatement stmt = this.connection.prepareStatement(sql);
           
           stmt.executeUpdate();
          
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
    }
    public void deactivate(int id)
    {
        try
        {
           String sql = "UPDATE __user SET active = '0' WHERE id = " + id;
          
           PreparedStatement stmt = this.connection.prepareStatement(sql);
           
           stmt.executeUpdate();
          
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
    }  
    
    public User getUser(int id) {

        try
        {
            String sql = "SELECT * FROM __user WHERE id = " + id;
            
            Statement stmt = this.connection.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next())   
            {
                User user = new User();
                
                user.setId(rs.getInt("id"));
                
                user.setEmail(rs.getString("email"));
                
                user.setPassword(rs.getString("password"));
                
                return user;
            }
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
        return null;
    }
    
    public User getUser(String email) {

        try
        {
            String sql = "SELECT * FROM __user WHERE email = " + email;
            
            Statement stmt = this.connection.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next())   
            {
                User user = new User();
                
                user.setId(rs.getInt("id"));
                
                user.setEmail(rs.getString("email"));
                
                user.setPassword(rs.getString("password"));
                
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