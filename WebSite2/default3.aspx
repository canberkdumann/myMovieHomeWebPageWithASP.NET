<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default3.aspx.cs" Inherits="_default"  MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
  $("p").on({
    mouseenter: function(){
      $(this).css("background-color", "white");
    },  
    mouseleave: function(){
      $(this).css("background-color", "gold");
    }, 
    click: function(){
      $(this).css("background-color", "#fbfc55");
    }  
  });
});
</script>
    <title>🎬 My Movie Home</title>

    <link href="/style.css" rel="stylesheet" />





    <style type="text/css">
        .auto-style1 {
            width: 1016px;
        }
        .auto-style2 {
            width: 294px;
            height: 219px;
            margin-left: 178;
            margin-top: 0px;
            margin-bottom: 0;
        }
        .auto-style3 {
            height: 186px;
            width: 467px;
            margin-left: 27;
        }
        .auto-style4 {
            margin-top: 0;
        }
        .auto-style6 {
          
            margin-left: 337px;
            margin-top: 210px;
        }
        .auto-style7 {
            height: 67px;
        }
        .auto-style8 {
            background-color: white;
            padding: 15px;
        }
        .auto-style19 {
            width: 0;
            height: 0;
        }
        .auto-style21 {
            width: 510px;
            height: 185px;
        }
        .auto-style22 {
            height: 323px;
            width: 306px;
        }
        .auto-style23 {
            width: 198px;
            height: 169px;
        }
        .auto-style24 {
            width: 47px;
            height: 39px;
            margin-left: 178;
            margin-top: 0px;
            margin-bottom: 0;
        }
        .auto-style25 {
            width: 100%;
            height: 324px;
        }
        .auto-style26 {
            height: 326px;
            width: 99%;
            margin-top: 10px;
        }
        .auto-style27 {
            width: 906px;
        }
        .auto-style28 {
            width: 250px;
            height: 173px;
        }
        .auto-style29 {
            width: 903px;
        }
        .auto-style30 {
            float: right;
            width: 261px;
            height: 199px;
        }
    </style>





</head>
<body>
    <form id="form1" runat="server">
        
     
     


        <div id="wrapper" class="auto-style1">
            
     <header style="font-size: small; font-weight: bold; font-style: italic">
        
         <nav class="auto-style27">
             <ul>
                 <li>
                     <a href = "default3.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Homepage </a>     
                 </li>
                  <li>
                     <a href = "addmovie.aspx"  style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Archive Creation </a>      
                 </li>
                 <li>
                     <a href = "search.aspx"  style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Search Movies </a>      
                 </li>
                  <li>
                     <a href = "quotes.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Quotes </a>      
                 </li>
                  <li>
                     <a href = "unknown.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Unknown Facts </a>       
                 </li>
                  <li>
                     <a href = "blackwhite.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Black&White </a>     
                 </li>
                  <li>
                     <a href = "art1.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Art </a>   
                  </li>
                 <li>
                     <a href = "books.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Books </a>   
                  </li>
                     <li>
                     <a href = "contact1.aspx" style="color: #FFFFFF; text-transform: none; text-decoration: none; font-family: Georgia, 'Times New Roman', Times, serif;"> Contact </a>      
                 </li>
                      
                 
             </ul>
         </nav>

         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <img alt="" class="auto-style2" longdesc="http://localhost:63848/images2/83285540-cinema-doodle-line-vector-set.jpg" src="images2/83285540-cinema-doodle-line-vector-set.jpg" /><br />
         <p style="font-size: medium" class="auto-style29">"The curtain is a magical world. It has such a power that it reveals emotions in a way that does not come close to any other art form."<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Stanley Kubrick&nbsp;</p>
         <p style="font-size: medium">"Ideas are not limited by budget ,the creative process takes place in your head."
&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>
         <p style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -Hans Zimmer</p>

         
         <asp:FileUpload ID="FileUpload1" runat="server"  Font-Bold="True" Font-Size="Small" Height="30px" Width="234px" />
         <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderColor="White" CssClass="auto-style4" Font-Bold="True" Font-Size="Small" ForeColor="Black" Height="33px" OnClick="Button1_Click" Text="Upload" Width="74px" />
