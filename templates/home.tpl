
{* ==========================================
   KALMA BRAVA - PÁGINA PRINCIPAL
   ========================================== *}

{extends file="layout.tpl"}

{block name="content"}

    {* ======================================
       PORTADA PRINCIPAL
       ====================================== *}

    <section class="hero" id="inicio">

        <div class="container hero-content">

            <div class="hero-text">

                <span class="eyebrow">
                    EL SABOR BRAVO DE HUICHAPAN
                </span>

                <h1>
                    KALMA <span>BRAVA</span>
                </h1>

                <h2>
                    Camarones Louisiana,
                    hamburguesas y mucho sabor.
                </h2>

                <p>
                    Descubre nuestros camarones estilo
                    Louisiana, hamburguesas y bebidas
                    refrescantes. Una experiencia llena
                    de sabor para compartir y disfrutar.
                </p>

                <div class="hero-actions">

                    <a href="#menu"
                       class="btn btn-primary">
                        Explorar menú
                    </a>

                    <a href="#contacto"
                       class="btn btn-outline">
                        Visítanos
                    </a>

                </div>

            </div>

            <div class="hero-photo">

                <img
                    src="public/img/charola-louisiana.jpg"
                    alt="Camarones Louisiana Kalma Brava">

                <div class="photo-caption">

                    NUESTRA ESPECIALIDAD

                    <strong>
                        LOUISIANA
                    </strong>

                </div>

            </div>

        </div>

    </section>


    {* ======================================
       CATEGORÍAS DEL RESTAURANTE
       ====================================== *}

    <section class="section categories-section">

        <div class="container">

            <div class="section-heading">

                <span class="eyebrow">
                    DESCUBRE KALMA BRAVA
                </span>

                <h2>
                    Algo para cada antojo
                </h2>

                <p>
                    Elige entre nuestras especialidades,
                    hamburguesas y bebidas.
                </p>

            </div>

            <div class="categories-grid">

                {* CAMARONES *}

                <a href="#menu"
                   class="category-card">

                    <img
                        src="public/img/charola-louisiana.jpg"
                        alt="Camarones estilo Louisiana"
                        loading="lazy">

                    <div class="category-overlay">

                        <h3>Camarones</h3>

                        <span>
                            Estilo Louisiana
                        </span>

                    </div>

                </a>


                {* HAMBURGUESAS *}

                <a href="#menu"
                   class="category-card">

                    <img
                        src="public/img/hamburguesa.jpg"
                        alt="Hamburguesa Kalma Brava"
                        loading="lazy">

                    <div class="category-overlay">

                        <h3>Hamburguesas</h3>

                        <span>
                            Para todos los antojos
                        </span>

                    </div>

                </a>


                {* BEBIDAS *}

                <a href="#menu"
                   class="category-card">

                    <img
                        src="public/img/bebida-mango.jpg"
                        alt="Bebidas Kalma Brava"
                        loading="lazy">

                    <div class="category-overlay">

                        <h3>Bebidas</h3>

                        <span>
                            Refrescantes y deliciosas
                        </span>

                    </div>

                </a>

            </div>

        </div>

    </section>


    {* ======================================
       MENÚ DE PRODUCTOS
       ====================================== *}

    <section class="section menu-section"
             id="menu">

        <div class="container">

            <div class="section-heading">

                <span class="eyebrow">
                    NUESTROS FAVORITOS
                </span>

                <h2>
                    Explora nuestro menú
                </h2>

                <p>
                    Conoce algunos de los platillos
                    y bebidas de Kalma Brava.
                </p>

            </div>


            {* FILTROS DEL MENÚ *}

            <div class="filter-buttons">

                <button
                    class="filter-btn active"
                    data-filter="Todos"
                    type="button">
                    Todos
                </button>

                <button
                    class="filter-btn"
                    data-filter="Camarones"
                    type="button">
                    Camarones
                </button>

                <button
                    class="filter-btn"
                    data-filter="Hamburguesas"
                    type="button">
                    Hamburguesas
                </button>

                <button
                    class="filter-btn"
                    data-filter="Bebidas"
                    type="button">
                    Bebidas
                </button>

            </div>


            {* PRODUCTOS DINÁMICOS DESDE PHP *}

            <div class="products-grid">

                {foreach $productos as $producto}

                    <article
                        class="product-card"
                        data-category="{$producto.categoria|escape}">

                        <div class="product-image">

                            <img
                                src="public/img/{$producto.imagen|escape}"
                                alt="{$producto.nombre|escape}"
                                loading="lazy">

                        </div>

                        <div class="product-info">

                            <span class="product-category">
                                {$producto.categoria|escape}
                            </span>

                            <h3>
                                {$producto.nombre|escape}
                            </h3>

                            <p>
                                {$producto.descripcion|escape}
                            </p>

                            <span class="product-price-note">
                                Consulta precios en el restaurante
                            </span>

                        </div>

                    </article>

                {foreachelse}

                    <p>
                        Próximamente agregaremos
                        nuevos productos.
                    </p>

                {/foreach}

            </div>

        </div>

    </section>


    {* ======================================
       NOSOTROS
       ====================================== *}

    <section class="section about-section"
             id="nosotros">

        <div class="container about-grid">

            <div class="about-image">

                <img
                    src="public/img/combo.jpeg"
                    alt="Especialidad Kalma Brava"
                    loading="lazy">

            </div>

            <div class="about-text">

                <span class="eyebrow">
                    CONÓCENOS
                </span>

                <h2>
                    El sabor tiene
                    <span>personalidad.</span>
                </h2>

                <p>
                    En Kalma Brava encontrarás camarones
                    preparados al estilo Louisiana,
                    hamburguesas y bebidas para acompañar
                    cada momento.
                </p>

                <p>
                    Estamos en Huichapan, Hidalgo,
                    y nos encanta compartir nuestros
                    sabores con quienes nos visitan.
                </p>

                <a href="#contacto"
                   class="btn btn-primary">
                    Encuéntranos
                </a>

            </div>

        </div>

    </section>


    {* ======================================
       HORARIOS
       ====================================== *}

    <section class="section hours-section"
             id="horarios">

        <div class="container">

            <div class="section-heading">

                <span class="eyebrow">
                    VEN A VISITARNOS
                </span>

                <h2>
                    Nuestros horarios
                </h2>

            </div>

            <div class="hours-card">

                <div class="hours-row">

                    <span>Jueves</span>

                    <strong>
                        11:00 a.m. - 6:30 p.m.
                    </strong>

                </div>

                <div class="hours-row">

                    <span>Viernes</span>

                    <strong>
                        11:00 a.m. - 7:00 p.m.
                    </strong>

                </div>

                <div class="hours-row">

                    <span>Sábado</span>

                    <strong>
                        11:00 a.m. - 9:00 p.m.
                    </strong>

                </div>

                <div class="hours-row">

                    <span>Domingo</span>

                    <strong>
                        10:00 a.m. - 7:00 p.m.
                    </strong>

                </div>

                <p class="hours-note">
                    Horarios sujetos a cambios.
                </p>

            </div>

        </div>

    </section>


    {* ======================================
       CONTACTO
       ====================================== *}

    <section class="section contact-section"
             id="contacto">

        <div class="container contact-content">

            <span class="eyebrow">
                TE ESPERAMOS
            </span>

            <h2>
                ¿Listo para algo
                <span>bravo?</span>
            </h2>

            <p>
                Visítanos en El Cajón,
                Huichapan, Hidalgo.
                Síguenos en Instagram para
                conocer novedades y promociones.
            </p>

            <div class="contact-actions">

                <a
                    class="btn btn-primary"
                    href="https://www.instagram.com/kalma_brava_rest_/"
                    target="_blank"
                    rel="noopener noreferrer">

                    Ver Instagram

                </a>

               <a
    class="btn btn-outline"
    href="https://www.google.com/maps/search/?api=1&amp;query=20.395367%2C-99.632338"
    target="_blank"
    rel="noopener noreferrer">
    Cómo llegar a Kalma Brava
</a>

            </div>

        </div>

    </section>

{/block}
