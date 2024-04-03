<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="art1.aspx.cs" Inherits="art1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="artt.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web1ConnectionString %>" SelectCommand="SELECT * FROM [art]"></asp:SqlDataSource>
    <br />
    <br />

    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">

        <ItemTemplate>
            <div class="movies2">
                <img src="art/<%#Eval("poster") %>" width="350" height="302" />
                <br />
                <br />
                <b>Movie Name:</b><%#Eval("moviename") %><br /><b>Painting Title:</b> <%#Eval("paintingtitle") %>
                <br />
                <b>Painter:</b><%#Eval("author") %><br /><b>Date of Creation:</b> <%#Eval("date") %>
                <br />
                <b>Artist's Country:</b><%#Eval("country") %><br /><b>Actors in Scene:</b> <%#Eval("actors") %>
                <br />
                <b>Time of Scene:</b><%#Eval("timeofscene") %><br /><b>Description:</b> <%#Eval("description") %>
                <br />
            </div>


        </ItemTemplate>


    </asp:Repeater>

</asp:Content>

