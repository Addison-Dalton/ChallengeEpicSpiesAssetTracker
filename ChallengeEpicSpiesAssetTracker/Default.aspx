<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeEpicSpiesAssetTracker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="epicSpiesLogo" Height="150px" ImageUrl="~/Images/epic-spies-logo.jpg" runat="server" />
            <br />
            <h2>Asset Performance Tracker</h2>
        </div>
        <div>
            <asp:Label ID="assetNameLabel" AssociatedControlID="assetNameTextBox" Text="Asset Name:" runat="server"></asp:Label>
            <asp:TextBox ID="assetNameTextBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="electionsRiggedLabel" AssociatedControlID="electionsRiggedTextBox" Text="Elections Rigged:" runat="server"></asp:Label>
            <asp:TextBox ID="electionsRiggedTextBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label ID="subterfugeLabel" AssociatedControlID="subterfugeTextBox" Text="Acts of Subterfuge Performed:" runat="server"></asp:Label>
            <asp:TextBox ID="subterfugeTextBox" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="addAssetBtn" Text="Add Asset" runat="server" OnClick="AddAssetBtn_Click" />
        </div>
        <br />
        <div>
            <asp:Label ID="performanceSummaryLabel" Text="" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
