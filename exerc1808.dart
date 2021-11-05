// Crie uma classe Produto com os atributos:
// - nome, preço e categoria
// Crie uma classe Carrinho de Compras com o atributo:
// lista de produtos(começa vazio)
// E com os métodos:
// - calcularTotal(pode ser printar nota fiscal)
// - limpar(use a função .clear() da lista)
// - remover produto( com removeAt)
// - adicionar produto (com add)

class Produto {
String nome;
double preco;
int quantidade;
String categoria;

Produto(this.nome, this.preco, this.categoria, this.quantidade);

}

class Carrinho{
  int id;
  List<Produto> produtoLista = [];
  Carrinho({this.id = 0}); //é opcional colocar o construtor, porém vazio

  void add(Produto p){
    produtoLista.add(p);
  }

  void remove(int index){
    produtoLista.removeAt(index);
  }

  void removeElement(Produto produto){
    produtoLista.remove(produto);
  }

  // carrinho.removerPorIndex(0); - remove pela posição do item
  // carrinho.removerPorElemento(feijao); - remove pelo nome do item


  void calculaTotal(){
    double total = 0.0;
    for(var produto in produtoLista){
      total += produto.preco;
      //total += produto.quantidade;
    }
    print(total);
  }
}

void main(){
  var arroz = Produto('Arroz', 5.90, 'Alimenticio', 3);
  var carne = Produto('Carne', 20.50, 'Frigorifico', 10);
  var laticinio = Produto('Sardinha', 3.80, 'Enlatados' , 4);

  var carrinho = Carrinho(id: 1);
  carrinho.add(arroz);
  carrinho.add(laticinio);
  carrinho.add(carne);

  carrinho.calculaTotal();
}




