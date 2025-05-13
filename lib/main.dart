import 'package:app_delivery/screens/home.dart';
import 'package:app_delivery/store/carrinho_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (context) => CarrinhoStore(),
      child: const PanucciDelivery(),
    ),
  );
}

class PanucciDelivery extends StatelessWidget {
  const PanucciDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 255, 83, 83),
        ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
