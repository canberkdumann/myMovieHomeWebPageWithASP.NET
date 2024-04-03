<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="books.aspx.cs" Inherits="books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            float: left;
            height: 381px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     

    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/book/book.jpg" Height="375px" Width="750px">
       <p class="auto-style9" style="padding: 2px; font-size: x-large; font-weight: bold; font-style: italic;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; The book and film relationship is actually like parts of an indivisible whole. If it&#39;s a book you like very much, you&#39;ll definitely want to watch the movie when it comes out. Or, on the contrary, if you watched his movie first, you would read his book as if with the urge to check the accuracy of the script. As someone who is good with books, I have to say that no matter how beautiful and successful his film is, he cannot give as much detail as his book. Surely there are missing details. So my humble advice; I say first book, then movie.</p></asp:Panel>
     
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web1ConnectionString %>" SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="book" DataValueField="id">
    </asp:DropDownList>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="316px" Width="1161px">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            book:
            <asp:TextBox ID="bookTextBox" runat="server" Text='<%# Bind("book") %>' />
            <br />
            author:
            <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
            <br />
            page:
            <asp:TextBox ID="pageTextBox" runat="server" Text='<%# Bind("page") %>' />
            <br />
            genres:
            <asp:TextBox ID="genresTextBox" runat="server" Text='<%# Bind("genres") %>' />
            <br />
            publishdate:
            <asp:TextBox ID="publishdateTextBox" runat="server" Text='<%# Bind("publishdate") %>' />
            <br />
            summary:
            <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
            <br />
            uzanti:
            <asp:TextBox ID="uzantiTextBox" runat="server" Text='<%# Bind("uzanti") %>' />
            <br />
             <div class="movies2">
                <img src="books/<%#Eval("poster") %>" width="390" height="318" />
                <br />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            book:
            <asp:TextBox ID="bookTextBox" runat="server" Text='<%# Bind("book") %>' />
            <br />
            author:
            <asp:TextBox ID="authorTextBox" runat="server" Text='<%# Bind("author") %>' />
            <br />
            page:
            <asp:TextBox ID="pageTextBox" runat="server" Text='<%# Bind("page") %>' />
            <br />
            genres:
            <asp:TextBox ID="genresTextBox" runat="server" Text='<%# Bind("genres") %>' />
            <br />
            publishdate:
            <asp:TextBox ID="publishdateTextBox" runat="server" Text='<%# Bind("publishdate") %>' />
            <br />
            summary:
            <asp:TextBox ID="summaryTextBox" runat="server" Text='<%# Bind("summary") %>' />
            <br />
            uzanti:
            <asp:TextBox ID="uzantiTextBox" runat="server" Text='<%# Bind("uzanti") %>' />
            <br />
             <div class="movies2">
                <img src="books/<%#Eval("poster") %>" width="390" height="318" />
                <br />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <br />
            <strong>&nbsp; Book Name: </strong><em>
            <asp:Label ID="bookLabel" runat="server" Text='<%# Bind("book") %>' />
            <br />
            </em>
            <br />
            <strong>&nbsp; Author:</strong> <em>
            <asp:Label ID="authorLabel" runat="server" Text='<%# Bind("author") %>' />
            <br />
            </em>
            <br />
            <strong>&nbsp; Pages:</strong> <em>
            <asp:Label ID="pageLabel" runat="server" Text='<%# Bind("page") %>' />
            <br />
            </em>
            <br />
            <strong>&nbsp; Genres:</strong> <em>
            <asp:Label ID="genresLabel" runat="server" Text='<%# Bind("genres") %>' />
            <br />
            </em>
            <br />
            <strong>&nbsp; First Publication Date:</strong> <em>
            <asp:Label ID="publishdateLabel" runat="server" Text='<%# Bind("publishdate") %>' />
            <br />
            </em>
            <br />
            <strong>&nbsp; Summary:</strong> <em>
            <asp:Label ID="summaryLabel" runat="server" Text='<%# Bind("summary") %>' />
            <br />
            </em>
            <br />
             <div class="movies2">
                 &nbsp;&nbsp;&nbsp;
                <img src="books/<%#Eval("poster") %>" width="390" height="318" />
                <br />
            
            <br />

        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Web1ConnectionString %>" SelectCommand="SELECT * FROM [books] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
 
    <br />
    <br />
    <br />
    <br />
    
    <br />
    <br />
    <br />
    <br />
    <br />
     
    
     

</asp:Content>

