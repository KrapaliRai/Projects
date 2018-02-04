/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Order;

import Business.Inventory.Pharmacy;
import java.util.ArrayList;

/**
 *
 * @author Preethi Jerome
 */
public class Order {
     private int orderID;
    private ArrayList<OrderItem> orderitemList;
    public static int count = 1;
    //private ShipmentWorkRequest workRequest;
    
    public Order(){
        
        orderID = count++;
        orderitemList = new ArrayList<>();
    }

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    public ArrayList<OrderItem> getOrderitemList() {
        return orderitemList;
    }

    public void setOrderitemList(ArrayList<OrderItem> orderitemList) {
        this.orderitemList = orderitemList;
    }

//    public ShipmentWorkRequest getWorkRequest() {
//        return workRequest;
//    }
//
//    public void setWorkRequest(ShipmentWorkRequest workRequest) {
//        this.workRequest = workRequest;
//    }
    
    public OrderItem addOrderItem(Pharmacy pharmacy, int quantity,String daysOfOrderPlaced, float price){
        OrderItem orderItem = new OrderItem(pharmacy, quantity,daysOfOrderPlaced, price);
        orderitemList.add(orderItem);
        return orderItem;
        
    }
    
    public void removeOrderItem(OrderItem orderItem){
        orderitemList.remove(orderItem);
    }
    
    public String toString(){
        return orderID + "";
    }
}
