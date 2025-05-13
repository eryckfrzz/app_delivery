// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CarrinhoStore on _CarrinhoStore, Store {
  late final _$listaItemAtom =
      Atom(name: '_CarrinhoStore.listaItem', context: context);

  @override
  List<Item> get listaItem {
    _$listaItemAtom.reportRead();
    return super.listaItem;
  }

  @override
  set listaItem(List<Item> value) {
    _$listaItemAtom.reportWrite(value, super.listaItem, () {
      super.listaItem = value;
    });
  }

  late final _$_CarrinhoStoreActionController =
      ActionController(name: '_CarrinhoStore', context: context);

  @override
  void addProduto(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.addProduto');
    try {
      return super.addProduto(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProduto(Item item) {
    final _$actionInfo = _$_CarrinhoStoreActionController.startAction(
        name: '_CarrinhoStore.removeProduto');
    try {
      return super.removeProduto(item);
    } finally {
      _$_CarrinhoStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaItem: ${listaItem}
    ''';
  }
}
