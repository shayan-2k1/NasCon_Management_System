<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Individual_R.aspx.cs" Inherits="Individual_R" %>

<!DOCTYPE html>

<style>
.myDiv
{
  border: 5px outset red;
  background-color: lightgoldenrodyellow;
  text-align: center;
}

.myDiv2 
{
  border: 5px outset groove;
  background-color: lightgray;
  text-align: center;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="myDiv">
            <p>
                <b>Event Name:</b><br /><asp:TextBox ID="TextBox1" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Institute Name:</b><br /><asp:TextBox ID="TextBox2" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Ambassador ID:</b><br /><asp:TextBox ID="TextBox3" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Participant Name:</b><br /><asp:TextBox ID="TextBox4" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Participant Email:</b><br /><asp:TextBox ID="TextBox5" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Participant CNIC:</b><br /><asp:TextBox ID="TextBox6" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
            <p>
                <b>Participant No.:</b><br /><asp:TextBox ID="TextBox7" runat="server" Width="173px" style="margin-left: 25px"></asp:TextBox>
            </p>
        </div>
        <div class="myDiv2">
            <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#00CC00" OnClick="Button1_Click" Width="254px" />
        </div>
    </form>
</body>
</html>
