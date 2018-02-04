/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Enterprise;

import java.util.ArrayList;

/**
 *
 * @author raunak
 */
public class EnterpriseDirectory {
    
    private ArrayList<Enterprise> enterpriseList;

    public EnterpriseDirectory() {
        enterpriseList = new ArrayList<>();
    }

    public ArrayList<Enterprise> getEnterpriseList() {
        return enterpriseList;
    }
    
    public Enterprise createAndAddEnterprise(String name, Enterprise.EnterpriseType type){
        Enterprise enterprise = null;
        
        if (type.equals(Enterprise.EnterpriseType.Hospital)){
            enterprise = new HospitalEnterprise(name);
            enterpriseList.add(enterprise);
        }
        if (type.equals(Enterprise.EnterpriseType.DRC)){
            enterprise = new DRCEnterprise(name);
            enterpriseList.add(enterprise);
        }
        if (type.equals(Enterprise.EnterpriseType.NGO)){
            enterprise = new NGOEnterprise(name);
            enterpriseList.add(enterprise);
        }
        if (type.equals(Enterprise.EnterpriseType.Distributor)){
            enterprise = new DistributorEnterPrise(name);
            enterpriseList.add(enterprise);
        }
        if (type.equals(Enterprise.EnterpriseType.Manufacturer)){
            enterprise = new ManufacturerEnterprise(name);
            enterpriseList.add(enterprise);
        }
        return enterprise;
    }
    
}
