<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addblackwhite.aspx.cs" Inherits="addblackwhite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <strong>&nbsp; Movie Name: </strong>&nbsp;
    <asp:TextBox ID="txtMovieNamee" runat="server" Height="35px" Width="250px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Summary: </strong>&nbsp;
    <asp:TextBox ID="txtSummaryy" runat="server" Width="600px" Height="35px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Uzanti: </strong>&nbsp;
    <asp:TextBox ID="txtUzantii" runat="server" Height="35px" Width="200px"></asp:TextBox>
    <br />
    <br />
    <strong>&nbsp; Movie Poster: </strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuuImage" runat="server" Font-Bold="True" Height="48px" Width="290px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnnAdd" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="44px" OnClick="BtnnAdd_Click" Text="Add" Width="87px" />


</asp:Content>

