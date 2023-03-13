<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="Inicio.Page.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../Css/LoginStyle.css" />
    <link rel="stylesheet" href="../Css/Mcss.css"/>
</head>
<body>

    <header>
        <!-- Navbar -->
        <nav class="nav_">
            
            <a href="https://oferta.senasofiaplus.edu.co/sofia-oferta/" target="_blank" class="link_ link_-S" >Sofia Plus</a>
            <a href="https://sena.territorio.la/index.php?login=true" target="_blank" class="link_ link_-T">Territorium</a>
            <a href="../Page/REGISTRO.aspx" class="link_ link_-R">Registrar ahora</a>
            <a href="../Page/LOGIN.aspx" class="link_ link_-I">Iniciar Sesión</a>
        </nav>
        <!-- Navbar -->
    </header>
    
    <br />

    <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
                <div class="col-md-8 col-lg-7 col-xl-6">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg" class="img-fluid" alt="Phone image" />
                </div>
                <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                    <form runat="server">
                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <input id="inpEmail" type="email" class="form-control form-control-lg" style="box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3), 0 0 0 1px #2F4F4F; " runat="server"/>
                            <label class="form-label" for="form1Example13">Dirección de correo electrónico</label>
                        </div>

                        <!-- Password input -->
                        <div class="form-outline mb-4">
                            <input id="txtPassword" type="password" class="form-control form-control-lg" style="box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3), 0 0 0 1px #2F4F4F; " runat="server"/>
                            <label class="form-label" for="form1Example23">Contraseña</label>
                        </div>

                        <!-- Submit button -->
                       <asp:Button OnClick="btnIniciarSesion_Click" class="btn btn-primary btn-lg btn-block" Text="Iniciar sesión" type="submit" runat="server"/>
                    </form>
                </div>
            </div>
        </div>
    </section>

     <footer class="bg-light text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2020 Copyright:
                <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
        </div>
        <!-- Copyright -->
    </footer>
</body>
</html>
