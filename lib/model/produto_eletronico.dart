import 'package:aula5_exercicios/model/produto.dart';
import 'package:aula5_exercicios/mixins/rastreavel.dart';

class ProdutoEletronico extends Produto with Rastreavel{

    late int garantiaMeses;

    ProdutoEletronico({required super.codigo, required super.nome,required super.preco, required this.garantiaMeses});




    @override
    String get tipo =>"Eletronico";

    @override
     exibirDetalhes(){

      print("---Detalhes do Produto---\nCódigo: $codigo");
      print('Nome: $nome\nPreço: $preco\n');
      print("Meses de Garantia: $garantiaMeses");

  }

   @override
   Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'nome': nome,
      'preco': preco,
      'garantiaMeses': garantiaMeses,
    };
  }

  
}
