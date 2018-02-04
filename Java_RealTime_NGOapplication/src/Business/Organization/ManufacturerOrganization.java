/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Organization;


import Business.Role.ManufacturerManagerRole;
import Business.Role.Role;
import java.util.ArrayList;

/**
 *
 * @author raunak
 */
public class ManufacturerOrganization extends Organization{

    public ManufacturerOrganization() {
        super(Organization.Type.ManagerManufacturer.getValue());
    }

    @Override
    public ArrayList<Role> getSupportedRole() {
        ArrayList<Role> roles = new ArrayList<>();
        roles.add(new ManufacturerManagerRole());
        return roles;
    }
     
   
    
    
}
