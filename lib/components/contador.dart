import 'package:app_delivery/models/item.dart';
import 'package:app_delivery/store/carrinho_store.dart';
import 'package:app_delivery/store/item_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Contador extends StatelessWidget {
  Contador({super.key, required this.item});

  final Item item;

  final ItemStore itemStore = ItemStore();

  @override
  Widget build(BuildContext context) {
    final carrinhoStore = Provider.of<CarrinhoStore>(context);

    return Observer(
      builder:
          (_) => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  if (itemStore.quantidade > 0) {

                    itemStore.removeItem();

                    carrinhoStore.removeProduto(item);

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Quantidade removida com sucesso!'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Quantidade não pode ser menor do que 0!',
                        ),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  }
                },
                child: const Icon(Icons.remove_circle_outline, size: 20),
              ),
              Text(itemStore.quantidade.toString()),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {

                  itemStore.addItem();

                  carrinhoStore.addProduto(item);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Quantidade adicionada com sucesso!'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: const Icon(Icons.add_circle_outline, size: 20),
              ),
            ],
          ),
    );
  }
}
