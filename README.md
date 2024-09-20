# sol-cli

## Descripción

Solana CLI es una herramienta para interactuar con la blockchain de Solana, permitiendo crear proyectos, módulos, ejecutar pruebas, verificar conexiones y realizar deploys.

## Requisitos

- Rust y Cargo deben estar instalados en tu sistema. Puedes instalarlos usando rustup:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Instalación

- Clona el repositorio:

```bash
git clone https://github.com/neocarvajal/sol-cli.git
cd sol-cli
```

- Compila el proyecto

```bash
cargo build
```

- Ejecuta setup.sh para agregar las rutas al PATH (opcional)

```bash
chmod +x setup.sh && bash setup.sh
```

# Uso

## Comandos disponibles
- scaffold <project_name>: Crea un nuevo proyecto.

- new-module <name>: Crea un nuevo módulo (lib o test).

- test: Corre los tests del proyecto.

- check-connection: Verifica la conexión con la blockchain.

- deploy: Realiza el deploy en Solana.


## Estructura del Proyecto
- sol-cli/: Contiene todos los archivos y directorios del CLI.

- src/: Contiene el código fuente del proyecto.

- tests/: Contiene los módulos de prueba.

- configs/: Contiene archivos de configuración.

- connections/: Maneja conexiones con la blockchain.

