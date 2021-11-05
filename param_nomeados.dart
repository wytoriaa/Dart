void saudacoes(String nome, int idade){
  print('Olá, meu nome é $nome e eu tenho $idade anos');
}

//parametro nomeado

void saudacoes2(
  String nome, 
  int idade, 
  {bool permitido = false,
  int id = 0,
  String senha = '', 
  }) {
  print('Olá, meu nome é $nome e eu tenho $idade anos');

  if(permitido){
    print('Está permitido!');
  } else{
    print('Não está permitido!');
  }
  print('id: $id e senha:$senha');
}
void main(){
  saudacoes('Wytoria', 24);
  saudacoes2('Maria', 20, permitido: true);
  saudacoes2('João', 22, senha: '1122', permitido: true);

}