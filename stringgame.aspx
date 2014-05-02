<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="stringgame.aspx.cs" Inherits="stringgame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
    <asp:Label ID="Label1" runat="server" Text="STRING GAME" 
        style="position:absolute; left: 20px; top: -5px" Font-Bold="True" 
        Font-Names="Segoe UI Semibold" Font-Size="XX-Large" ForeColor="#5CB85C" 
        Height="50px" Width="250px"></asp:Label>
    <img src="Content/images/img_teacher_dashboard.jpg" style="top: 60px; width:882px;height:200px; position:absolute;" />
   <div style="position:absolute; top: 300px;">
     <p>String is anoither place to learn the algorithms .</p>
    <p>Here we learn on the topics chars, and strings data types.</p>
    <p>1) We can do sortings on 2-d or 1-d arrays</p>
    <p>2) Kruskal's , Dijkstra's algorithms are examples of some.</p>
    <p>3) Mergesort can be a stable sort.</p>
    <p>4) Sorting strategies</p>
       </div>
</div>
</asp:Content>

