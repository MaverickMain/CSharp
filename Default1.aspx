<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void okButton_Click(object sender, EventArgs e)
    {
        string firstName = firstNameTextBox.Text;
        string lastName = lastNameTextBox.Text;

        string result = "Hello " + firstName + " " + lastName;

        resultLabel.Text = result;
    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
        What is your first name?&nbsp;
        <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        What is your last name?&nbsp;
        <asp:TextBox ID="lastNameTextBox" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="okButton" runat="server" Text="Click Me" OnClick="okButton_Click" />
        <br />
        <br />
        <asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
