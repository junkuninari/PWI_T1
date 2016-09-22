/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.model;

/**
 *
 * @author vitor
 */
public class User {
    
    private int id;
    
    private String email;
    
    private String password;
    
    private String name;
    
    public String getEmail ()
    {
        return this.email;
    }
    
    public void setEmail(String email)
    {
        this.email = email;
    }

    public int getId()
    {
        return this.id;
    }
    public void setId(int id) {
        this.id =  id;
    }
    
    public String getPassword()
    {
        return this.password;
    }
    public void setPassword(String password) {
        this.password =  password;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
    
}
