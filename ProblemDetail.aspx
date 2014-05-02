<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProblemDetail.aspx.cs" Inherits="ProblemDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="450px" TextMode="MultiLine" Width="1170px" ReadOnly="True"></asp:TextBox>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server"  Target="_top">Click To Submit</asp:HyperLink>
    </form>
</asp:Content>

