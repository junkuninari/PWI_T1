package br.ufms.dao;

import br.ufms.util.ConnectionFactory;
import br.ufms.model.Event;
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
public class EventDao 
{
    private Connection connection;

    public EventDao(){    
        
        try
        {
            this.connection =  ConnectionFactory.getConnection() ;
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public void create(Event event) {

        try
        {
           String sql = "INSERT INTO __event (description, day, month, year, id_user) VALUES ('"+event.getDescription()+"', '"+event.getDay()+"', '"+event.getMonth()+"', '"+event.getYear()+"', '"+event.getId_user()+"')";
          
           PreparedStatement stmt = this.connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
           
           stmt.executeUpdate(); 
           
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
    }
    
    public Event getEvent(int day, int id_user) {

        try
        {
            String sql = "SELECT * FROM __event WHERE day = " + day + " AND id_user = " + id_user ;
            
            Statement stmt = this.connection.createStatement();
            
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next())   
            {
                Event event = new Event();
                
                event.setId(rs.getInt("id"));
                
                event.setDescription(rs.getString("description"));
                
                event.setDay(rs.getInt("day"));
                
                event.setMonth(rs.getInt("month"));
                
                event.setYear(rs.getInt("year"));
                
                event.setId_user(rs.getInt("id_user"));
                
                return event;
            }
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
        
        return null;
    }
           
    public void update(Event event)
    {
        try
        {
           String sql = "UPDATE __event SET description = '"+event.getDescription()+"', day = '"+event.getDay()+"', month = '"+event.getMonth()+"', year = '"+event.getYear()+"', id_user = '"+event.getId_user()+"' WHERE day = " + event.getDay();
               
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
           String sql = "DELETE FROM __event WHERE id = " + id;
          
           PreparedStatement stmt = this.connection.prepareStatement(sql);
           
           stmt.executeUpdate();
          
        }
        catch (SQLException e)
        {
           e.printStackTrace();
        } 
    }
            
    
}
