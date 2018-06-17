﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MemberMaster.Master" AutoEventWireup="true" CodeBehind="MemberHallBookNotification.aspx.cs" Inherits="Diocese.MemberHallBookNotification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="page-wrapper">
            <div class="container-fluid">
                
                             Search by Column <div style="width:20%">
                                 <%--<table>
                                     <tr>
                                         <th><asp:TextBox ID="TBsearch" runat="server" CssClass="form-control">

                                   </asp:TextBox></th><th>
                                       <asp:ImageButton ID="Imgbtnsearch" runat="server" 
                                           ImageUrl="~/images/search.png" Width="20px"/></th>
                                     </tr>
                                 </table>--%>
                             
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
                       
                    <asp:GridView runat="server" ID="GVMemberNotification" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Width="800px" AutoGenerateColumns="False"
                        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataKeyNames="HallRequestId"   
                        onrowcancelingedit="GVMemberNotification_RowCancelingEdit" 
                         onrowediting="GVMemberNotification_RowEditing"  
                        onrowupdating="GVMemberNotification_RowUpdating" AllowPaging="True" OnPageIndexChanging="GVMemberNotification_PageIndexChanging" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Event Name" SortExpression="Event Name">
                              
                                <ItemTemplate>
                                    <asp:Label ID="LblEventName" runat="server" Text='<%# Bind("EventName") %>'></asp:Label>
                                      <asp:Label ID="LblUserid" runat="server" Text='<%# Bind("Userid") %>' Visible="false"></asp:Label>
                                      <asp:Label ID="LblUsertype" runat="server" Text='<%# Bind("UserType") %>' Visible="false"></asp:Label>
                               
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Hall Name" SortExpression="Hall Name">
                              
                                <ItemTemplate>
                                    <asp:Label ID="LblHallName" runat="server" Text='<%# Bind("HallName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Capacity" SortExpression="Capacity">
                              
                                <ItemTemplate>
                                    <asp:Label ID="LblCapacity" runat="server" Text='<%# Bind("No_of_people") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>
                             <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                              
                                <ItemTemplate>
                                    <asp:Label ID="LblRate" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                                </ItemTemplate>
                                </asp:TemplateField>

                            <asp:TemplateField HeaderText="RequestDate" SortExpression="RequestDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TBRequestDate" runat="server" Text='<%# Bind("RequestDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="LblRequestDate" runat="server" Text='<%# Bind("RequestDate") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" SortExpression="Status">
                                
                                <ItemTemplate>
                                    <asp:Label ID="LblStatus" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description" SortExpression="Description">
                                
                                <ItemTemplate>
                                    <asp:Label ID="LblDescription" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
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
