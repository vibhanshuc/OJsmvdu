<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contest.aspx.cs" Inherits="contest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1000px; width: 165px;" ></asp:Label>
         <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                
        style="position:absolute; height:33px; width:77px; right:60px; top:54px;" 
        onclick="Button1_Click" />
<div class="container" style="margin-top:100px;background-color:#eee;">
    <div class="col-12" style="margin-top:20px">
        <asp:Label ID="Label1" runat="server" 
            style="position:relative; margin:5px; padding:15px;" Font-Bold="True" 
            Font-Names="Trebuchet MS" Font-Size="XX-Large" CssClass="badge"  Width="100%">Future Contests</asp:Label>

        <div style="width:800px; margin:20px auto; ">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ContestID" DataMember="DefaultView" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ContestName" HeaderText="ContestName" SortExpression="ContestName" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                    <asp:HyperLinkField DataTextField="ContestName" NavigateUrl="~/Problems.aspx?ContestID={0}" DataNavigateUrlFields="ContestID" DataNavigateUrlFormatString="~/Problems.aspx?ContestID={0}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" SelectCommand="SELECT * FROM [Contests] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="F" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        
       

    </div>
    <div class="col-12 " >
                   <asp:Label ID="Label2" runat="server" 
            style="margin:5px; padding:15px;" Font-Bold="True" 
            Font-Names="Trebuchet MS" Font-Size="XX-Large" CssClass="auto-style4"  Width="100%">Running Contests</asp:Label>
        <table align="center" class="nav-justified">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div style="width:800px; margin:20px auto; ">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ContestID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="ContestName" HeaderText="ContestName" SortExpression="ContestName" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                    <asp:HyperLinkField DataNavigateUrlFields="ContestID" DataNavigateUrlFormatString="~/Problems.aspx?ContestID={0}" DataTextField="ContestName" NavigateUrl="~/Problems.aspx?ContestID={0}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" SelectCommand="SELECT * FROM [Contests] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="R" Name="Status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
                           </div>

    <div class="col-12">
           <asp:Label ID="Label3" runat="server" 
            style="position:relative; margin:5px; padding:15px;" Font-Bold="True" 
            Font-Names="Trebuchet MS" Font-Size="XX-Large" CssClass="badge"  Width="100%">Past Contests</asp:Label>
        <table align="center" class="nav-justified">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
     </div>
           
         <div style="width:800px; margin:20px auto; ">
             <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="ContestID" DataSourceID="SqlDataSource3">
                 <Columns>
                     <asp:BoundField DataField="ContestName" HeaderText="ContestName" SortExpression="ContestName" />
                     <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                     <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                     <asp:HyperLinkField DataNavigateUrlFields="ContestID" DataNavigateUrlFormatString="~/CodeLine.aspx?ContestID={0}" DataTextField="ContestName" NavigateUrl="~/CodeLine.aspx?ContestID={0}" SortExpression="EndDate" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" SelectCommand="SELECT * FROM [Contests] WHERE ([Status] = @Status)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="P" Name="Status" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
        </div>
</div>
        
        <asp:Label runat="server" ID="Label4" Text="All copyrights reserved." 
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

