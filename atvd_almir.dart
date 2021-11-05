//5)Crie uma função que recebe uma lista de números e retorna a
//soma de todos os elementos.

int somar (List<int> numeros){
  int recebeNum = 0;
  for (int pegaNumero in numeros){
    recebeNum = recebeNum + pegaNumero;
  }
  return recebeNum;
}

//6) Crie uma lista de Map e armazene em cada posição um Map que
//representa um restaurante com nome, categoria e uma lista de
//avaliações(de 0 a 10).

Map<String, Object> restaurante(String nome, String categoria, List avaliacoes){
  var lista = {'Nome': nome, 'Categoria': categoria, 'Avaliacao': avaliacoes};
  return lista;
}

//7) Crie uma função que recebe um parâmetro posicional e um
//nomeado, e exiba esses valores.
String text(String a, {String b = ""} ){
  return '$a, $b';
}

// 8) Crie variáveis de vários tipos que podem ser null(nesse caso
// algumas você pode colocar um valor, mas use ?). Em seguida,
// atribua um valor padrão caso o valor de cada variável seja
// nulo. Em seguida chame algum método ou propriedade dessas
// variáveis considerando a possibilidade de serem nulas
void teste1(){
  String? nome;
  String sobrenome = 'Rodrigues';
  int idade;
  double altura = 1.70;
  nome = 'Wytoria';
  String? sair;

  print ('Olá, meu $nome $sobrenome, tenho ${idade = 24} e $altura metros de altura, gosto muito de $sair');
}
// 9) Crie um arquivo e nele explique com suas próprias palavras e
// exemplos o recurso Null-safety do Dart.

// 10) Crie uma função que recebe 4 parâmetros nomeados e 1
// posicional. Exiba o valor delas.
String parametro(String nome, int idade, String signo, {String cidade = 'Recife'}){
  return '$nome, $idade, $signo, $cidade';
}



void main(){
  //Q5
  print(somar([1,2,3,584,25,48,68,74]));
  //Q6
  var restaurantes = [
    restaurante('Pé de Fava', 'Boteco', [3]),
    restaurante('Pé de Fava', 'Boteco', [3]),
    restaurante('Pé de Fava', 'Boteco', [3]),

  ];
  print(restaurantes);

  //Q7
  print(text('testando esta porra!', b: 'testando o valor b'));
  //Q10
  print(parametro('Marina', 20, 'libra', cidade: 'São Paulo'));

}