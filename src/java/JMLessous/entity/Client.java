package JMLessous.entity;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Bilal Omais
 */

@Entity
@Table(name = "Client")

public class Client implements Serializable{
    
    @Id
    @Column(name = "ID")
    private String id ;
    
    
    @Column(name = "MDP")
    private String mdp;

    @Column(name= "Droit")
    private boolean droit;
    
    public Client() {
    }
    

     public Client(String id, String password) {
        this.id = id;
        mdp=password;
        this.droit=droit;
     }
     
     
     
    public String getClientId() {
        return id;
    }

    public void setClientId(String Id) {
        this.id = Id;
    }
  
  
    public String getClientPassword(){
        return mdp;
    }
    
    /**
     *
     * @param newPassword
     */
    public void setClientPassword(String newPassword){
        mdp=newPassword;
    }
    
    public boolean getDroit(){
        return droit;
    }
    
    public void setDroit(boolean d){
        droit=d;
    }
}
