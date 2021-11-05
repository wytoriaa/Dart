//1) crie uma função que retorna a media de 3
//numeros, mas antes exiba no console(print)
//cada um deles

double calculaMedia(double x, double y, double z){
  print('Nota de Matemática: $x');
  print('Nota de Português: $y');
  print('Nota de Artes: $z');

  var media = (x + y + z)/3;
  return media;
}
//2) crie uma função que receba peso e altura de uma pessoa e retorne o IMC.
//crie outra função que receba o IMC e mostra na tela a situação (abaixo do peso,normal, etc)

double calulaPeso(double peso, double altura){
  print('Meu peso é: $peso kg');
  print('Minha altura é: $altura m');

  var IMC = peso/(altura * altura);
  return IMC;
}

//3) crie funções para representar uma calculadora: soma, sub, div, mult.
//crie outra função que receba 2 numero e o sinal +,/,*,-

double soma (double x, double y) => x + y;
double sub (double x, double y) => x - y;
double mult (double x, double y) => x * y;
double div (double x, double y) => x / y;

void calculadora(double x, double y, String op){
  switch(op){
    case '+':
    soma(x, y);
    print('A soma é: ${soma(x,y)}');
    //ou 
    //var resultado = soma(x, y);
    //print("A soma é: ${resultado}")
    break;

    case '-':
    sub(x, y);
    print('A subtração é: ${sub(x,y)}');
    //ou 
    //var resultado = sub(x, y);
    //print("A soma é: ${resultado}")
    break;

    case '*':
    mult(x, y);
    print('A multiplicação é: ${mult(x,y)}');
    //ou 
    //var resultado = mult(x, y);
    //print("A soma é: ${resultado}")
    break;

    case '/':
    div(x, y);
    print('A divisão é: ${div(x,y)}');
    //ou 
    //var resultado = div(x, y);
    //print("A soma é: ${resultado}")
    break;
  }
}

// 4) Crie uma função que recebe o raio de um circulo e 
// retorne o comprimento da circunferência. A fórmula é C = 2 * PI * R.
// O raio é um parâmetro nomeado e recebe valor padrão de 100.

  double comprimentoCirculo({int raio = 100, double pi = 3.14}){
  var comprimento = 2 * pi * raio;
  return comprimento;
}

// 5) Crie uma função que recebe dois parâmetros nomeados e mostra o valor
// deles.

void apresentacao(String nome, String curso, int idade, {bool aprovada = true, double media = 9.8}){
  print('Olá, meu nome é $nome, sou graduada em $curso e tenho $idade anos');

   if(aprovada){
    print('Ela foi aprovada!');
  } else{
    print('reprovou, pobre coitada!');
  }
  print('Aprovada com média $media');
}



void main(){
  //calculaMedia(8, 8.5, 10);
  var media =calculaMedia(7, 8.5, 10);
  print('A media do aluno é: $media');

  //Q2
  var IMC = calulaPeso(150, 1.75);
  print('Seu IMC é: $IMC' );
  if(IMC <18.5){
    print('Você está abaixo do peso');
  } else if(IMC <=24.5) {
    print('Parabéns, seu peso está normal!');
  } else if(IMC <= 29.9){
    print('Cuide-se, você está sobrepeso');
  }else if(IMC <=34.9){
    print('Atenção, obesidade grau 1');
  }else if(IMC <= 39.9){
    print('Você está com obesidade grau 2, procure um médico');
  }else if(IMC > 40){
    print('Obesidade morbida.');
  };
  
  //Q3
  calculadora(100, 50, '+');
  calculadora(100, 50, '-');
  calculadora(100, 50, '*');
  calculadora(100, 50, '/');
  calculadora(100, 50, 'qualquercoisa');

  //Q4
  var comprimento = comprimentoCirculo(pi: 3.14, raio: 100);
  print('O comprimento do circulo é: $comprimento');

  //Q5
  apresentacao('Wytoria', 'Sistemas de Informação', 24);
}