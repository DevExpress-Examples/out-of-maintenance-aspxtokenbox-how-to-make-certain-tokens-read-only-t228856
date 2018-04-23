<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TokenBox.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript">
        var initialTokens;

        function OnTokensChanged(s, e) {
            var newTokens = s.GetTokenCollection();
            var readOnlyTokens = tokenBox.cpReadOnlyTokens;

            for (var i = 0; i < newTokens.length; i++) {
                if ($.inArray(newTokens[i], initialTokens) == -1 && $.inArray(newTokens[i], readOnlyTokens) != -1) {
                    s.RemoveToken(i);
                    break;
                }
            }
        }

        function OnInit(s, e) {
            initialTokens = s.GetTokenCollection();
            var readOnlyTokens = tokenBox.cpReadOnlyTokens;

            for (var i = 0; i < readOnlyTokens.length; i++) {
                var index = s.GetTokenIndexByText(readOnlyTokens[i]);
                if (index != -1) {
                    var tokenElement = $(s.GetTokenHtmlElement(index));
                    var buttonElement = tokenElement.find(".RemoveButton");
                    buttonElement.css("display", "none");
                }
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxTokenBox ID="TokenBox" runat="server" ClientInstanceName="tokenBox" Width="100%"
                AllowCustomTokens="true" ShowDropDownOnFocus="Always" TextSeparator="," ValueSeparator="," Tokens="Naomi Moreno, Logan Hernandez">
                <Items>
                    <dx:ListEditItem Value="naomi.moreno@example.net" Text="Naomi Moreno" />
                    <dx:ListEditItem Value="logan.hernandez@example.net" Text="Logan Hernandez" />
                    <dx:ListEditItem Value="heidi.lopez@example.net" Text="Heidi Lopez" />
                    <dx:ListEditItem Value="rafael.raje@example.net" Text="Rafael Raje" />
                    <dx:ListEditItem Value="jessie.she@example.net" Text="Jessie She" />
                </Items>
                <TokenRemoveButtonStyle CssClass="RemoveButton" />
                <ClientSideEvents TokensChanged="OnTokensChanged" Init="OnInit" EndCallback="OnInit" />
            </dx:ASPxTokenBox>
        </div>
    </form>
</body>
</html>
