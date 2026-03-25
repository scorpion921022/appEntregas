#!/usr/bin/env sh
if command -v gradle >/dev/null 2>&1; then
  gradle "$@"
else
  echo "Gradle no está instalado en este entorno. En GitHub Actions este proyecto usa setup-gradle para instalarlo automáticamente."
  exit 1
fi
