<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="basicproblem2.aspx.cs" Inherits="basicproblem2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main">
  <asp:Label ID="Label1" runat="server" Text="BASIC PROBLEM-2" 
        style="position:absolute; left: 20px; top: -5px" Font-Bold="True" 
        Font-Names="Segoe UI Semibold" Font-Size="XX-Large" ForeColor="#5CB85C" 
        Height="50px" Width="400px"></asp:Label>
   <img src="Content/images/img_teacher_dashboard.jpg" style="top: 60px; width:882px;height:200px; position:absolute;" />
   <div style="position:absolute; top: 300px;">
     <p>There are number of the things in the Algorithms that we can learn.</p>
    <p>If we look at the topics covered, we can divide the it into various sections:</p>
    <p>1) Divide and Conquer</p>
    <p>2) Greedy algorithms</p>
    <p>3) Dynamic Programmings</p>
    <p>4) Sorting strategies</p>
       </div>
</div>
</asp:Content>

