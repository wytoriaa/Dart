// Crie uma classe para representar um usuário com nome, email e senha(numérica).
// class Usuario {
//   String nome;
//   String email;
//   int senha;

//   Usuario(this.nome, this.email, this.senha);

//   void logar(){
//     print('Logado!');
//   }
// }
class Pessoa {
  String _nome; //qnd está com o _ ele está privado e o GET consegue tornar ele publico
  Pessoa(this._nome)

  String get nome{
    return _nome;
  }
  set nome(String novoNome){
    _nome = novoNome;
  }
}
void main(){
 //final user = Usuario('Wytoria', 'wytoria@wytoria', 123456);
 //user.logar();
 var p = Pessoa('Lucas');
 print(p._nome);
 
}