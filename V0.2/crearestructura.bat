
@echo off
setlocal enabledelayedexpansion

echo ========================================
echo Inicializando estructura del proyecto...
echo ========================================

REM Crear carpetas principales
mkdir css 2>nul
mkdir js 2>nul
mkdir data 2>nul
mkdir assets 2>nul

REM Crear subcarpetas de assets
mkdir assets\logo 2>nul
mkdir assets\categories 2>nul
mkdir assets\dishes 2>nul
mkdir assets\default 2>nul

REM Crear archivos CSS
type nul > css\variables.css
type nul > css\base.css
type nul > css\layout.css
type nul > css\components.css
type nul > css\responsive.css

REM Crear archivos JS
type nul > js\app.js
type nul > js\main.js
type nul > js\state.js
type nul > js\data.js
type nul > js\menu.js
type nul > js\categories.js
type nul > js\modal.js
type nul > js\scroll.js

REM Crear archivo README.md
(
echo # Landing Page + Menú Digital para Restaurante
echo.
echo ## Descripción
echo Página web ligera y rápida para restaurante con menú digital interactivo. Optimizada para dispositivos móviles.
echo.
echo ## Estructura de carpetas
echo.
echo index.html
echo README.md
echo css/
echo     variables.css
echo     base.css
echo     layout.css
echo     components.css
echo     responsive.css
echo js/
echo     app.js
echo     main.js
echo     state.js
echo     data.js
echo     menu.js
echo     categories.js
echo     modal.js
echo     scroll.js
echo data/
echo     menu.json
echo assets/
echo     logo/
echo     categories/
echo     dishes/
echo     default/
echo.
echo ## Instrucciones para abrir
echo 1. Abrir el archivo index.html en un navegador moderno
) > README.md



REM Crear index.html

echo ^<!DOCTYPE html^> > index.html
echo ^<html lang="es"^> >> index.html
echo ^<head^> >> index.html
echo     ^<meta charset="UTF-8"^> >> index.html
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> index.html
echo     ^<title^>Landing Page + Menú Digital para Restaurante^</title^> >> index.html
echo     ^<link rel="stylesheet" href="css/variables.css"^> >> index.html
echo     ^<link rel="stylesheet" href="css/base.css"^> >> index.html
echo     ^<link rel="stylesheet" href="css/layout.css"^> >> index.html
echo     ^<link rel="stylesheet" href="css/components.css"^> >> index.html
echo     ^<link rel="stylesheet" href="css/responsive.css"^> >> index.html
echo ^</head^> >> index.html
echo ^<body^> >> index.html
echo     ^<main^>^</main^> >> index.html
echo     ^<script src="js/app.js"^>^</script^> >> index.html
echo ^</body^> >> index.html
echo ^</html^> >> index.html


REM Crear menu.json
(
echo {
echo   "restaurant": {
echo     "name": "Mi Restaurante",
echo     "description": "Breve descripción del restaurante",
echo     "logo": "assets/logo/logo.png",
echo     "heroImage": "assets/dishes/hero.jpg",
echo     "info": "Información adicional del restaurante",
echo     "hours": "Lunes a Domingo: 13:00 - 23:00",
echo     "location": "Calle Ejemplo 123, Ciudad",
echo     "mapsUrl": "https://maps.google.com/..."
echo   },
echo   "categories": [
echo     {
echo       "id": "entradas",
echo       "name": "Entradas",
echo       "icon": "assets/categories/entradas.png",
echo       "dishes": [
echo         {
echo           "id": "entrada-1",
echo           "name": "Platillo de ejemplo",
echo           "shortDescription": "Descripción corta para la tarjeta",
echo           "description": "Descripción completa para el modal",
echo           "ingredients": ["Ingrediente 1", "Ingrediente 2"],
echo           "price": 12.50,
echo           "image": "assets/dishes/platillo.jpg"
echo         }
echo       ]
echo     }
echo   ]
echo }
) > data\menu.json


echo.
echo ========================================
echo Estructura creada exitosamente.
echo ========================================
echo.
echo Arbol del proyecto:
echo.

dir /b /s

echo.
pause