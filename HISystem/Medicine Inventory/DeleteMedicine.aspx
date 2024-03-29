﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SiteTemplate4.master" AutoEventWireup="true" CodeFile="DeleteMedicine.aspx.cs" Inherits="Medicine_Inventory_DeleteMedicine" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2 style="background-color: #d3e7c5">
        Delete Medicine Page
    </h2>
   
         
       
        <br />
        <br />
    <table align="left" style="height: 204px; margin-left: 62px;"> 
    <tr>
    <td colspan="2" height="80">
   
        <a href="#modalwindow" name="modal" style="color: #990033; font-weight: bold;">
        Show List Of Medicines</a><br />
        
          <asp:SqlDataSource ID="Medicine" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CategoryConnectionString %>" 
            SelectCommand="SELECT DISTINCT [MedicineName] FROM [Medicine] ORDER BY [MedicineName]">
        </asp:SqlDataSource>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        </td>
    
    </tr>
    <tr>
    <td>
   
        <asp:Label ID="Label3" runat="server" Text="Medicine ID" AssociatedControlID="txtMedicineId"></asp:Label>
        </td>
    <td>
        <asp:TextBox ID="txtMedicineId" runat="server" 
            
            onkeydown="return isNumeric(event.keyCode);" onkeyup="keyUP(event.keyCode)" 
                        onpaste="return false;" Width="153px" Height="23px"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td>Medicine Name</td>
    <td>
    
        <asp:TextBox ID="txtMedicineName" runat="server" Width="153px" Height="23px"></asp:TextBox>
    
    </td>
    </tr>
     <tr>
    <td></td>
    <td>
        <asp:Button ID="btn_delMedicine" runat="server" onclick="btn_delMedicine_Click" 
            Text="Delete Medicine" />
    
   
         <asp:ConfirmButtonExtender ID="btn_delMedicine_ConfirmButtonExtender" 
            runat="server" Enabled="True" TargetControlID="btn_delMedicine">
        </asp:ConfirmButtonExtender>
    
   
         </td>
    </tr>
    </table>
      
   
      
    
    <div id="boxes">
           <!-- div for Search Medicine-->
            <div id="modalwindow" class="window">
                <br />
                <table border="1" style="width: 46%;">
                    <tr>
                        <td class="stylecenter" style="width: 385px">
                            &nbsp; &nbsp;&nbsp; List of Medicines</td>
                    </tr>
                    <tr>
                        <td style="width: 385px">
                            <asp:Panel ID="pnlMedicine" ScrollBars="Auto" Height="286px" runat="server">
                        
                            <asp:GridView ID="gridViewMedicine" runat="server" AutoGenerateColumns="False" 
                                AutoGenerateSelectButton="True" BackColor="White" BorderColor="#336666" 
                                BorderStyle="Double" BorderWidth="3px" CellSpacing="1" CellPadding="2" 
                                DataKeyNames="MedicineId" DataSourceID="MedicineDataSource" 
                                GridLines="Horizontal" Height="124px" HorizontalAlign="Center" 
                                onselectedindexchanged="gridViewMedicine_SelectedIndexChanged" 
                                Width="436px">
                                <Columns>
                                    <asp:BoundField DataField="MedicineId" ItemStyle-HorizontalAlign="Center" HeaderText="Medicine Id" 
                                        InsertVisible="False" ReadOnly="True" SortExpression="MedicineId" />
                                    <asp:BoundField DataField="MedicineName" ItemStyle-HorizontalAlign="Center"
                                     HeaderText="Medicine Name" SortExpression="MedicineName" >
                                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Quantity" ItemStyle-HorizontalAlign="Center" HeaderText="Quantity" 
                                        SortExpression="Quantity" />
                                </Columns>
                                <EmptyDataTemplate>No Data to show.</EmptyDataTemplate>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#009933" Font-Bold="True" HorizontalAlign="Center" 
                                    ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#003300" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                                </asp:Panel>
                            <asp:SqlDataSource ID="MedicineDataSource" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:paombongdbConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [MedicineId],[MedicineName],[Quantity] FROM [Medicine] ORDER BY [MedicineName]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
        </div>
            
            
            <!-- Mask to cover the whole screen -->
            <div id="mask">
        </div>
    </div>
    
  
</asp:Content>

