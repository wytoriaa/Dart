//Crie uma classe PET com atributos:
//nome, idade e peso; com metodos: comer()

class Pet{
  //atributos
  String nome;
  int idade;
  double peso;
  String comidaFavorita;

  //construtor
  Pet(this.nome, this.idade, this.peso, this.comidaFavorita);
  //metodos  
  void comer(){
    print('Meu cachorro se chama $nome, ele tem $idade anos e pesa $peso kg, sua comida favorita é $comidaFavorita! Um grande cachorro.');
  }
  //metodos
  void alimentacao(String alimento, {int qtd = 3}){
    print('Ele come $alimento todos os dias, $qtd vezes ao dia.');
    
    if (alimento == comidaFavorita){
      print('Capivara está feliz!');
    }
    peso += qtd;

   
  }
  //named constructor
   Pet.filhote(this.nome,this.peso, this.comidaFavorita) : idade = 0;
}

void main(){
  var meuPet = Pet('Capivara', 2, 10, 'beterrada com cenoura');
  meuPet.comer();
  meuPet.alimentacao('Carne', qtd: 5);
  print(meuPet.peso);

  //named constructor
  var petFilhote = Pet.filhote('Baleia', 2, 'ração');
  print(petFilhote.idade);
  petFilhote.idade = 5;
}

