<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Masterpage.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Inicio.Page.LOGIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Css/LoginStyle.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <form id="formLogin" runat="server">

            <div class="container_titulo">
                <h2 class="subtitle">
                    LOGING
                </h2>
            </div>
            <div class="container_campos">

                <label class="label">
                    Nombre de usuario:
                </label>
                <input id="txtUser" class="textbox" type="text" name="username" required="required" runat="server">

                <label class="label">
                    Contraseña:
                </label>
                <input id="txtPassword" class="textbox" type="password" name="password" required="required" runat="server">

                <button id="btnIniciar"  class="bottom" type="submit"  onclick="BtnIniciar" runat="server">
                    Iniciar sesión
                </button>

                <script src="../JavaScrip/JavaScript.js"></script>
            </div>
        </form>
    </div>
    
</asp:Content>
