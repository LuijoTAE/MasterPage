<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Masterpage.Master" AutoEventWireup="true" CodeBehind="REGISTRO.aspx.cs" Inherits="Inicio.Page.CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../Css/CRUD_css.css" />
    <link rel="stylesheet" href="../Css/Mcss.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form class="form_" runat="server">

        <!-- Section: Design Block -->
        <section class="text-center" style="padding-top: 70px;">
            <!-- Background image -->
            <div class="p-5 bg-image" style="background-repeat: no-repeat; background-size: cover; background-image: url('https://img.freepik.com/vector-gratis/papel-tapiz-azul-clasico-estilo-abstracto_23-2148437427.jpg?size=626&ext=jpg&ga=GA1.1.681758584.1678468797&semt=ais'); height: 300px;">
            </div>
            <!-- Background image -->

            <div class="mx-4 mx-md-5 shadow-5-strong" style="border-radius: 10px; margin-top: -100px; background-color: white; border: none;">
                <div class=" py-5 px-md-5">

                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <h2 class="fw-bold mb-5">Regístrate ahora</h2>

                            <!-- Informacion personal -->
                            <div class="row">
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input type="text" id="inpFirstName" class="form-control" runat="server" />
                                        <label class="form-label" for="form3Example1">Nombre de pila</label>
                                    </div>
                                </div>
                                <div class="col-md-6 mb-4">
                                    <div class="form-outline">
                                        <input type="text" id="inpLastName" class="form-control" runat="server" />
                                        <label class="form-label" for="form3Example2">Apellido</label>
                                    </div>
                                </div>
                            </div>

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" id="inpEmail" class="form-control" runat="server" />
                                <label class="form-label" for="form3Example3">Dirección de correo electrónico</label>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <input type="password" id="inpPassword" class="form-control" runat="server" />
                                <label class="form-label" for="form3Example4">Contraseña</label>
                            </div>

                            <!-- Submit button -->
                            <div class=" navbar navbar-expand d-flex align-content-center justify-content-evenly">
                                <asp:Button type="submit" CssClass="btn_ btn btn-primary"
                                    Text="Registrar" OnClick="Enviar_Click" runat="server" />

                                <asp:Button type="submit" CssClass="btn_ btn btn-success"
                                    Text="Actualizar" OnClick="Update_Click" runat="server" />

                                <asp:Button type="submit" CssClass="btn_ btn btn-danger"
                                    Text="Eliminar" OnClick="Delete_Click" runat="server" />
                            </div>

                        </div>

                        <div class="container-fluid d-block text-lg-center">
                            
                            <br />

                            <h5 class="label"> Información de usuarios </h5>

                            <br />
                            <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" ShowFooter="True" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:BoundField ControlStyle-CssClass="row-cols-1" DataField="name" HeaderText="Nombre de pila" />
                                    <asp:BoundField DataField="lastname" HeaderText="Apellido" />
                                    <asp:BoundField DataField="email" HeaderText="Correo electrónico" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
        <!-- Section: Design Block -->
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</asp:Content>
