import 'package:app_delivery/models/item.dart';
import 'package:mobx/mobx.dart';

part 'carrinho_store.g.dart';

class CarrinhoStore = _CarrinhoStore with _$CarrinhoStore;

abstract class _CarrinhoStore with Store {
  @observable
  List<Item> listaItem = [];

  @action
  void addProduto(Item item) {
    listaItem.add(item);
  }

  @action
  void removeProduto(Item item) {
    listaItem.remove(item);
  }
}
