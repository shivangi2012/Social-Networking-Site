<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table style="width:100%;">
        
        <tr>
            <td align="left" class="style4">
            <asp:GridView ID="GridView1" ItemStyle-VerticalAlign="Top" AutoGenerateColumns="False"
                GridLines="None" Width="100%" ShowHeader="False" runat="server" AlternatingRowStyle-BackColor="#A5A5A5"
                CellPadding="4" ForeColor="#333333" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <table align="left" cellpadding="1" cellspacing="2">
                                <tr>
                                    <td>
                                        <%--<a href='<%#getUserHREF(Container.DataItem)%>'>--%>
                                            <img align="middle" alt="no" src='<%#DataBinder.Eval(Container.DataItem, "profilepic")%>' border="0" width="100px" /></a>
                                            <br />
                                            <br />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <div align="left">
                               <b><%#DataBinder.Eval(Container.DataItem, "name")%></b>
                                
                                <br />
                                <br />
                            </div>
                            
                            
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
        </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style4
        {
            width: 368px;
        }
    </style>
</asp:Content>

