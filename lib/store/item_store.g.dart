// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ItemStore on _ItemStore, Store {
  late final _$quantidadeAtom =
      Atom(name: '_ItemStore.quantidade', context: context);

  @override
  int get quantidade {
    _$quantidadeAtom.reportRead();
    return super.quantidade;
  }

  @override
  set quantidade(int value) {
    _$quantidadeAtom.reportWrite(value, super.quantidade, () {
      super.quantidade = value;
    });
  }

  late final _$_ItemStoreActionController =
      ActionController(name: '_ItemStore', context: context);

  @override
  void addItem() {
    final _$actionInfo =
        _$_ItemStoreActionController.startAction(name: '_ItemStore.addItem');
    try {
      return super.addItem();
    } finally {
      _$_ItemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeItem() {
    final _$actionInfo =
        _$_ItemStoreActionController.startAction(name: '_ItemStore.removeItem');
    try {
      return super.removeItem();
    } finally {
      _$_ItemStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantidade: ${quantidade}
    ''';
  }
}
