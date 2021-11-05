// 1) Diferencie o uso do var e do final. Com exemplos.
//final = serve para quando você não quer que seja modificado

int a = 10;
int b = 20; 
final int soma = a + b;

//var 
// 2) Crie um map para representar um aluno da Soulcode.


Map<String, dynamic> soulAluno(String nome, String curso){
  var infoAluno = {
    'nome': nome,
    'curso': curso,
  };
  return infoAluno;
}
  var soulInfo = [
    soulAluno('Wytoria', 'BCW3 Front-End'),
    print(soulInfo),
  ];
  var contador = {
  for(int i = 1; i < 1001; ++i){
    print(i)}
  };
void main(){
  print(soulAluno('Wytoria', 'BCW3 Front-End'));
  print(contador);
}

// 3) Crie uma função que recebe um aluno da soulcode e
// apresenta ele.
void soulAluna(){
  var nomes = <String>['Wytoria', 'Bruna', 'Bianca', 'Vanessa','Carol'];
  for (var nomes in nomes){
    print(nomes);
  }
}
// 4) Crie uma função que usando for imprima na tela 
// números de 1 a 1000
void cont(){
  for(int i = 1; i < 1001; i++){
    print(i);
  }
}
