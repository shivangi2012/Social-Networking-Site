<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="style6">
  
        <tr>
            <td align="left" class="style5">
            <asp:GridView ID="GridView1" ItemStyle-VerticalAlign="Top" AutoGenerateColumns="False"
                GridLines="None" Width="268%" ShowHeader="False" runat="server" AlternatingRowStyle-BackColor="#A5A5A5"
                CellPadding="4" ForeColor="#333333" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged2" Height="360px" >
                <Columns>
     <asp:TemplateField>
                        <ItemTemplate>
                            <table align="left" cellpadding="1" cellspacing="2">
                                <tr>
                                    <td>
                                        <%--<a href='<%#getUserHREF(Container.DataItem)%>'>--%>
                                            <img align="middle" alt="no" src='<%#DataBinder.Eval(Container.DataItem,"profilepic")%>' border="0" width="50px" /></a>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <div align="left">
                               <b><%#DataBinder.Eval(Container.DataItem, "name")%></b>&nbsp;&nbsp; Posted :
                               <br />
                                <b><%#DataBinder.Eval(Container.DataItem, "post")%></b>
                                <br />
                                <br />
                                Posted on : <b><%#DataBinder.Eval(Container.DataItem, "postdate")%></b>&nbsp;&nbsp;&nbsp;&nbsp;

                           
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
            <td class="style7">&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style5
    {
        width: 233px;
        height: 449px;
    }
    .style6
    {
        width: 202px;
        height: 453px;
    }
    .style7
    {
        height: 449px;
        width: 4px;
    }
</style>
</asp:Content>


