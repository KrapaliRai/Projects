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
public class VolunteerDirectory {
    private ArrayList<Volunteer> VolunteerList;
    public VolunteerDirectory()
    {
        VolunteerList= new ArrayList<Volunteer>();
    }

    public ArrayList<Volunteer> getVolunteerList()
    {
        return VolunteerList;
    }
}
