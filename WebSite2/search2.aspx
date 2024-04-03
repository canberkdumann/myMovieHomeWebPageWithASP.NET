<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search2.aspx.cs" Inherits="search2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <asp:Repeater ID="Repeater1" runat="server">

         <ItemTemplate>
             <p>
                 <h1>
                     <%#Eval("moviename") %>
                 </h1>
                 <h2>
                     <%#Eval("year") %> <br />
                     <%#Eval("genres") %> <br />
                     <%#Eval("director") %> <br />
                     <%#Eval("cast") %> <br />
                     <%#Eval("imdbranking") %> <br />
                     <%#Eval("dvdprice") %> <br />
                     <%#Eval("summary") %>  <br />
                 </h2>
             </p>
             <p>
                 <img src ="movies2/<%#Eval("poster1") %>" width="200" height="200" />
             </p>
         </ItemTemplate>


    </asp:Repeater>
</asp:Content>

