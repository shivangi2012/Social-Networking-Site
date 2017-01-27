<%@ Page Title="" Language="C#" MasterPageFile="~/ProfileMaster.master" AutoEventWireup="true" CodeFile="FindFriends.aspx.cs" Inherits="FindFriends" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  <script type="text/javascript">
      function disableDel(delButton, evt) {
          delButton.disabled = true;
      }
  </script>
    <table style="width:100%;">
        
        <tr>
            <td align="left" class="style4">
            <asp:GridView ID="GridView1" ItemStyle-VerticalAlign="Top" AutoGenerateColumns="False"
                GridLines="None" Width="181%" ShowHeader="False" runat="server" AlternatingRowStyle-BackColor="#A5A5A5"
                CellPadding="4" ForeColor="#333333" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    OnRowCommand="GridView1_RowCommand" Height="405px">
                <Columns>
                                <asp:TemplateField>
                        <ItemTemplate>
                 <table align="left" cellpadding="1" cellspacing="2">
                                <tr>
                                    <td>
                                        <%--<a href='<%#getUserHREF(Container.DataItem)%>'>--%>
                                            <img alt="no" src='<%#DataBinder.Eval(Container.DataItem,"profilepic")%>' border="0" width="50px" />
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
                  
                                   <asp:Label ID="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name")%>'>
                                   </asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
            
                    
                           
                    <asp:TemplateField>
                        <ItemTemplate>
                  
                            <asp:Button ID="Button1" runat="server" OnClientClick="disableDel(this,evt);" Text="Add" CommandName="Add"  CommandArgument="<%#((GridViewRow) Container).RowIndex %>"  />
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                     

                       <asp:TemplateField>
                        <ItemTemplate>
                        
                  
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
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
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
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

