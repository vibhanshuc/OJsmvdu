<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="about_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 202px;
            height: 201px;
        }
        .style2
        {
            width: 230px;
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="form1" runat="server">
<asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1000px; width: 165px;" ></asp:Label>
         
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                
    style="position:absolute; height:33px; width:77px; right:60px; top:54px;" 
    onclick="Button1_Click" />
    
           <asp:Label ID="Label1" 
                runat="server" 
                style="z-index: 1; left: 704px; top: 376px; position: absolute; width: 518px; color: #808080; font-size: x-large" 
                Text="We're not one of those companies. We are rethinking education from the bottom up. The web has rethought nearly everything - commerce, social networking, healthcare, and more. We are building the education the world needs - the first truly net native education. We take more cues from Facebook and Zynga in creating an engaging educational experience than we do from the classroom."></asp:Label>
            <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 860px; top: 303px; position: absolute; font-size: xx-large; width: 222px" 
                Text="Our Mission"></asp:Label>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 151px; top: 376px; position: absolute; width: 518px; color: #808080; font-size: x-large" 
                Text="Online Judge is an education company. But not one in the way you might think. We're committed to building the best learning experience inside and out, making Codecademy the best place for our team to learn, teach, and create the online learning experience of the future." 
                height="306px"></asp:Label>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 308px; top: 303px; position: absolute; font-size: xx-large" 
                Text="About" height="45px" width="222px"></asp:Label>
            
            <asp:Label ID="ourteam" runat="server" Text="Our Team" 
               style="position:absolute; top: 709px; left: 580px; width: 200px;" 
               Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            <asp:Label 
                ID="Label8" runat="server" 
                style="z-index: 1; left: 172px; top: 975px; position: absolute; font-size: x-large" 
                Text="Ritesh" height="34px" width="115px"></asp:Label>
            <asp:Label ID="Label9" runat="server" 
                style="z-index: 1; left: 616px; top: 975px; position: absolute; font-size: x-large" 
                Text="Vibhanshu"></asp:Label>
                <img alt="" class="style1" src="fucker3.jpg" style="position:absolute;left:122px; margin-top:764px; margin-right:200px;" />
            <asp:Label ID="Label10" runat="server" 
                style="z-index: 1; left: 1117px; top: 975px; position: absolute; height: 34px; width: 115px; font-size: x-large" 
                Text="Ravi"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 308px; top: 88px; position: absolute; height: 83px; font-size: 48pt; font-weight: 700; font-style: italic; width: 728px" 
                Text="Come help us build the "></asp:Label>
            <img alt="" class="style1" src="fucker1.jpg" style="position:absolute;right:375px; margin-top:764px; margin-right:200px;" /><asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 236px; top: 183px; position: absolute; font-size: 48pt; font-weight: 700; font-style: italic; width: 951px" 
                Text="education the world deserves"></asp:Label>
                &nbsp;<img alt="" class="style2" src="fucker2.jpg" style="position:absolute;right:-100px; height:200px; margin-top:765px; margin-right:200px;" />


    </form>
</asp:Content>

