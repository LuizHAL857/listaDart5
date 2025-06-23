import 'package:aula5_exercicios/model/produto_alimenticio.dart';
import 'package:aula5_exercicios/model/produto_eletronico.dart';
import 'package:aula5_exercicios/service/carrinho_de_compras.dart';
import 'package:aula5_exercicios/utils/json_handler.dart';

void main() async {
  final carrinho = CarrinhodeCompras();

  final tv = ProdutoEletronico(codigo:'E01', nome:'Smart TV 50"', preco:2800.0, garantiaMeses:12);
  final leite = ProdutoAlimenticio(codigo:'A01', nome:'Caixa de Leite', preco:4.5, dataDeValidade:"25/12/2025");

  carrinho.adicionarProduto(tv);
  carrinho.adicionarProduto(leite);

  final caminho = 'carrinho.json';
  await salvarCarrinhoEmJson(caminho, carrinho.toJsonList());
}

