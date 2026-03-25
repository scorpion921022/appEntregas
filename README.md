# Entregas DH Android

Aplicación Android lista para subir a GitHub y compilar con GitHub Actions.

## Qué hace
- Abre el sistema en `https://entregasdh.free.nf/`
- Mantiene sesión con cookies
- Permite subir imágenes desde cámara o galería
- Tiene pull-to-refresh
- Modo offline básico
- Menú para refrescar, abrir en navegador y cerrar sesión
- Descarga archivos usando el gestor de descargas del teléfono

## Requisitos
- Android Studio Hedgehog o superior, o compilación en GitHub Actions
- JDK 17
- minSdk 24

## Configuración rápida
La URL del servidor está definida en:
`app/build.gradle.kts`

Busca esta línea:
`buildConfigField("String", "BASE_URL", "\"https://entregasdh.free.nf/\"")`

## Compilar en GitHub
1. Crea un repositorio nuevo en GitHub.
2. Sube el contenido completo de este ZIP a la raíz del repositorio.
3. Entra en **Actions**.
4. Ejecuta el workflow **Build Android APK** con **Run workflow**, o simplemente haz un commit en `main`.
5. Cuando termine, abre el job y descarga el artifact `entregasdh-apk`.

## Archivos importantes
- `.github/workflows/android-build.yml` -> compila el APK en GitHub
- `app/src/main/java/com/entregasdh/mobile/MainActivity.kt` -> lógica principal
- `app/src/main/AndroidManifest.xml` -> permisos y configuración
