#!/bin/bash

# Crear la estructura de carpetas para el CLI
mkdir -p "$HOME/.local/share/sol_cli/bin"

# Compilar el proyecto
cargo build --release

# Mover el ejecutable a la carpeta bin
mv target/release/sol_cli "$HOME/.local/share/sol_cli/bin/"

# Agregar al PATH si no está ya presente
if ! grep -q "$HOME/.local/share/sol_cli/bin" "$HOME/.bashrc"; then
    echo 'export PATH="$HOME/.local/share/sol_cli/bin:$PATH"' >> "$HOME/.bashrc"
    echo "Ruta añadida al PATH en $HOME/.bashrc"
fi

# Cargar los cambios en el entorno actual
source "$HOME/.bashrc"

echo "Instalación completada. Ahora puedes ejecutar 'my_sol_cli' desde cualquier lugar."

