
/* =====================================================
   KALMA BRAVA
   ARCHIVO PRINCIPAL JAVASCRIPT

   Funciones:
   - Menú responsivo
   - Filtros de productos
   - Navegación
   ===================================================== */

document.addEventListener("DOMContentLoaded", function () {

    console.log("KALMA BRAVA - Aplicación cargada correctamente");


    // =====================================================
    // 1. MENÚ DE NAVEGACIÓN PARA CELULARES
    // =====================================================

    const menuButton = document.querySelector(".menu-toggle");
    const navigation = document.querySelector(".nav-links");

    if (menuButton && navigation) {

        menuButton.addEventListener("click", function () {

            const abierto = navigation.classList.toggle("open");

            menuButton.setAttribute(
                "aria-expanded",
                abierto ? "true" : "false"
            );

            menuButton.setAttribute(
                "aria-label",
                abierto ? "Cerrar menú" : "Abrir menú"
            );

        });


        // Cerrar el menú al seleccionar una sección

        const enlaces = navigation.querySelectorAll("a");

        enlaces.forEach(function (enlace) {

            enlace.addEventListener("click", function () {

                navigation.classList.remove("open");

                menuButton.setAttribute(
                    "aria-expanded",
                    "false"
                );

                menuButton.setAttribute(
                    "aria-label",
                    "Abrir menú"
                );

            });

        });


        // Cerrar el menú al presionar Escape

        document.addEventListener("keydown", function (event) {

            if (event.key === "Escape") {

                navigation.classList.remove("open");

                menuButton.setAttribute(
                    "aria-expanded",
                    "false"
                );

                menuButton.setAttribute(
                    "aria-label",
                    "Abrir menú"
                );

            }

        });

    }


    // =====================================================
    // 2. FILTROS DEL MENÚ
    // =====================================================

    const botones = document.querySelectorAll(".filter-btn");

    const productos = document.querySelectorAll(".product-card");


    botones.forEach(function (boton) {

        boton.addEventListener("click", function () {

            // Obtener categoría seleccionada
            const categoria = boton.dataset.filter;


            // Quitar selección de los demás botones
            botones.forEach(function (item) {

                item.classList.remove("active");

            });


            // Marcar botón seleccionado
            boton.classList.add("active");


            // Filtrar productos
            productos.forEach(function (producto) {

                const categoriaProducto = producto.dataset.category;

                if (
                    categoria === "Todos" ||
                    categoriaProducto === categoria
                ) {

                    producto.classList.remove("is-hidden");

                } else {

                    producto.classList.add("is-hidden");

                }

            });

        });

    });


    // =====================================================
    // 3. ENLACES INTERNOS
    // =====================================================

    const enlacesInternos = document.querySelectorAll(
        'a[href^="#"]'
    );

    enlacesInternos.forEach(function (enlace) {

        enlace.addEventListener("click", function (event) {

            const destino = enlace.getAttribute("href");

            if (!destino || destino === "#") {
                return;
            }

            const seccion = document.querySelector(destino);

            if (seccion) {

                event.preventDefault();

                seccion.scrollIntoView({
                    behavior: window.matchMedia(
                        "(prefers-reduced-motion: reduce)"
                    ).matches ? "auto" : "smooth",
                    block: "start"
                });

            }

        });

    });

});
