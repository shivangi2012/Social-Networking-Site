<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="true" CodeFile="ViewFriends.aspx.cs" Inherits="ViewFriends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <table style="width:45%; height:120px;">
        
        <tr>
            <td align="left" class="style4">
                </td>
            <td><asp:GridView ID="GridView1" ItemStyle-VerticalAlign="Top" AutoGenerateColumns="False"
                GridLines="None" Width="252%" ShowHeader="False" runat="server" AlternatingRowStyle-BackColor="#A5A5A5"
                CellPadding="4" ForeColor="#333333" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Height="180px" 
                    style="margin-left: 0px; margin-top: -250px;" >
                <Columns>
                   <asp:TemplateField>
                        <ItemTemplate>
                 <table align="left" cellpadding="1" cellspacing="2">
                                <tr>
                                    <td>
                                        <%--<a href='<%#getUserHREF(Container.DataItem)%>'>--%>
                                            <img  alt="no" src='<%#DataBinder.Eval(Container.DataItem,"profilepic")%>' width="90px" height:"90px"/>
                                            </a>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            </ItemTemplate>
                                                    
                    </asp:TemplateField>


                    <asp:TemplateField>
                        <ItemTemplate>
                       
                            
                               <b>
                                   <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "fname")%>'>
                                   </asp:Label>
                               </b>
                                
                                
                                
                            
                            
                            <br />
                             </span>
                        </ItemTemplate>
                        </asp:TemplateField>
               
                </Columns>
                <RowStyle BackColor="#EFF3FB" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 508px;
        }
    </style>
</asp:Content>




