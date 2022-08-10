<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
.myDiv 
{
  border: 5px outset red;
  background-color: peachpuff;
  text-align: center;
}
.myDiv2 
{
  border: 5px outset green;
  background-color: yellow;
  text-align: center;
}
</style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="myDiv">
            <p style="text-align:center;">
                Welcome to the Home Page of NasCon-The Biggest Event of NUCES FAST
            </p>
        </div>

        <div class="myDiv2">
            <p style="text-align:center;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Admin</asp:LinkButton>
            </p>

            <p style="text-align:center;">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Faculty Mentor</asp:LinkButton>
            </p>

            <p style="text-align: center">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Participant</asp:LinkButton>
            </p>

            <p style="text-align: center">
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Sponsors</asp:LinkButton>
            </p>

            <p style="text-align: center">
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Student Executive</asp:LinkButton>
            </p>

            <p style="text-align: center">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Click here to go to the Registration Page of NasCon</asp:LinkButton>
            </p>
        </div>

     </form>
</body>
</html>
