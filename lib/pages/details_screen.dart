

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            const Padding(
              padding: EdgeInsets.only(top: 2.0),
              child: Text("Para saber mais, acesse o link",),
            ),
            InkWell(
              child: Text(ide["link"],style: const TextStyle(color: Colors.blue),),
              onTap: () => launchUrl(Uri.parse(ide["link"])) ,
            )
          ],
        ),
      ),
    );
  }
}