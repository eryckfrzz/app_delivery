import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int quantidade = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              if (quantidade > 0) {
                quantidade--;

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Quantidade removida com sucesso!'),
                    duration: Duration(seconds: 1),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Quantidade não pode ser menor do que 0!'),
                    duration: Duration(seconds: 1),
                  ),
                );
              }
            });
          },
          child: const Icon(Icons.remove_circle_outline, size: 20),
        ),
        Text(quantidade.toString()),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            setState(() {
              quantidade++;

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Quantidade adicionada com sucesso!'),
                  duration: Duration(seconds: 1),
                ),
              );
            });
          },
          child: const Icon(Icons.add_circle_outline, size: 20),
        ),
      ],
    );
  }
}
