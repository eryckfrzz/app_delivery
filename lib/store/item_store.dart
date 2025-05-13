import 'package:mobx/mobx.dart';

part 'item_store.g.dart';

class ItemStore = _ItemStore with _$ItemStore;

abstract class _ItemStore with Store {
  @observable
  int quantidade = 0;

  @action
  void addItem() {
    quantidade++;
  }

  @action
  void removeItem() {
    quantidade--;
  }
}
