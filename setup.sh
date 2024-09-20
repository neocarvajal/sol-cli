#!/bin/bash

# Crear la estructura de directorios para los ejecutables del CLI
mkdir -p "$HOME/.local/share/sol_cli/bin"

# Agregar el CLI al PATH
echo 'export PATH="$HOME/.local/share/my_sol_cli/bin:$PATH"' >> $HOME/.bashrc

# Para que los cambios surtan efecto en la sesión actual
source $HOME/.bashrc

echo "Estructura de directorios creada y rutas agregadas al PATH."
echo "Por favor, reinicia tu terminal o ejecuta 'source ~/.bashrc' para aplicar los cambios."

