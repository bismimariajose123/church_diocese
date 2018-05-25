﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SubAdminMaster.Master" AutoEventWireup="true" CodeBehind="SubAdminNotification.aspx.cs" Inherits="Diocese.SubAdminNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
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
                                         <th><asp:TextBox ID="TBsearch" runat="server" CssClass="form-control">

                                   </asp:TextBox></th><th>
                                       <asp:ImageButton ID="Imgbtnsearch" runat="server" OnClick="Imgbtnsearch_Click" 
                                           ImageUrl="~/images/search.png" Width="20px"/></th>
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
                       
                    <asp:GridView runat="server" ID="GVSubAdminNotification" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Width="800px" AutoGenerateColumns="False"
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="Memberid"   OnRowCommand="GVSubAdminNotification_RowCommand"
                        onrowcancelingedit="GVSubAdminNotification_RowCancelingEdit" OnRowDataBound="GVSubAdminNotification_RowDataBound"
                        onrowdeleting="GVSubAdminNotification_RowDeleting" onrowediting="GVSubAdminNotification_RowEditing"  
                        onrowupdating="GVSubAdminNotification_RowUpdating" AllowPaging="True" OnPageIndexChanging="GVSubAdminNotification_PageIndexChanging">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            
                            <asp:TemplateField HeaderText="Event Name" SortExpression="Event_Name">
                               
                                <ItemTemplate>
                                    <asp:Label ID="LBLEvent_Name" runat="server" Text='<%# Bind("Event_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Family Name" SortExpression="FamilyName">
                                
                                <ItemTemplate>
                                    <asp:Label ID="LBLFamilyName" runat="server" Text='<%# Bind("FamilyName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Official Name" SortExpression="OfficialName">
                                
                                <ItemTemplate>
                                    <asp:Label ID="LBLOfficialName" runat="server" Text='<%# Bind("OfficialName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Proposed Date" SortExpression="ProposedDateOfBap">
                                
                                <ItemTemplate>
                                    <asp:Label ID="LBLProposedDateOfBap" runat="server" Text='<%# Bind("ProposedDateOfBap") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Proposed Time" SortExpression="ProposedTimeOfBap">
                              
                                <ItemTemplate>
                                    <asp:Label ID="LBLProposedTimeOfBap" runat="server" Text='<%# Bind("ProposedTimeOfBap") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                          
                            <asp:TemplateField HeaderText="More Details" SortExpression="More Details">
                               <ItemTemplate>
                                  <asp:LinkButton ID="LinkBtnMoreDetails" runat="server" CommandArgument='<%#Eval("Memberid")%>' Text="View More Details"  CommandName="Details"></asp:LinkButton>
                                   </ItemTemplate>
                                </asp:TemplateField>

                            <asp:TemplateField HeaderText="Description" SortExpression="RequestStatus_Description">
                              <EditItemTemplate>
                                     <asp:TextBox ID="TBDescription" runat="server" Text='<%# Bind("RequestStatus_Description") %>'></asp:TextBox>
                                  </EditItemTemplate>

                                <ItemTemplate>
                                    <asp:Label ID="LBLRequestStatus_Description" runat="server" Text='<%# Bind("RequestStatus_Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" SortExpression="RequestStatus">
                                  <EditItemTemplate>
                                      <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="177px" AppendDataBoundItems="true">
                                          <asp:ListItem Value="0">----Select----</asp:ListItem>
                                          <asp:ListItem Value="1">Approved</asp:ListItem>
                                          <asp:ListItem Value="2">Rejected</asp:ListItem>
                                          <asp:ListItem Value="3">Added</asp:ListItem>
                                      </asp:DropDownList>
                                  </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="LBLRequestStatus" runat="server" Text='<%# Bind("RequestStatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Option" SortExpression="Option">
                               <ItemTemplate>
                                   <asp:Button ID="Addtbn" Text="Add" runat="server" Visible="false"  CommandName="Add" CommandArgument='<%#Eval("Memberid")%>'/>
                               </ItemTemplate>
                                </asp:TemplateField>
                             <asp:TemplateField HeaderText="Downloadlink" SortExpression="link">
                               <ItemTemplate>
                                   <asp:Button ID="Download" Text="Download_Bap_certificate"  runat="server" Visible="false"  OnClick="Download_Click" CommandArgument='<%#Eval("Memberid")%>'/>
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
                    </asp:GridView>
                           </div>
               
            </div>
            <!-- /.container-fluid -->
        
   
</asp:Content>
