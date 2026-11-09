
<?php
/*
 * KALMA BRAVA
 * Controlador principal del restaurante.
 *
 * Maneja las páginas y envía los datos
 * de los productos a las plantillas Smarty.
 */

require_once __DIR__ . '/../classes/SmartySingleton.php';

class HomeController
{
    private $smarty;

    public function __construct()
    {
        $this->smarty = SmartySingleton::getInstance();
    }

    // ==========================================
    // PÁGINA PRINCIPAL DEL RESTAURANTE
    // ==========================================
    public function index()
    {
        $productos = [
            [
                'nombre' => 'Louisiana tradicional',
                'categoria' => 'Camarones',
                'descripcion' => 'Camarones estilo Louisiana acompañados de papa, elote y salsa especial.',
                'imagen' => 'louisiana-clasica.jpg'
            ],
            [
                'nombre' => 'Aguachile de Mango',
                'categoria' => 'Camarones',
                'descripcion' => 'Delicioso aguachile con sabor tradicional con un toque de mango, preparados con aguacate fresco y complementos.',
                'imagen' => 'louisiana-aguacate.jpg'
            ],
            [
                'nombre' => 'Pan relleno',
                'categoria' => 'Postres',
                'descripcion' => 'Pan tradicional de muerto relleno.',
                'imagen' => 'pan_relleno.jpg'
            ],
            [
                'nombre' => 'Hamburguesa Kalma',
                'categoria' => 'Hamburguesas',
                'descripcion' => 'Hamburguesa acompañada de papas y nuestros complementos.',
                'imagen' => 'hamburguesa.jpg'
            ],
            [
                'nombre' => 'Mojito de frutos rojos',
                'categoria' => 'Bebidas',
                'descripcion' => 'Bebida refrescante preparada con frutos rojos.',
                'imagen' => 'bebida-mango.jpg'
            ],
            [
                'nombre' => 'Bebida tropical',
                'categoria' => 'Bebidas',
                'descripcion' => 'Bebida preparada con sabores tropicales.',
                'imagen' => 'hero-louisiana.jpg'
            ]
        ];

        $data = [
            'title' => 'Inicio',
            'productos' => $productos
        ];

        $this->render('home.tpl', $data);
    }

    // ==========================================
    // PÁGINA ACERCA DE
    // ==========================================
    public function about()
    {
        $data = [
            'title' => 'Acerca de Kalma Brava',
            'description' => 'Kalma Brava es un restaurante ubicado en Huichapan, Hidalgo, especializado en camarones estilo Louisiana, hamburguesas y bebidas.'
        ];

        $this->render('about.tpl', $data);
    }

    // ==========================================
    // PÁGINA DE BIENVENIDA
    // ==========================================
    public function welcome()
    {
        $data = [
            'title' => 'Bienvenidos a Kalma Brava',
            'description' => 'Bienvenidos a Kalma Brava. Descubre nuestros camarones Louisiana, hamburguesas y bebidas.'
        ];

        $this->render('welcome.tpl', $data);
    }

    // ==========================================
    // MÉTODO AUXILIAR DE SMARTY
    // ==========================================
    private function render($template, $data = [])
    {
        foreach ($data as $key => $value) {
            $this->smarty->assign($key, $value);
        }

        $this->smarty->display($template);
    }
}
