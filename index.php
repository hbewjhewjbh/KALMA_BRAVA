<?php
/*
 * Punto de entrada principal
 * Todas las peticiones pasan por aquí (enrutamiento simple)
 */

require_once __DIR__ . '/config/config.php';
require_once __DIR__ . '/controllers/HomeController.php';

// Enrutamiento simple
$controller = new HomeController();

// Si quieres pasar parámetros (p.ej. /index.php?page=about)
$page = isset($_GET['page']) ? $_GET['page'] : 'home';

switch ($page) {
    case 'home':
    default:
        $controller->index();
        break;
    case 'about':
        $controller->about();
        break;
    case 'welcome':
        $controller->welcome();
        break;
}
