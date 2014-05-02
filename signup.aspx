<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="auth_signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .newStyle1
        {
        }
        .auto-style1 {
            position: absolute;
            top: 236px;
            left: 807px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 508px;
            left: 979px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 382px;
            left: 904px;
            z-index: 1;
            width: 81px;
        }
        .auto-style4 {
            position: absolute;
            top: 300px;
            left: 808px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 361px;
            left: 787px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 416px;
            left: 804px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 493px;
            left: 770px;
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
	            <h1 style="font-size:24px; color:#fff">Sign Up to start learning today!</h1>
	            
            </div>  
            <div class="container" style="margin-top:0px;background-color:#555;height:50px;width:310px;margin-right:0px">
                <div class="text-box" style="position:absolute;right:13%;margin-top:-8px;text-align:center">
	            <h1 style="font-size:15px; color:#fff">Already have an account?<br />
                     <a href="signin.aspx">Sign In</a>
                </h1>
	            
            </div>  
                
            </div>

    </div>
    <div class="container" style="margin-top:50px;background-color:#eee;height:350px;width:300px;margin-left:140px">
    <asp:Label ID="Label2" runat="server" 
            style="position:absolute; top: 185px; left: 337px; width: 122px;" 
            Text="Sign Up With:" Font-Bold="True" Font-Size="Large"></asp:Label>
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-large btn-block" style="margin-left:10px; margin-top:60px;" runat="server" Text="Sign Up with Facebook" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style5" ErrorMessage="required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style4" ErrorMessage="required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style3" ErrorMessage="invalid mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style2" ErrorMessage="NOT MATCHED"></asp:CompareValidator>
        <br />
                <asp:Button ID="Button2" CssClass="btn btn-danger btn-large btn-block" PostBackUrl="#" style="margin-left:10px; margin-top:15px;" runat="server" Text="Sign Up with Gmail" />   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style7" ErrorMessage="required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="required"></asp:RequiredFieldValidator>
        <br />
                <asp:Button ID="Button3" CssClass="btn btn-info btn-large btn-block" PostBackUrl="#" style="margin-left:10px;margin-top:15px;" runat="server" Text="Sign Up with Github" />
    </div>
            <asp:Label runat="server" ID="Label1" 
            style="position:absolute; top: 380px; left: 620px; height: 31px; width: 40px;" 
            Text="OR" Font-Bold="True" Font-Size="X-Large"></asp:Label>

           <!-- <div class="container" style="top:50px;background-color:#eee;height:350px;width:300px;margin-right:140px"> -->
    <asp:Label ID="Label3" runat="server" 
            style="position:absolute; top: 185px; right: 313px; width: 167px;" 
            Text="Sign Up With Email" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style1" ErrorMessage="required"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox1" runat="server" 
                    style="position:absolute; top: 235px; left: 901px; width: 203px; height: 30px;"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" runat="server" 
                    style="position:absolute; top: 294px; left: 901px; height: 30px;" 
                    width="203px"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox3" runat="server" 
                    style="position:absolute; top: 353px; left: 901px;" width="203px" 
                    height="30px"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox4" runat="server" 
                    style="position:absolute; top: 413px; left: 901px;" width="203px" 
                    height="30px" TextMode="Password"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox5" runat="server" 
                    style="position:absolute; top: 473px; left: 901px;" width="203px" 
                    height="30px" TextMode="Password"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" 
                    style="position:absolute; top: 235px; left: 724px; width: 95px; height: 30px;" 
                    Text="Full Name" Font-Bold="True" Font-Size="Medium"></asp:Label><br />
            <asp:Label ID="Label5" runat="server" 
                    style="position:absolute; top: 294px; left: 724px;" Text="User Name" 
                    Font-Bold="True" Font-Size="Medium" height="30px" width="95px"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" 
                    style="position:absolute; top: 353px; left: 724px;" Text="Email" 
                    Font-Bold="True" Font-Size="Medium" height="30px" width="95px"></asp:Label><br />
            <asp:Label ID="Label7" runat="server" 
                    
        style="position:absolute; top: 473px; left: 721px; width: 141px;" Text="Retype Password" 
                    Font-Bold="True" Font-Size="Medium" height="30px"></asp:Label><br />
            <asp:Label ID="Label8" runat="server" 
                    style="position:absolute; top: 413px; left: 724px;" Text="Password" 
                    Font-Bold="True" Font-Size="Medium" height="30px" width="95px"></asp:Label>
                                    
   <!-- </div> -->
   <asp:Button ID="Button4" CssClass="btn btn-success" runat="server" Text="Sign Up" 
        
        
        style="position:absolute; top: 542px; left: 836px; width: 155px; height: 46px;" 
        Font-Size="Large" onclick="Button4_Click" />
     </div>

     <br />
        <asp:Label runat="server" ID="Label9" Text="All copyrights reserved." 
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

