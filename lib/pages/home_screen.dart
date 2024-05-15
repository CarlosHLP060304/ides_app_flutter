import 'package:flutter/material.dart';

import '../entities/ide.dart';

class HomeScreen extends StatefulWidget {

  HomeScreen({super.key, required  this.ides});
  List<Ide> ides;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Lista de IDE's"),
        backgroundColor: Colors.blueAccent,
        ),
      body: ListView.builder(
        itemCount: widget.ides.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(widget.ides[index].nome),
              subtitle: Text(widget.ides[index].descricao,overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(backgroundImage: AssetImage(widget.ides[index].imagem),),
              onTap: () { 
                Navigator.pushNamed(
                context, 'details',
                arguments: {
                  'nome': widget.ides[index].nome,
                  'descricao': widget.ides[index].descricao,
                  'link':widget.ides[index].link,
                  'imagem':widget.ides[index].imagem
                  });
                },
          );
        },
      ),
    );
  }
}