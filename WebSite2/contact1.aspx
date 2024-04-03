<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact1.aspx.cs" Inherits="contact1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style> 
#myDIV {
  margin: 25px;
  width: 650px;
  height: 70px;
  background: yellow;
  position:relative;
  font-size: 30px;
  -webkit-animation-name: below;  
  -webkit-animation-duration: 5s;  
  animation-name: below;
  animation-duration: 5s;
  text-align:center;  
}

@-webkit-keyframes below {
  from {top: 0px;}
  to {top: 100px;}
}

@keyframes below {
  from {top: 0px;}
  to {top: 100px;}
}
</style>


      <style type="text/css">
        .auto-style2 {
            width: 200px;
        }
        .auto-style3 {
            width: 200px;
            text-align: left;
        }
          .auto-style4 {
              height: 98px;
              width: 54%;
          }
          
          #panel, #flip {
              padding: 12px;
              text-align:right;
             
              border: solid 3px black;
              background-image: url("images2/aaa.jpg");
              float:right;
          }
          
          .pointer {cursor: pointer;}
#panel {
  padding: 30px;
  display: none;
  float:right;
  text-align:center;
}
          .auto-style7 {
        height: 322px;
        width: 44%;
        border: medium solid black;
    }
    .auto-style8 {
        width: 737px;
    }
          .auto-style10 {
              height: 29px;
              width: 177px;
          }
          .auto-style11 {
              width: 445px;
              height: 330px;
              float: right;
          }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p style="font-size: x-large; font-weight: bold; font-style: italic">We're here to answer any messages you may have about My Movie Home experience.Please feel free to contact us by phone number and email,thus we will be sure to get back to you as soon as possible.</p>

<div id="myDIV"></div>

<script>
var x = document.getElementById("myDIV");

// Code for Chrome, Safari and Opera
x.addEventListener("webkitAnimationStart", myStartFunction);

// Standard syntax
x.addEventListener("animationstart", myStartFunction);

function myStartFunction(event) {
  this.innerHTML = "Just send us a messages in the form " + event.animationName;
}
</script>

    <img class="auto-style11" src="images2/FarmTwo.png" />


    <br />
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong style="font-size: x-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CONTACT&nbsp; US</strong> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <table border="1" class="auto-style7" style="border-style: solid; border-color: #000000; text-align: left; margin:15px 30px; background-color:khaki  ">
        <tr>
        <th class="auto-style8">Your Name and Surname:</th>
        <th class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="190px"></asp:TextBox>
            </th>
        


        </tr>

        <tr>
        <th class="auto-style8">Email Address:</th>
        <th class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" Height="35px" TextMode="Email" Width="190px"></asp:TextBox>
            </th>
        


        </tr>
        <tr>
        <th class="auto-style8">Phone Number:</th>
        <th class="auto-style2">
            <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="190px"></asp:TextBox>
            </th>
       


        </tr>

        <tr>
        <th class="auto-style8">Message:</th>
        <th class="auto-style3">
            <asp:TextBox ID="TextBox4" runat="server" Height="176px" TextMode="MultiLine" Width="354px" placeholder="All your comments such as questions,opinions,suggestions,complaints will be taken into consideration!" ></asp:TextBox>
            </th>

        </tr>
        
         <tr>
            <td><b>Security Code:</b><br/><img rel="lightbox" src="http://localhost:64171/Resim.aspx" runat="server" alt="Güvenlik Resmi" /></td>
            <td><input type="text" name="txtSecurityCode" runat="server" id="txtSecurityCode" value="" class="auto-style10" /></td>
        </tr>


         <tr>
        <th class="auto-style8"></th>
        <th class="auto-style4">
            <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" ForeColor="White" Height="37px" Text="Submit" Width="86px" OnClick="Button1_Click" />
            <br />
            &nbsp;</th>

        </tr>
        
    
    </table>

    <br />

    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
<br />
<br />
<br />
<br />
<br />

<br />


</asp:Content>

