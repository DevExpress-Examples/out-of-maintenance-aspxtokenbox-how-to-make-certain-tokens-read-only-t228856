Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace TokenBox
    Partial Public Class [Default]
        Inherits System.Web.UI.Page

        Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
            Dim readOnlyTokens() As String = { "Naomi Moreno", "Logan Hernandez", "Heidi Lopez" }
            TokenBox.JSProperties("cpReadOnlyTokens") = readOnlyTokens
        End Sub
    End Class
End Namespace