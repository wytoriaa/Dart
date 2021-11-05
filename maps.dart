Map<String, dynamic> aluno(String nome, int idade, double media){
  var map = {'nome': nome, 'idade': idade, 'media':media};
  return map;
}
//com arrow function:
Map<String, dynamic> criaAluno(String nome, int idade, double media) =>{
  'nome': nome,
  'idade': idade,
  'media': media,
};
void main(){
  var map = <String, dynamic>{};
  //1º string = chave; 2º string = valor
  map ['nome'] = 'Wytoria';
  map ['sobrenome'] = 'Rodrigues';
  map ['idade'] = 24;
  map ['notas'] = [7.3, 8.0, 10.0];
  map ['notas'] = [7.3];

  print(map);
  print(aluno('Wytoria', 24, 8.5));

}

// Exemplo 09: Crie uma função que recebe os parâmetros (nome, preco, categoria) e retorne um
// Map com as chaves "nome", "preco", "categoria". Essa função cria produtos em forma de Map.
// Em seguida na sua função main, crie uma lista desses maps usando a função que você criou.
// Ou seja, crie uma lista de produtos.
// Fora da main crie uma função que recebe uma lista de maps(fique atento a tipagem), essa função
// irá determinar o total a se pagar pelos produtos. 
// 1) Função que cria produto
// 2) Lista de produtos
// 3) Função que calcula o total a se pagar pelos produtos
