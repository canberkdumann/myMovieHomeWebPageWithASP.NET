<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <script src="jquery/jquery.js"></script>
    <link href="jquery/jquery-ui.css" rel="stylesheet" />
    <link href="jquery/jquery-ui.theme.css" rel="stylesheet" />
    <script src="jquery/jquery-ui.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.txtSentence').autocomplete({
                source: 'MvHandler.ashx'
            });
        });
    </script>

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <br />

    <asp:TextBox ID="txtSentence"  placeholder="🔍 Search MyMovieHome" runat="server" Height="30px" Width="185px" class="txtSentence" ></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="TxtSearch" runat="server" Text="Search" BackColor="Red" Font-Bold="True" ForeColor="White" OnClick="TxtSearch_Click" Height="35px" Width="83px" />

        <asp:Repeater ID="Repeater1" runat="server">

         <ItemTemplate>
             <p>
                 <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #FF0000">
                     <%#Eval("moviename") %>
                 </h1>
                 <h2 style="font-family: Verdana, Geneva, Tahoma, sans-serif; color: #000000">
                     <%#Eval("year") %> <br />
                     <%#Eval("genres") %> <br />
                     <%#Eval("director") %> <br />
                     <%#Eval("cast") %> <br />
                     <%#Eval("imdbranking") %> <br />
                     <%#Eval("dvdprice") %>₺ <br />
                     <%#Eval("summary") %>  <br />
                 </h2>
             </p>
             <p>
                 <img src ="movies2/<%#Eval("poster1") %>" width="290" height="290" style="margin: 22px" /><br /><br /><br /><br />
                 <br />
                 <br />
             </p>
         </ItemTemplate>


    </asp:Repeater>
</asp:Content>

