<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CodeLine.aspx.cs" Inherits="CodeLine" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 546px;
            left: 157px;
            z-index: 1;
            width: 155px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label_session" runat="server" 
         style="position:absolute; top: 54px; left: 1000px; width: 165px;" ></asp:Label>
         
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-info" 
                Text="Sign Out"  
                
    style="position:absolute; height:33px; width:77px; right:60px; top:54px;" OnClick="Button3_Click" />
    
Select Your Language:
        <asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="true" Width="250px" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged">
            <asp:ListItem Value="7">Ada (gnat-4.3.2)</asp:ListItem>
            <asp:ListItem Value="13">Assembler (nasm-2.07)</asp:ListItem>
            <asp:ListItem Value="45">Assembler (gcc-4.3.4)</asp:ListItem>
            <asp:ListItem Value="104">AWK (gawk) (gawk-3.1.6)</asp:ListItem>
            <asp:ListItem Value="105">AWK (mawk) (mawk-1.3.3)</asp:ListItem>
            <asp:ListItem Value="28">Bash (bash 4.0.35)</asp:ListItem>
            <asp:ListItem Value="110">bc (bc-1.06.95)</asp:ListItem>
            <asp:ListItem Value="12">Brainf**k (bff-1.0.3.1)</asp:ListItem>
            <asp:ListItem Value="11">C (gcc-4.3.4)</asp:ListItem>
            <asp:ListItem Value="27" Selected="True">C# (mono-2.8)</asp:ListItem>
            <asp:ListItem Value="1">C++ (gcc-4.3.4)</asp:ListItem>
            <asp:ListItem Value="44">C++0x (gcc-4.5.1)</asp:ListItem>
            <asp:ListItem Value="34">C99 strict (gcc-4.3.4)</asp:ListItem>
            <asp:ListItem Value="14">CLIPS (clips 6.24)</asp:ListItem>
            <asp:ListItem Value="111">Clojure (clojure 1.1.0)</asp:ListItem>
            <asp:ListItem Value="118">COBOL (open-cobol-1.0)</asp:ListItem>
            <asp:ListItem Value="106">COBOL 85 (tinycobol-0.65.9)</asp:ListItem>
            <asp:ListItem Value="32">Common Lisp (clisp) (clisp 2.47)</asp:ListItem>
            <asp:ListItem Value="102">D (dmd) (dmd-2.042)</asp:ListItem>
            <asp:ListItem Value="36">Erlang (erl-5.7.3)</asp:ListItem>
            <asp:ListItem Value="124">F# (fsharp-2.0.0)</asp:ListItem>
            <asp:ListItem Value="123">Factor (factor-0.93)</asp:ListItem>
            <asp:ListItem Value="125">Falcon (falcon-0.9.6.6)</asp:ListItem>
            <asp:ListItem Value="107">Forth (gforth-0.7.0)</asp:ListItem>
            <asp:ListItem Value="5">Fortran (gfortran-4.3.4)</asp:ListItem>
            <asp:ListItem Value="114">Go (gc-2010-07-14)</asp:ListItem>
            <asp:ListItem Value="121">Groovy (groovy-1.7)</asp:ListItem>
            <asp:ListItem Value="21">Haskell (ghc-6.8.2)</asp:ListItem>
            <asp:ListItem Value="16">Icon (iconc 9.4.3)</asp:ListItem>
            <asp:ListItem Value="9">Intercal (c-intercal 28.0-r1)</asp:ListItem>
            <asp:ListItem Value="10">Java (sun-jdk-1.6.0.17)</asp:ListItem>
            <asp:ListItem Value="35">JavaScript (rhino) (rhino-1.6.5)</asp:ListItem>
            <asp:ListItem Value="112">JavaScript (spidermonkey) (spidermonkey-1.7)</asp:ListItem>


            <asp:ListItem Value="26">Lua (luac 5.1.4)</asp:ListItem>
            <asp:ListItem Value="30">Nemerle (ncc 0.9.3)</asp:ListItem>
            <asp:ListItem Value="25">Nice (nicec 0.9.6)</asp:ListItem>
            <asp:ListItem Value="122">Nimrod (nimrod-0.8.8)</asp:ListItem>
            <asp:ListItem Value="43">Objective-C (gcc-4.5.1)</asp:ListItem>
            <asp:ListItem Value="8">Ocaml (ocamlopt 3.10.2)</asp:ListItem>
            <asp:ListItem Value="119">Oz (mozart-1.4.0)</asp:ListItem>
            <asp:ListItem Value="22">Pascal (fpc) (fpc 2.2.0)</asp:ListItem>
            <asp:ListItem Value="2">Pascal (gpc) (gpc 20070904)</asp:ListItem>
            <asp:ListItem Value="3">Perl (perl 5.12.1)</asp:ListItem>
            <asp:ListItem Value="54">Perl 6 (rakudo-2010.08)</asp:ListItem>
            <asp:ListItem Value="29">PHP (php 5.2.11)</asp:ListItem>
            <asp:ListItem Value="19">Pike (pike 7.6.86)</asp:ListItem>
            <asp:ListItem Value="108">Prolog (gnu) (gprolog-1.3.1)</asp:ListItem>
            <asp:ListItem Value="15">Prolog (swi) (swipl 5.6.64)</asp:ListItem>
            <asp:ListItem Value="4">Python (python 2.6.4)</asp:ListItem>
            <asp:ListItem Value="116">Python 3 (python-3.1.2)</asp:ListItem>
            <asp:ListItem Value="117">R (R-2.11.1)</asp:ListItem>
            <asp:ListItem Value="17">Ruby (ruby-1.9.2)</asp:ListItem>
            <asp:ListItem Value="39">Scala (scala-2.8.0.final)</asp:ListItem>
            <asp:ListItem Value="33">Scheme (guile) (guile 1.8.5)</asp:ListItem>
            <asp:ListItem Value="23">Smalltalk (gst 3.1)</asp:ListItem>
            <asp:ListItem Value="40">SQL (sqlite3-3.7.3)</asp:ListItem>
            <asp:ListItem Value="38">Tcl (tclsh 8.5.7)</asp:ListItem>
            <asp:ListItem Value="62">Text (text 6.10)</asp:ListItem>
            <asp:ListItem Value="115">Unlambda (unlambda-2.0.0)</asp:ListItem>
            <asp:ListItem Value="101">Visual Basic .NET (mono-2.4.2.3)</asp:ListItem>
            <asp:ListItem Value="6">Whitespace (wspace 0.3)</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        Enter your code:
        <br />
        <br />
        <asp:TextBox ID="TextBox1" BorderColor="Black" runat="server" Height="253px" style="border:solid 1px" TextMode="MultiLine" Width="468px">using System;
             
  class Program
  {
      public static void Main(String[] args)
      {
        System.Console.WriteLine(&quot;Hello&quot;);
      }
  }
        </asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit Code" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Show Result" Visible="False" />
        <br /><br />Code Output : <br />
        <asp:Label ID="Label1" Visible="false" runat="server" Text=""></asp:Label>
        <div style="background-color:#f3f0f0;font-size:13px">
            <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style1"></asp:Label>
        </div>
        <div style="background-color:#f3f0f0;font-size:13px">
            <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
        </div>
        <!-- Create a simple CodeMirror instance -->
        <link rel="stylesheet" href="lib/codemirror.css">
        <script src="lib/codemirror.js"></script>
        <script src="mode/clike/clike.js"></script>
        <script>
            var myTextArea = '<%=TextBox1.ClientID%>';
            var editor = CodeMirror.fromTextArea(document.getElementById(myTextArea), {
                //mode: { name: "xml", htmlMode: true },
                value: myTextArea.value,
                mode: { name: "text/x-csrc", htmlMode: true },
                lineNumbers: true,
                tabMode: "indent",
                matchBrackets: true,
                path: 'js/',
                searchMode: 'inline',
                onCursorActivity: function () {
                    editor.setLineClass(hlLine, null);
                    hlLine = editor.setLineClass(editor.getCursor().line, "activeline");
                },

            });
        </script>
        <asp:Label runat="server" ID="Label2" Text="All copyrights reserved." 
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

