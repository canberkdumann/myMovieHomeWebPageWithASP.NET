<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blackwhite.aspx.cs" Inherits="blackwhite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="blackw.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

   <div class="movieinfo">
        <asp:Panel class="Panel1" runat="server" BackImageUrl="~/images2/white.jpg" Height="451px" Width="801px">
            &nbsp;
        </asp:Panel>


        <br />
        <p style="font-size: x-large; font-weight: bold; font-style: italic;">&nbsp;Over the last few decades, black and white films have been somewhat abandoned. Yet when it comes to the history of cinematography, the medium&nbsp; encapsulates numerous masterpieces and continues to define the film genre today. From horror to science fiction, drama to romance, monochrome&nbsp; features have given us some of cinema’s finest moments. Here is a list of the fifteen best black and white movies of all time.</p>
        <br />
        <br />
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web1ConnectionString %>" SelectCommand="SELECT * FROM [blackwhite]"></asp:SqlDataSource>
    <br />
    <br />

    <asp:Repeater runat="server" DataSourceID="SqlDataSource1">

        <ItemTemplate>
            <div class="movies3">
                <img src="blackwhite/<%#Eval("poster") %>" width="220" height="220" />
                <br />
                <br />
                <b>Movie Name:</b><%#Eval("moviename") %>
                <br />
                <b>Storyline:</b> <%#Eval("summary") %>
                <br />
            </div>


        </ItemTemplate>


    </asp:Repeater>

</asp:Content>

