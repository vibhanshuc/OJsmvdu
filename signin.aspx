<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 299px;
            left: 806px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 241px;
            left: 830px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <form id="form1" runat="server">
<br />
<br />
<div class="container" style="margin-top:50px;background-color:#eee;height:520px">
    <div class="container" style="margin-top:0px;background-color:#222;height:50px">
         <div class="text-box" style="position:absolute;left:25%;margin-top:-6px;text-align:center">
	            <h1 style="font-size:24px; color:#fff">Sign into your Online Judge account</h1>
	            
            </div>  
            <div class="container" style="margin-top:0px;background-color:#555;height:50px;width:310px;margin-right:0px">
                <div class="text-box" style="position:absolute;right:13%;margin-top:-8px;text-align:center">
	            <h1 style="font-size:15px; color:#fff">Don't have an account?<br />
                     <a href="signup.aspx">Sign Up</a>
                </h1>
	            
            </div>  
                
            </div>

    </div>
    <div class="container" style="margin-top:50px;background-color:#eee;height:350px;width:300px;margin-left:140px">
    <asp:Label ID="Label2" runat="server" 
            style="position:absolute; top: 185px; left: 337px; width: 122px;" 
            Text="Sign Up With:" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-large btn-block" style="margin-left:10px; margin-top:60px;" runat="server" Text="Sign Up with Facebook" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style2" ErrorMessage="required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style1" ErrorMessage="required"></asp:RequiredFieldValidator>
        <br />
                <asp:Button ID="Button2" CssClass="btn btn-danger btn-large btn-block" style="margin-left:10px; margin-top:15px;" runat="server" Text="Sign Up with Gmail" />   
        <br />
                <asp:Button ID="Button3" CssClass="btn btn-info btn-large btn-block" style="margin-left:10px;margin-top:15px;" runat="server" Text="Sign Up with Github" />
    </div>
            <asp:Label runat="server" ID="Label1" 
            style="position:absolute; top: 380px; left: 620px; height: 31px; width: 40px;" 
            Text="OR" Font-Bold="True" Font-Size="X-Large"></asp:Label>

           <!-- <div class="container" style="top:50px;background-color:#eee;height:350px;width:300px;margin-right:140px"> -->
    <asp:Label ID="Label3" runat="server" 
            style="position:absolute; top: 185px; right: 313px; width: 167px;" 
            Text="Sign In With Email" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 235px; left: 901px; width: 203px; height: 30px;"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 294px; left: 901px; height: 30px;" 
                    width="203px" TextMode="Password"></asp:TextBox><br />
                   

            <asp:Label ID="Label4" runat="server" 
                    style="position:absolute; top: 235px; left: 724px; width: 95px; height: 30px;" 
                    Text="User Name" Font-Bold="True" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" 
                    style="position:absolute; top: 294px; left: 724px;" Text="Password" 
                    Font-Bold="True" Font-Size="Medium" height="30px" width="95px"></asp:Label><br />
            
                                    
   <!-- </div>
   <asp:LinkButton ID="l3" runat="server" Text="Forgot Password?" 
        style="position:absolute; top: 348px; left: 901px;"></asp:LinkButton> -->
   <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" Text="Sign In"         
        style="position:absolute; top: 381px; left: 836px; width: 155px; height: 46px;" 
        Font-Size="Large" onclick="Button4_Click2" />
     </div>

     <br />
        <asp:Label runat="server" ID="Label6" Text="All copyrights reserved." 
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

