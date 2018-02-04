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
public class PatientDirectory {
    private ArrayList<Patient> PatientList;
    public PatientDirectory()
    {
        PatientList= new ArrayList<Patient>();
    }

    public ArrayList<Patient> getPatientList()
    {
        return PatientList;
    }
}
