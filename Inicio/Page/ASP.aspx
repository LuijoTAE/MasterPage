<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Masterpage.Master" AutoEventWireup="true" CodeBehind="ASP.aspx.cs" Inherits="Inicio.Page.Registrar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Css/aspStyle.css" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="asp">
    <div class="container">

        <section class="section">
            <article class="article concepto">
                <h3 class="subtitle">¿Qué es ASP.NET?
                </h3>
                <p class="content">
                    .NET es una plataforma para desarrolladores formada por herramientas,
                         lenguajes de programación y bibliotecas para crear muchos tipos
                         diferentes de aplicaciones.
                </p>
            </article>
        </section>

        <section class="section">
            <article class="article concepto">
                <h3 class="subtitle">Introducción a .NET Framework
                </h3>
                <p class="content">
                    .NET Framework es un entorno de ejecución runtime que administra
                         aplicaciones cuyo destino es .NET Framework. Incorpora Common Language
                         Runtime, que proporciona la administración de la memoria y otros
                         servicios del sistema, y una biblioteca de clases completa, que
                         permite a los programadores aprovechar el código estable y fiable
                         de todas las áreas principales del desarrollo de aplicaciones.
                </p>
            </article>
        </section>
        
        <section class="section">
            <article class="article arquitectura">
                <div class="text">
                    <h3 class="subtitle">¿Qué es .NET Framework?
                    </h3>
                    <p class="content">
                        .NET Framework es un entorno de ejecución administrado para Windows
                         que proporciona diversos servicios a las aplicaciones en ejecución.
                         Consta de dos componentes principales: Common Language Runtime (CLR),
                         que es el motor de ejecución que controla las aplicaciones en ejecución,
                         y la biblioteca de clases de .NET Framework, que proporciona una
                         biblioteca de código probado y reutilizable al que pueden llamar los
                         desarrolladores desde sus propias aplicaciones. Los servicios que ofrece
                         .NET Framework a las aplicaciones en ejecución son los siguientes:
                    </p>
                </div>
                <ul class="ul">
                    <li class="li">Administración de la memoria
                    </li>

                    <li class="li">Sistema de tipos comunes
                    </li>

                    <li class="li">Biblioteca de clases extensa
                    </li>

                    <li class="li">Marcos y tecnologías de desarrollo
                    </li>

                    <li class="li">Interoperabilidad de lenguajes
                    </li>

                    <li class="li">Compatibilidad de versiones
                    </li>

                    <li class="li">Ejecución en paralelo
                    </li>

                    <li class="li">Compatibilidad con múltiples versiones (multi-targeting)
                    </li>
                </ul>
            </article>
        </section>

        <section class="section">
            <article class="article concepto">
                <h3 class="subtitle">.NET Framework para usuarios
                </h3>
                <p class="content">
                    Si no desarrolla aplicaciones de .NET Framework pero las usa,
                         no es necesario que tenga conocimientos específicos de .NET
                         Framework o de su funcionamiento. En general, .NET Framework
                         es completamente transparente para los usuarios.
                </p>
            </article>

            <article class="article concepto">
                <h3 class="subtitle">.NET Framework para desarrolladores
                </h3>
                <p class="content">
                    Si es desarrollador, elija cualquier lenguaje de programación
                         compatible con .NET Framework para crear sus aplicaciones.
                         Dado que .NET Framework proporciona independencia e interoperabilidad
                         entre lenguajes, puede interactuar con otras aplicaciones y
                         componentes de .NET Framework independientemente del lenguaje
                         con el que se desarrollaron.
                </p>
            </article>
        </section>
    </div>
</div>
</asp:Content>
