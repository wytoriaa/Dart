//Declare listas diferentes que contêm:
import 'atvdd1308.dart';

void main (){

var num = <int>[1,2,6,7,10,65,48,11];
var listaString = <String>['Olá', 'Estudar', 'Procrastinar', 'Trabalhar', 'Lucas'];
var doubleNum = <double> [3.14, 25.4, 3.20, 44.4];
var meusBool = <bool>[true, false];

//int = filtre para ter apenas itens pares (use where)
  var pegaPar = num.where((int par){
  return par %2==0;
}).toList();
    print(pegaPar);
//string = transforme-a em map em uma lista de int, pegando o length de cada string
  var comprimento = listaString.map((String item){
  return item.length;
  }).toList();
  print(comprimento);

//double = percorra a lista (for) e mostre os valores dentro dela.
for (var item in doubleNum) {
      print(item);
    }

//bool = transforme (map) em uma lista de string com texto true ou false
var newBool = meusBool.map((bool item){
  return item.toString();
}); print(newBool);
//Use a função .toString, por exemplo: itemBool.toString()

// Exemplo 07: Crie uma função que recebe uma lista como parâmetro nomeado, e retorna
// a soma de todos os seus elementos. É uma lista de double.
var somaDouble = <double>[3.14, 2.25, 9.08, 6.78];
  double soma = 0.0;
  void recebeSoma({List<double> lista = const []}){
    for(var item in lista){
      soma += item;
    }
  }
  recebeSoma(lista: somaDouble);
  //for(var item in somaDouble){
    //return soma += item;
    //print(somaDouble);


// Exemplo 08: Crie uma função que recebe uma lista de String por parâmetro,
// e para cada item da lista diga se o comprimento da string é par ou ímpar.
void leitura(List<String> nomes){
  for (var nome in nomes){
    if (nome.length %2==0){
      print('É par');
    } else{
      print('É impar');
    }
  }
}
var nomes = ['Ana', 'Maria', 'Lucas', 'Bruna', 'João'];
leitura(nomes);

}




//void main(){
    //pegaString = (List<String> listaString){
   // for (int i = 0; i < listaString.length; i++){
   // print(listaString);
  //}
//};
    //pegaDouble = (doubleNum){
    //for (var item in doubleNum) {
   //   print(item);
   // }
 // };
 // print(pegaPar);
 //print(pegaDouble);
//}