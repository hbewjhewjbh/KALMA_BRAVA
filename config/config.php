<?php
/*
 * Configuración general del proyecto
 * Establece rutas y constantes globales
 */

// Definir ruta raíz del proyecto
define('BASE_PATH', __DIR__ . '/..');        // carpeta raíz del proyecto
define('TEMPLATE_PATH', BASE_PATH . '/templates');
define('TEMPLATE_C_PATH', BASE_PATH . '/templates_c');
define('CONFIG_PATH', BASE_PATH . '/configs');
define('CACHE_PATH', BASE_PATH . '/cache');

// URL base (ajústala si usas subcarpeta, p.ej. http://localhost/proyecto_smarty)
define('BASE_URL', 'http://localhost/proyecto_smarty');

// Configuración de errores (activar solo en desarrollo)
ini_set('display_errors', 1);
error_reporting(E_ALL);
