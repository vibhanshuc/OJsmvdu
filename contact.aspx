<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1073px; width: 165px;" ></asp:Label>

         <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                
        style="position:absolute; height:33px; width:77px; right:60px; top:54px;" 
        onclick="Button1_Click" />
         
     
 <div class="container" style="margin-top:105px;background-color:#eee;height:510px">
    <div>
    
    </div>
        <p>
           
        <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 466px; top: 98px; position: absolute; text-align: center; text-decoration: blink; font-size: 36pt; font-weight: 700; font-style: italic; width: 292px" 
        Text="Say hello."></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server" 
                style="z-index: 1; left: 395px; top: 363px; position: absolute; height: 34px; " 
                Text="Message" CssClass="auto-style2" width="84px" Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label4" runat="server" 
                style="z-index: 1; left: 395px; top: 266px; position: absolute; font-weight: 400; font-style: normal" 
                Text="E-Mail" CssClass="auto-style2" height="34px" width="84px" 
                Font-Size="Medium"></asp:Label>
            <asp:Label ID="Label5" runat="server" 
                style="z-index: 1; left: 714px; top: 223px; position: absolute" 
                Text="Last Name"></asp:Label>
            <asp:Label ID="Label6" runat="server" 
                style="z-index: 1; left: 545px; top: 223px; position: absolute; right: 514px" 
                Text="First Name"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
        <asp:Label ID="Label2" runat="server" 
                style="z-index: 1; left: 395px; top: 193px; position: absolute; font-size: x-large; width: 84px;" 
                Text="Name"  Font-Size="Medium"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red" 
        
        style="z-index: 1; left: 539px; top: 183px; position: absolute; width: 97px;">*</asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox1" runat="server" 
        
        
         style="z-index: 1; left: 532px; top: 193px; position: absolute; height: 25px; width: 131px"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" 
                
                
                style="z-index: 1; left: 694px; top: 193px; position: absolute; height: 26px; width: 154px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red" 
                
                
                style="z-index: 1; left: 764px; top: 273px; position: absolute; width: 190px;">*</asp:RequiredFieldValidator>
        </p>
        <asp:TextBox ID="TextBox3" runat="server" 
        
        
        
         style="z-index: 1; left: 532px; top: 264px; position: absolute; width: 229px; height: 28px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
        runat="server" ControlToValidate="TextBox3" ErrorMessage="Wrong Syntax" 
        ForeColor="Red" 
        style="z-index: 1; left: 527px; top: 266px; position: absolute; width: 162px;" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:TextBox ID="TextBox4" runat="server" 
        style="z-index: 1; left: 532px; top: 321px; position: absolute; height: 165px; width: 264px" 
        TextMode="MultiLine"></asp:TextBox>
        <asp:Button ID="Button11" runat="server" CssClass="btn btn-success"  
        style="z-index: 1; left: 559px; top: 519px; position: absolute; width: 107px; height: 40px; color: #FFFFFF" 
        Text="Submit" OnClick="Button11_Click" />
        </div>

         <asp:Label runat="server" ID="Label7" Text="All copyrights reserved." 
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

