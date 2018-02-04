/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Order;

import Business.Inventory.Pharmacy;

/**
 *
 * @author Preethi Jerome
 */
public class OrderItem {
 private Pharmacy pharmacy;
    private int quantity;
    private String daysOfOrderPlaced;
    private float price;
    private Type type;

    public OrderItem(Pharmacy pharmacy, int quantity, String daysOfOrderPlaced, float price) {
        this.pharmacy = pharmacy;
        this.quantity = quantity;
        this.daysOfOrderPlaced = daysOfOrderPlaced;
        this.price = price;
    }

    
    public Pharmacy getPharmacy() {
        return pharmacy;
    }

    public void setPharmacy(Pharmacy pharmacy) {
        this.pharmacy = pharmacy;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDaysOfOrderPlaced() {
        return daysOfOrderPlaced;
    }

    public void setDaysOfOrderPlaced(String daysOfOrderPlaced) {
        this.daysOfOrderPlaced = daysOfOrderPlaced;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
     public String toString(){
         return pharmacy.getName();
     }
     
      public enum Type{
             
         Biweekly("Bi-Weekly"){
            
        }, Monthly("Monthly"){
            
        };
        private String value;
        
        private Type(String value) {
            this.value = value;
        }
        public String getValue() {
            return value;
        }
}
       
}
