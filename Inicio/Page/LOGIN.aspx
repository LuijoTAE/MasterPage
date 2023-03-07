<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Inicio.Page.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../Css/LoginStyle.css" />
</head>
<body>
    <header class="header">

    </header>
    <main class="main">
        <div class="login">
            <form id="formLogin" runat="server">

                <div class="container_titulo">
                    <h2 class="subtitle">LOGING
                    </h2>
                </div>
                <div class="container_campos">
                    <asp:Label ID="Label1" CssClass="label" runat="server">
                    Nombre de usuario:</asp:Label>
                    <asp:TextBox ID="txtNameUser" CssClass="textbox" runat="server"></asp:TextBox>

                    <asp:Label ID="Label2" CssClass="label" runat="server">
                    Contraseña:</asp:Label>
                    <asp:TextBox ID="txtPasword" CssClass="textbox" TextMode="Password" runat="server"></asp:TextBox>

                    <asp:Button ID="btnIniciarSesion" CssClass="bottom" runat="server"
                        Text="Iniciar sesión" OnClick="btnIniciarSesion_Click" />
                </div>
            </form>
        </div>
    </main>
    <footer class="footer">

    </footer>
</body>
</html>
