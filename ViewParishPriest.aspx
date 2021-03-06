﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewParishPriest.aspx.cs" Inherits="Diocese.ViewParishPriest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"> WELCOME <asp:Label ID="Lblname" runat="server" Text="Label"></asp:Label></h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                             Search by Column <div style="width:20%">
                                 <table>
                                     <tr>
                                         <th><asp:TextBox ID="TBsearch" runat="server" CssClass="form-control"></asp:TextBox></th><th>
                                       <asp:ImageButton ID="Imgbtnsearch" runat="server" OnClick="Imgbtnsearch_Click" ImageUrl="~/images/search.png" Width="20px"/></th>
                                     </tr>
                                 </table>
                              
                              </div>
                <br />
                     Select Entries:
                         <div class="dropdown">
                             <asp:DropDownList ID="DDLPagesize" runat="server" 
                                 OnSelectedIndexChanged="DDLPagesize_SelectedIndexChanged" AutoPostBack="true"> 
                       <asp:ListItem Selected="True" Text="--Select--" Value="--"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="10" Value="10"></asp:ListItem>
                          <asp:ListItem Text="25" Value="20"></asp:ListItem>
                        <asp:ListItem Text="50" Value="10"></asp:ListItem>
                          <asp:ListItem Text="100" Value="20"></asp:ListItem>
                        <asp:ListItem Text="All" Value="All"></asp:ListItem>
                       </asp:DropDownList>
                        </div>
                            <!-- /input-group -->
                <div style="margin-top:10px">
 
                    <asp:gridview runat="server" ID="GVPriestTable"  AutoGenerateEditButton="True"
                        OnRowCancelingEdit="GVPriestTable_RowCancelingEdit" OnRowDeleting="GVPriestTable_RowDeleting" OnRowEditing="GVPriestTable_RowEditing"
                       OnRowUpdating="GVPriestTable_RowUpdating" AllowPaging="True" OnPageIndexChanging="GVPriestTable_PageIndexChanging"
                        CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Width="833px" 
                        AutoGenerateColumns="False" DataKeyNames="Parish_Priest_ID"  Height="122px">
                        <AlternatingRowStyle BackColor="#CCCCCC"  />
                        <Columns>
                            <asp:TemplateField HeaderText="Priest Name" SortExpression="Parish_Priest_Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBParish_Priest_Name" runat="server" Text='<%# Bind("Parish_Priest_Name") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Parish_Priest_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone No" SortExpression="Phone_No">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBPhoneNo" runat="server" Text='<%# Bind("Phone_No") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Phone_No") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ordination Date" SortExpression="OrdinationDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBOrdinationDate" runat="server" Text='<%# Bind("OrdinationDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("OrdinationDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Native Place" SortExpression="Native_Place">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBNative_Place" runat="server" Text='<%# Bind("Native_Place") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Native_Place") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Designation" SortExpression="Designation">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBDesignation" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ImageField HeaderText="Image" DataImageUrlField="Parish_Priest_Image" ControlStyle-Height="100" ControlStyle-Width="100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>
                            </asp:ImageField>
                            <asp:TemplateField HeaderText="Current Parish">
                               
                                  <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Parish_Name") %>'></asp:Label>
                                </ItemTemplate>

                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:gridview>
                                     </div>
            </div>
    </div>
            <!-- /.container-fluid -->
        
        <!-- /#page-wrapper -->

</asp:Content>
