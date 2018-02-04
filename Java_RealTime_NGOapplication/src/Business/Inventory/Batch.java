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
public class Batch {
    private String batchNumber;
    Pharmacy pharmacy;
    public static int counter=1;
        private String Value;

    public String getValue() {
        return Value;
    }

    public void setValue(String Value) {
        this.Value = Value;
    }
    public Batch() {
        pharmacy =new Pharmacy();
        Pharmacy.count--;
        batchNumber= "B00"+counter;
        counter++;
    }

    public String getBatchNumber() {
        return batchNumber;
    }

    public void setBatchNumber(String batchNumber) {
        this.batchNumber = batchNumber;
    }
    
    
    public Pharmacy getPharmacy() {
        return pharmacy;
    }

    public void setPharmacy(Pharmacy pharmacy) {
        this.pharmacy = pharmacy;
    }

    
    public String toString(){
        return batchNumber;
    }
    
}
