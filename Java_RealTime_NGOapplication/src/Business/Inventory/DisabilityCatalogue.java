/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Inventory;

import java.util.ArrayList;

/**
 *
 * @author Preethi Jerome
 */
public class DisabilityCatalogue {
    private ArrayList<Disability> disabilityList;

    public DisabilityCatalogue() {
        disabilityList=new ArrayList<Disability>();
    }

    public ArrayList<Disability> getDisabilityList() {
        return disabilityList;
    }
    
    public Disability createNewDisability(){
        Disability disability = new Disability();
        disabilityList.add(disability);
        return disability;
    }
    
}
