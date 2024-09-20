pub mod connections;

pub fn run() {
    let args: Vec<String> = std::env::args().collect();
    
    if args.len() > 1 && args[1] == "new" {
        if args.len() != 3 {
            eprintln!("Uso: sol_cli#: new [NOMBRE_PROYECTO]");
            return;
        }
        let project_name = &args[2];
        create_new_project(project_name);
    } else {
        println!("Comando no reconocido. Usa 'new [NOMBRE_PROYECTO]'.");
    }

    connections::check_connection();
}

fn create_new_project(project_name: &str) {
    let project_path = format!("./{}", project_name);
    std::fs::create_dir_all(&project_path).expect("No se pudo crear el proyecto");

    std::fs::create_dir_all(format!("{}/src/modules", project_path)).expect("No se pudo crear el directorio de módulos");
    std::fs::create_dir_all(format!("{}/src/connections", project_path)).expect("No se pudo crear el directorio de conexiones");

    println!("Proyecto '{}' creado en '{}'", project_name, project_path);
}

fn create_new_module(module_name: &str) {
    let module_path = format!("src/modules/{}", module_name);
    std::fs::create_dir_all(&module_path).expect("No se pudo crear el módulo");
    println!("Módulo '{}' creado en '{}'", module_name, module_path);
}
