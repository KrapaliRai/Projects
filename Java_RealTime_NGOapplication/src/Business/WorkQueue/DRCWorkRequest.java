/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.WorkQueue;

import Business.Inventory.Address;
import Business.Inventory.Patient;
import Business.UserAccount.UserAccount;

/**
 *
 * @author Preethi Jerome
 */
public class DRCWorkRequest extends WorkRequest{
    private String Disability;
    private String Description;
    private Patient person;
    private Address address;

    public DRCWorkRequest(){
        person = new Patient();
        address = new Address();
    }
    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Patient getPerson() {
        return person;
    }

    public void setPerson(Patient person) {
        this.person = person;
    }

    public String getDisability() {
        return Disability;
    }

    public void setDisability(String Disability) {
        this.Disability = Disability;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }
    
    

    @Override
    public void setRequest(String request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getRequest() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String toString() {
        return this.Disability;
    }
}
