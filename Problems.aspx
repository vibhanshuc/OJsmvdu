<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Problems.aspx.cs" Inherits="Problems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">

       <br />
    <br />
    <br />
    <br />
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">
                
                <asp:DetailsView ID="DetailsView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="245px">
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                </asp:DetailsView>
                
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" SelectCommand="SELECT [ContestName] FROM [Contests] WHERE ([ContestID] = @ContestID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ContestID" QueryStringField="ContestID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style9" DataKeyNames="ProblemID,ContestID" DataSourceID="SqlDataSource1" Width="523px">
                    <Columns>
                        <asp:BoundField DataField="ProblemID" HeaderText="ProblemID" ReadOnly="True" SortExpression="ProblemID" />
                        <asp:HyperLinkField DataNavigateUrlFields="ContestID,ProblemID" DataNavigateUrlFormatString="~/ProblemDetail.aspx?ContestID={0}&amp;ProblemID={1}" DataTextField="ProblemTitle" HeaderText="Problem" NavigateUrl="~/ProblemDetail.aspx?ContestID={0}&amp;ProblemID={1}" SortExpression="ProblemTitle" />
                        <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
                        <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                        <asp:BoundField DataField="TotalSubmissions" HeaderText="TotalSubmissions" SortExpression="TotalSubmissions" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" SelectCommand="SELECT Problems.ProblemID, Problems.ProblemTitle, Problems.TotalSubmissions, Contests.ContestName, Contests.ContestID, Contests.StartDate, Contests.EndDate FROM Problems INNER JOIN Contests ON Problems.ContestID = Contests.ContestID WHERE (Problems.ContestID = @ContestID)">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="1" Name="ContestID" QueryStringField="ContestID" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </form> 
</asp:Content>

