/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Role;

import Business.EcoSystem;
import Business.Enterprise.Enterprise;
import Business.Organization.DRCManagerOrganization;
import Business.Organization.Organization;
import Business.UserAccount.UserAccount;

import javax.swing.JPanel;
import userinterface.DRCManagerRole.DRCAdminWorkAreaJPanel;

/**
 *
 * @author raunak
 */
public class DRCManagerRole extends Role{

    @Override
    public JPanel createWorkArea(JPanel userProcessContainer, UserAccount account, Organization organization, Enterprise enterprise, EcoSystem business) {
        return new DRCAdminWorkAreaJPanel(userProcessContainer, account, organization, enterprise, business);
    }
    
    
}
