#!/bin/bash

# Agregar Rust y el CLI al PATH
echo 'export PATH="$HOME/.local/share/sol_cli/bin:$PATH"' >> $HOME/.bashrc

# Para que los cambios surtan efecto en la sesión actual
source $HOME/.bashrc

echo "Rutas agregadas al PATH. Por favor, reinicia tu terminal o ejecuta 'source ~/.bashrc' para aplicar los cambios."

