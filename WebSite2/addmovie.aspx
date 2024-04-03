<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addmovie.aspx.cs" Inherits="addmovie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">







        &nbsp;
        <br />
        <br />
        <br />
        <strong>&nbsp; Movie Name: </strong>&nbsp;
        <asp:TextBox ID="txtMovieName" runat="server" Height="32px" Width="217px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Year:&nbsp;&nbsp; </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtYear" runat="server" Height="34px" Width="215px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Genres:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="txtGenres" runat="server" Height="33px" Width="216px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Director:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="txtDirector" runat="server" Height="33px" Width="216px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Cast:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<asp:TextBox ID="txtCast" runat="server" Height="30px" Width="217px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; IMDb or Your Individual Rating:</strong>
        <asp:TextBox ID="txtRank" runat="server" Height="34px" Width="143px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; DVD Price(₺):</strong>&nbsp;&nbsp;
        <asp:TextBox ID="txtPrice" runat="server" Height="33px" Width="140px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Individual Comment:&nbsp; </strong>&nbsp;
        <asp:TextBox ID="txtSummary" runat="server" Height="37px" Width="370px"></asp:TextBox>
        <br />
        <br />
        <strong>&nbsp; Movie Poster: </strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuImage" runat="server" Font-Bold="True" Height="48px" Width="290px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnAdd" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="44px" OnClick="BtnAdd_Click" Text="Add" Width="87px" />






</asp:Content>

