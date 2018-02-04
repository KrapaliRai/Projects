/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package userinterface.Distributor;

//import Business.Inventory.Batch;
import Business.Network.Network;
//import Business.Order.Order;
//import Business.Order.OrderItem;
//import Business.Organization.DistributionOrganization;
import Business.Organization.Organization;
import Business.UserAccount.UserAccount;
//import Business.WorkRequest.ProviderWorkRequest;
//import Business.WorkRequest.ShipmentOrder;
//import Business.WorkRequest.WorkRequest;
//import Business.business.Business;
//import Business.enterprise.CDCEnterprise;
//import Business.enterprise.Enterprise;
import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.time;
import java.awt.CardLayout;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Preethi Jerome
 */
public class ProcessOrderRequestJPanel extends javax.swing.JPanel {

    /**
     * Creates new form ProcessOrderRequestJPanel
     */
    JPanel userProcessContainer;
//    private Enterprise enterprise;
//    private Order order;
//    private WorkRequest request;
//    CDCEnterprise cDCEnterprise; 
//    WorkRequest newRequest;
//    WorkRequest wq;
//    Organization organization;
//    private boolean isCheckedOut;
//    DistributionOrganization distOrganization;
//    UserAccount userAccount;
//    Business business;
//    ProviderWorkRequest providerRequest;
//    ShipmentOrder shipmentreq;
//    Batch batchOrdered;
    public ProcessOrderRequestJPanel(/*JPanel userProcessContainer, Order order, WorkRequest request,Enterprise enterprise,Organization organization,UserAccount userAccount,Business business*/) {
        initComponents();
//        this.userProcessContainer = userProcessContainer;
//        this.order = order;
//        this.request = request;
//        this.enterprise = enterprise;
//        cDCEnterprise = (CDCEnterprise) enterprise;
//        this.organization=organization;
//        this.userAccount=userAccount;
//        this.business = business;
//         if(organization instanceof DistributionOrganization)
//        distOrganization = (DistributionOrganization)organization;
//        txtOrder.setText(order.getOrderID() + "");
//        populateOrderJTable();
//        vCodeJLabel.setVisible(false);
//
//        if (isCheckedOut == false) {
//           // newRequest = new ShipmentOrder();
//            shipmentreq = new ShipmentOrder();
//        }

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        txtOrder = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        nameJLabel = new javax.swing.JLabel();
        btnLookup = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        qtyJLabel = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        btnAddOrder = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();
        btnRequest = new javax.swing.JButton();
        btnRefresh = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        InventoryJTable = new javax.swing.JTable();
        jLabel6 = new javax.swing.JLabel();
        vCodeJLabel = new javax.swing.JLabel();
        jScrollPane3 = new javax.swing.JScrollPane();
        BatchJTable = new javax.swing.JTable();
        jScrollPane4 = new javax.swing.JScrollPane();
        shipmentOrderTable = new javax.swing.JTable();
        btnRemove = new javax.swing.JButton();
        jLabel8 = new javax.swing.JLabel();
        btnFinalizw = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        OrderJTable = new javax.swing.JTable();

        jLabel1.setFont(new java.awt.Font("Times New Roman", 1, 24)); // NOI18N
        jLabel1.setText("        Process Order Requests");
        jLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jButton1.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jButton1.setText("<<Back");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        txtOrder.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        txtOrder.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        txtOrder.setEnabled(false);

        jLabel3.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel3.setText("Order ID");

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel2.setText("Medicine Name");

        nameJLabel.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        nameJLabel.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        btnLookup.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnLookup.setText("Look Up");
        btnLookup.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLookupActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel5.setText("Medicine Quantity");

        qtyJLabel.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel4.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel4.setText("  Select from National Inventory  ");
        jLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        btnAddOrder.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnAddOrder.setText("Add to Shipment Order>>");
        btnAddOrder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAddOrderActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel7.setText("Select Batch for Shipment Order");
        jLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        btnRequest.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnRequest.setText("Send Request for Inventory>>");
        btnRequest.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRequestActionPerformed(evt);
            }
        });

        btnRefresh.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnRefresh.setText("Refresh>>");
        btnRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRefreshActionPerformed(evt);
            }
        });

        InventoryJTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Medicine Code", "Medicine Name", "Quantity"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        InventoryJTable.addMouseWheelListener(new java.awt.event.MouseWheelListener() {
            public void mouseWheelMoved(java.awt.event.MouseWheelEvent evt) {
                InventoryJTableMouseWheelMoved(evt);
            }
        });
        jScrollPane2.setViewportView(InventoryJTable);

        BatchJTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Batch ID", "Medicine ID", "Medicine Name", "Batch Size", "Price"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane3.setViewportView(BatchJTable);

        shipmentOrderTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Shipment OrderID", "Batch ID", "VAccine Name", "Price"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jScrollPane4.setViewportView(shipmentOrderTable);

        btnRemove.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnRemove.setText("Remove>>");
        btnRemove.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnRemoveActionPerformed(evt);
            }
        });

        jLabel8.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        jLabel8.setText("View The Shipment OrderItem List");
        jLabel8.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        btnFinalizw.setFont(new java.awt.Font("Times New Roman", 1, 14)); // NOI18N
        btnFinalizw.setText("Finalize Order>>");
        btnFinalizw.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFinalizwActionPerformed(evt);
            }
        });

        OrderJTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "OrderID", "Medicine Name", "Medicine Quantity", "Schedule"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.String.class, java.lang.Integer.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(OrderJTable);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1303, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 6, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(400, 400, 400)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 350, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(370, 370, 370)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 70, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(0, 0, 0)
                            .addComponent(txtOrder, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 1180, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(450, 450, 450)
                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(0, 0, 0)
                            .addComponent(nameJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(60, 60, 60)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(10, 10, 10)
                            .addComponent(qtyJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(btnLookup, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(730, 730, 730)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(20, 20, 20)
                            .addComponent(jLabel4))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(870, 870, 870)
                            .addComponent(vCodeJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 1180, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(850, 850, 850)
                            .addComponent(jLabel7))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 1050, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(20, 20, 20)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(btnAddOrder, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(btnRequest, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(btnRefresh, javax.swing.GroupLayout.PREFERRED_SIZE, 140, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGroup(layout.createSequentialGroup()
                            .addGap(830, 830, 830)
                            .addComponent(jLabel8))
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 1050, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(20, 20, 20)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(btnRemove, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(btnFinalizw, javax.swing.GroupLayout.PREFERRED_SIZE, 180, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGap(0, 7, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 837, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 13, Short.MAX_VALUE)
                    .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(30, 30, 30)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(10, 10, 10)
                            .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtOrder, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGap(20, 20, 20)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 110, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(20, 20, 20)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(nameJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(qtyJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGap(10, 10, 10)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(btnLookup, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(20, 20, 20)
                            .addComponent(jLabel4)))
                    .addGap(1, 1, 1)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(vCodeJLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addGap(10, 10, 10)
                            .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 60, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(20, 20, 20)
                    .addComponent(jLabel7)
                    .addGap(11, 11, 11)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 160, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(btnAddOrder, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(10, 10, 10)
                            .addComponent(btnRequest, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(10, 10, 10)
                            .addComponent(btnRefresh, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(30, 30, 30)
                    .addComponent(jLabel8)
                    .addGap(11, 11, 11)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jScrollPane4, javax.swing.GroupLayout.PREFERRED_SIZE, 130, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(btnRemove, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(10, 10, 10)
                            .addComponent(btnFinalizw, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGap(0, 14, Short.MAX_VALUE)))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void populateOrderJTable() {
//        DefaultTableModel dtm = (DefaultTableModel) OrderJTable.getModel();
//        dtm.setRowCount(0);
//        if (!order.getOrderitemList().isEmpty()) {
//            for (OrderItem item : order.getOrderitemList()) {
//                Object row[] = new Object[4];
//                row[0] = order;
//                row[1] = item;
//                row[2] = item.getQuantity();
//                row[3] = item.getDaysOfOrderPlaced();
//                dtm.addRow(row);
//            }
//        }
    }
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        userProcessContainer.remove(this);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.previous(userProcessContainer);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void btnLookupActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLookupActionPerformed

//        // TODO add your handling code here:
//        int selectedRow = OrderJTable.getSelectedRow();
//
//        if (selectedRow < 0) {
//            JOptionPane.showMessageDialog(null, "Please select a row.");
//        } else {
//            OrderItem selectedItem = (OrderItem) OrderJTable.getValueAt(selectedRow, 1);
//            nameJLabel.setText(selectedItem.getPharmacy().getName());
//            qtyJLabel.setText(selectedItem.getQuantity() + "");
//            vCodeJLabel.setText(selectedItem.getPharmacy().getCode());
//
//            DefaultTableModel dtm = (DefaultTableModel) InventoryJTable.getModel();
//            dtm.setRowCount(0);
//            Object[] row = new Object[3];
//            row[0] = vCodeJLabel.getText();
//            row[1] = nameJLabel.getText();
//            int finalqty = 0;
//
//            for (Batch batch : cDCEnterprise.getInventory().getBatchList()) {
//                if (batch.getPharmacy().getName().equals(nameJLabel.getText()) && batch.getValue()==null) {
//                    finalqty += batch.getPharmacy().getQuantity();
//
//                }
//            }
//
//            row[2] = finalqty;
//            dtm.addRow(row);
//            //refreshBatchTable();
//            populateBatchJTable();
//        }
//
    }//GEN-LAST:event_btnLookupActionPerformed

    private void populateBatchJTable() {
//        DefaultTableModel model = (DefaultTableModel) BatchJTable.getModel();
//        model.setRowCount(0);
//
//        for (Batch batch : cDCEnterprise.getInventory().getBatchList()) {       
//            if (batch.getPharmacy().getName().equals(nameJLabel.getText()) && null==batch.getValue()) {
//                Object row[] = new Object[5];
//                row[0] = batch;
//                row[1] = batch.getPharmacy();
//                row[2] = batch.getPharmacy().getName();
//                row[3] = batch.getPharmacy().getQuantity();
//                row[4] = batch.getPharmacy().getQuantity() * batch.getPharmacy().getPrice();
//                model.addRow(row);
//
//            }
//        }
    }
    
    private void populateShipmentRequest() {
//        int selectedRow = BatchJTable.getSelectedRow();
//
//        if (selectedRow < 0) {
//            JOptionPane.showMessageDialog(null, "Please select a row.");
//        } else {
//            batchOrdered = (Batch) BatchJTable.getValueAt(selectedRow, 0);
//
//            DefaultTableModel dtm = (DefaultTableModel) shipmentOrderTable.getModel();
//            dtm.setRowCount(0);
//           // ShipmentOrder shipmentOrder = new ShipmentOrder();
//            //ShipmentOrder
//           // shipmentreq = (ShipmentOrder)newRequest;
//            shipmentreq.getBatchList().add(batchOrdered);
//            shipmentreq.setitemOrderRequest(request);
//            
//            
//            for (Batch b : shipmentreq.getBatchList()) {
//                Object[] row = new Object[4];
//                row[0] = b;
//                row[1] = b.getPharmacy().getCode();
//                row[2] = b.getPharmacy().getName();
//                row[3] = b.getPharmacy().getPrice() * b.getPharmacy().getQuantity();
//                dtm.addRow(row);
//            }
//        }
    }
    
    public void refreshShipmentTable() {
        int rowCount = shipmentOrderTable.getRowCount();
        DefaultTableModel model = (DefaultTableModel) shipmentOrderTable.getModel();
        for (int i = rowCount - 1; i >= 0; i--) {
            model.removeRow(i);
        }
    }
    private void btnAddOrderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAddOrderActionPerformed

        // TODO add your handling code here:
        populateShipmentRequest();
        btnRefresh.setEnabled(false);

    }//GEN-LAST:event_btnAddOrderActionPerformed

    private void btnRequestActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRequestActionPerformed
        // TODO add your handling code here:
//        int selectedRow = OrderJTable.getSelectedRow();
//
//        if (selectedRow < 0) {
//            JOptionPane.showMessageDialog(null, "Please select a row.");
//        } else {
//            OrderItem selectedItem = (OrderItem) OrderJTable.getValueAt(selectedRow, 1);
//
//            SubmitManufRequestJPanel panel = new SubmitManufRequestJPanel(userProcessContainer,userAccount,enterprise,selectedItem.getPharmacy());
//            userProcessContainer.add("SubmitManufRequestJPanel",panel);
//            CardLayout layout = (CardLayout) userProcessContainer.getLayout();
//            layout.next(userProcessContainer);
//        }

    }//GEN-LAST:event_btnRequestActionPerformed

    private void btnRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRefreshActionPerformed

        // TODO add your handling code here:
        // populateBatchJTable();
        refreshShipmentTable();
    }//GEN-LAST:event_btnRefreshActionPerformed

    private void InventoryJTableMouseWheelMoved(java.awt.event.MouseWheelEvent evt) {//GEN-FIRST:event_InventoryJTableMouseWheelMoved
        // TODO add your handling code here:
    }//GEN-LAST:event_InventoryJTableMouseWheelMoved

    private void btnRemoveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnRemoveActionPerformed
        // TODO add your handling code here:
//        int selectedrow = shipmentOrderTable.getSelectedRow();
//        if (selectedrow < 0) {
//            JOptionPane.showMessageDialog(null, "Please select an item order.");
//            return;
//        }
//        //get the order item
//        shipmentreq = (ShipmentOrder) shipmentOrderTable.getValueAt(selectedrow, 0);
//        Batch batch = (Batch) BatchJTable.getValueAt(selectedrow, 0);
//
//        //remove
//        shipmentreq.getBatchList().remove(batch);
//        populateShipmentRequest();
    }//GEN-LAST:event_btnRemoveActionPerformed

    private void btnFinalizwActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFinalizwActionPerformed
        // TODO add your handling code here:

//        if (!shipmentreq.getBatchList().isEmpty()) {
//
//            //  distOrganization.getCatalog().addOrder(shipmentreq);
//
//            request.setStatus("Shipped");
//            request.setSender(userAccount);
//            request.setResolveDate(time());
//            batchOrdered.setValue("AddedByDist");
//            dispatchOrder();
//            JOptionPane.showMessageDialog(null, "Shipmment order placed Successfully! Please refresh the table before proceeding with a fresh order");
//            btnRefresh.setEnabled(true);
//            //   btnView.setEnabled(true);
//        } else {
//            batchOrdered.setValue("");
//            JOptionPane.showMessageDialog(null, "Error Checking out.");
//            btnRefresh.setEnabled(true);
//        }
//        isCheckedOut = true;
//        shipmentreq = new ShipmentOrder();
    }//GEN-LAST:event_btnFinalizwActionPerformed

    private void dispatchOrder(){
        //ShipmentOrder shipRequest = new ShipmentOrder();
       // newRequest = shipmentreq.getitemOrderRequest();
        
//        if(request instanceof ProviderWorkRequest){
//             System.out.println("ProviderWorkRequest" );
//            providerRequest = (ProviderWorkRequest) request;
//        }
//           
////        else if(request instanceof ClinicShipmentWorkRequest){
////            
////            System.out.println("ClinicShipmentWorkRequest");
////            clinicRequest = (ClinicShipmentWorkRequest) request;
////        }
//             
//        
//        for(Network country: business.getNetworkList()){
//            System.out.println("country" + country);
//            for(Enterprise cdc: country.getEnterpriseDirectory().getEnterpriseList()){
//                System.out.println("cdc " + cdc + " : cDCEnterprise.getName() ::" + cDCEnterprise.getName());
//                if(cdc.getName().equals(cDCEnterprise.getName())){
//                    System.out.println("country list : " + country.getNetWorkList().size());
//                    for(Network state: country.getNetWorkList()){
//                        System.out.println("state " + state.getState() + " :size " + state.getNetWorkList().size() );
//                        for(Network city: state.getNetWorkList()){
//                            System.out.println("city : " + city.getCity() + " : size :" + city.getEnterpriseDirectory().getEnterpriseList().size());
//                            for(Enterprise provider: city.getEnterpriseDirectory().getEnterpriseList()){
//                                 System.out.println("provider " + provider.getName() + "request " + request );
//                                 
//                                 System.out.println("provider.getName() " + (providerRequest instanceof ProviderWorkRequest));
//                                 
//                                 
//                                 
//                                if((providerRequest instanceof ProviderWorkRequest) && provider.getName().equals(providerRequest.getOrginalprovider())){
//                                    
//                                    System.out.println("providerRequest.getOrginalprovider()" + providerRequest.getOrginalprovider());
//                                    
//                                    System.out.println("inside providerRequest");
//                                    UserAccount OriginalProvider  = new UserAccount();
//                                    OriginalProvider.setUserName(providerRequest.getOrginalprovider());
//                                    request.setReceiver(OriginalProvider);
//                                    shipmentreq.setReceiver(OriginalProvider);
//                                    provider.getWorkQueue().getWorkRequestList().add(shipmentreq);
//                                    userAccount.getWorkQueue().getWorkRequestList().add(shipmentreq);
//                                    
//                                }
////                                else if(request instanceof ClinicShipmentWorkRequest){
////                                    for(Organization ClinicOrg: provider.getOrganizationDirectory().getOrganizationList()){
////                                        if(ClinicOrg instanceof ClinicOrganization && ClinicOrg.getName().equals(clinicRequest.getOrginalClinic())){
////                                            System.out.println("inside clinicRequest ");
////                                            //ClinicOrg.getWorkQueue().getWorkRequestList().add(shipmentreq);
////                                            UserAccount OriginalProvider  = new UserAccount();
////  
////                                            request.setReceiver(OriginalProvider);
////                                            shipmentreq.setReceiver(OriginalProvider);
////                                            provider.getWorkQueue().getWorkRequestList().add(shipmentreq);
////                                            userAccount.getWorkQueue().getWorkRequestList().add(shipmentreq);
////                                        }
////                                    }
//////                                    //&& provider.getName().equals(clinicRequest.getOrginalprovider())})
////                                  }
//                                    
//                                }
//                            }
//                        }
//                    }
//                }
//            }
        }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable BatchJTable;
    private javax.swing.JTable InventoryJTable;
    private javax.swing.JTable OrderJTable;
    private javax.swing.JButton btnAddOrder;
    private javax.swing.JButton btnFinalizw;
    private javax.swing.JButton btnLookup;
    private javax.swing.JButton btnRefresh;
    private javax.swing.JButton btnRemove;
    private javax.swing.JButton btnRequest;
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JLabel nameJLabel;
    private javax.swing.JLabel qtyJLabel;
    private javax.swing.JTable shipmentOrderTable;
    private javax.swing.JTextField txtOrder;
    private javax.swing.JLabel vCodeJLabel;
    // End of variables declaration//GEN-END:variables
}
