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
public class PharmacyCatalogue {
    private ArrayList<Pharmacy>  pharmacyList;

    public PharmacyCatalogue() {
        pharmacyList=new ArrayList<>();
    }

    public ArrayList<Pharmacy> getPharmacyList() {
        return pharmacyList;
    }
    
    public Pharmacy createPharmacy(String name){
        Pharmacy pharmacy = new Pharmacy();
        pharmacyList.add(pharmacy);
        pharmacy.setName(name);
        return pharmacy;
    }
}
