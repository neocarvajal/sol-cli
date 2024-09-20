use web3::transports::Http;
use web3::Web3;

pub fn check_connection() {
    let url = "https://api.devnet.solana.com";
    let transport = Http::new(url).expect("No se pudo crear el transporte");
    let web3 = Web3::new(transport);
    
    match web3.eth().block_number().wait() {
        Ok(block_number) => println!("Conectado a la blockchain, número de bloque: {:?}", block_number),
        Err(e) => eprintln!("Error de conexión: {:?}", e),
    }
}

