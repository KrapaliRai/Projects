/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Enterprise;



import Business.Inventory.PharmacyCatalogue;
import Business.Role.Role;
import java.util.ArrayList;
import Business.Inventory.Inventory;

/**
 *
 * @author Preethi Jerome
 */
public class ManufacturerEnterprise extends Enterprise{

     private Inventory inventory;
    private PharmacyCatalogue vaccineCatalog;
    
    public ManufacturerEnterprise(String name) {
        super(name, EnterpriseType.Manufacturer);
        inventory=new Inventory();
        vaccineCatalog=new PharmacyCatalogue();

        
    }

    public Inventory getInventory() {
        return inventory;
    }

    public void setInventory(Inventory inventory) {
        this.inventory = inventory;
    }

    public PharmacyCatalogue getVaccineCatalog() {
        return vaccineCatalog;
    }

    public void setVaccineCatalog(PharmacyCatalogue vaccineCatalog) {
        this.vaccineCatalog = vaccineCatalog;
    }
    
    

    @Override
    public ArrayList<Role> getSupportedRole() {
       
        return null;
    }
}
