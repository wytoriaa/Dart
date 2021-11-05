//Exemplo 02: Crie uma classe Carro com atributos:
//marca, ano, ligado, quantidade de combustivel
// E com métodos: //- ligar, desligar, abastecer
class Carro{
  String marca;
  int ano;
  double combustivel;
  bool ligado;

  Carro(this.marca, this.ano, this.combustivel , this.ligado);

  void info(){
    print('O carro da $marca, foi comprado em $ano');
  }

  void ligar(){
    if (!ligado){ //se não está ligado
      ligado = true;
    }
    print('O carro está ligado');
  }
  void desligar(){
    if(ligado){
      ligado = false;
    }
    print('O carro está desligado');
  }
  void abastecer(){
    combustivel = 65;
    print('É preciso abastecer o carro com $combustivel litros de álcool!');
  }
}
    void infoCar(Carro carro){
      print('Marca: ${carro.marca}, Ano:${carro.ano}');
    }

void main(){
  var meuCarro = Carro('Fiat', 2019, 30.5, false);
  meuCarro.ligar();
  meuCarro.desligar();
  print(meuCarro.combustivel);
  meuCarro.abastecer();
  meuCarro.info();
}
