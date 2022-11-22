<%@ Page Title="" Language="C#" MasterPageFile="~/Sample.Master" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="Masterpage.Admin_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white" align="center" >
             <br /> <b>&nbsp
               <a class="nav-link active" href="../admin/Course_Reg.aspx">Course Registration</a> &nbsp&nbsp
                <a class="nav-link active" href="../admin/AdminDashboard.aspx">Admin Home</a> &nbsp&nbsp 
       </b><br /><br /></div>
    <h1 align="center">List of Student</h1>
    <table align="center">
                <tr>
                    <td>&nbsp</td>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="GridView1RowEditing" OnRowDeleting="Gridview1_RowDeleting" OnRowCancelingEdit="Gridview1_RowCancelingEdit">
                            <Columns>
                                <asp:TemplateField>
                                     <ItemTemplate>
                                        <input type="checkbox" runat="server" name="ch" value='<%Eval("Id") %>' />

                                     </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="Name" HeaderText="Name" />  
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:CommandField HeaderText="Status" ShowDeleteButton="true" DeleteText="Confirm" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                
                    
            </table>
     
</asp:Content>
