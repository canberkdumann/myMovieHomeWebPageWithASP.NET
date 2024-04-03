<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="art.aspx.cs" Inherits="art" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <strong>&nbsp; Movie Name: </strong>&nbsp;
    <asp:TextBox ID="txtMovieName" runat="server" Height="35px" Width="250px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Painting title: </strong>&nbsp;
    <asp:TextBox ID="txtPaint" runat="server" Width="600px" Height="35px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Author: </strong>&nbsp;
    <asp:TextBox ID="txtAuthor" runat="server" Height="35px" Width="200px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Date of Creation: </strong>&nbsp;
    <asp:TextBox ID="txtCreate" runat="server" Height="35px" Width="250px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Artist's country: </strong>&nbsp;
    <asp:TextBox ID="txtCountry" runat="server" Width="600px" Height="35px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br /> 
      <strong>&nbsp; Actors in scene: </strong>&nbsp;
    <asp:TextBox ID="txtActor" runat="server" Width="600px" Height="35px" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Time of scene: </strong>&nbsp;
    <asp:TextBox ID="txtTime" runat="server" Height="35px" Width="200px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Description: </strong>&nbsp;
    <asp:TextBox ID="txtDesc" runat="server" Height="159px" Width="450px"></asp:TextBox>
    <br />
    <br />
     <strong>&nbsp; Uzanti: </strong>&nbsp;
    <asp:TextBox ID="txtUzanti" runat="server" Height="35px" Width="200px"></asp:TextBox>
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
        <asp:Button ID="BtnAdd" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="44px" OnClick="BtnnAdd_Click" Text="Add" Width="87px" />
</asp:Content>

