Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace TokenBox

    Public Partial Class [Default]
        Inherits Page

        Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
            Dim readOnlyTokens As String() = New String() {"Naomi Moreno", "Logan Hernandez", "Heidi Lopez"}
            TokenBox.JSProperties("cpReadOnlyTokens") = readOnlyTokens
        End Sub
    End Class
End Namespace
