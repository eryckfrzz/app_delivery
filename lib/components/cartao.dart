import 'package:app_delivery/components/contador.dart';
import 'package:flutter/material.dart';

import '../models/item.dart';

class Cartao extends StatelessWidget {
const Cartao({ super.key, required this.item });
final Item item;

  @override
  Widget build(BuildContext context){
    return Card(
      color: const Color(0xFFF6F6F6),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 134),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(item.uri),
              width: double.infinity,
              height: 50,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text(item.nome, style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.0),
                    child: Text("R\$ ${item.preco.toStringAsFixed(2)}"),
                  ),
                  Contador(item: item,),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
