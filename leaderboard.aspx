<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="leaderboard.aspx.cs" Inherits="leaderboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 223px;
            height: 139px;
            position: absolute;
            top: 203px;
            left: 361px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1000px; width: 165px;" ></asp:Label>
         <form id="form1" runat="server">
         <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                
        style="position:absolute; height:33px; width:77px; right:60px; top:54px;" 
        onclick="Button1_Click" />
             <br />
             <br />
             <br /> 
             &nbsp;
             <h2>Leader Board</h2>
             <br />
             <br />
              <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="223px" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="user_name" HeaderText="User" SortExpression="user_name" />
            <asp:BoundField DataField="prob_solved" HeaderText="Score" SortExpression="prob_solved" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString2 %>" SelectCommand="SELECT * FROM [leaderboard] ORDER BY [prob_solved]"></asp:SqlDataSource>

             <asp:Label runat="server" ID="Label2" Text="All copyrights reserved." 
                style="position:absolute; bottom: 10px; left: 100px;" />
           <asp:LinkButton runat="server" ID="LinkButton1" Text="Home" 
                style="position:absolute; bottom: 10px; left: 850px;" 
                PostBackUrl="~/Default.aspx"></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton2" Text="Leaderboard" style="position:absolute; bottom: 10px; left: 910px;" PostBackUrl="~/leaderboard.aspx" ></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton3" Text="Contests" style="position:absolute; bottom: 10px; left: 1010px;" PostBackUrl="~/contest.aspx"></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton4" Text="Problems" style="position:absolute; bottom: 10px; left: 1080px;" PostBackUrl="~/algorithm.aspx"></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton5" Text="Contact"  
               style="position:absolute; bottom: 10px; left: 1150px;" 
            PostBackUrl="~/contact.aspx" ></asp:LinkButton>
        </form>
</asp:Content>

