// Exemplo 11: Crie uma função que cria um Map, esse map possui "nome", "idade", "media". 
// A função cria alunos basicamente. Crie uma lista de alunos na main. E em seguida crie
// outra função, essa função recebe a lista de alunos e um double media como parâmetro.
// OBS: media é um parametro nomeado. Mostrar alunos abaixo dessa media.

Map<String, dynamic> criaAlunos(String nome, int idade, double media){
  var alunos = {
    'nome': nome,
    'idade': idade,
    'media': media,
  };
  return alunos;
}
void abaixoMedia(List<Map<String, dynamic>> alunos, {double media = 7.0}) {
  for (var alunos in alunos){
    if (alunos['media'] < media){
    print('${alunos['nome']} está abaixo da média');
    }
  }
}

// Exemplo 12: Crie uma função ela recebe por parâmetro um Map<String, dynamic> e adiciona
// novos valores nas chaves "cidade", "estado", e "uf".
void alteraMap(Map<String, dynamic> adress){
  adress['cidade'] = 'Recife';
  adress['estado'] = 'Pernambuco';
  adress['cep'] = 123456789;
}
var map = <String, dynamic>{};

// Exemplo 13: Crie uma função que recebe por parâmetro uma lista de int que pode ser null.
// Caso a lista for null mostre uma mensagem. Caso contrário, filtre os números positivos dela.
// E exiba os itens da lista resultante individualmente.

void recebeList(List<int>? minhaLista){
  if (minhaLista != null){
    var positivos = minhaLista.where((item){
      return item > 0;
    }).toList(); //filtra os pares
    positivos.forEach((int item){
      print(item);
    });
  } else{
    print('Essa lista é nula!');
  }
}
// Exemplo 14: Explique com exemplos o uso dos operadores "?", "??" e "!"
void interrogacao() {
  List<bool>? dados;
  // Operador "?"
  // Acessa propriedade/função do objeto, caso ele seja nulo,
  // a operação retorna nulo também.
  print(dados?.length);

  // Operator "??"
  // Testa se o valor é nulo, caso seja atribui outro valor.
  var comprimento = dados?.length ?? 0;

  print(comprimento);

  // Operator "!"
  // Promove um nullable a non-nullable
  print(dados!.length);
}

void main(){
  //Q11
  var alunos = [
    criaAlunos('Maria', 20, 7.5),
    criaAlunos('Carla', 18, 8),
    criaAlunos('João', 17, 8.5),
    criaAlunos('Lucas', 17, 6.55),
  ];
  print(alunos[0]);
  abaixoMedia(alunos);

  //Q12
  alteraMap(map);
  print(map);

  //Q13
  List<int>? lista;
  recebeList(lista);
}


