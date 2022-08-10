<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration_Form.aspx.cs" Inherits="Registration_Form" %>

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
                Welcome to the Registration Page!
            </p>
        </div>

        <div class="myDiv2">
            <p style="text-align:center;">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register as Individual</asp:LinkButton>
            </p>

            <p style="text-align:center;">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Register as Team</asp:LinkButton>
            </p>
        </div>
    </form>
</body>
</html>
