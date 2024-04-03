<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addbooks.aspx.cs" Inherits="addbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <strong>&nbsp; Book Name: </strong>&nbsp;
    <asp:TextBox ID="txtBookName" runat="server" Height="35px" Width="250px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Author: </strong>&nbsp;
    <asp:TextBox ID="txtAuthor" runat="server" Width="600px" Height="35px" ></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Page: </strong>&nbsp;
    <asp:TextBox ID="txtPage" runat="server" Height="35px" Width="200px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Genres: </strong>&nbsp;
    <asp:TextBox ID="txtGenres" runat="server" Height="35px" Width="250px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Publish date: </strong>&nbsp;
    <asp:TextBox ID="txtPublish" runat="server" Width="600px" Height="35px" ></asp:TextBox>
    <br />
    <br /> 
      <strong>&nbsp; Summary: </strong>&nbsp;
    <asp:TextBox ID="txtSummary" runat="server" Width="600px" Height="35px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    
     <strong>&nbsp; Uzanti: </strong>&nbsp;
    <asp:TextBox ID="txtUzanti" runat="server" Height="35px" Width="200px"></asp:TextBox>
    <br />
    <br />
    <strong>&nbsp; Book Poster: </strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuuImage" runat="server" Font-Bold="True" Height="48px" Width="290px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnAdd" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="44px" OnClick="BtnnAdd_Click" Text="Add" Width="87px" />

</asp:Content>