&nbsp;

         <asp:Label ID="Label2" runat="server"></asp:Label>
         <br />
         <asp:Literal ID="Literal1" runat="server"></asp:Literal>

         
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />

         
      

         
     </header>

 
       <figure class="figure">
  <img src="images2/cinema.jpg" class="auto-style3" />
           <img class="auto-style30" src="images2/FarmTwo.png" /></figure>



            <div class="left-side">

                <div class="sign-up-now" style="width: 283px">

                    <asp:Panel ID="pnlLogin" runat="server" Height="339px">  

                    <div class="up" style="width: 95%">
                        User Login
                    </div>

                    <div class="auto-style22" style="background-color: #FFFFFF;">


                        <div class="user">  
                        <span>User Name:<br />
                        </span>&nbsp;<asp:TextBox ID="txtUserName"   CssClass="textbox"   runat="server" BackColor="#CCCCCC" Height="30px" Width="157px" /> 
                      
                       
                         </div> <br />
                        <div class="auto-style7">  
                        <span>Password:<br />
                        </span>&nbsp;<asp:TextBox ID="txtPassword"   CssClass="textbox"   runat="server" TextMode="Password" BackColor="#CCCCCC" Height="30px" Width="157px" />
                          
                         </div>
    

                        <asp:Button ID="BtnSignUp" CssClass="BtnSignUp"  Text="Register" runat="server"   Height="51px" Width="82px" BorderStyle="Inset" OnClick="BtnSignUp_Click"     />
                        <asp:Button ID="BtnLogin" CssClass="BtnLogin" Text="Login" runat="server" Height="51px" style="margin-left: 0" Width="79px" OnClick="BtnLogin_Click" BorderStyle="Inset" />
                        <asp:Label ID="lblResult" runat="server" BackColor="White" CssClass="uyari" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Height="34px" />
                      
                    </div>
                        </asp:Panel>

                    <asp:Panel ID="pnlUser" runat="server" Height="293px" CssClass="auto-style8">
                        WELCOME, <asp:Label ID="lblUserName" Text="" runat="server"/>
                        <br />
                        <asp:Button ID="btnExit" Text="Logout" runat="server" OnClick="btnExit_Click" CssClass="userExit" BackColor="Red" Font-Bold="True" ForeColor="White" Height="32px" Width="65px" />
                        &nbsp;<br />
                        &nbsp;<img class="auto-style23" src="images2/deadpool.jpg" /></asp:Panel>

             </div>


                <div class="announcements">

                    <div class="up">
                        Top News
                    </div>

                    <div class="down" style="height: 557px; width: 871px">

                        <asp:ListView ID="lstNew" runat="server">
                            <ItemTemplate>
                                 <div class="announcement-wrap">
                            <asp:Label runat="server" Text= '<%#Eval("Title") %>'/><br />
                            <asp:Label runat="server" Text= '<%#Eval("News") %>'/><br />
                            <asp:Label runat="server" Text= '<%#Eval("Date") %>' />


                        </div>
                            </ItemTemplate>
                        </asp:ListView>
                       
                       


                    </div>

                </div>


            </div>
            <div>
                   <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images2/inline_image_preview.jpg" CssClass="auto-style6" Font-Bold="True" Font-Italic="True" Font-Names="Segoe Script" ForeColor="Black" Height="296px" Width="555px">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If you are in love with the magic<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of cinema and movies,you are<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; at the right place.<br class="Apple-interchange-newline" />
             <br />
                       &nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;<img class="auto-style19" src="images2/sleep.jpg" /><img class="auto-style19" src="images2/sleep.jpg" /><img class="auto-style21" src="images2/lion.jpg" /></asp:Panel>
            </div>




            
  

    </form>


    <footer>
  <div id="widget ">
  <div class="auto-style26" data-scribe="component:button"><a href="https://www.instagram.com/canberk.duman/" class="btn" id="b"><i class="fa fa-instagram ft14"></i><span class="label" id="l" style="font-weight: bolder; color: black; font-size: medium; text-decoration: none; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
      <br />
      <br />
      <br />
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <img class="auto-style24" src="images2/insta.png" />&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; © 2020-2021 Designed by Cemil Canberk Duman</span></a></div>
</div>

 
  
</footer>

</body>
</html>
