// 1) Crie uma função que recebe nome e sobrenome
// e retorna o nome completo

String ativ1(String nome, String sobrenome) {
  return nome + ' ' + sobrenome;
}

// 2) Crie uma função que recebe uma lista de nomes,
// e exibe todos os nomes dela em CAIXA ALTA.

void caixa(List<String> nomes) {  
  for( int i = 0; i < nomes.length; i++){
    print(nomes[i].toUpperCase());
  }
  
}
// OU
void listaNomes() {
  var nomes = <String>["João", "Carolina", "Silvia", "Mariana", "Leidiane"];
  for (var nome in nomes) {
    print(nome.toUpperCase());
  }
}

// OU
void criarCaixaAlta(List<String> nomes){
    for(int i = 0; i < nomes.length; i++){
      print(nomes[i].toUpperCase());
    }
}

//3) crie uma função que receba uma lista de numeros
//e apresente somente os numeros pares.
void exibePares(List<int> num){
  for (int i = 0; i < num.length; i++){
    var numero = num[i];
    if (numero.isEven){
      print(numero);
    }
  }
}


//4)crie uma função que cria maps que representa(nome, media, idade).
//crie uma lista de alunos chamada sala e calcule a media.
Map<String, Object> criaAluno(String nome, int idade, double media){
  var alunos = {
    'nome' : nome,
    'idade': idade,
    'media' : media
  };
  return alunos;
}
var sala = [
  criaAluno('Bianca', 20, 8.5),
  criaAluno('Wytoria', 24, 8.0),
  criaAluno('Lucas', 20, 4.0),
  criaAluno('Bruna', 20, 9.0),
];
void calculaMedia(List<Map<String, Object>> turma){
  double soma = 0;
  turma.forEach((item){
    double notaAluno = item ['media'] as double;
    soma += notaAluno;
  });
  var qtAlunos = turma.length;
  var media = soma/qtAlunos;
  print(soma/qtAlunos);
  print('A media da turma é: $media');

  turma.forEach((Map<String, Object> item){
  var notaAluno = item["media"] as double;
  
  if(notaAluno < media){
    print("O aluno ${item["nome"]} está reprovado.");
  }
});
}
  //Q5 - dizer se o aluno está ou não reprovado! 

void main(){
  //Q3
  exibePares([1, 2, 3, 4, 5 ,100]);
  
  //Q4
  calculaMedia(sala);
}