<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="answer.aspx.cs" Inherits="answer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

   
   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> <br /> <br /> <br />
    <table class="tablee" runat="server" style="background-color: #F0E68C; text-align: center; border:2px solid black; font-weight: bold; font-size: large; width: 70%; margin:90px 220px; border-collapse: collapse; height: 420px;">

       
        
        <tr>
            <td>To:</td>
            <td><asp:TextBox ID="to" runat="server" Text="" placeholder="Enter an email"  Width="69%" Height="26px"></asp:TextBox></td>
        </tr>

     
        <tr>
            <td>From:</td>
            <td><asp:TextBox ID="from" runat="server" Text="My Movie Home"  Width="69%" Height="26px" Font-Bold="True" Font-Italic="True"></asp:TextBox></td>
        </tr>

        
        <tr>
            <td>Subject:</td>
            <td><asp:TextBox ID="subject" runat="server" Text=""  Width="69%" Height="24px"></asp:TextBox></td>
        </tr>

           <tr>
            <td>Body:</td>
            <td><asp:TextBox ID="body" runat="server" Text=""  Width="69%" Height="160px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>

         <tr>
            <td></td>
            <td><asp:Button ID="send" runat="server" Text="Send" OnClick="Send_Click" BackColor="Red" Font-Bold="True" ForeColor="White" Height="35px" Width="75px" /></td>
        </tr>

        
         <tr>
            <td></td>
            <td><asp:Label ID="status" runat="server" /></td>
        </tr>




    </table>



</asp:Content>

