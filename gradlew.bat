@echo off
where gradle >nul 2>&1
if %ERRORLEVEL% neq 0 (
  echo Gradle no esta instalado en este entorno. En GitHub Actions este proyecto usa setup-gradle para instalarlo automaticamente.
  exit /b 1
)
gradle %*
