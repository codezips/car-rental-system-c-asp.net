﻿
<%@ Page Title="Update Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ManageCars.aspx.cs" Inherits="ManageCars" Async="true" %>


 <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <center>
         
    <div style="position:relative;top:20px">
    <div style="width:800px;float:left;">
        <h1>Car List</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="carId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="carId" HeaderText="Car Id" ReadOnly="True" SortExpression="carId" />
                <asp:BoundField DataField="carname" HeaderText="Car Name" SortExpression="carname" />
                <asp:BoundField DataField="bid" HeaderText="Brand ID" SortExpression="bid" />
                <asp:BoundField DataField="mileage" HeaderText="mileage" SortExpression="mileage" />
                <asp:BoundField DataField="rent" HeaderText="Rent" SortExpression="rent" />
                <asp:BoundField DataField="seating" HeaderText="Seating" SortExpression="seating" />
                <asp:BoundField DataField="Availability" HeaderText="Availabile" SortExpression="Availability" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563315fa02g3;Persist Security Info=True;User ID=c563315fa02g3;Password=5989040" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [carId],[carname], [bid], [mileage], [rent], [seating], [Availability]  FROM [cars]" UpdateCommand="UPDATE [cars] SET [carname]=@carname,[bid]=@bid,[mileage]=@mileage,[rent]=@rent,[seating]=@seating,[availability]=@availability where [carId]=@carId" DeleteCommand="DELETE from [cars] where [carId]=@carId"></asp:SqlDataSource>
    
        
       </div>
        </br>
        </br>
        <h2>Add New Car</h2>
        <table>
            <tr>
                
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563315fa02g3;Persist Security Info=True;User ID=c563315fa02g3;Password=5989040" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [bname] FROM [brands] ORDER BY [bname]"></asp:SqlDataSource>
        <th>Brand    :</th><td> 
            <asp:DropDownList ID="brand" runat="server" DataSourceID="SqlDataSource3" DataTextField="bname" DataValueField="bId">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=dcm.uhcl.edu;Initial Catalog=c563315fa02g3;Persist Security Info=True;User ID=c563315fa02g3;Password=5989040" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [bId], [bname] FROM [brands]"></asp:SqlDataSource>
           </td>
                </tr>
            <tr>
                <th>
                    Car Name :
                </th>
                <td>
                    <asp:TextBox ID="carname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    Mileage :
                </th>
                <td>
                    <asp:TextBox ID="mileage" style="width:174px;" Type="Number" min="5" max="30" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    Rent :
                </th>
                <td>
                    $<asp:TextBox ID="rent" runat="server" Type="Number" min="250" style="width:166px;"></asp:TextBox>/month
                </td>
            </tr>
            <tr>
                <th>
                    Seating  :
                </th>
                <td>
                    <asp:TextBox ID="seating" runat="server" Type="Number" min="2" max="8" style="width:174px;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    Availabile :
                </th>
                <td>
                    <asp:TextBox ID="availability" Type="Number" min="0" max="100" style="width:174px;" runat="server"></asp:TextBox>
                </td>
            </tr>
            </table>
        <asp:Button ID="carInsert" OnClick="Car_Insert" runat="server" Text="Add" />
         <asp:Label ID="Label11" runat="server" Visible="false" Font-Size="15px" ForeColor="Green" />
    </div>
     </center>
          </asp:Content>
 
