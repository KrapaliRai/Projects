/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Inventory;

/**
 *
 * @author Preethi Jerome
 */
public class Patient {
     private String name;
    private static int counter= 1;
    private String ID;
    private String Gender;
    private Long Phonenumber;
    private Long emergencynumber;
    private String emailId;
    private String description;

    public Long getEmergencynumber() {
        return emergencynumber;
    }

    public void setEmergencynumber(Long emergencynumber) {
        this.emergencynumber = emergencynumber;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public static int getCounter() {
        return counter;
    }

    public static void setCounter(int counter) {
        Patient.counter = counter;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public Long getPhonenumber() {
        return Phonenumber;
    }

    public void setPhonenumber(Long Phonenumber) {
        this.Phonenumber = Phonenumber;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    
    
}
