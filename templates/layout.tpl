
{* ==========================================
   KALMA BRAVA - PLANTILLA PRINCIPAL
   ========================================== *}

{* Conservamos la configuración global de Smarty *}
{config_load file="proyecto.conf"}

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <meta name="description"
          content="Kalma Brava, restaurante de camarones estilo Louisiana, hamburguesas y bebidas en Huichapan, Hidalgo.">

    <title>{$title|escape} | KALMA BRAVA</title>

    {* Logo en la pestaña del navegador *}
    <link rel="icon"
          type="image/jpeg"
          href="public/img/logo.png">

    {* Estilos generales *}
    <link rel="stylesheet"
          href="public/css/style.css">
</head>

<body>

    {* ======================================
       ENCABEZADO Y NAVEGACIÓN
       ====================================== *}

    <header class="site-header">

        <div class="navbar container">

            {* LOGO DEL RESTAURANTE *}
            <a href="index.php" class="brand">

                <img
                    src="public/img/logo.png"
                    alt="Logo de Kalma Brava">

                <span>
                    KALMA
                    <small>BRAVA</small>
                </span>

            </a>

            {* BOTÓN DE MENÚ PARA CELULARES *}
            <button
                class="menu-toggle"
                type="button"
                aria-label="Abrir menú"
                aria-expanded="false"
                aria-controls="main-navigation">

                &#9776;

            </button>

            {* MENÚ DE NAVEGACIÓN *}
            <nav
                id="main-navigation"
                class="nav-links"
                aria-label="Navegación principal">

                <a href="index.php#inicio">
                    Inicio
                </a>

                <a href="index.php#menu">
                    Menú
                </a>

                <a href="index.php#nosotros">
                    Nosotros
                </a>

                <a href="index.php#horarios">
                    Horarios
                </a>

                <a href="index.php#contacto">
                    Contacto
                </a>

                <a href="index.php#menu"
                   class="nav-button">
                    Ver platillos
                </a>

            </nav>

        </div>

    </header>

    {* ======================================
       CONTENIDO PRINCIPAL
       ====================================== *}

    <main>

        {* Conservamos los mensajes del proyecto *}
        {include file="partials/messages.tpl"}

        {block name="content"}
            {* Aquí se muestra cada página *}
        {/block}

    </main>

    {* ======================================
       PIE DE PÁGINA
       ====================================== *}

    <footer class="site-footer">

        <div class="container footer-content">

            <div>

                <h3>KALMA BRAVA</h3>

                <p>
                    Camarones estilo Louisiana,
                    hamburguesas y bebidas.
                </p>

                <p>
                    El Cajón, Huichapan, Hidalgo.
                </p>

            </div>

            <div>

                <h4>Explora</h4>

                <a href="index.php#inicio">
                    Inicio
                </a>

                <a href="index.php#menu">
                    Nuestro menú
                </a>

                <a href="index.php#horarios">
                    Horarios
                </a>

                <a href="index.php#contacto">
                    Contacto
                </a>

            </div>

            <div>

                <h4>Síguenos</h4>

                <a
                    href="https://www.instagram.com/kalma_brava_rest_/"
                    target="_blank"
                    rel="noopener noreferrer">

                    Instagram

                </a>

                <p>
                    Huichapan, Hidalgo, México.
                </p>

            </div>

        </div>

        <div class="footer-bottom">

            <p>
                &copy; KALMA BRAVA.
                Todos los derechos reservados.
            </p>

        </div>

    </footer>

    {* ======================================
       JAVASCRIPT
       ====================================== *}

    <script src="public/js/main.js"></script>

</body>
</html>
