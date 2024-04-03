<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="unknown.aspx.cs" Inherits="unknown" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
  $(".summary").on({
    mouseenter: function(){
      $(this).css("background-color", "#ffe7ea");
    },  
    mouseleave: function(){
      $(this).css("background-color", "ivory");
    }, 
    click: function(){
      $(this).css("background-color", "#ffe7ea");
    }  
  });
});
</script>

    <link href="facts.css" rel="stylesheet" />
    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /> 
   <br /> 
    <br /> 
    <br /> 
    <br /> 
    <p style="font-size: x-large; font-weight: bold; font-style: italic">Movies have the magical power to suspend our real-life problems, at least for the duration of the movie. Not only that, but movies can also take us to distant worlds full of fantastic characters and scripts. So, sometimes you forget that these characters are actually just human and the distant world is a movie set. Creating a movie is a real full-time job for the actors and the crew. Just like in our lives and jobs, not only ordinary but also interesting things happen. These days, filmmakers and producers have trained us to pay attention to easter eggs - little jokes and references leaked into the film, otherwise it won't work. Other purpose than blinking, "Did you see what we did there?" While collectively talking about these sneaky surprises like well-informed moviegoers, the truth is that your favorite movie probably hides a much deeper treasure trove of secrets. As My Movie Home, we bring out the unknown facts for you.</p> 
    <br /> 
    <br /> 

    <div class="summary">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web1ConnectionString %>" DeleteCommand="DELETE FROM [moviefacts] WHERE [id] = @original_id" InsertCommand="INSERT INTO [moviefacts] ([umoviename], [moviefact]) VALUES (@umoviename, @moviefact)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [moviefacts]" UpdateCommand="UPDATE [moviefacts] SET [umoviename] = @umoviename, [moviefact] = @moviefact WHERE [id] = @original_id">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="umoviename" Type="String" />
            <asp:Parameter Name="moviefact" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="umoviename" Type="String" />
            <asp:Parameter Name="moviefact" Type="String" />
            <asp:Parameter Name="original_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


       
       
    
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" Height="299px" Width="813px" DataKeyNames="id">

         <EditItemTemplate>
             id:
             <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
             <br />
             umoviename:
             <asp:TextBox ID="umovienameTextBox" runat="server" Text='<%# Bind("umoviename") %>' />
             <br />
             moviefact:
             <asp:TextBox ID="moviefactTextBox" runat="server" Text='<%# Bind("moviefact") %>' />
             <br />
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
             &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </EditItemTemplate>
         <InsertItemTemplate>
             umoviename:
             <asp:TextBox ID="umovienameTextBox" runat="server" Text='<%# Bind("umoviename") %>' />
             <br />
             moviefact:
             <asp:TextBox ID="moviefactTextBox" runat="server" Text='<%# Bind("moviefact") %>' />
             <br />
             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>

         <ItemTemplate>

             <strong style="font-size: medium">Movie Name:</strong>
             <asp:Label ID="umovienameLabel" runat="server" Text='<%# Bind("umoviename") %>' Font-Bold="True" Font-Italic="True" Font-Size="X-Large" />
             <br />
             <br />
             <asp:Label ID="moviefactLabel" runat="server" Text='<%# Bind("moviefact") %>' Font-Size="Large" />
             <br />
             <br />
             <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
             &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" onClientClick="return confirm(&quot;Are you sure you want to delete?&quot;)" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />


                 </ItemTemplate>
    </asp:FormView>
        </div> 
    
    </asp:Content>

