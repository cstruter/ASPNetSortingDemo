<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView runat="server" ID="lvFriends" ItemPlaceholderID="divFriends" DataSourceID="obsFriends"
            OnSorting="lvFriends_Sorting">
            <LayoutTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Firstname" CommandArgument="firstname"
                                CommandName="Sort"></asp:LinkButton>
                            <asp:Image ID="imgFirstName" runat="server" ImageUrl="~/images/asc.gif" Visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" Text="Lastname" CommandArgument="lastname"
                                CommandName="Sort"></asp:LinkButton>
                            <asp:Image ID="imgLastName" runat="server" ImageUrl="~/images/asc.gif" Visible="false" />
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" Text="Created" CommandArgument="created"
                                CommandName="Sort"></asp:LinkButton>
                            <asp:Image ID="imgCreated" runat="server" ImageUrl="~/images/asc.gif" Visible="false" />
                        </td>
                    </tr>
                    <asp:PlaceHolder ID="divFriends" runat="server"></asp:PlaceHolder>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("firstname") %>
                    </td>
                    <td>
                        <%# Eval("lastname") %>
                    </td>
                    <td>
                        <%# Eval("created") %>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="obsFriends" runat="server" SelectMethod="sortFriends" TypeName="friends"
            SortParameterName="sort"></asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
