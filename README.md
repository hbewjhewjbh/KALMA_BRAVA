# Estructura del proyecto Smarty

```
proyecto_smarty/
├── index.php                  # Punto de entrada principal
├── config/
│   └── config.php             # Configuración global (rutas, constantes)
├── controllers/
│   └── HomeController.php     # Controlador de ejemplo
├── classes/
│   └── SmartySingleton.php    # Clase singleton para Smarty
├── libs/
│   └── smarty/                # Librería Smarty 5 (ya incluida)
│       ├── libs/
│       │   └── Smarty.class.php   # Punto de carga del stub
│       └── src/                   # Código fuente de Smarty (PSR-4)
├── templates/
│   ├── layout.tpl             # Plantilla base (layout)
│   ├── home.tpl               # Página de inicio
│   ├── about.tpl              # Página "Acerca de"
│   ├── partials/
│   │   └── messages.tpl       # Fragmento reutilizable
│   ├── css/                   # (opcional) CSS específico de plantillas
│   └── js/                    # (opcional) JS específico de plantillas
├── templates_c/               # Templates compilados (generado por Smarty)
├── configs/
│   └── proyecto.conf          # Variables de configuración de plantillas
├── cache/                     # Caché (generado por Smarty)
├── public/
│   ├── css/
│   │   └── style.css
│   ├── js/
│   │   └── main.js
│   └── img/                   # Imágenes
└── README.md
```

## Instalación

1. **Copiar el proyecto** a `C:\xampp\htdocs\proyecto_smarty` (Windows) o `/Applications/XAMPP/htdocs/proyecto_smarty` (Mac).

2. **Smarty ya viene incluido** en `libs/smarty/` (versión 5.4). No necesitas descargarlo.
   - Si prefieres actualizarlo o usar otra versión: usa Composer (`composer require smarty/smarty`) y ajusta la ruta en `classes/SmartySingleton.php`.

3. **Dar permisos de escritura** a las carpetas `templates_c` y `cache` (si estás en Mac/Linux):

   ```bash
   chmod -R 777 templates_c cache
   ```

4. **Ajustar la URL base** en `config/config.php`:
   - Si accedes como `http://localhost/proyecto_smarty/`, mantén `BASE_URL`.
   - Si lo usas en otra ruta, actualiza la constante.

5. **Arrancar Apache y MySQL** desde el panel de XAMPP y abrir en el navegador:
   ```
   http://localhost/proyecto_smarty/
   ```

## Uso

- **Añadir una nueva página**: crea un método en `controllers/HomeController.php`, añade un `case` en `index.php`, y crea su plantilla en `templates/`.
- **Heredar el layout**: en cada plantilla usa `{extends file="layout.tpl"}` y define `{block name="content"}`.
- **Pasar variables**: usa `$this->smarty->assign('nombre', $valor)` en el controlador.

## Notas

- Activa `display_errors` desactivado (production) o ajusta según necesidad en `config/config.php`.
- Cambia `#author#` en `configs/proyecto.conf` por tu nombre.
