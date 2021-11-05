  void main(){
    var nome = 'João'; //objeto com propriedade do tipo string
    var nomeArquivo = 'meu_arquivo.pdf';
    var ip = "123.452.8-6";
    //String sobrenome = 'Araujo';
    //final cargo = 'Desenvolvedor';
    print(nome.isEmpty); //pergunta se está vazio e retorna true ou false
    //print(nome.isNotEmpty);
    print(nome.length); //retorna qual o tamanho da string
    print(nome.toLowerCase());
    print(nome.toUpperCase());
    print(nome.startsWith('A')); //diz com qual letra começa a string e retorna true ou false
    print(nomeArquivo.endsWith('.pdf')); //com qual palavra ou letra a string termina
    print(nome[3]);
    print(nome.indexOf('o')); //diz a posição 
    print(ip.split('.')); //cria uma lista com as letras, cada posição é um caracter
  }