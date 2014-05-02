<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            right: 10%;
            top: 20%;
            height: 172px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
<asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1000px; width: 165px;" ></asp:Label>
         
      <form runat="server">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                style="position:absolute; height:33px; width:77px; right:60px; top:54px;" 
                onclick="Button1_Click" />
         
    <br />
     <br />
     <br />
  <div class="container">
     <img class="img-responsive" style="height:480px" src="Content/images/banner_background.jpg" alt="Responsive image" />
     <div class="auto-style1" style="text-align:center">
              <!--  <p class="lead">Welcome to the SMVDU Online Judge!!!</p> -->
	            <h1 style="font-size:58px">The easiest way <br/>to learn how to code</h1>
	            <a href="contest.aspx" class="btn btn-primary btn-lg sign-up hidden-xs">Participate</a>
            </div>
     </div>
     <div class="container" style="margin-top:50px;background-color:#eee;height:460px">
         <asp:Image runat="server" ID="pict1" 
             style="margin-left:30px;margin-top:30px;width:630px; height:400px;" 
             ImageUrl="~/Content/images/img_teacher_dashboard.jpg" />
                     <div style="position:absolute;margin-left:700px; margin-top:-360px">
                         <h1 style="font-size:48px">For Students</h1>
	                <ul>
	                	<li style="font-size:18px"><strong>No special software needed</strong></li>
	                	<li style="font-size:18px">Deep library of engaging content</li>
						<li style="font-size:18px"><strong>Students Dashboard to solve the problems</strong></li>
						<li style="font-size:18px">Leaderboard + student performance</li>
	                </ul>
	                <button type="button" class="btn btn-success" style="margin-left:38px;margin-top:13px">Sign Up</button>
                    </div>
     </div>

      <div class="container" style="margin-top:50px;height:200px">
        <div class="row contents">
	        <div class="container">
	            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
	                <h1 style="font-size:68px">Start Coding Today</h1>
                    <a href="contest.aspx" class="btn btn-large btn-success">View Contests</a>
	            </div>
	        </div>    
	    </div>
     </div>

            <asp:Label runat="server" ID="Label1" Text="All copyrights reserved." 
                style="position:absolute; top: 1350px; left: 100px;" />
           <asp:LinkButton runat="server" ID="LinkButton1" Text="Home" 
                style="position:absolute; top: 1350px; left: 850px;" 
                PostBackUrl="~/Default.aspx" ></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton2" Text="Leaderboard" style="position:absolute; top: 1350px; left: 910px;" ></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton3" Text="Contests" style="position:absolute; top: 1350px; left: 1010px;" PostBackUrl="~/contest.aspx"></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton4" Text="Problems" style="position:absolute; top: 1350px; left: 1080px;" ></asp:LinkButton>
           <asp:LinkButton runat="server" ID="LinkButton5" Text="Contact" 
               style="position:absolute; top: 1350px; left: 1150px;" ></asp:LinkButton>
      </form>
                     
         <div class="container" style="height:80px"></div>
       
  


</asp:Content>

