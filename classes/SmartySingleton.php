<?php
/*
 * Clase Singleton para Smarty
 * Garantiza una única instancia de Smarty en toda la aplicación
 */

require_once __DIR__ . '/../libs/smarty/libs/Smarty.class.php';

class SmartySingleton
{
    private static $instance = null;

    public static function getInstance()
    {
        if (self::$instance === null) {
            self::$instance = new \Smarty\Smarty();

            // Configurar directorios de Smarty
            self::$instance->setTemplateDir(TEMPLATE_PATH);
            self::$instance->setCompileDir(TEMPLATE_C_PATH);
            self::$instance->setConfigDir(CONFIG_PATH);
            self::$instance->setCacheDir(CACHE_PATH);

            // Depuración (opcional, desactívala en producción)
            // self::$instance->debugging = false;
            // self::$instance->caching = Smarty::CACHING_OFF;
        }

        return self::$instance;
    }
}
