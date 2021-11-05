void main() {
  var numeros = <int>[1, 2, 3];
 
  // numeros.add(20); // [1, 2, 3, 20]
  // numeros.removeAt(0); // [2, 3, 20] // remove pelo index
  // numeros.remove(20); // [2, 3] // remove o primeiro igual
 
  // for-in
  int soma = 0;
  for (var item in numeros) {
    soma += item;
  }
 
  // for
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }
 
  // map - converte uma lista em outra lista
  var novaLista = numeros.map((item) {
    return "Número: $item";
  }).toList(); // converte o .map em lista
 
  var novaLista2 = numeros.map((int item) {
    return item + 1;
  }).toList();
 
  print(novaLista);
  print(novaLista2);
 
  // where - filtra a lista
  var listaPares = numeros.where((int item) {
    return item % 2 == 0; // deve retornar bool
  }).toList();
 
  print(listaPares);
 
  // forEach
 
  int soma2 = 0;
  numeros.forEach((int item) {
    soma2 += item;
  });
 
  print(soma2);
}
 