<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvFriends" runat="server" DataSourceID="obsFriends" AllowSorting="true"
            AutoGenerateColumns="false" OnRowCreated="gvFriends_RowCreated">
            <Columns>
                <asp:BoundField DataField="firstname" HeaderText="Firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="Lastname" SortExpression="lastname" />
                <asp:BoundField DataField="created" HeaderText="Created" SortExpression="created"
                    DataFormatString="{0:d}" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="obsFriends" runat="server" SelectMethod="sortFriends" TypeName="friends"
            SortParameterName="sort"></asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
