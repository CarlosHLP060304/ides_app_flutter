
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  Map ide;
  DetailsScreen({super.key,required this.ide});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ide["nome"]),
        backgroundColor: Colors.blue,
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(ide["imagem"]),
            Text(ide["descricao"]),
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("Para saber mais, acesse o link",),
            ),
            Text(ide["link"],style: TextStyle(color: Colors.blue),)
          ],
        ),
      ),
    );
  }
}